<template>
  <div class="all">
    <MainHeader></MainHeader>
    <MainContent></MainContent>
    <MainFooter></MainFooter>
    <div class="global-slide">
      <div class="to-top" title="回到顶部" @click="toTop"></div>
      <div class="public" @mouseenter="wxIsShow = true" @mouseleave="wxIsShow = false">
        <div class="public-img" v-show="wxIsShow">
          <el-image v-if="sysInfo.sysWenxinPublic"
              style="width: 200px; height: 200px"
              :src="sysInfo.sysWenxinPublic ? baseUrl + sysInfo.sysWenxinPublic : sysInfo.sysWenxinPublic"
              fit="fill"></el-image>
          <div style="height: 20px;line-height: 20px;text-align: center;margin-top: -0.5em;">打开微信扫一扫</div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import MainHeader from '../../components/main-header'
import MainContent from '../../components/main-content'
import MainFooter from '../../components/main-footer'
import {mapGetters} from "vuex";
import {URL_PREFIX} from "@/api/config";
import {getToken} from "@/utils/auth";
import {getInfo} from "@/api/base";

export default {
  name: "Layout",
  components: {
    MainHeader,
    MainContent,
    MainFooter
  },
  data(){
    return {
      baseUrl: URL_PREFIX,
      wxIsShow: false
    }
  },
  mounted() {
    this.init()
  },
  computed:{
    ...mapGetters(['sysInfo','socketConnFlag','isLogin', 'user'])
  },
  watch: {
    socketConnFlag: {
      handler: function (newValue, oldValue) {
        if (this.isLogin && newValue) {
          this.initWebSocketMessage()
        }
      }
    }
  },
  methods: {
    init() {
      this.$store.dispatch('main/setSysInfo')
      this.$store.dispatch('main/setTagList')
      this.$store.dispatch('main/setTypeList')
      this.$store.dispatch('main/setHotSearchArticleList')
      this.$store.dispatch('main/setSystemRecommendArticleList')
      this.$store.dispatch('main/setSimpleNoticeList')
      this.checkMobile()
      if (this.isLogin) {
        this.$store.dispatch('main/setSysMessageList')
        this.$store.dispatch('main/setSocketConnFlag', true)
      }
    },
    checkMobile() {
      if (this.$device.mobile) {
        // this.$router.replace('/mobileMsg')
      }
    },
    toTop(){
      document.documentElement.scrollTop = 0
    },
    initWebSocketMessage(){
      const _that = this;
      this.$nextTick(() => {
        var token = this.user.userId;
        if ("WebSocket" in window && token && token.length > 0) {
          // 打开一个 web socket
          var ws = new WebSocket(`${process.env.VUE_APP_Websocket}://${location.host}${URL_PREFIX}/bindingSysMessage/${token}`);
          ws.onopen = function () {
            // Web Socket 已连接上，使用 send() 方法发送数据
            ws.send(token + "连接成功");
          };

          ws.onmessage = function (evt) {
            let received_msg = evt.data;
            if (received_msg && received_msg.length > 0) {
              _that.$store.dispatch('main/setAddUnReadMessageNum')
            }
          };
        }
      })
    }
  }
}
</script>

<style lang="less" scoped>
.all {
  position: relative;
}

.global-slide {
  position: fixed;
  right: 10px;
  bottom: 200px;
  z-index: 1;
  width: 36px;
  cursor: pointer;

  .to-top{
    width: 100%;
    height: 25px;
    text-align: center;
    background: url("../../assets/float-panel-bg.gif") 0 0;
  }

  .public{
    position: relative;
    width: 100%;
    height: 36px;
    background: url("../../assets/float-panel-bg.gif") 1px -91px;

    .public-img{
      width: 200px;
      height: 225px;
      position: absolute;
      left: -200px;
      top: -75px;
      background: white;
    }
  }
}
</style>
