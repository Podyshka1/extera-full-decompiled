package com.google.android.recaptcha.internal;

import kotlin.comparisons.ComparisonsKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzhi implements Comparable {
    private int zza;
    private long zzb;
    private long zzc;

    public final String toString() {
        String strPadEnd$default = StringsKt.padEnd$default(String.valueOf(this.zzb / ((long) this.zza)), 10, (char) 0, 2, (Object) null);
        String strPadEnd$default2 = StringsKt.padEnd$default(String.valueOf(this.zzc), 10, (char) 0, 2, (Object) null);
        String strPadEnd$default3 = StringsKt.padEnd$default(String.valueOf(this.zzb), 10, (char) 0, 2, (Object) null);
        String strPadEnd$default4 = StringsKt.padEnd$default(String.valueOf(this.zza), 5, (char) 0, 2, (Object) null);
        int length = String.valueOf(strPadEnd$default).length();
        int length2 = String.valueOf(strPadEnd$default2).length();
        StringBuilder sb = new StringBuilder(length + 41 + length2 + 16 + String.valueOf(strPadEnd$default3).length() + 14 + String.valueOf(strPadEnd$default4).length());
        sb.append("avgExecutionTime: ");
        sb.append(strPadEnd$default);
        sb.append(" us| maxExecutionTime: ");
        sb.append(strPadEnd$default2);
        sb.append(" us| totalTime: ");
        sb.append(strPadEnd$default3);
        sb.append(" us| #Usages: ");
        sb.append(strPadEnd$default4);
        return sb.toString();
    }

    public final int zza() {
        return this.zza;
    }

    public final void zzb(int i) {
        this.zza = i;
    }

    public final long zzc() {
        return this.zzb;
    }

    public final void zzd(long j) {
        this.zzb = j;
    }

    public final long zze() {
        return this.zzc;
    }

    public final void zzf(long j) {
        this.zzc = j;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final int compareTo(zzhi zzhiVar) {
        return ComparisonsKt.compareValues(Long.valueOf(this.zzb), Long.valueOf(zzhiVar.zzb));
    }
}
