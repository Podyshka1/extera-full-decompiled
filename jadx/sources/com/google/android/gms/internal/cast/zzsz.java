package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
final class zzsz extends zztc {
    private final byte[] zzc;
    private final int zzd;
    private int zze;

    zzsz(byte[] bArr, int i, int i2) {
        super(null);
        int length = bArr.length;
        if (((length - i2) | i2) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i2)));
        }
        this.zzc = bArr;
        this.zze = 0;
        this.zzd = i2;
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final int zza() {
        return this.zzd - this.zze;
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzd(int i, boolean z) throws zzta {
        zzq(i << 3);
        zzb(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zze(int i, zzsu zzsuVar) throws zzta {
        zzq((i << 3) | 2);
        zzq(zzsuVar.zzd());
        zzsuVar.zzh(this);
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzf(int i, int i2) throws zzta {
        zzq((i << 3) | 5);
        zzg(i2);
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzg(int i) throws zzta {
        try {
            byte[] bArr = this.zzc;
            int i2 = this.zze;
            int i3 = i2 + 1;
            this.zze = i3;
            bArr[i2] = (byte) (i & 255);
            int i4 = i2 + 2;
            this.zze = i4;
            bArr[i3] = (byte) ((i >> 8) & 255);
            int i5 = i2 + 3;
            this.zze = i5;
            bArr[i4] = (byte) ((i >> 16) & 255);
            this.zze = i2 + 4;
            bArr[i5] = (byte) ((i >> 24) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new zzta(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzh(int i, long j) throws zzta {
        zzq((i << 3) | 1);
        zzi(j);
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzi(long j) throws zzta {
        try {
            byte[] bArr = this.zzc;
            int i = this.zze;
            int i2 = i + 1;
            this.zze = i2;
            bArr[i] = (byte) (((int) j) & 255);
            int i3 = i + 2;
            this.zze = i3;
            bArr[i2] = (byte) (((int) (j >> 8)) & 255);
            int i4 = i + 3;
            this.zze = i4;
            bArr[i3] = (byte) (((int) (j >> 16)) & 255);
            int i5 = i + 4;
            this.zze = i5;
            bArr[i4] = (byte) (((int) (j >> 24)) & 255);
            int i6 = i + 5;
            this.zze = i6;
            bArr[i5] = (byte) (((int) (j >> 32)) & 255);
            int i7 = i + 6;
            this.zze = i7;
            bArr[i6] = (byte) (((int) (j >> 40)) & 255);
            int i8 = i + 7;
            this.zze = i8;
            bArr[i7] = (byte) (((int) (j >> 48)) & 255);
            this.zze = i + 8;
            bArr[i8] = (byte) (((int) (j >> 56)) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new zzta(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzj(int i, int i2) throws zzta {
        zzq(i << 3);
        zzk(i2);
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzk(int i) throws zzta {
        if (i >= 0) {
            zzq(i);
        } else {
            zzs(i);
        }
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzl(byte[] bArr, int i, int i2) {
        zzc(bArr, 0, i2);
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzm(int i, String str) throws zzta {
        zzq((i << 3) | 2);
        zzn(str);
    }

    public final void zzn(String str) throws zzta {
        int i = this.zze;
        try {
            int iZzx = zztc.zzx(str.length() * 3);
            int iZzx2 = zztc.zzx(str.length());
            if (iZzx2 != iZzx) {
                zzq(zzwn.zzc(str));
                byte[] bArr = this.zzc;
                int i2 = this.zze;
                this.zze = zzwn.zzb(str, bArr, i2, this.zzd - i2);
                return;
            }
            int i3 = i + iZzx2;
            this.zze = i3;
            int iZzb = zzwn.zzb(str, this.zzc, i3, this.zzd - i3);
            this.zze = i;
            zzq((iZzb - i) - iZzx2);
            this.zze = iZzb;
        } catch (zzwm e) {
            this.zze = i;
            zzB(str, e);
        } catch (IndexOutOfBoundsException e2) {
            throw new zzta(e2);
        }
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzo(int i, int i2) throws zzta {
        zzq((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzp(int i, int i2) throws zzta {
        zzq(i << 3);
        zzq(i2);
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzr(int i, long j) throws zzta {
        zzq(i << 3);
        zzs(j);
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzb(byte b) throws zzta {
        try {
            byte[] bArr = this.zzc;
            int i = this.zze;
            this.zze = i + 1;
            bArr[i] = b;
        } catch (IndexOutOfBoundsException e) {
            throw new zzta(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e);
        }
    }

    public final void zzc(byte[] bArr, int i, int i2) {
        try {
            System.arraycopy(bArr, 0, this.zzc, this.zze, i2);
            this.zze += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new zzta(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), Integer.valueOf(i2)), e);
        }
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzq(int i) throws zzta {
        while ((i & (-128)) != 0) {
            try {
                byte[] bArr = this.zzc;
                int i2 = this.zze;
                this.zze = i2 + 1;
                bArr[i2] = (byte) ((i & 127) | 128);
                i >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new zzta(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e);
            }
        }
        byte[] bArr2 = this.zzc;
        int i3 = this.zze;
        this.zze = i3 + 1;
        bArr2[i3] = (byte) i;
    }

    @Override // com.google.android.gms.internal.cast.zztc
    public final void zzs(long j) throws zzta {
        if (!zztc.zzd || this.zzd - this.zze < 10) {
            while ((j & (-128)) != 0) {
                try {
                    byte[] bArr = this.zzc;
                    int i = this.zze;
                    this.zze = i + 1;
                    bArr[i] = (byte) ((((int) j) & 127) | 128);
                    j >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzta(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e);
                }
            }
            byte[] bArr2 = this.zzc;
            int i2 = this.zze;
            this.zze = i2 + 1;
            bArr2[i2] = (byte) j;
            return;
        }
        while (true) {
            int i3 = (int) j;
            if ((j & (-128)) == 0) {
                byte[] bArr3 = this.zzc;
                int i4 = this.zze;
                this.zze = i4 + 1;
                zzwj.zzn(bArr3, i4, (byte) i3);
                return;
            }
            byte[] bArr4 = this.zzc;
            int i5 = this.zze;
            this.zze = i5 + 1;
            zzwj.zzn(bArr4, i5, (byte) ((i3 & 127) | 128));
            j >>>= 7;
        }
    }
}
