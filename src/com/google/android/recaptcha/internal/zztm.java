package com.google.android.recaptcha.internal;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
final class zztm {
    final zztn zza;
    final long[] zzb;

    public zztm(zztn zztnVar, long[] jArr) {
        this.zza = zztnVar;
        this.zzb = jArr;
    }

    public zztm(zztm zztmVar) {
        this.zza = new zztn(zztmVar.zza);
        this.zzb = Arrays.copyOf(zztmVar.zzb, 10);
    }
}
