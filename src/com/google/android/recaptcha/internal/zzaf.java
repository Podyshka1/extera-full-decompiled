package com.google.android.recaptcha.internal;

import android.content.Context;
import android.os.Build;
import com.google.android.gms.common.GoogleApiAvailabilityLight;

/* JADX INFO: loaded from: classes5.dex */
public final class zzaf {
    public static final zzaf zza = new zzaf();
    private static final String zzb = String.valueOf(Build.VERSION.SDK_INT);
    private static final GoogleApiAvailabilityLight zzc = GoogleApiAvailabilityLight.getInstance();

    private zzaf() {
    }

    public static final String zza(Context context) {
        int iIsGooglePlayServicesAvailable = zzc.isGooglePlayServicesAvailable(context);
        return (iIsGooglePlayServicesAvailable == 1 || iIsGooglePlayServicesAvailable == 3 || iIsGooglePlayServicesAvailable == 9) ? "ANDROID_OFFPLAY" : "ANDROID_ONPLAY";
    }
}
