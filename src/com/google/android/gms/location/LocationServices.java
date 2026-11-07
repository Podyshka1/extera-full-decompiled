package com.google.android.gms.location;

import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.location.zzbd;
import com.google.android.gms.internal.location.zzcg;
import com.google.android.gms.internal.location.zzcr;
import com.google.android.gms.internal.location.zzcy;
import com.google.android.gms.internal.location.zzdb;

/* JADX INFO: loaded from: classes5.dex */
public abstract class LocationServices {

    @Deprecated
    public static final Api<Api.ApiOptions.NoOptions> API = zzcg.zzb;

    @Deprecated
    public static final FusedLocationProviderApi FusedLocationApi = new zzbd();

    @Deprecated
    public static final GeofencingApi GeofencingApi = new zzcr();

    @Deprecated
    public static final SettingsApi SettingsApi = new zzcy();

    public static FusedLocationProviderClient getFusedLocationProviderClient(Context context) {
        return new zzcg(context);
    }

    public static SettingsClient getSettingsClient(Context context) {
        return new zzdb(context);
    }
}
