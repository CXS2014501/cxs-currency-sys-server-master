import defaultSettings from '@/settings'

const title = defaultSettings.title || '全栈小白运营中台'

export default function getPageTitle(pageTitle) {
  if (pageTitle) {
    return `${pageTitle} - ${title}`
  }
  return `${title}`
}
