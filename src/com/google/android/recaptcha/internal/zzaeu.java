package com.google.android.recaptcha.internal;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzaeu extends zzaev {
    private final InputStream zzf;
    private final byte[] zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private int zzm;

    public /* synthetic */ zzaeu(InputStream inputStream, int i, byte[] bArr) {
        super(null);
        this.zzm = Integer.MAX_VALUE;
        this.zzf = inputStream;
        this.zzg = new byte[4096];
        this.zzh = 0;
        this.zzj = 0;
        this.zzl = 0;
    }

    private final void zzI(int i) throws zzagk {
        if (zzJ(i)) {
            return;
        }
        if (i > (Integer.MAX_VALUE - this.zzl) - this.zzj) {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
        } else {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    private final boolean zzJ(int i) throws IOException {
        int i2 = this.zzj;
        int i3 = i2 + i;
        int i4 = this.zzh;
        if (i3 <= i4) {
            zzsj$$ExternalSyntheticBUOutline0.m455m(String.valueOf(i).length() + 66, "refillBuffer() called when ", i, " bytes were already available in buffer");
            return false;
        }
        int i5 = this.zzl;
        int i6 = i5 + i2;
        if (zzN(i6, i, Integer.MAX_VALUE) || zzN(i6, i, this.zzm)) {
            return false;
        }
        if (i2 > 0) {
            if (i4 > i2) {
                byte[] bArr = this.zzg;
                System.arraycopy(bArr, i2, bArr, 0, i4 - i2);
            }
            i5 = this.zzl + i2;
            this.zzl = i5;
            i4 = this.zzh - i2;
            this.zzh = i4;
            this.zzj = 0;
        }
        try {
            int i7 = this.zzf.read(this.zzg, i4, Math.min(4096 - i4, (Integer.MAX_VALUE - i5) - i4));
            if (i7 != 0 && i7 >= -1 && i7 <= 4096) {
                if (i7 <= 0) {
                    return false;
                }
                this.zzh += i7;
                zzz();
                return this.zzh >= i || zzJ(i);
            }
            String strValueOf = String.valueOf(this.zzf.getClass());
            StringBuilder sb = new StringBuilder(strValueOf.length() + 39 + String.valueOf(i7).length() + 41);
            sb.append(strValueOf);
            sb.append("#read(byte[]) returned invalid result: ");
            sb.append(i7);
            sb.append("\nThe InputStream implementation is buggy.");
            throw new IllegalStateException(sb.toString());
        } catch (zzagk e) {
            e.zza();
            throw e;
        }
    }

    private final byte[] zzK(int i, boolean z) throws IOException {
        byte[] bArrZzL = zzL(i);
        if (bArrZzL != null) {
            return bArrZzL;
        }
        int i2 = this.zzj;
        int i3 = this.zzh;
        int i4 = i3 - i2;
        this.zzl += i3;
        this.zzj = 0;
        this.zzh = 0;
        List<byte[]> listZzM = zzM(i - i4);
        byte[] bArr = new byte[i];
        System.arraycopy(this.zzg, i2, bArr, 0, i4);
        for (byte[] bArr2 : listZzM) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i4, length);
            i4 += length;
        }
        return bArr;
    }

    private final byte[] zzL(int i) throws IOException {
        if (i == 0) {
            return zzagf.zza;
        }
        int i2 = this.zzl;
        int i3 = this.zzj;
        int i4 = i2 + i3;
        if (zzN(i4, i, Integer.MAX_VALUE)) {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
            return null;
        }
        int i5 = this.zzm;
        if (zzN(i4, i, i5)) {
            if (i5 >= i4) {
                zzy(i5 - i4);
            }
            zzaeh$$ExternalSyntheticBUOutline0.m453m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return null;
        }
        int i6 = this.zzh - i3;
        int i7 = i - i6;
        if (i7 >= 4096) {
            try {
                if (i7 > this.zzf.available()) {
                    return null;
                }
            } catch (zzagk e) {
                e.zza();
                throw e;
            }
        }
        byte[] bArr = new byte[i];
        System.arraycopy(this.zzg, this.zzj, bArr, 0, i6);
        this.zzl += this.zzh;
        this.zzj = 0;
        this.zzh = 0;
        while (i6 < i) {
            try {
                int i8 = this.zzf.read(bArr, i6, i - i6);
                if (i8 == -1) {
                    zzaeh$$ExternalSyntheticBUOutline0.m453m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                    return null;
                }
                this.zzl += i8;
                i6 += i8;
            } catch (zzagk e2) {
                e2.zza();
                throw e2;
            }
        }
        return bArr;
    }

    private final List zzM(int i) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i > 0) {
            int iMin = Math.min(i, 4096);
            byte[] bArr = new byte[iMin];
            int i2 = 0;
            while (i2 < iMin) {
                try {
                    int i3 = this.zzf.read(bArr, i2, iMin - i2);
                    if (i3 == -1) {
                        zzaeh$$ExternalSyntheticBUOutline0.m453m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                        return null;
                    }
                    this.zzl += i3;
                    i2 += i3;
                } catch (zzagk e) {
                    e.zza();
                    throw e;
                }
            }
            i -= iMin;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    private static boolean zzN(int i, int i2, int i3) {
        return i3 < i || i2 > i3 - i;
    }

    private final void zzz() {
        int i = this.zzh + this.zzi;
        this.zzh = i;
        int i2 = this.zzl + i;
        int i3 = this.zzm;
        if (i2 <= i3) {
            this.zzi = 0;
            return;
        }
        int i4 = i2 - i3;
        this.zzi = i4;
        this.zzh = i - i4;
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final void zzB(int i) {
        this.zzm = i;
        zzz();
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final boolean zzC() {
        return this.zzj == this.zzh && !zzJ(1);
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final int zzD() {
        return this.zzl + this.zzj;
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
        return Double.longBitsToDouble(zzx());
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final float zzd() {
        return Float.intBitsToFloat(zzw());
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final long zze() {
        return zzu();
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final long zzf() {
        return zzu();
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final int zzg() {
        return zzt();
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final long zzh() {
        return zzx();
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final int zzi() {
        return zzw();
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final boolean zzj() {
        return zzu() != 0;
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final String zzk() throws zzagk {
        int iZzt = zzt();
        if (iZzt > 0) {
            int i = this.zzh;
            int i2 = this.zzj;
            if (iZzt <= i - i2) {
                String str = new String(this.zzg, i2, iZzt, StandardCharsets.UTF_8);
                this.zzj += iZzt;
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
        if (iZzt > this.zzh) {
            return new String(zzK(iZzt, false), StandardCharsets.UTF_8);
        }
        zzI(iZzt);
        String str2 = new String(this.zzg, this.zzj, iZzt, StandardCharsets.UTF_8);
        this.zzj += iZzt;
        return str2;
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final String zzl() throws IOException {
        byte[] bArrZzK;
        int iZzt = zzt();
        int i = this.zzj;
        int i2 = this.zzh;
        if (iZzt <= i2 - i && iZzt > 0) {
            bArrZzK = this.zzg;
            this.zzj = i + iZzt;
        } else {
            if (iZzt == 0) {
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
            if (iZzt < 0) {
                zzaeh$$ExternalSyntheticBUOutline0.m453m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                return null;
            }
            i = 0;
            if (iZzt <= i2) {
                zzI(iZzt);
                bArrZzK = this.zzg;
                this.zzj = iZzt;
            } else {
                bArrZzK = zzK(iZzt, false);
            }
        }
        return zzail.zzc(bArrZzK, i, iZzt);
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final zzaer zzm() throws IOException {
        int iZzt = zzt();
        int i = this.zzh;
        int i2 = this.zzj;
        if (iZzt <= i - i2 && iZzt > 0) {
            zzaer zzaerVarZzt = zzaer.zzt(this.zzg, i2, iZzt, false);
            this.zzj += iZzt;
            return zzaerVarZzt;
        }
        if (iZzt == 0) {
            return zzaer.zza;
        }
        if (iZzt < 0) {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return null;
        }
        byte[] bArrZzL = zzL(iZzt);
        if (bArrZzL != null) {
            return zzaer.zzt(bArrZzL, 0, bArrZzL.length, false);
        }
        int i3 = this.zzj;
        int i4 = this.zzh;
        int i5 = i4 - i3;
        this.zzl += i4;
        this.zzj = 0;
        this.zzh = 0;
        List<byte[]> listZzM = zzM(iZzt - i5);
        byte[] bArr = new byte[iZzt];
        System.arraycopy(this.zzg, i3, bArr, 0, i5);
        for (byte[] bArr2 : listZzM) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i5, length);
            i5 += length;
        }
        return zzaer.zzu(bArr);
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final int zzn() {
        return zzt();
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final int zzo() {
        return zzt();
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final int zzp() {
        return zzw();
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final long zzq() {
        return zzx();
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final int zzr() {
        return zzaev.zzG(zzt());
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final long zzs() {
        return zzaev.zzH(zzu());
    }

    public final long zzv() throws zzagk {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            if (this.zzj == this.zzh) {
                zzI(1);
            }
            byte[] bArr = this.zzg;
            int i2 = this.zzj;
            this.zzj = i2 + 1;
            byte b2 = bArr[i2];
            j |= ((long) (b2 & ByteCompanionObject.MAX_VALUE)) << i;
            if ((b2 & ByteCompanionObject.MIN_VALUE) == 0) {
                return j;
            }
        }
        zzaeh$$ExternalSyntheticBUOutline0.m453m("CodedInputStream encountered a malformed varint.");
        return 0L;
    }

    public final int zzw() throws zzagk {
        int i = this.zzj;
        if (this.zzh - i < 4) {
            zzI(4);
            i = this.zzj;
        }
        byte[] bArr = this.zzg;
        this.zzj = i + 4;
        return (bArr[i] & UByte.MAX_VALUE) | ((bArr[i + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i + 2] & UByte.MAX_VALUE) << 16) | ((bArr[i + 3] & UByte.MAX_VALUE) << 24);
    }

    public final long zzx() throws zzagk {
        int i = this.zzj;
        if (this.zzh - i < 8) {
            zzI(8);
            i = this.zzj;
        }
        byte[] bArr = this.zzg;
        this.zzj = i + 8;
        long j = bArr[i];
        long j2 = (((long) bArr[i + 1]) & 255) << 8;
        long j3 = bArr[i + 2];
        long j4 = bArr[i + 3];
        return ((((long) bArr[i + 6]) & 255) << 48) | (j & 255) | j2 | ((j3 & 255) << 16) | ((j4 & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    public final void zzy(int i) throws zzagk {
        int i2 = this.zzh;
        int i3 = this.zzj;
        int i4 = i2 - i3;
        if (i <= i4 && i >= 0) {
            this.zzj = i3 + i;
            return;
        }
        if (i < 0) {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return;
        }
        int i5 = this.zzl + i3;
        if (zzN(i5, i, Integer.MAX_VALUE)) {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
            return;
        }
        int i6 = this.zzm;
        if (zzN(i5, i, i6)) {
            if (i6 >= i5) {
                zzy(i6 - i5);
            }
            zzaeh$$ExternalSyntheticBUOutline0.m453m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return;
        }
        this.zzl = i5;
        this.zzh = 0;
        this.zzj = 0;
        while (i4 < i) {
            try {
                long j = i - i4;
                try {
                    long jSkip = this.zzf.skip(j);
                    if (jSkip < 0 || jSkip > j) {
                        String strValueOf = String.valueOf(this.zzf.getClass());
                        StringBuilder sb = new StringBuilder(strValueOf.length() + 31 + String.valueOf(jSkip).length() + 41);
                        sb.append(strValueOf);
                        sb.append("#skip returned invalid result: ");
                        sb.append(jSkip);
                        sb.append("\nThe InputStream implementation is buggy.");
                        throw new IllegalStateException(sb.toString());
                    }
                    if (jSkip == 0) {
                        break;
                    } else {
                        i4 += (int) jSkip;
                    }
                } catch (zzagk e) {
                    e.zza();
                    throw e;
                }
            } catch (Throwable th) {
                this.zzl += i4;
                zzz();
                throw th;
            }
        }
        this.zzl += i4;
        zzz();
        if (i4 >= i) {
            return;
        }
        int i7 = this.zzh;
        int i8 = i7 - this.zzj;
        this.zzj = i7;
        zzI(1);
        while (true) {
            int i9 = i - i8;
            int i10 = this.zzh;
            if (i9 <= i10) {
                this.zzj = i9;
                return;
            } else {
                i8 += i10;
                this.zzj = i10;
                zzI(1);
            }
        }
    }

    @Override // com.google.android.recaptcha.internal.zzaev
    public final int zzA(int i) throws zzagk {
        if (i < 0) {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        int i2 = this.zzl + this.zzj;
        if (i > Integer.MAX_VALUE - i2) {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
            return 0;
        }
        int i3 = this.zzm;
        if (zzN(i2, i, i3)) {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        this.zzm = i2 + i;
        zzz();
        return i3;
    }

    public final int zzt() {
        int i;
        int i2 = this.zzj;
        int i3 = this.zzh;
        if (i3 != i2) {
            byte[] bArr = this.zzg;
            int i4 = i2 + 1;
            byte b2 = bArr[i2];
            if (b2 >= 0) {
                this.zzj = i4;
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
                this.zzj = i5;
                return i;
            }
        }
        return (int) zzv();
    }

    public final long zzu() {
        long j;
        long j2;
        long j3;
        int i = this.zzj;
        int i2 = this.zzh;
        if (i2 != i) {
            byte[] bArr = this.zzg;
            int i3 = i + 1;
            byte b2 = bArr[i];
            if (b2 >= 0) {
                this.zzj = i3;
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
                this.zzj = i4;
                return j;
            }
        }
        return zzv();
    }
}
