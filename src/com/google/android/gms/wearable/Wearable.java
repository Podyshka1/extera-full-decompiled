package com.google.android.gms.wearable;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.wearable.internal.zzah;
import com.google.android.gms.wearable.internal.zzau;
import com.google.android.gms.wearable.internal.zzce;
import com.google.android.gms.wearable.internal.zzct;
import com.google.android.gms.wearable.internal.zzfl;
import com.google.android.gms.wearable.internal.zzfw;
import com.google.android.gms.wearable.internal.zzgd;
import com.google.android.gms.wearable.internal.zzhk;
import com.google.android.gms.wearable.internal.zziw;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Wearable {

    @Deprecated
    public static final Api<WearableOptions> API;
    private static final Api.ClientKey zzf;
    private static final Api.AbstractClientBuilder zzg;

    @Deprecated
    public static final DataApi DataApi = new zzct();

    @Deprecated
    public static final CapabilityApi CapabilityApi = new zzah();

    @Deprecated
    public static final MessageApi MessageApi = new zzfl();

    @Deprecated
    public static final NodeApi NodeApi = new zzgd();

    @Deprecated
    public static final ChannelApi ChannelApi = new zzau();

    @Deprecated
    public static final com.google.android.gms.wearable.internal.zzk zza = new com.google.android.gms.wearable.internal.zzk();

    @Deprecated
    public static final com.google.android.gms.wearable.internal.zzh zzb = new com.google.android.gms.wearable.internal.zzh();

    @Deprecated
    public static final zzce zzc = new zzce();

    @Deprecated
    public static final zzhk zzd = new zzhk();

    @Deprecated
    public static final zziw zze = new zziw();

    public static final class WearableOptions implements Api.ApiOptions {
        static final WearableOptions zza = new WearableOptions(new Builder());
        private final Looper zzb;

        public static class Builder {
            private Looper zza;
        }

        private WearableOptions(Builder builder) {
            this.zzb = builder.zza;
        }

        public boolean equals(Object obj) {
            return obj instanceof WearableOptions;
        }

        public int hashCode() {
            return Objects.hashCode(WearableOptions.class);
        }
    }

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zzf = clientKey;
        zzh zzhVar = new zzh();
        zzg = zzhVar;
        API = new Api<>("Wearable.API", zzhVar, clientKey);
    }

    public static MessageClient getMessageClient(Context context) {
        return new zzfw(context, GoogleApi.Settings.DEFAULT_SETTINGS);
    }
}
