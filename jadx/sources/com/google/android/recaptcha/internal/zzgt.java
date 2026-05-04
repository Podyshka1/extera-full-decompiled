package com.google.android.recaptcha.internal;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes5.dex */
class zzgt extends zzgs {
    protected final byte[] zza;

    zzgt(byte[] bArr) {
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // com.google.android.recaptcha.internal.zzgw
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgw) || zzd() != ((zzgw) obj).zzd()) {
            return false;
        }
        if (zzd() == 0) {
            return true;
        }
        if (!(obj instanceof zzgt)) {
            return obj.equals(this);
        }
        zzgt zzgtVar = (zzgt) obj;
        int iZzl = zzl();
        int iZzl2 = zzgtVar.zzl();
        if (iZzl != 0 && iZzl2 != 0 && iZzl != iZzl2) {
            return false;
        }
        int iZzd = zzd();
        if (iZzd > zzgtVar.zzd()) {
            throw new IllegalArgumentException("Length too large: " + iZzd + zzd());
        }
        if (iZzd > zzgtVar.zzd()) {
            throw new IllegalArgumentException("Ran off end of other: 0, " + iZzd + ", " + zzgtVar.zzd());
        }
        byte[] bArr = this.zza;
        byte[] bArr2 = zzgtVar.zza;
        zzgtVar.zzc();
        int i = 0;
        int i2 = 0;
        while (i < iZzd) {
            if (bArr[i] != bArr2[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    @Override // com.google.android.recaptcha.internal.zzgw
    public byte zza(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.recaptcha.internal.zzgw
    byte zzb(int i) {
        return this.zza[i];
    }

    protected int zzc() {
        return 0;
    }

    @Override // com.google.android.recaptcha.internal.zzgw
    public int zzd() {
        return this.zza.length;
    }

    @Override // com.google.android.recaptcha.internal.zzgw
    protected void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zza, 0, bArr, 0, i3);
    }

    @Override // com.google.android.recaptcha.internal.zzgw
    protected final int zzf(int i, int i2, int i3) {
        return zzjc.zzb(i, this.zza, 0, i3);
    }

    @Override // com.google.android.recaptcha.internal.zzgw
    public final zzgw zzg(int i, int i2) {
        int iZzk = zzgw.zzk(0, i2, zzd());
        return iZzk == 0 ? zzgw.zzb : new zzgq(this.zza, 0, iZzk);
    }

    @Override // com.google.android.recaptcha.internal.zzgw
    protected final String zzh(Charset charset) {
        return new String(this.zza, 0, zzd(), charset);
    }

    @Override // com.google.android.recaptcha.internal.zzgw
    final void zzi(zzgm zzgmVar) {
        ((zzhe) zzgmVar).zzc(this.zza, 0, zzd());
    }

    @Override // com.google.android.recaptcha.internal.zzgw
    public final boolean zzj() {
        return zzma.zzf(this.zza, 0, zzd());
    }
}
