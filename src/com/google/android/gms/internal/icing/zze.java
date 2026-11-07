package com.google.android.gms.internal.icing;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes4.dex */
@VisibleForTesting
public abstract class zze {
    public static final Api.ClientKey<zzae> zza;
    public static final Api<Api.ApiOptions.NoOptions> zzb;

    @Deprecated
    public static final zzz zzc;
    private static final Api.AbstractClientBuilder<zzae, Api.ApiOptions.NoOptions> zzd;

    static {
        Api.ClientKey<zzae> clientKey = new Api.ClientKey<>();
        zza = clientKey;
        zzd zzdVar = new zzd();
        zzd = zzdVar;
        zzb = new Api<>("AppDataSearch.LIGHTWEIGHT_API", zzdVar, clientKey);
        zzc = new zzal();
    }
}
