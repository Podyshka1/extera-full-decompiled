package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
final class zzxg extends zzxi {
    private final byte[] zzb;
    private final int zzc;
    private final int zzd;

    public zzxg(byte[] bArr, int i, int i2) {
        super(null);
        zzxk.zzj(i, i + i2, bArr.length);
        this.zzb = bArr;
        this.zzc = i;
        this.zzd = i2;
    }

    @Override // com.google.android.gms.internal.cast.zzxk
    public final byte zzb(int i) {
        return this.zzb[this.zzc + i];
    }

    @Override // com.google.android.gms.internal.cast.zzxk
    public final int zzc() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.cast.zzxk
    public final zzxk zzd(int i, int i2) {
        int iZzj = zzxk.zzj(i, i2, this.zzd);
        return iZzj == 0 ? zzxk.zza : new zzxg(this.zzb, this.zzc + i, iZzj);
    }

    @Override // com.google.android.gms.internal.cast.zzxk
    public final void zze(zzxd zzxdVar) throws zzxo {
        ((zzxn) zzxdVar).zzs(this.zzb, this.zzc, this.zzd);
    }

    @Override // com.google.android.gms.internal.cast.zzxk
    public final boolean zzf(zzxk zzxkVar) {
        boolean z = zzxkVar instanceof zzxj;
        if (!z && !(zzxkVar instanceof zzxg)) {
            return zzxkVar.zzf(this);
        }
        int i = this.zzd;
        if (i > zzxkVar.zzc()) {
            zzxg$$ExternalSyntheticBUOutline1.m308m(String.valueOf(i).length() + 18 + String.valueOf(i).length(), i);
            return false;
        }
        if (i > zzxkVar.zzc()) {
            int iZzc = zzxkVar.zzc();
            zzxg$$ExternalSyntheticBUOutline0.m307m(String.valueOf(i).length() + 27 + String.valueOf(iZzc).length(), i, iZzc);
            return false;
        }
        if (z) {
            return zzxk.zzk(this.zzb, this.zzc, ((zzxj) zzxkVar).zzh(), 0, i);
        }
        if (zzxkVar instanceof zzxg) {
            zzxg zzxgVar = (zzxg) zzxkVar;
            return zzxk.zzk(this.zzb, this.zzc, zzxgVar.zzb, zzxgVar.zzc, i);
        }
        zzxk zzxkVarZzd = zzxkVar.zzd(0, i);
        int i2 = this.zzc;
        return zzxkVarZzd.equals(zzd(i2, i + i2));
    }

    @Override // com.google.android.gms.internal.cast.zzxk
    public final int zzg(int i, int i2, int i3) {
        return zzym.zzb(i, this.zzb, this.zzc, i3);
    }

    public final /* synthetic */ byte[] zzh() {
        return this.zzb;
    }

    public final /* synthetic */ int zzi() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.cast.zzxk
    public final byte zza(int i) {
        int i2 = this.zzd;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.zzb[this.zzc + i];
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 11);
            sb.append("Index < 0: ");
            sb.append(i);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(i).length() + 18 + String.valueOf(i2).length());
        sb2.append("Index > length: ");
        sb2.append(i);
        sb2.append(", ");
        sb2.append(i2);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }
}
