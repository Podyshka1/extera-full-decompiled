package com.google.android.gms.internal.cast;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zzxq implements zzaar {
    private final zzxp zza;

    private zzxq(zzxp zzxpVar) {
        byte[] bArr = zzym.zzb;
        this.zza = zzxpVar;
        zzxpVar.zza = this;
    }

    public static zzxq zza(zzxp zzxpVar) {
        Object obj = zzxpVar.zza;
        return obj != null ? (zzxq) obj : new zzxq(zzxpVar);
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzE(int i, List list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zza.zzj(i, (zzxk) list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzb(int i, int i2) {
        this.zza.zze(i, i2);
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzc(int i, long j) {
        this.zza.zzf(i, j);
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzd(int i, long j) {
        this.zza.zzg(i, j);
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zze(int i, float f) {
        this.zza.zze(i, Float.floatToRawIntBits(f));
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzf(int i, double d) {
        this.zza.zzg(i, Double.doubleToRawLongBits(d));
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzg(int i, int i2) {
        this.zza.zzc(i, i2);
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzh(int i, long j) {
        this.zza.zzf(i, j);
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzi(int i, int i2) {
        this.zza.zzc(i, i2);
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzj(int i, long j) {
        this.zza.zzg(i, j);
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzk(int i, int i2) {
        this.zza.zze(i, i2);
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzl(int i, boolean z) {
        this.zza.zzh(i, z);
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzm(int i, String str) {
        this.zza.zzi(i, str);
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzn(int i, zzxk zzxkVar) {
        this.zza.zzj(i, zzxkVar);
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzo(int i, int i2) {
        this.zza.zzd(i, i2);
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzp(int i, int i2) {
        zzxp zzxpVar = this.zza;
        zzxpVar.zzd(i, (i2 >> 31) ^ (i2 + i2));
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzq(int i, long j) {
        zzxp zzxpVar = this.zza;
        zzxpVar.zzf(i, (j >> 63) ^ (j + j));
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzr(int i, Object obj, zzzs zzzsVar) {
        zzxp zzxpVar = this.zza;
        zzwz zzwzVar = (zzwz) obj;
        zzxpVar.zzb(i, 2);
        zzxpVar.zzo(zzwzVar.zzt(zzzsVar));
        zzzsVar.zzf(zzwzVar, this);
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzs(int i, Object obj, zzzs zzzsVar) {
        zzxp zzxpVar = this.zza;
        zzxpVar.zzb(i, 3);
        zzzsVar.zzf((zzwz) obj, this);
        zzxpVar.zzb(i, 4);
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzD(int i, List list) {
        int i2 = 0;
        if (!(list instanceof zzyu)) {
            while (i2 < list.size()) {
                this.zza.zzi(i, (String) list.get(i2));
                i2++;
            }
            return;
        }
        zzyu zzyuVar = (zzyu) list;
        while (i2 < list.size()) {
            Object objZza = zzyuVar.zza();
            boolean z = objZza instanceof String;
            zzxp zzxpVar = this.zza;
            if (z) {
                zzxpVar.zzi(i, (String) objZza);
            } else {
                zzxpVar.zzj(i, (zzxk) objZza);
            }
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzF(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzye)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzd(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzxp zzxpVar = this.zza;
            zzxpVar.zzb(i, 2);
            int iZzv = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzv += zzxp.zzv(((Integer) list.get(i3)).intValue());
            }
            zzxpVar.zzo(iZzv);
            while (i2 < list.size()) {
                zzxpVar.zzo(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzye zzyeVar = (zzye) list;
        if (!z) {
            while (i2 < zzyeVar.size()) {
                this.zza.zzd(i, zzyeVar.zzg(i2));
                i2++;
            }
            return;
        }
        zzxp zzxpVar2 = this.zza;
        zzxpVar2.zzb(i, 2);
        int iZzv2 = 0;
        for (int i4 = 0; i4 < zzyeVar.size(); i4++) {
            iZzv2 += zzxp.zzv(zzyeVar.zzg(i4));
        }
        zzxpVar2.zzo(iZzv2);
        while (i2 < zzyeVar.size()) {
            zzxpVar2.zzo(zzyeVar.zzg(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzv(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzye)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zze(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzxp zzxpVar = this.zza;
            zzxpVar.zzb(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            zzxpVar.zzo(i3);
            while (i2 < list.size()) {
                zzxpVar.zzp(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzye zzyeVar = (zzye) list;
        if (!z) {
            while (i2 < zzyeVar.size()) {
                this.zza.zze(i, zzyeVar.zzg(i2));
                i2++;
            }
            return;
        }
        zzxp zzxpVar2 = this.zza;
        zzxpVar2.zzb(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzyeVar.size(); i6++) {
            zzyeVar.zzg(i6);
            i5 += 4;
        }
        zzxpVar2.zzo(i5);
        while (i2 < zzyeVar.size()) {
            zzxpVar2.zzp(zzyeVar.zzg(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzx(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzyx)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzf(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzxp zzxpVar = this.zza;
            zzxpVar.zzb(i, 2);
            int iZzw = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzw += zzxp.zzw(((Long) list.get(i3)).longValue());
            }
            zzxpVar.zzo(iZzw);
            while (i2 < list.size()) {
                zzxpVar.zzq(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        zzyx zzyxVar = (zzyx) list;
        if (!z) {
            while (i2 < zzyxVar.size()) {
                this.zza.zzf(i, zzyxVar.zze(i2));
                i2++;
            }
            return;
        }
        zzxp zzxpVar2 = this.zza;
        zzxpVar2.zzb(i, 2);
        int iZzw2 = 0;
        for (int i4 = 0; i4 < zzyxVar.size(); i4++) {
            iZzw2 += zzxp.zzw(zzyxVar.zze(i4));
        }
        zzxpVar2.zzo(iZzw2);
        while (i2 < zzyxVar.size()) {
            zzxpVar2.zzq(zzyxVar.zze(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzy(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzyx)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzg(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzxp zzxpVar = this.zza;
            zzxpVar.zzb(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                i3 += 8;
            }
            zzxpVar.zzo(i3);
            while (i2 < list.size()) {
                zzxpVar.zzr(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        zzyx zzyxVar = (zzyx) list;
        if (!z) {
            while (i2 < zzyxVar.size()) {
                this.zza.zzg(i, zzyxVar.zze(i2));
                i2++;
            }
            return;
        }
        zzxp zzxpVar2 = this.zza;
        zzxpVar2.zzb(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzyxVar.size(); i6++) {
            zzyxVar.zze(i6);
            i5 += 8;
        }
        zzxpVar2.zzo(i5);
        while (i2 < zzyxVar.size()) {
            zzxpVar2.zzr(zzyxVar.zze(i2));
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
    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzC(int i, List list, boolean z) {
        if (list instanceof zzxc) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            if (!z) {
                throw null;
            }
            this.zza.zzb(i, 2);
            throw null;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzh(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
            return;
        }
        zzxp zzxpVar = this.zza;
        zzxpVar.zzb(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).getClass();
            i3++;
        }
        zzxpVar.zzo(i3);
        while (i2 < list.size()) {
            zzxpVar.zzm(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzu(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzye)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzc(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzxp zzxpVar = this.zza;
            zzxpVar.zzb(i, 2);
            int iZzw = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzw += zzxp.zzw(((Integer) list.get(i3)).intValue());
            }
            zzxpVar.zzo(iZzw);
            while (i2 < list.size()) {
                zzxpVar.zzn(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzye zzyeVar = (zzye) list;
        if (!z) {
            while (i2 < zzyeVar.size()) {
                this.zza.zzc(i, zzyeVar.zzg(i2));
                i2++;
            }
            return;
        }
        zzxp zzxpVar2 = this.zza;
        zzxpVar2.zzb(i, 2);
        int iZzw2 = 0;
        for (int i4 = 0; i4 < zzyeVar.size(); i4++) {
            iZzw2 += zzxp.zzw(zzyeVar.zzg(i4));
        }
        zzxpVar2.zzo(iZzw2);
        while (i2 < zzyeVar.size()) {
            zzxpVar2.zzn(zzyeVar.zzg(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzA(int i, List list, boolean z) {
        if (list instanceof zzxr) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(list);
            if (!z) {
                throw null;
            }
            this.zza.zzb(i, 2);
            throw null;
        }
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzg(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        zzxp zzxpVar = this.zza;
        zzxpVar.zzb(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).getClass();
            i3 += 8;
        }
        zzxpVar.zzo(i3);
        while (i2 < list.size()) {
            zzxpVar.zzr(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzG(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzye)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zze(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzxp zzxpVar = this.zza;
            zzxpVar.zzb(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            zzxpVar.zzo(i3);
            while (i2 < list.size()) {
                zzxpVar.zzp(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzye zzyeVar = (zzye) list;
        if (!z) {
            while (i2 < zzyeVar.size()) {
                this.zza.zze(i, zzyeVar.zzg(i2));
                i2++;
            }
            return;
        }
        zzxp zzxpVar2 = this.zza;
        zzxpVar2.zzb(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzyeVar.size(); i6++) {
            zzyeVar.zzg(i6);
            i5 += 4;
        }
        zzxpVar2.zzo(i5);
        while (i2 < zzyeVar.size()) {
            zzxpVar2.zzp(zzyeVar.zzg(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzH(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzyx)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzg(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzxp zzxpVar = this.zza;
            zzxpVar.zzb(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                i3 += 8;
            }
            zzxpVar.zzo(i3);
            while (i2 < list.size()) {
                zzxpVar.zzr(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        zzyx zzyxVar = (zzyx) list;
        if (!z) {
            while (i2 < zzyxVar.size()) {
                this.zza.zzg(i, zzyxVar.zze(i2));
                i2++;
            }
            return;
        }
        zzxp zzxpVar2 = this.zza;
        zzxpVar2.zzb(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzyxVar.size(); i6++) {
            zzyxVar.zze(i6);
            i5 += 8;
        }
        zzxpVar2.zzo(i5);
        while (i2 < zzyxVar.size()) {
            zzxpVar2.zzr(zzyxVar.zze(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzz(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzxy)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zze(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                    i2++;
                }
                return;
            }
            zzxp zzxpVar = this.zza;
            zzxpVar.zzb(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Float) list.get(i4)).getClass();
                i3 += 4;
            }
            zzxpVar.zzo(i3);
            while (i2 < list.size()) {
                zzxpVar.zzp(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        zzxy zzxyVar = (zzxy) list;
        if (!z) {
            while (i2 < zzxyVar.size()) {
                this.zza.zze(i, Float.floatToRawIntBits(zzxyVar.zzg(i2)));
                i2++;
            }
            return;
        }
        zzxp zzxpVar2 = this.zza;
        zzxpVar2.zzb(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < zzxyVar.size(); i6++) {
            zzxyVar.zzg(i6);
            i5 += 4;
        }
        zzxpVar2.zzo(i5);
        while (i2 < zzxyVar.size()) {
            zzxpVar2.zzp(Float.floatToRawIntBits(zzxyVar.zzg(i2)));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzB(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzye)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzc(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzxp zzxpVar = this.zza;
            zzxpVar.zzb(i, 2);
            int iZzw = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzw += zzxp.zzw(((Integer) list.get(i3)).intValue());
            }
            zzxpVar.zzo(iZzw);
            while (i2 < list.size()) {
                zzxpVar.zzn(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        zzye zzyeVar = (zzye) list;
        if (!z) {
            while (i2 < zzyeVar.size()) {
                this.zza.zzc(i, zzyeVar.zzg(i2));
                i2++;
            }
            return;
        }
        zzxp zzxpVar2 = this.zza;
        zzxpVar2.zzb(i, 2);
        int iZzw2 = 0;
        for (int i4 = 0; i4 < zzyeVar.size(); i4++) {
            iZzw2 += zzxp.zzw(zzyeVar.zzg(i4));
        }
        zzxpVar2.zzo(iZzw2);
        while (i2 < zzyeVar.size()) {
            zzxpVar2.zzn(zzyeVar.zzg(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzI(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzye)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzxp zzxpVar = this.zza;
                    int iIntValue = ((Integer) list.get(i2)).intValue();
                    zzxpVar.zzd(i, (iIntValue >> 31) ^ (iIntValue + iIntValue));
                    i2++;
                }
                return;
            }
            zzxp zzxpVar2 = this.zza;
            zzxpVar2.zzb(i, 2);
            int iZzv = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                int iIntValue2 = ((Integer) list.get(i3)).intValue();
                iZzv += zzxp.zzv((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
            }
            zzxpVar2.zzo(iZzv);
            while (i2 < list.size()) {
                int iIntValue3 = ((Integer) list.get(i2)).intValue();
                zzxpVar2.zzo((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
                i2++;
            }
            return;
        }
        zzye zzyeVar = (zzye) list;
        if (!z) {
            while (i2 < zzyeVar.size()) {
                zzxp zzxpVar3 = this.zza;
                int iZzg = zzyeVar.zzg(i2);
                zzxpVar3.zzd(i, (iZzg >> 31) ^ (iZzg + iZzg));
                i2++;
            }
            return;
        }
        zzxp zzxpVar4 = this.zza;
        zzxpVar4.zzb(i, 2);
        int iZzv2 = 0;
        for (int i4 = 0; i4 < zzyeVar.size(); i4++) {
            int iZzg2 = zzyeVar.zzg(i4);
            iZzv2 += zzxp.zzv((iZzg2 >> 31) ^ (iZzg2 + iZzg2));
        }
        zzxpVar4.zzo(iZzv2);
        while (i2 < zzyeVar.size()) {
            int iZzg3 = zzyeVar.zzg(i2);
            zzxpVar4.zzo((iZzg3 >> 31) ^ (iZzg3 + iZzg3));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzJ(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzyx)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzxp zzxpVar = this.zza;
                    long jLongValue = ((Long) list.get(i2)).longValue();
                    zzxpVar.zzf(i, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                    i2++;
                }
                return;
            }
            zzxp zzxpVar2 = this.zza;
            zzxpVar2.zzb(i, 2);
            int iZzw = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                long jLongValue2 = ((Long) list.get(i3)).longValue();
                iZzw += zzxp.zzw((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
            }
            zzxpVar2.zzo(iZzw);
            while (i2 < list.size()) {
                long jLongValue3 = ((Long) list.get(i2)).longValue();
                zzxpVar2.zzq((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
                i2++;
            }
            return;
        }
        zzyx zzyxVar = (zzyx) list;
        if (!z) {
            while (i2 < zzyxVar.size()) {
                zzxp zzxpVar3 = this.zza;
                long jZze = zzyxVar.zze(i2);
                zzxpVar3.zzf(i, (jZze >> 63) ^ (jZze + jZze));
                i2++;
            }
            return;
        }
        zzxp zzxpVar4 = this.zza;
        zzxpVar4.zzb(i, 2);
        int iZzw2 = 0;
        for (int i4 = 0; i4 < zzyxVar.size(); i4++) {
            long jZze2 = zzyxVar.zze(i4);
            iZzw2 += zzxp.zzw((jZze2 >> 63) ^ (jZze2 + jZze2));
        }
        zzxpVar4.zzo(iZzw2);
        while (i2 < zzyxVar.size()) {
            long jZze3 = zzyxVar.zze(i2);
            zzxpVar4.zzq((jZze3 >> 63) ^ (jZze3 + jZze3));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzaar
    public final void zzw(int i, List list, boolean z) {
        int i2 = 0;
        if (!(list instanceof zzyx)) {
            if (!z) {
                while (i2 < list.size()) {
                    this.zza.zzf(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzxp zzxpVar = this.zza;
            zzxpVar.zzb(i, 2);
            int iZzw = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iZzw += zzxp.zzw(((Long) list.get(i3)).longValue());
            }
            zzxpVar.zzo(iZzw);
            while (i2 < list.size()) {
                zzxpVar.zzq(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        zzyx zzyxVar = (zzyx) list;
        if (!z) {
            while (i2 < zzyxVar.size()) {
                this.zza.zzf(i, zzyxVar.zze(i2));
                i2++;
            }
            return;
        }
        zzxp zzxpVar2 = this.zza;
        zzxpVar2.zzb(i, 2);
        int iZzw2 = 0;
        for (int i4 = 0; i4 < zzyxVar.size(); i4++) {
            iZzw2 += zzxp.zzw(zzyxVar.zze(i4));
        }
        zzxpVar2.zzo(iZzw2);
        while (i2 < zzyxVar.size()) {
            zzxpVar2.zzq(zzyxVar.zze(i2));
            i2++;
        }
    }
}
