package com.google.android.gms.internal.cast;

import java.util.Locale;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
final class zzxn extends zzxp {
    private final byte[] zzc;
    private final int zzd;
    private int zze;

    public zzxn(byte[] bArr, int i, int i2) {
        super(null);
        int length = bArr.length;
        if (((length - i2) | i2) < 0) {
            f$$ExternalSyntheticBUOutline1.m212m(String.format(Locale.US, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i2)));
            throw null;
        }
        this.zzc = bArr;
        this.zze = 0;
        this.zzd = i2;
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void zzb(int i, int i2) throws zzxo {
        zzo((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void zzc(int i, int i2) throws zzxo {
        zzo(i << 3);
        zzn(i2);
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void zzd(int i, int i2) throws zzxo {
        zzo(i << 3);
        zzo(i2);
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void zze(int i, int i2) throws zzxo {
        zzo((i << 3) | 5);
        zzp(i2);
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void zzf(int i, long j) throws zzxo {
        zzo(i << 3);
        zzq(j);
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void zzg(int i, long j) throws zzxo {
        zzo((i << 3) | 1);
        zzr(j);
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void zzh(int i, boolean z) throws zzxo {
        zzo(i << 3);
        zzm(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void zzi(int i, String str) throws zzxo {
        zzo((i << 3) | 2);
        zzt(str);
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void zzj(int i, zzxk zzxkVar) throws zzxo {
        zzo((i << 3) | 2);
        zzo(zzxkVar.zzc());
        zzxkVar.zze(this);
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void zzm(byte b2) throws zzxo {
        int i = this.zze;
        try {
            int i2 = i + 1;
            try {
                this.zzc[i] = b2;
                this.zze = i2;
            } catch (IndexOutOfBoundsException e) {
                e = e;
                i = i2;
                throw new zzxo(i, this.zzd, 1, e);
            }
        } catch (IndexOutOfBoundsException e2) {
            e = e2;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void zzn(int i) throws zzxo {
        if (i >= 0) {
            zzo(i);
        } else {
            zzq(i);
        }
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void zzp(int i) throws zzxo {
        int i2 = this.zze;
        try {
            byte[] bArr = this.zzc;
            bArr[i2] = (byte) i;
            bArr[i2 + 1] = (byte) (i >> 8);
            bArr[i2 + 2] = (byte) (i >> 16);
            bArr[i2 + 3] = (byte) (i >> 24);
            this.zze = i2 + 4;
        } catch (IndexOutOfBoundsException e) {
            throw new zzxo(i2, this.zzd, 4, e);
        }
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void zzr(long j) throws zzxo {
        int i = this.zze;
        try {
            byte[] bArr = this.zzc;
            bArr[i] = (byte) j;
            bArr[i + 1] = (byte) (j >> 8);
            bArr[i + 2] = (byte) (j >> 16);
            bArr[i + 3] = (byte) (j >> 24);
            bArr[i + 4] = (byte) (j >> 32);
            bArr[i + 5] = (byte) (j >> 40);
            bArr[i + 6] = (byte) (j >> 48);
            bArr[i + 7] = (byte) (j >> 56);
            this.zze = i + 8;
        } catch (IndexOutOfBoundsException e) {
            throw new zzxo(i, this.zzd, 8, e);
        }
    }

    public final void zzs(byte[] bArr, int i, int i2) throws zzxo {
        try {
            System.arraycopy(bArr, i, this.zzc, this.zze, i2);
            this.zze += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new zzxo(this.zze, this.zzd, i2, e);
        }
    }

    public final void zzt(String str) throws zzxo {
        int i = this.zze;
        try {
            int iZzv = zzxp.zzv(str.length() * 3);
            int iZzv2 = zzxp.zzv(str.length());
            if (iZzv2 != iZzv) {
                zzo(zzaao.zza(str));
                byte[] bArr = this.zzc;
                int i2 = this.zze;
                this.zze = zzaao.zzb(str, bArr, i2, this.zzd - i2);
                return;
            }
            int i3 = i + iZzv2;
            this.zze = i3;
            int iZzb = zzaao.zzb(str, this.zzc, i3, this.zzd - i3);
            this.zze = i;
            zzo((iZzb - i) - iZzv2);
            this.zze = iZzb;
        } catch (IndexOutOfBoundsException e) {
            throw new zzxo(e);
        }
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final int zzu() {
        return this.zzd - this.zze;
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void zzo(int i) throws zzxo {
        int i2;
        int i3 = this.zze;
        while (true) {
            int i4 = i & (-128);
            byte[] bArr = this.zzc;
            if (i4 == 0) {
                i2 = i3 + 1;
                bArr[i3] = (byte) i;
                this.zze = i2;
                return;
            } else {
                i2 = i3 + 1;
                try {
                    bArr[i3] = (byte) (i | 128);
                    i >>>= 7;
                    i3 = i2;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzxo(i2, this.zzd, 1, e);
                }
            }
            throw new zzxo(i2, this.zzd, 1, e);
        }
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void zzq(long j) throws zzxo {
        byte[] bArr;
        int i;
        int i2;
        byte[] bArr2;
        boolean z = zzxp.zzc;
        int i3 = this.zze;
        if (!z || this.zzd - i3 < 10) {
            while (true) {
                long j2 = j & (-128);
                bArr = this.zzc;
                if (j2 == 0) {
                    break;
                }
                int i4 = i3 + 1;
                try {
                    bArr[i3] = (byte) (((int) j) | 128);
                    j >>>= 7;
                    i3 = i4;
                } catch (IndexOutOfBoundsException e) {
                    e = e;
                    i = i4;
                }
                throw new zzxo(i, this.zzd, 1, e);
            }
            i = i3 + 1;
            try {
                bArr[i3] = (byte) j;
                i2 = i;
            } catch (IndexOutOfBoundsException e2) {
                e = e2;
            }
        } else {
            while (true) {
                long j3 = j & (-128);
                bArr2 = this.zzc;
                if (j3 == 0) {
                    break;
                }
                zzaak.zzp(bArr2, i3, (byte) (((int) j) | 128));
                j >>>= 7;
                i3++;
            }
            i2 = i3 + 1;
            zzaak.zzp(bArr2, i3, (byte) j);
        }
        this.zze = i2;
    }
}
