package com.google.android.gms.internal.mlkit_genai_prompt;

import java.io.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzne implements Serializable {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final zzne zzd = new zzne(zzma.zzb, zzly.zzb);
    final zzmb zza;
    final zzmb zzb;

    private zzne(zzmb zzmbVar, zzmb zzmbVar2) {
        this.zza = zzmbVar;
        this.zzb = zzmbVar2;
        if (zzmbVar.zzc(zzmbVar2) > 0 || zzmbVar == zzly.zzb || zzmbVar2 == zzma.zzb) {
            f$$ExternalSyntheticBUOutline1.m215m("Invalid range: ".concat(zze(zzmbVar, zzmbVar2)));
            throw null;
        }
    }

    public static zzne zza() {
        return zzd;
    }

    private static String zze(zzmb zzmbVar, zzmb zzmbVar2) {
        StringBuilder sb = new StringBuilder(16);
        zzmbVar.zza(sb);
        sb.append("..");
        zzmbVar2.zzb(sb);
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzne) {
            zzne zzneVar = (zzne) obj;
            if (this.zza.equals(zzneVar.zza) && this.zzb.equals(zzneVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.zza.hashCode() * 31) + this.zzb.hashCode();
    }

    public final String toString() {
        return zze(this.zza, this.zzb);
    }

    public final boolean zzb() {
        return this.zza.equals(this.zzb);
    }

    public final zzne zzc(zzne zzneVar) {
        zzmb zzmbVar = this.zza;
        zzmb zzmbVar2 = zzneVar.zza;
        int iZzc = zzmbVar.zzc(zzmbVar2);
        zzmb zzmbVar3 = this.zzb;
        zzmb zzmbVar4 = zzneVar.zzb;
        int iZzc2 = zzmbVar3.zzc(zzmbVar4);
        if (iZzc >= 0 && iZzc2 <= 0) {
            return this;
        }
        if (iZzc <= 0 && iZzc2 >= 0) {
            return zzneVar;
        }
        if (iZzc < 0) {
            zzmbVar = zzmbVar2;
        }
        if (iZzc2 > 0) {
            zzmbVar3 = zzmbVar4;
        }
        zzla.zzb(zzmbVar.zzc(zzmbVar3) <= 0, "intersection is undefined for disconnected ranges %s and %s", this, zzneVar);
        return new zzne(zzmbVar, zzmbVar3);
    }

    public final zzne zzd(zzne zzneVar) {
        zzmb zzmbVar = this.zza;
        zzmb zzmbVar2 = zzneVar.zza;
        int iZzc = zzmbVar.zzc(zzmbVar2);
        zzmb zzmbVar3 = this.zzb;
        zzmb zzmbVar4 = zzneVar.zzb;
        int iZzc2 = zzmbVar3.zzc(zzmbVar4);
        if (iZzc <= 0 && iZzc2 >= 0) {
            return this;
        }
        if (iZzc >= 0 && iZzc2 <= 0) {
            return zzneVar;
        }
        if (iZzc > 0) {
            zzmbVar = zzmbVar2;
        }
        if (iZzc2 < 0) {
            zzmbVar3 = zzmbVar4;
        }
        return new zzne(zzmbVar, zzmbVar3);
    }
}
