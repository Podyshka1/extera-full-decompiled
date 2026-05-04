package com.exteragram.messenger.utils.network;

import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes.dex */
public final class ExteraHttpClient {
    public static final ExteraHttpClient INSTANCE = new ExteraHttpClient();
    private static final Lazy client$delegate = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.utils.network.ExteraHttpClient$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ExteraHttpClient.client_delegate$lambda$0();
        }
    });

    private ExteraHttpClient() {
    }

    public final OkHttpClient getClient() {
        return (OkHttpClient) client$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OkHttpClient client_delegate$lambda$0() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        return builder.connectTimeout(10L, timeUnit).readTimeout(10L, timeUnit).writeTimeout(10L, timeUnit).build();
    }
}
