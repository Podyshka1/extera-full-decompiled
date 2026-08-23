package com.google.android.gms.measurement.internal;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes4.dex */
final class zze {
    private final zzji zza;

    zze(zzji zzjiVar) {
        this.zza = zzjiVar;
    }

    static zze zzc(String str) {
        return new zze((TextUtils.isEmpty(str) || str.length() > 1) ? zzji.UNINITIALIZED : zzjl.zzj(str.charAt(0)));
    }

    final zzji zza() {
        return this.zza;
    }

    final String zzb() {
        return String.valueOf(zzjl.zzm(this.zza));
    }
}
