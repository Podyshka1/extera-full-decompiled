package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzaea {
    private final zzady zza;

    private zzaea(zzady zzadyVar) {
        this.zza = zzadyVar;
    }

    public static zzaea zza(byte[] bArr, zzsy zzsyVar) {
        return new zzaea(zzady.zza(bArr));
    }

    public final byte[] zzb(zzsy zzsyVar) {
        return this.zza.zzc();
    }

    public final int zzc() {
        return this.zza.zzd();
    }
}
