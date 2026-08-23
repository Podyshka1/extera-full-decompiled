package com.google.android.gms.internal.cast;

import com.google.android.gms.common.api.Api;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzga {

    @Deprecated
    public static final Api zza;
    private static final Api.ClientKey zzb;
    private static final Api.AbstractClientBuilder zzc;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zzb = clientKey;
        zzfy zzfyVar = new zzfy();
        zzc = zzfyVar;
        zza = new Api("UsageReporting.API", zzfyVar, clientKey);
    }
}
