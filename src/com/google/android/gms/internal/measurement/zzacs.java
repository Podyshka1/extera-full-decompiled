package com.google.android.gms.internal.measurement;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzacs extends zzacv {
    private final byte[] zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;

    public /* synthetic */ zzacs(byte[] bArr, int i, int i2, boolean z, byte[] bArr2) {
        super(null);
        this.zzj = Integer.MAX_VALUE;
        this.zze = bArr;
        this.zzf = 0;
        this.zzh = 0;
    }

    private final void zzU() {
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

    public final long zzA() throws zzaeh {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte bZzI = zzI();
            j |= ((long) (bZzI & ByteCompanionObject.MAX_VALUE)) << i;
            if ((bZzI & ByteCompanionObject.MIN_VALUE) == 0) {
                return j;
            }
        }
        zzmw$$ExternalSyntheticBUOutline0.m326m("CodedInputStream encountered a malformed varint.");
        return 0L;
    }

    public final int zzB() throws zzaeh {
        int i = this.zzh;
        if (this.zzf - i < 4) {
            zzmw$$ExternalSyntheticBUOutline0.m326m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        byte[] bArr = this.zze;
        this.zzh = i + 4;
        return (bArr[i] & UByte.MAX_VALUE) | ((bArr[i + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i + 2] & UByte.MAX_VALUE) << 16) | ((bArr[i + 3] & UByte.MAX_VALUE) << 24);
    }

    public final long zzC() throws zzaeh {
        int i = this.zzh;
        if (this.zzf - i < 8) {
            zzmw$$ExternalSyntheticBUOutline0.m326m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0L;
        }
        byte[] bArr = this.zze;
        this.zzh = i + 8;
        long j = bArr[i];
        long j2 = (((long) bArr[i + 1]) & 255) << 8;
        long j3 = bArr[i + 2];
        long j4 = bArr[i + 3];
        return ((((long) bArr[i + 6]) & 255) << 48) | (j & 255) | j2 | ((j3 & 255) << 16) | ((j4 & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final void zzE(int i) {
        this.zzj = i;
        zzU();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int zzF() {
        int i = this.zzj;
        if (i == Integer.MAX_VALUE) {
            return -1;
        }
        return i - this.zzh;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final boolean zzG() {
        return this.zzh == this.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int zzH() {
        return this.zzh;
    }

    public final byte zzI() throws zzaeh {
        int i = this.zzh;
        if (i == this.zzf) {
            zzmw$$ExternalSyntheticBUOutline0.m326m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return (byte) 0;
        }
        byte[] bArr = this.zze;
        this.zzh = i + 1;
        return bArr[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int zzK(byte[] bArr, int i, int i2) {
        zzacv.zzT(bArr, i, i2);
        if (i2 == 0) {
            return 0;
        }
        int iMin = Math.min(i2, this.zzf - this.zzh);
        if (iMin == 0) {
            return -1;
        }
        System.arraycopy(this.zze, this.zzh, bArr, i, iMin);
        this.zzh += iMin;
        return iMin;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int zza() throws zzaeh {
        if (zzG()) {
            this.zzi = 0;
            return 0;
        }
        int iZzv = zzv();
        this.zzi = iZzv;
        if ((iZzv >>> 3) != 0) {
            return iZzv;
        }
        zzmw$$ExternalSyntheticBUOutline0.m326m("Protocol message contained an invalid tag (zero).");
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final void zzb(int i) throws zzaeh {
        if (this.zzi == i) {
            return;
        }
        zzmw$$ExternalSyntheticBUOutline0.m326m("Protocol message end-group tag did not match expected tag.");
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final double zzd() {
        return Double.longBitsToDouble(zzC());
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final float zze() {
        return Float.intBitsToFloat(zzB());
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final long zzf() {
        return zzz();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final long zzg() {
        return zzz();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int zzh() {
        return zzw();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final long zzi() {
        return zzC();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int zzj() {
        return zzB();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final boolean zzk() {
        return zzz() != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final String zzl() throws zzaeh {
        int iZzv = zzv();
        if (iZzv > 0) {
            int i = this.zzf;
            int i2 = this.zzh;
            if (iZzv <= i - i2) {
                String str = new String(this.zze, i2, iZzv, StandardCharsets.UTF_8);
                this.zzh += iZzv;
                return str;
            }
        }
        if (iZzv == 0) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (iZzv < 0) {
            zzmw$$ExternalSyntheticBUOutline0.m326m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return null;
        }
        zzmw$$ExternalSyntheticBUOutline0.m326m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final String zzm() throws zzaeh {
        int iZzv = zzv();
        if (iZzv > 0) {
            int i = this.zzf;
            int i2 = this.zzh;
            if (iZzv <= i - i2) {
                String strZzd = zzagl.zzd(this.zze, i2, iZzv);
                this.zzh += iZzv;
                return strZzd;
            }
        }
        if (iZzv == 0) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (iZzv <= 0) {
            zzmw$$ExternalSyntheticBUOutline0.m326m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return null;
        }
        zzmw$$ExternalSyntheticBUOutline0.m326m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final zzacr zzn() {
        int iZzv = zzv();
        if (iZzv > 0) {
            int i = this.zzf;
            int i2 = this.zzh;
            if (iZzv <= i - i2) {
                zzacr zzacrVarZzk = zzacr.zzk(this.zze, i2, iZzv, false);
                this.zzh += iZzv;
                return zzacrVarZzk;
            }
        }
        return iZzv == 0 ? zzacr.zza : zzacr.zzl(zzJ(iZzv), false);
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final byte[] zzo() {
        return zzJ(zzv());
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int zzp() {
        return zzv();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int zzq() {
        return zzw();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int zzr() {
        return zzB();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final long zzs() {
        return zzC();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int zzt() {
        return zzacv.zzR(zzv());
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final long zzu() {
        return zzacv.zzS(zzz());
    }

    public abstract int zzv();

    public abstract int zzw();

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int zzx() {
        return zzw();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final int zzD(int i) {
        if (i < 0) {
            zzmw$$ExternalSyntheticBUOutline0.m326m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        int i2 = i + this.zzh;
        if (i2 < 0) {
            zzmw$$ExternalSyntheticBUOutline0.m326m("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
            return 0;
        }
        int i3 = this.zzj;
        if (i2 > i3) {
            zzmw$$ExternalSyntheticBUOutline0.m326m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        this.zzj = i2;
        zzU();
        return i3;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final void zzL(int i) throws zzaeh {
        if (i >= 0) {
            int i2 = this.zzf;
            int i3 = this.zzh;
            if (i <= i2 - i3) {
                this.zzh = i3 + i;
                return;
            }
        }
        if (i < 0) {
            zzmw$$ExternalSyntheticBUOutline0.m326m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        } else {
            zzmw$$ExternalSyntheticBUOutline0.m326m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    public final byte[] zzJ(int i) throws zzaeh {
        if (i > 0) {
            int i2 = this.zzf;
            int i3 = this.zzh;
            if (i <= i2 - i3) {
                int i4 = i + i3;
                this.zzh = i4;
                return Arrays.copyOfRange(this.zze, i3, i4);
            }
        }
        if (i > 0) {
            zzmw$$ExternalSyntheticBUOutline0.m326m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return null;
        }
        if (i == 0) {
            return zzaed.zza;
        }
        zzmw$$ExternalSyntheticBUOutline0.m326m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        return null;
    }

    public final int zzy() {
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
        return (int) zzA();
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final boolean zzc(int i) throws zzaeh {
        int i2 = i & 7;
        int i3 = 0;
        if (i2 == 0) {
            if (this.zzf - this.zzh < 10) {
                while (i3 < 10) {
                    if (zzI() < 0) {
                        i3++;
                    }
                }
                zzmw$$ExternalSyntheticBUOutline0.m326m("CodedInputStream encountered a malformed varint.");
                return false;
            }
            while (i3 < 10) {
                byte[] bArr = this.zze;
                int i4 = this.zzh;
                this.zzh = i4 + 1;
                if (bArr[i4] < 0) {
                    i3++;
                }
            }
            zzmw$$ExternalSyntheticBUOutline0.m326m("CodedInputStream encountered a malformed varint.");
            return false;
            return true;
        }
        if (i2 == 1) {
            zzL(8);
            return true;
        }
        if (i2 == 2) {
            zzL(zzv());
            return true;
        }
        if (i2 == 3) {
            zzQ();
            zzb(((i >>> 3) << 3) | 4);
            return true;
        }
        if (i2 == 4) {
            zzP();
            return false;
        }
        if (i2 == 5) {
            zzL(4);
            return true;
        }
        zzacs$$ExternalSyntheticBUOutline0.m325m();
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzacv
    public final long zzz() {
        long j;
        long j2;
        long j3;
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
                            long j4 = (-2080896) ^ i9;
                            i4 = i8;
                            j = j4;
                        } else {
                            i6 = i + 5;
                            long j5 = (((long) bArr[i8]) << 28) ^ ((long) i9);
                            if (j5 >= 0) {
                                j = j5 ^ 266354560;
                            } else {
                                i4 = i + 6;
                                long j6 = (((long) bArr[i6]) << 35) ^ j5;
                                if (j6 < 0) {
                                    j3 = -34093383808L;
                                } else {
                                    int i10 = i + 7;
                                    long j7 = j6 ^ (((long) bArr[i4]) << 42);
                                    if (j7 >= 0) {
                                        j2 = 4363953127296L;
                                    } else {
                                        i4 = i + 8;
                                        j6 = j7 ^ (((long) bArr[i10]) << 49);
                                        if (j6 < 0) {
                                            j3 = -558586000294016L;
                                        } else {
                                            i10 = i + 9;
                                            j7 = j6 ^ (((long) bArr[i4]) << 56);
                                            if (j7 >= 0) {
                                                j2 = 71499008037633920L;
                                            } else {
                                                i4 = i + 10;
                                                long j8 = j7 ^ (((long) bArr[i10]) << 63);
                                                if (j8 >= 0) {
                                                    j = j8 ^ (-9151873028817141888L);
                                                }
                                            }
                                        }
                                    }
                                    j = j7 ^ j2;
                                    i4 = i10;
                                }
                                j = j6 ^ j3;
                            }
                        }
                    }
                    i4 = i6;
                }
                this.zzh = i4;
                return j;
            }
        }
        return zzA();
    }
}
