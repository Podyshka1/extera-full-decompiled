package com.google.android.gms.measurement.internal;

import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzpd {
    final String zza;
    long zzb;

    private zzpd(zzpg zzpgVar, String str) {
        Objects.requireNonNull(zzpgVar);
        this.zza = str;
        this.zzb = zzpgVar.zzaZ().elapsedRealtime();
    }

    /* synthetic */ zzpd(zzpg zzpgVar, String str, byte[] bArr) {
        this(zzpgVar, str);
    }

    /* synthetic */ zzpd(zzpg zzpgVar, byte[] bArr) {
        this(zzpgVar, zzpgVar.zzt().zzaw());
    }
}
