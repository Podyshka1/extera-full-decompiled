package com.google.android.recaptcha.internal;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzqa extends zzpo {
    Object[] zzd;
    private int zze;

    public zzqa(int i, boolean z) {
        super(i);
        this.zzd = new Object[zzqb.zzg(i)];
    }

    public final zzqb zzd() {
        zzqb zzqbVarZzn;
        int i = this.zzb;
        if (i == 0) {
            return zzqr.zza;
        }
        if (i == 1) {
            Object obj = this.zza[0];
            Objects.requireNonNull(obj);
            return new zzqt(obj);
        }
        if (this.zzd == null || zzqb.zzg(i) != this.zzd.length) {
            zzqbVarZzn = zzqb.zzn(this.zzb, this.zza);
            this.zzb = zzqbVarZzn.size();
        } else {
            int i2 = this.zzb;
            Object[] objArrCopyOf = this.zza;
            if (zzqb.zzo(i2, objArrCopyOf.length)) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, i2);
            }
            zzqbVarZzn = new zzqr(objArrCopyOf, this.zze, this.zzd, r6.length - 1, this.zzb);
        }
        this.zzc = true;
        this.zzd = null;
        return zzqbVarZzn;
    }

    @Override // com.google.android.recaptcha.internal.zzpp
    public final /* bridge */ /* synthetic */ zzpp zzb(Object obj) {
        obj.getClass();
        if (this.zzd != null) {
            int iZzg = zzqb.zzg(this.zzb);
            Object[] objArr = this.zzd;
            if (iZzg <= objArr.length) {
                int length = objArr.length - 1;
                int iHashCode = obj.hashCode();
                int iZza = zzpn.zza(iHashCode);
                while (true) {
                    int i = iZza & length;
                    Object[] objArr2 = this.zzd;
                    Object obj2 = objArr2[i];
                    if (obj2 == null) {
                        objArr2[i] = obj;
                        this.zze += iHashCode;
                        super.zza(obj);
                        return this;
                    }
                    if (obj2.equals(obj)) {
                        return this;
                    }
                    iZza = i + 1;
                }
            }
        }
        this.zzd = null;
        super.zza(obj);
        return this;
    }
}
