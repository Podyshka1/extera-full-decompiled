package com.google.android.recaptcha.internal;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzaes extends zzaev {
    private final byte[] zzf;
    private final int zzg;
    private int zzh;
    private int zzi;
    private final int zzj;
    private int zzk;
    private int zzl;

    public /* synthetic */ zzaes(byte[] bArr, int i, int i2, boolean z, byte[] bArr2) {
        super(null);
        this.zzl = Integer.MAX_VALUE;
        this.zzf = bArr;
        int i3 = i2 + i;
        this.zzg = i3;
        this.zzh = i3;
        this.zzi = i;
        this.zzj = i;
    }

    private final void zzI(int i) {
        this.zzl = i;
        int i2 = this.zzg;
        if (i > i2) {
            i = i2;
        }
        this.zzh = i;
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final void zzB(int i) {
        zzI(i);
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final boolean zzC() {
        return this.zzi == this.zzh;
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final int zzD() {
        return this.zzi - this.zzj;
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final int zza() throws zzagk {
        if (zzC()) {
            this.zzk = 0;
            return 0;
        }
        int iZzt = zzt();
        this.zzk = iZzt;
        if ((iZzt >>> 3) != 0) {
            return iZzt;
        }
        zzaeh$$ExternalSyntheticBUOutline0.m453m("Protocol message contained an invalid tag (zero).");
        return 0;
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final void zzb(int i) throws zzagk {
        if (this.zzk == 0) {
            return;
        }
        zzaeh$$ExternalSyntheticBUOutline0.m453m("Protocol message end-group tag did not match expected tag.");
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final double zzc() {
        return Double.longBitsToDouble(zzz());
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final float zzd() {
        return Float.intBitsToFloat(zzy());
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final long zze() {
        return zzw();
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final long zzf() {
        return zzw();
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final int zzg() {
        return zzu();
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final long zzh() {
        return zzz();
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final int zzi() {
        return zzy();
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final boolean zzj() {
        return zzw() != 0;
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final String zzk() throws zzagk {
        int iZzt = zzt();
        if (iZzt > 0) {
            int i = this.zzh;
            int i2 = this.zzi;
            if (iZzt <= i - i2) {
                String str = new String(this.zzf, i2, iZzt, StandardCharsets.UTF_8);
                this.zzi += iZzt;
                return str;
            }
        }
        if (iZzt == 0) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (iZzt < 0) {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return null;
        }
        zzaeh$$ExternalSyntheticBUOutline0.m453m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        return null;
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final String zzl() throws zzagk {
        int iZzt = zzt();
        if (iZzt > 0) {
            int i = this.zzh;
            int i2 = this.zzi;
            if (iZzt <= i - i2) {
                String strZzc = zzail.zzc(this.zzf, i2, iZzt);
                this.zzi += iZzt;
                return strZzc;
            }
        }
        if (iZzt == 0) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (iZzt <= 0) {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return null;
        }
        zzaeh$$ExternalSyntheticBUOutline0.m453m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        return null;
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final zzaer zzm() throws zzagk {
        int iZzt = zzt();
        if (iZzt > 0) {
            int i = this.zzh;
            int i2 = this.zzi;
            if (iZzt <= i - i2) {
                zzaer zzaerVarZzt = zzaer.zzt(this.zzf, i2, iZzt, false);
                this.zzi += iZzt;
                return zzaerVarZzt;
            }
        }
        if (iZzt == 0) {
            return zzaer.zza;
        }
        if (iZzt > 0) {
            int i3 = this.zzh;
            int i4 = this.zzi;
            if (iZzt <= i3 - i4) {
                int i5 = iZzt + i4;
                this.zzi = i5;
                return zzaer.zzv(Arrays.copyOfRange(this.zzf, i4, i5), false);
            }
        }
        if (iZzt <= 0) {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return null;
        }
        zzaeh$$ExternalSyntheticBUOutline0.m453m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        return null;
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final int zzn() {
        return zzt();
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final int zzo() {
        return zzu();
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final int zzp() {
        return zzy();
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final long zzq() {
        return zzz();
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final int zzr() {
        return zzaev.zzG(zzt());
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final long zzs() {
        return zzaev.zzH(zzw());
    }

    public abstract int zzt();

    public abstract int zzu();

    public final int zzy() throws zzagk {
        int i = this.zzi;
        if (this.zzh - i < 4) {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        byte[] bArr = this.zzf;
        this.zzi = i + 4;
        return (bArr[i] & UByte.MAX_VALUE) | ((bArr[i + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i + 2] & UByte.MAX_VALUE) << 16) | ((bArr[i + 3] & UByte.MAX_VALUE) << 24);
    }

    public final long zzz() throws zzagk {
        int i = this.zzi;
        if (this.zzh - i < 8) {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0L;
        }
        byte[] bArr = this.zzf;
        this.zzi = i + 8;
        long j = bArr[i];
        long j2 = (((long) bArr[i + 1]) & 255) << 8;
        long j3 = bArr[i + 2];
        long j4 = bArr[i + 3];
        return ((((long) bArr[i + 6]) & 255) << 48) | (j & 255) | j2 | ((j3 & 255) << 16) | ((j4 & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final int zzA(int i) {
        if (i < 0) {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        int i2 = this.zzi;
        int i3 = i2 + i;
        if (i3 < 0) {
            i3 = Integer.MAX_VALUE;
            if (i > Integer.MAX_VALUE - (i2 - this.zzj)) {
                zzaeh$$ExternalSyntheticBUOutline0.m453m("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
                return 0;
            }
        }
        int i4 = this.zzl;
        if (i3 <= i4) {
            zzI(i3);
            return i4;
        }
        zzaeh$$ExternalSyntheticBUOutline0.m453m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        return 0;
    }

    public final long zzx() throws zzagk {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            int i2 = this.zzi;
            if (i2 == this.zzh) {
                zzaeh$$ExternalSyntheticBUOutline0.m453m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                return 0L;
            }
            byte[] bArr = this.zzf;
            this.zzi = i2 + 1;
            byte b2 = bArr[i2];
            j |= ((long) (b2 & ByteCompanionObject.MAX_VALUE)) << i;
            if ((b2 & ByteCompanionObject.MIN_VALUE) == 0) {
                return j;
            }
        }
        zzaeh$$ExternalSyntheticBUOutline0.m453m("CodedInputStream encountered a malformed varint.");
        return 0L;
    }

    public final int zzv() {
        int i;
        int i2 = this.zzi;
        int i3 = this.zzh;
        if (i3 != i2) {
            byte[] bArr = this.zzf;
            int i4 = i2 + 1;
            byte b2 = bArr[i2];
            if (b2 >= 0) {
                this.zzi = i4;
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
                this.zzi = i5;
                return i;
            }
        }
        return (int) zzx();
    }

    public final long zzw() {
        long j;
        long j2;
        long j3;
        int i = this.zzi;
        int i2 = this.zzh;
        if (i2 != i) {
            byte[] bArr = this.zzf;
            int i3 = i + 1;
            byte b2 = bArr[i];
            if (b2 >= 0) {
                this.zzi = i3;
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
                this.zzi = i4;
                return j;
            }
        }
        return zzx();
    }
}
