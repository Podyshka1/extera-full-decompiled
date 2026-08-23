package com.exteragram.messenger.api.network;

import com.exteragram.messenger.utils.network.ExteraHttpClient;
import com.google.gson.GsonBuilder;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: loaded from: classes.dex */
public final class ApiClient {
    private static final String BASE_URL = "https://api.exteragram.app/api/v1/";
    public static final ApiClient INSTANCE = new ApiClient();
    private static final Lazy apiService$delegate = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.api.network.ApiClient$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ApiClient.apiService_delegate$lambda$0();
        }
    });

    private ApiClient() {
    }

    public final ApiService getApiService() {
        Object value = apiService$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (ApiService) value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ApiService apiService_delegate$lambda$0() {
        return (ApiService) new Retrofit.Builder().baseUrl(BASE_URL).client(ExteraHttpClient.INSTANCE.getClient()).addConverterFactory(GsonConverterFactory.create(new GsonBuilder().create())).build().create(ApiService.class);
    }
}
