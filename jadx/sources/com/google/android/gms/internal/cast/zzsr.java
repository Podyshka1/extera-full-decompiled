package com.google.android.gms.internal.cast;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
class zzsr extends zzsq {
    protected final byte[] zza;

    zzsr(byte[] bArr) {
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.cast.zzsu
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzsu) || zzd() != ((zzsu) obj).zzd()) {
            return false;
        }
        if (zzd() == 0) {
            return true;
        }
        if (!(obj instanceof zzsr)) {
            return obj.equals(this);
        }
        zzsr zzsrVar = (zzsr) obj;
        int iZzk = zzk();
        int iZzk2 = zzsrVar.zzk();
        if (iZzk != 0 && iZzk2 != 0 && iZzk != iZzk2) {
            return false;
        }
        int iZzd = zzd();
        if (iZzd > zzsrVar.zzd()) {
            throw new IllegalArgumentException("Length too large: " + iZzd + zzd());
        }
        if (iZzd > zzsrVar.zzd()) {
            throw new IllegalArgumentException("Ran off end of other: 0, " + iZzd + ", " + zzsrVar.zzd());
        }
        byte[] bArr = this.zza;
        byte[] bArr2 = zzsrVar.zza;
        zzsrVar.zzc();
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

    @Override // com.google.android.gms.internal.cast.zzsu
    public byte zza(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.cast.zzsu
    byte zzb(int i) {
        return this.zza[i];
    }

    protected int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.cast.zzsu
    public int zzd() {
        return this.zza.length;
    }

    @Override // com.google.android.gms.internal.cast.zzsu
    protected final int zze(int i, int i2, int i3) {
        return zzty.zzb(i, this.zza, 0, i3);
    }

    @Override // com.google.android.gms.internal.cast.zzsu
    public final zzsu zzf(int i, int i2) {
        zzsu.zzj(0, i2, zzd());
        return i2 == 0 ? zzsu.zzb : new zzso(this.zza, 0, i2);
    }

    @Override // com.google.android.gms.internal.cast.zzsu
    protected final String zzg(Charset charset) {
        return new String(this.zza, 0, zzd(), charset);
    }

    @Override // com.google.android.gms.internal.cast.zzsu
    final void zzh(zzsk zzskVar) {
        ((zzsz) zzskVar).zzc(this.zza, 0, zzd());
    }

    @Override // com.google.android.gms.internal.cast.zzsu
    public final boolean zzi() {
        return zzwn.zze(this.zza, 0, zzd());
    }
}
