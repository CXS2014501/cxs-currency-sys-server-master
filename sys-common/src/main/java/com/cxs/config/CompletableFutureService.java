package com.cxs.config;

import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;

import java.util.concurrent.CompletableFuture;
import java.util.function.Supplier;

/*
 * @Author:cxs
 * @Motto:放下杂念,只为迎接明天更好的自己
 * */
@Component
public class CompletableFutureService {

    @Async("dreamTaskExecutor")
    public CompletableFuture runAsyncTask(Runnable runnable) {
        CompletableFuture future = CompletableFuture.runAsync(runnable);
        return future;
    }

    //  结合CompletableFuture，封装通用无形参异步方法，
    @Async("dreamTaskExecutor")
    public <T> CompletableFuture<T> doAsyncTask(Supplier<T> supplier) {
        CompletableFuture<T> future = CompletableFuture.completedFuture(supplier.get());
        return future;
    }
}
