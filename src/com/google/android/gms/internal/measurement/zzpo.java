package com.google.android.gms.internal.measurement;

import com.google.android.apps.common.proguard.SideEffectFree;
import com.google.common.base.Preconditions;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpo {
    private final AtomicReferenceArray zza;
    private final zzog zzb;

    public zzpo(zzog zzogVar, int i) {
        this.zzb = zzogVar;
        this.zza = new AtomicReferenceArray(i);
    }

    @SideEffectFree
    public final zzom zza(int i, String str, boolean z) {
        AtomicReferenceArray atomicReferenceArray = this.zza;
        zzom zzomVar = (zzom) atomicReferenceArray.get(i);
        if (zzomVar != null) {
            return zzomVar;
        }
        zzom zzomVarZza = this.zzb.zza(str, z);
        return !zzpo$$ExternalSyntheticBackportWithForwarding0.m323m(atomicReferenceArray, i, null, zzomVarZza) ? (zzom) Preconditions.checkNotNull((zzom) atomicReferenceArray.get(i)) : zzomVarZza;
    }

    @SideEffectFree
    public final zzom zzb(int i, String str, long j) {
        AtomicReferenceArray atomicReferenceArray = this.zza;
        zzom zzomVar = (zzom) atomicReferenceArray.get(i);
        if (zzomVar != null) {
            return zzomVar;
        }
        zzom zzomVarZzb = this.zzb.zzb(str, j);
        return !zzpo$$ExternalSyntheticBackportWithForwarding0.m323m(atomicReferenceArray, i, null, zzomVarZzb) ? (zzom) Preconditions.checkNotNull((zzom) atomicReferenceArray.get(i)) : zzomVarZzb;
    }

    @SideEffectFree
    public final zzom zzc(int i, String str, double d) {
        AtomicReferenceArray atomicReferenceArray = this.zza;
        zzom zzomVar = (zzom) atomicReferenceArray.get(2);
        if (zzomVar != null) {
            return zzomVar;
        }
        zzom zzomVarZzc = this.zzb.zzc("measurement.test.double_flag", -3.0d);
        return !zzpo$$ExternalSyntheticBackportWithForwarding0.m323m(atomicReferenceArray, 2, null, zzomVarZzc) ? (zzom) Preconditions.checkNotNull((zzom) atomicReferenceArray.get(2)) : zzomVarZzc;
    }

    @SideEffectFree
    public final zzom zzd(int i, String str, String str2) {
        AtomicReferenceArray atomicReferenceArray = this.zza;
        zzom zzomVar = (zzom) atomicReferenceArray.get(i);
        if (zzomVar != null) {
            return zzomVar;
        }
        zzom zzomVarZzd = this.zzb.zzd(str, str2);
        return !zzpo$$ExternalSyntheticBackportWithForwarding0.m323m(atomicReferenceArray, i, null, zzomVarZzd) ? (zzom) Preconditions.checkNotNull((zzom) atomicReferenceArray.get(i)) : zzomVarZzd;
    }
}
