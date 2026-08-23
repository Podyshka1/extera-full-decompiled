package com.google.android.recaptcha.internal;

import java.util.Arrays;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzgy extends zzhc {
    private final byte[] zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;

    public /* synthetic */ zzgy(byte[] bArr, int i, int i2, boolean z, zzgx zzgxVar) {
        super(null);
        this.zzj = Integer.MAX_VALUE;
        this.zze = bArr;
        this.zzf = 0;
        this.zzh = 0;
    }

    private final void zzI() {
        int i = this.zzf + this.zzg;
        this.zzf = i;
        int i2 = this.zzj;
        if (i <= i2) {
            this.zzg = 0;
            return;
        }
        int i3 = i - i2;
        this.zzg = i3;
        this.zzf = i - i3;
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final void zzA(int i) {
        this.zzj = i;
        zzI();
    }

    public final void zzB(int i) throws zzje {
        if (i >= 0) {
            int i2 = this.zzf;
            int i3 = this.zzh;
            if (i <= i2 - i3) {
                this.zzh = i3 + i;
                return;
            }
        }
        if (i >= 0) {
            throw zzje.zzj();
        }
        throw zzje.zzf();
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final boolean zzC() {
        return this.zzh == this.zzf;
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final boolean zzD() {
        return zzr() != 0;
    }

    public final byte zza() throws zzje {
        int i = this.zzh;
        if (i == this.zzf) {
            throw zzje.zzj();
        }
        byte[] bArr = this.zze;
        this.zzh = i + 1;
        return bArr[i];
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final double zzb() {
        return Double.longBitsToDouble(zzq());
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final float zzc() {
        return Float.intBitsToFloat(zzi());
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final int zzd() {
        return this.zzh;
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final int zze(int i) {
        if (i < 0) {
            throw zzje.zzf();
        }
        int i2 = i + this.zzh;
        if (i2 < 0) {
            throw zzje.zzg();
        }
        int i3 = this.zzj;
        if (i2 > i3) {
            throw zzje.zzj();
        }
        this.zzj = i2;
        zzI();
        return i3;
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final int zzf() {
        return zzj();
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final int zzg() {
        return zzi();
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final int zzh() {
        return zzj();
    }

    public final int zzi() throws zzje {
        int i = this.zzh;
        if (this.zzf - i < 4) {
            throw zzje.zzj();
        }
        byte[] bArr = this.zze;
        this.zzh = i + 4;
        return (bArr[i] & UByte.MAX_VALUE) | ((bArr[i + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i + 2] & UByte.MAX_VALUE) << 16) | ((bArr[i + 3] & UByte.MAX_VALUE) << 24);
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final int zzk() {
        return zzi();
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final int zzl() {
        return zzhc.zzF(zzj());
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final int zzm() throws zzje {
        if (zzC()) {
            this.zzi = 0;
            return 0;
        }
        int iZzj = zzj();
        this.zzi = iZzj;
        if ((iZzj >>> 3) != 0) {
            return iZzj;
        }
        throw zzje.zzc();
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final int zzn() {
        return zzj();
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final long zzo() {
        return zzq();
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final long zzp() {
        return zzr();
    }

    public final long zzq() throws zzje {
        int i = this.zzh;
        if (this.zzf - i < 8) {
            throw zzje.zzj();
        }
        byte[] bArr = this.zze;
        this.zzh = i + 8;
        long j = bArr[i];
        long j2 = (((long) bArr[i + 1]) & 255) << 8;
        long j3 = bArr[i + 2];
        long j4 = bArr[i + 3];
        return ((((long) bArr[i + 6]) & 255) << 48) | (j & 255) | j2 | ((j3 & 255) << 16) | ((j4 & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    public final long zzs() throws zzje {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte bZza = zza();
            j |= ((long) (bZza & ByteCompanionObject.MAX_VALUE)) << i;
            if ((bZza & ByteCompanionObject.MIN_VALUE) == 0) {
                return j;
            }
        }
        throw zzje.zze();
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final long zzt() {
        return zzq();
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final long zzu() {
        return zzhc.zzG(zzr());
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final long zzv() {
        return zzr();
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final zzgw zzw() throws zzje {
        int iZzj = zzj();
        if (iZzj > 0) {
            int i = this.zzf;
            int i2 = this.zzh;
            if (iZzj <= i - i2) {
                zzgw zzgwVarZzm = zzgw.zzm(this.zze, i2, iZzj);
                this.zzh += iZzj;
                return zzgwVarZzm;
            }
        }
        if (iZzj == 0) {
            return zzgw.zzb;
        }
        if (iZzj > 0) {
            int i3 = this.zzf;
            int i4 = this.zzh;
            if (iZzj <= i3 - i4) {
                int i5 = iZzj + i4;
                this.zzh = i5;
                return new zzgt(Arrays.copyOfRange(this.zze, i4, i5));
            }
        }
        if (iZzj <= 0) {
            throw zzje.zzf();
        }
        throw zzje.zzj();
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final String zzx() throws zzje {
        int iZzj = zzj();
        if (iZzj > 0) {
            int i = this.zzf;
            int i2 = this.zzh;
            if (iZzj <= i - i2) {
                String str = new String(this.zze, i2, iZzj, zzjc.zzb);
                this.zzh += iZzj;
                return str;
            }
        }
        if (iZzj == 0) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (iZzj < 0) {
            throw zzje.zzf();
        }
        throw zzje.zzj();
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final String zzy() throws zzje {
        int iZzj = zzj();
        if (iZzj > 0) {
            int i = this.zzf;
            int i2 = this.zzh;
            if (iZzj <= i - i2) {
                String strZzd = zzma.zzd(this.zze, i2, iZzj);
                this.zzh += iZzj;
                return strZzd;
            }
        }
        if (iZzj == 0) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (iZzj <= 0) {
            throw zzje.zzf();
        }
        throw zzje.zzj();
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final void zzz(int i) throws zzje {
        if (this.zzi != i) {
            throw zzje.zzb();
        }
    }

    public final int zzj() {
        int i;
        int i2 = this.zzh;
        int i3 = this.zzf;
        if (i3 != i2) {
            byte[] bArr = this.zze;
            int i4 = i2 + 1;
            byte b2 = bArr[i2];
            if (b2 >= 0) {
                this.zzh = i4;
                return b2;
            }
            if (i3 - i4 >= 9) {
                int i5 = i2 + 2;
                int i6 = (bArr[i4] << 7) ^ b2;
                if (i6 < 0) {
                    i = i6 ^ (-128);
                } else {
                    int i7 = i2 + 3;
                    int i8 = (bArr[i5] << 14) ^ i6;
                    if (i8 >= 0) {
                        i = i8 ^ 16256;
                    } else {
                        int i9 = i2 + 4;
                        int i10 = i8 ^ (bArr[i7] << 21);
                        if (i10 < 0) {
                            i = (-2080896) ^ i10;
                        } else {
                            i7 = i2 + 5;
                            byte b3 = bArr[i9];
                            int i11 = (i10 ^ (b3 << 28)) ^ 266354560;
                            if (b3 < 0) {
                                i9 = i2 + 6;
                                if (bArr[i7] < 0) {
                                    i7 = i2 + 7;
                                    if (bArr[i9] < 0) {
                                        i9 = i2 + 8;
                                        if (bArr[i7] < 0) {
                                            i7 = i2 + 9;
                                            if (bArr[i9] < 0) {
                                                int i12 = i2 + 10;
                                                if (bArr[i7] >= 0) {
                                                    i5 = i12;
                                                    i = i11;
                                                }
                                            }
                                        }
                                    }
                                }
                                i = i11;
                            }
                            i = i11;
                        }
                        i5 = i9;
                    }
                    i5 = i7;
                }
                this.zzh = i5;
                return i;
            }
        }
        return (int) zzs();
    }

    @Override // com.google.android.recaptcha.internal.zzhc
    public final boolean zzE(int i) throws zzje {
        int iZzm;
        int i2 = i & 7;
        int i3 = 0;
        if (i2 == 0) {
            if (this.zzf - this.zzh < 10) {
                while (i3 < 10) {
                    if (zza() < 0) {
                        i3++;
                    }
                }
                throw zzje.zze();
            }
            while (i3 < 10) {
                byte[] bArr = this.zze;
                int i4 = this.zzh;
                this.zzh = i4 + 1;
                if (bArr[i4] < 0) {
                    i3++;
                }
            }
            throw zzje.zze();
            return true;
        }
        if (i2 == 1) {
            zzB(8);
            return true;
        }
        if (i2 == 2) {
            zzB(zzj());
            return true;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzje.zza();
            }
            zzB(4);
            return true;
        }
        do {
            iZzm = zzm();
            if (iZzm == 0) {
                break;
            }
        } while (zzE(iZzm));
        zzz(((i >>> 3) << 3) | 4);
        return true;
    }

    public final long zzr() {
        long j;
        long j2;
        int i = this.zzh;
        int i2 = this.zzf;
        if (i2 != i) {
            byte[] bArr = this.zze;
            int i3 = i + 1;
            byte b2 = bArr[i];
            if (b2 >= 0) {
                this.zzh = i3;
                return b2;
            }
            if (i2 - i3 >= 9) {
                int i4 = i + 2;
                int i5 = (bArr[i3] << 7) ^ b2;
                if (i5 < 0) {
                    j = i5 ^ (-128);
                } else {
                    int i6 = i + 3;
                    int i7 = (bArr[i4] << 14) ^ i5;
                    if (i7 >= 0) {
                        j = i7 ^ 16256;
                    } else {
                        int i8 = i + 4;
                        int i9 = i7 ^ (bArr[i6] << 21);
                        if (i9 < 0) {
                            long j3 = (-2080896) ^ i9;
                            i4 = i8;
                            j = j3;
                        } else {
                            i6 = i + 5;
                            long j4 = (((long) bArr[i8]) << 28) ^ ((long) i9);
                            if (j4 >= 0) {
                                j = j4 ^ 266354560;
                            } else {
                                i4 = i + 6;
                                long j5 = (((long) bArr[i6]) << 35) ^ j4;
                                if (j5 < 0) {
                                    j2 = -34093383808L;
                                } else {
                                    int i10 = i + 7;
                                    long j6 = j5 ^ (((long) bArr[i4]) << 42);
                                    if (j6 >= 0) {
                                        j = j6 ^ 4363953127296L;
                                    } else {
                                        i4 = i + 8;
                                        j5 = j6 ^ (((long) bArr[i10]) << 49);
                                        if (j5 < 0) {
                                            j2 = -558586000294016L;
                                        } else {
                                            i10 = i + 9;
                                            long j7 = (j5 ^ (((long) bArr[i4]) << 56)) ^ 71499008037633920L;
                                            if (j7 < 0) {
                                                i4 = i + 10;
                                                if (bArr[i10] >= 0) {
                                                    j = j7;
                                                }
                                            } else {
                                                j = j7;
                                            }
                                        }
                                    }
                                    i4 = i10;
                                }
                                j = j5 ^ j2;
                            }
                        }
                    }
                    i4 = i6;
                }
                this.zzh = i4;
                return j;
            }
        }
        return zzs();
    }
}
