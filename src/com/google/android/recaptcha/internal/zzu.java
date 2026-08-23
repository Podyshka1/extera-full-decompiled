package com.google.android.recaptcha.internal;

import kotlin.comparisons.ComparisonsKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzu implements Comparable {
    private int zza;
    private long zzb;
    private long zzc;

    public final String toString() {
        return "avgExecutionTime: " + StringsKt.padEnd$default(String.valueOf(this.zzb / ((long) this.zza)), 10, (char) 0, 2, (Object) null) + " us| maxExecutionTime: " + StringsKt.padEnd$default(String.valueOf(this.zzc), 10, (char) 0, 2, (Object) null) + " us| totalTime: " + StringsKt.padEnd$default(String.valueOf(this.zzb), 10, (char) 0, 2, (Object) null) + " us| #Usages: " + StringsKt.padEnd$default(String.valueOf(this.zza), 5, (char) 0, 2, (Object) null);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final int compareTo(zzu zzuVar) {
        return ComparisonsKt.compareValues(Long.valueOf(this.zzb), Long.valueOf(zzuVar.zzb));
    }

    public final int zzb() {
        return this.zza;
    }

    public final long zzc() {
        return this.zzc;
    }

    public final long zzd() {
        return this.zzb;
    }

    public final void zze(long j) {
        this.zzc = j;
    }

    public final void zzf(long j) {
        this.zzb = j;
    }

    public final void zzg(int i) {
        this.zza = i;
    }
}
