package com.google.android.gms.common.util;

import android.os.StrictMode;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzc {
    public static StrictMode.VmPolicy zza() {
        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
        if (PlatformVersion.isAtLeastS()) {
            StrictMode.setVmPolicy(zzb.zza(new StrictMode.VmPolicy.Builder(vmPolicy)).build());
        }
        return vmPolicy;
    }
}
