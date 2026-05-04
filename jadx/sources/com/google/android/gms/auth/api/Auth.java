package com.google.android.gms.auth.api;

import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.common.api.Api;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Auth {
    public static final Api GOOGLE_SIGN_IN_API;
    public static final GoogleSignInApi GoogleSignInApi;
    public static final Api PROXY_API;
    public static final ProxyApi ProxyApi;
    public static final Api.ClientKey zba;
    public static final Api.ClientKey zbb;
    public static final Api zbc;
    public static final com.google.android.gms.internal.p030authapi.zbd zbd;
    private static final Api.AbstractClientBuilder zbe;
    private static final Api.AbstractClientBuilder zbf;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zba = clientKey;
        Api.ClientKey clientKey2 = new Api.ClientKey();
        zbb = clientKey2;
        zba zbaVar = new zba();
        zbe = zbaVar;
        zbb zbbVar = new zbb();
        zbf = zbbVar;
        PROXY_API = AuthProxy.API;
        zbc = new Api("Auth.CREDENTIALS_API", zbaVar, clientKey);
        GOOGLE_SIGN_IN_API = new Api("Auth.GOOGLE_SIGN_IN_API", zbbVar, clientKey2);
        ProxyApi = AuthProxy.ProxyApi;
        zbd = new com.google.android.gms.internal.p030authapi.zbd();
        GoogleSignInApi = new com.google.android.gms.auth.api.signin.internal.zbd();
    }
}
