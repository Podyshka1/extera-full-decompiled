package com.google.android.gms.internal.cast;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
final class zzxj extends zzxi {
    private final byte[] zzb;

    public zzxj(byte[] bArr) {
        super(null);
        bArr.getClass();
        this.zzb = bArr;
    }

    @Override // com.google.android.gms.internal.cast.zzxk
    public final byte zza(int i) {
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.cast.zzxk
    public final byte zzb(int i) {
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.cast.zzxk
    public final int zzc() {
        return this.zzb.length;
    }

    @Override // com.google.android.gms.internal.cast.zzxk
    public final zzxk zzd(int i, int i2) {
        byte[] bArr = this.zzb;
        int iZzj = zzxk.zzj(0, i2, bArr.length);
        return iZzj == 0 ? zzxk.zza : new zzxg(bArr, 0, iZzj);
    }

    @Override // com.google.android.gms.internal.cast.zzxk
    public final void zze(zzxd zzxdVar) throws zzxo {
        byte[] bArr = this.zzb;
        ((zzxn) zzxdVar).zzs(bArr, 0, bArr.length);
    }

    @Override // com.google.android.gms.internal.cast.zzxk
    public final boolean zzf(zzxk zzxkVar) {
        boolean z = zzxkVar instanceof zzxj;
        if (z) {
            return Arrays.equals(this.zzb, ((zzxj) zzxkVar).zzb);
        }
        boolean z2 = zzxkVar instanceof zzxg;
        if (!z2) {
            return zzxkVar.zzf(this);
        }
        byte[] bArr = this.zzb;
        int iZzc = zzxkVar.zzc();
        int length = bArr.length;
        if (length > iZzc) {
            zzxg$$ExternalSyntheticBUOutline1.m338m(String.valueOf(length).length() + 18 + String.valueOf(length).length(), length);
            return false;
        }
        if (length > zzxkVar.zzc()) {
            int iZzc2 = zzxkVar.zzc();
            zzxg$$ExternalSyntheticBUOutline0.m337m(String.valueOf(length).length() + 27 + String.valueOf(iZzc2).length(), "Ran off end of other: 0, ", length, ", ", iZzc2);
            return false;
        }
        if (z) {
            return zzxk.zzk(bArr, 0, ((zzxj) zzxkVar).zzb, 0, length);
        }
        if (!z2) {
            return zzxkVar.zzd(0, length).equals(zzd(0, length));
        }
        zzxg zzxgVar = (zzxg) zzxkVar;
        return zzxk.zzk(bArr, 0, zzxgVar.zzh(), zzxgVar.zzi(), length);
    }

    @Override // com.google.android.gms.internal.cast.zzxk
    public final int zzg(int i, int i2, int i3) {
        return zzym.zzb(i, this.zzb, 0, i3);
    }

    public final /* synthetic */ byte[] zzh() {
        return this.zzb;
    }
}
