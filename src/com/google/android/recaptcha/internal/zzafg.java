package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
final class zzafg {
    private final Object zza;
    private final int zzb;

    public zzafg(Object obj, int i) {
        this.zza = obj;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzafg)) {
            return false;
        }
        zzafg zzafgVar = (zzafg) obj;
        return this.zza == zzafgVar.zza && this.zzb == zzafgVar.zzb;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * 65535) + this.zzb;
    }
}
