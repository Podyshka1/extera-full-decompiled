package com.google.android.recaptcha.internal;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
final class zzafb {
    private final zzafa zza;

    private zzafb(zzafa zzafaVar) {
        this.zza = zzafaVar;
        zzafaVar.zza = this;
    }

    public static zzafb zza(zzafa zzafaVar) {
        Object obj = zzafaVar.zza;
        return obj != null ? (zzafb) obj : new zzafb(zzafaVar);
    }

    public final void zzG(int i, List list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zza.zzi(i, (zzaer) list.get(i2));
        }
    }

    public final void zzb(int i, int i2) {
        this.zza.zzd(i, i2);
    }

    public final void zzc(int i, long j) {
        this.zza.zze(i, j);
    }

    public final void zzd(int i, long j) {
        this.zza.zzf(i, j);
    }

    public final void zze(int i, float f) {
        this.zza.zzd(i, Float.floatToRawIntBits(f));
    }

    public final void zzf(int i, double d) {
        this.zza.zzf(i, Double.doubleToRawLongBits(d));
    }

    public final void zzg(int i, int i2) {
        this.zza.zzb(i, i2);
    }

    public final void zzh(int i, long j) {
        this.zza.zze(i, j);
    }

    public final void zzi(int i, int i2) {
        this.zza.zzb(i, i2);
    }

    public final void zzj(int i, long j) {
        this.zza.zzf(i, j);
    }

    public final void zzk(int i, int i2) {
        this.zza.zzd(i, i2);
    }

    public final void zzl(int i, boolean z) {
        this.zza.zzg(i, z);
    }

    public final void zzm(int i, String str) {
        this.zza.zzh(i, str);
    }

    public final void zzn(int i, zzaer zzaerVar) {
        this.zza.zzi(i, zzaerVar);
    }

    public final void zzo(int i, int i2) {
        this.zza.zzc(i, i2);
    }

    public final void zzp(int i, int i2) {
        zzafa zzafaVar = this.zza;
        zzafaVar.zzc(i, (i2 >> 31) ^ (i2 + i2));
    }

    public final void zzq(int i, long j) {
        zzafa zzafaVar = this.zza;
        zzafaVar.zze(i, (j >> 63) ^ (j + j));
    }

    public final void zzr(int i, Object obj, zzahn zzahnVar) {
        zzafa zzafaVar = this.zza;
        zzaec zzaecVar = (zzaec) obj;
        zzafaVar.zza(i, 2);
        zzafaVar.zzn(zzaecVar.zzx(zzahnVar));
        zzahnVar.zzf(zzaecVar, this);
    }

    public final void zzs(int i, Object obj, zzahn zzahnVar) {
        zzafa zzafaVar = this.zza;
        zzafaVar.zza(i, 3);
        zzahnVar.zzf((zzaec) obj, this);
        zzafaVar.zza(i, 4);
    }

    @Deprecated
    public final void zzt(int i) {
        this.zza.zza(i, 3);
    }

    @Deprecated
    public final void zzu(int i) {
        this.zza.zza(i, 4);
    }

    public final void zzF(int i, List list) {
        int i2 = 0;
        if (!(list instanceof zzagn)) {
            while (i2 < list.size()) {
                this.zza.zzh(i, (String) list.get(i2));
                i2++;
            }
            return;
        }
        zzagn zzagnVar = (zzagn) list;
        while (i2 < list.size()) {
            Object objZzc = zzagnVar.zzc();
            boolean z = objZzc instanceof String;
            zzafa zzafaVar = this.zza;
            if (z) {
                zzafaVar.zzh(i, (String) objZzc);
            } else {
                zzafaVar.zzi(i, (zzaer) objZzc);
            }
            i2++;
        }
    }

    public final void zzA(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzagq)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzf(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzafa zzafaVar = this.zza;
            zzafaVar.zza(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                i3 += 8;
            }
            zzafaVar.zzn(i3);
            while (i2 < list.size()) {
                zzafaVar.zzq(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        zzagq zzagqVar = (zzagq) list;
        if (!z) {
            while (i2 < zzagqVar.size()) {
                this.zza.zzf(i, zzagqVar.zze(i2));
                i2++;
            }
            return;
        }
        zzafa zzafaVar2 = this.zza;
        zzafaVar2.zza(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzagqVar.size(); i6++) {
            zzagqVar.zze(i6);
            i5 += 8;
        }
        zzafaVar2.zzn(i5);
        while (i2 < zzagqVar.size()) {
            zzafaVar2.zzq(zzagqVar.zze(i2));
            i2++;
        }
    }

    public final void zzH(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzafw)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzc(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzafa zzafaVar = this.zza;
            zzafaVar.zza(i, 2);
            int iZzu = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzu += zzafa.zzu(((Integer) list.get(i3)).intValue());
            }
            zzafaVar.zzn(iZzu);
            while (i2 < list.size()) {
                zzafaVar.zzn(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzafw zzafwVar = (zzafw) list;
        if (!z) {
            while (i2 < zzafwVar.size()) {
                this.zza.zzc(i, zzafwVar.zzf(i2));
                i2++;
            }
            return;
        }
        zzafa zzafaVar2 = this.zza;
        zzafaVar2.zza(i, 2);
        int iZzu2 = 0;
        for (int i4 = 0; i4 < zzafwVar.size(); i4++) {
            iZzu2 += zzafa.zzu(zzafwVar.zzf(i4));
        }
        zzafaVar2.zzn(iZzu2);
        while (i2 < zzafwVar.size()) {
            zzafaVar2.zzn(zzafwVar.zzf(i2));
            i2++;
        }
    }

    public final void zzx(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzafw)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzd(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzafa zzafaVar = this.zza;
            zzafaVar.zza(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            zzafaVar.zzn(i3);
            while (i2 < list.size()) {
                zzafaVar.zzo(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzafw zzafwVar = (zzafw) list;
        if (!z) {
            while (i2 < zzafwVar.size()) {
                this.zza.zzd(i, zzafwVar.zzf(i2));
                i2++;
            }
            return;
        }
        zzafa zzafaVar2 = this.zza;
        zzafaVar2.zza(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzafwVar.size(); i6++) {
            zzafwVar.zzf(i6);
            i5 += 4;
        }
        zzafaVar2.zzn(i5);
        while (i2 < zzafwVar.size()) {
            zzafaVar2.zzo(zzafwVar.zzf(i2));
            i2++;
        }
    }

    public final void zzz(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzagq)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zze(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzafa zzafaVar = this.zza;
            zzafaVar.zza(i, 2);
            int iZzv = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzv += zzafa.zzv(((Long) list.get(i3)).longValue());
            }
            zzafaVar.zzn(iZzv);
            while (i2 < list.size()) {
                zzafaVar.zzp(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        zzagq zzagqVar = (zzagq) list;
        if (!z) {
            while (i2 < zzagqVar.size()) {
                this.zza.zze(i, zzagqVar.zze(i2));
                i2++;
            }
            return;
        }
        zzafa zzafaVar2 = this.zza;
        zzafaVar2.zza(i, 2);
        int iZzv2 = 0;
        for (int i4 = 0; i4 < zzagqVar.size(); i4++) {
            iZzv2 += zzafa.zzv(zzagqVar.zze(i4));
        }
        zzafaVar2.zzn(iZzv2);
        while (i2 < zzagqVar.size()) {
            zzafaVar2.zzp(zzagqVar.zze(i2));
            i2++;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void zzE(int i, List list, boolean z) {
        if (list instanceof zzaei) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            if (!z) {
                throw null;
            }
            this.zza.zza(i, 2);
            throw null;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzg(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
            return;
        }
        zzafa zzafaVar = this.zza;
        zzafaVar.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).getClass();
            i3++;
        }
        zzafaVar.zzn(i3);
        while (i2 < list.size()) {
            zzafaVar.zzl(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    public final void zzw(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzafw)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzb(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzafa zzafaVar = this.zza;
            zzafaVar.zza(i, 2);
            int iZzv = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzv += zzafa.zzv(((Integer) list.get(i3)).intValue());
            }
            zzafaVar.zzn(iZzv);
            while (i2 < list.size()) {
                zzafaVar.zzm(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzafw zzafwVar = (zzafw) list;
        if (!z) {
            while (i2 < zzafwVar.size()) {
                this.zza.zzb(i, zzafwVar.zzf(i2));
                i2++;
            }
            return;
        }
        zzafa zzafaVar2 = this.zza;
        zzafaVar2.zza(i, 2);
        int iZzv2 = 0;
        for (int i4 = 0; i4 < zzafwVar.size(); i4++) {
            iZzv2 += zzafa.zzv(zzafwVar.zzf(i4));
        }
        zzafaVar2.zzn(iZzv2);
        while (i2 < zzafwVar.size()) {
            zzafaVar2.zzm(zzafwVar.zzf(i2));
            i2++;
        }
    }

    public final void zzB(int i, List list, boolean z) {
        if (list instanceof zzafo) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            if (!z) {
                throw null;
            }
            this.zza.zza(i, 2);
            throw null;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzd(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        zzafa zzafaVar = this.zza;
        zzafaVar.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).getClass();
            i3 += 4;
        }
        zzafaVar.zzn(i3);
        while (i2 < list.size()) {
            zzafaVar.zzo(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            i2++;
        }
    }

    public final void zzC(int i, List list, boolean z) {
        if (list instanceof zzafc) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            if (!z) {
                throw null;
            }
            this.zza.zza(i, 2);
            throw null;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzf(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        zzafa zzafaVar = this.zza;
        zzafaVar.zza(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).getClass();
            i3 += 8;
        }
        zzafaVar.zzn(i3);
        while (i2 < list.size()) {
            zzafaVar.zzq(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    public final void zzI(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzafw)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzd(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzafa zzafaVar = this.zza;
            zzafaVar.zza(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            zzafaVar.zzn(i3);
            while (i2 < list.size()) {
                zzafaVar.zzo(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzafw zzafwVar = (zzafw) list;
        if (!z) {
            while (i2 < zzafwVar.size()) {
                this.zza.zzd(i, zzafwVar.zzf(i2));
                i2++;
            }
            return;
        }
        zzafa zzafaVar2 = this.zza;
        zzafaVar2.zza(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzafwVar.size(); i6++) {
            zzafwVar.zzf(i6);
            i5 += 4;
        }
        zzafaVar2.zzn(i5);
        while (i2 < zzafwVar.size()) {
            zzafaVar2.zzo(zzafwVar.zzf(i2));
            i2++;
        }
    }

    public final void zzJ(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzagq)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzf(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzafa zzafaVar = this.zza;
            zzafaVar.zza(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                i3 += 8;
            }
            zzafaVar.zzn(i3);
            while (i2 < list.size()) {
                zzafaVar.zzq(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        zzagq zzagqVar = (zzagq) list;
        if (!z) {
            while (i2 < zzagqVar.size()) {
                this.zza.zzf(i, zzagqVar.zze(i2));
                i2++;
            }
            return;
        }
        zzafa zzafaVar2 = this.zza;
        zzafaVar2.zza(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzagqVar.size(); i6++) {
            zzagqVar.zze(i6);
            i5 += 8;
        }
        zzafaVar2.zzn(i5);
        while (i2 < zzagqVar.size()) {
            zzafaVar2.zzq(zzagqVar.zze(i2));
            i2++;
        }
    }

    public final void zzD(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzafw)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzb(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzafa zzafaVar = this.zza;
            zzafaVar.zza(i, 2);
            int iZzv = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzv += zzafa.zzv(((Integer) list.get(i3)).intValue());
            }
            zzafaVar.zzn(iZzv);
            while (i2 < list.size()) {
                zzafaVar.zzm(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzafw zzafwVar = (zzafw) list;
        if (!z) {
            while (i2 < zzafwVar.size()) {
                this.zza.zzb(i, zzafwVar.zzf(i2));
                i2++;
            }
            return;
        }
        zzafa zzafaVar2 = this.zza;
        zzafaVar2.zza(i, 2);
        int iZzv2 = 0;
        for (int i4 = 0; i4 < zzafwVar.size(); i4++) {
            iZzv2 += zzafa.zzv(zzafwVar.zzf(i4));
        }
        zzafaVar2.zzn(iZzv2);
        while (i2 < zzafwVar.size()) {
            zzafaVar2.zzm(zzafwVar.zzf(i2));
            i2++;
        }
    }

    public final void zzK(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzafw)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzafa zzafaVar = this.zza;
                    int iIntValue = ((Integer) list.get(i2)).intValue();
                    zzafaVar.zzc(i, (iIntValue >> 31) ^ (iIntValue + iIntValue));
                    i2++;
                }
                return;
            }
            zzafa zzafaVar2 = this.zza;
            zzafaVar2.zza(i, 2);
            int iZzu = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                int iIntValue2 = ((Integer) list.get(i3)).intValue();
                iZzu += zzafa.zzu((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
            }
            zzafaVar2.zzn(iZzu);
            while (i2 < list.size()) {
                int iIntValue3 = ((Integer) list.get(i2)).intValue();
                zzafaVar2.zzn((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
                i2++;
            }
            return;
        }
        zzafw zzafwVar = (zzafw) list;
        if (!z) {
            while (i2 < zzafwVar.size()) {
                zzafa zzafaVar3 = this.zza;
                int iZzf = zzafwVar.zzf(i2);
                zzafaVar3.zzc(i, (iZzf >> 31) ^ (iZzf + iZzf));
                i2++;
            }
            return;
        }
        zzafa zzafaVar4 = this.zza;
        zzafaVar4.zza(i, 2);
        int iZzu2 = 0;
        for (int i4 = 0; i4 < zzafwVar.size(); i4++) {
            int iZzf2 = zzafwVar.zzf(i4);
            iZzu2 += zzafa.zzu((iZzf2 >> 31) ^ (iZzf2 + iZzf2));
        }
        zzafaVar4.zzn(iZzu2);
        while (i2 < zzafwVar.size()) {
            int iZzf3 = zzafwVar.zzf(i2);
            zzafaVar4.zzn((iZzf3 >> 31) ^ (iZzf3 + iZzf3));
            i2++;
        }
    }

    public final void zzL(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzagq)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzafa zzafaVar = this.zza;
                    long jLongValue = ((Long) list.get(i2)).longValue();
                    zzafaVar.zze(i, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                    i2++;
                }
                return;
            }
            zzafa zzafaVar2 = this.zza;
            zzafaVar2.zza(i, 2);
            int iZzv = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                long jLongValue2 = ((Long) list.get(i3)).longValue();
                iZzv += zzafa.zzv((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
            }
            zzafaVar2.zzn(iZzv);
            while (i2 < list.size()) {
                long jLongValue3 = ((Long) list.get(i2)).longValue();
                zzafaVar2.zzp((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
                i2++;
            }
            return;
        }
        zzagq zzagqVar = (zzagq) list;
        if (!z) {
            while (i2 < zzagqVar.size()) {
                zzafa zzafaVar3 = this.zza;
                long jZze = zzagqVar.zze(i2);
                zzafaVar3.zze(i, (jZze >> 63) ^ (jZze + jZze));
                i2++;
            }
            return;
        }
        zzafa zzafaVar4 = this.zza;
        zzafaVar4.zza(i, 2);
        int iZzv2 = 0;
        for (int i4 = 0; i4 < zzagqVar.size(); i4++) {
            long jZze2 = zzagqVar.zze(i4);
            iZzv2 += zzafa.zzv((jZze2 >> 63) ^ (jZze2 + jZze2));
        }
        zzafaVar4.zzn(iZzv2);
        while (i2 < zzagqVar.size()) {
            long jZze3 = zzagqVar.zze(i2);
            zzafaVar4.zzp((jZze3 >> 63) ^ (jZze3 + jZze3));
            i2++;
        }
    }

    public final void zzy(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzagq)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zze(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzafa zzafaVar = this.zza;
            zzafaVar.zza(i, 2);
            int iZzv = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzv += zzafa.zzv(((Long) list.get(i3)).longValue());
            }
            zzafaVar.zzn(iZzv);
            while (i2 < list.size()) {
                zzafaVar.zzp(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        zzagq zzagqVar = (zzagq) list;
        if (!z) {
            while (i2 < zzagqVar.size()) {
                this.zza.zze(i, zzagqVar.zze(i2));
                i2++;
            }
            return;
        }
        zzafa zzafaVar2 = this.zza;
        zzafaVar2.zza(i, 2);
        int iZzv2 = 0;
        for (int i4 = 0; i4 < zzagqVar.size(); i4++) {
            iZzv2 += zzafa.zzv(zzagqVar.zze(i4));
        }
        zzafaVar2.zzn(iZzv2);
        while (i2 < zzagqVar.size()) {
            zzafaVar2.zzp(zzagqVar.zze(i2));
            i2++;
        }
    }
}
