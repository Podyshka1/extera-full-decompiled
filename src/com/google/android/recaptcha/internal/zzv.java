package com.google.android.recaptcha.internal;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes5.dex */
public final class zzv {
    public static final zzv zzb = new zzv(new byte[0]);
    public static final Comparator zzc = new zzu();
    public final byte[] zza;

    public zzv(byte[] bArr) {
        this.zza = bArr;
    }

    public static zzv zze(byte[] bArr) {
        return new zzv(zzh(bArr, 0, bArr.length));
    }

    public static zzv zzf(String str) {
        return zze(str.getBytes(Charset.forName(zzt.zza("Hn2H4l0="))));
    }

    public static int zzg(byte b2) {
        int[] iArr = {358984857, 11257410, 369424407, 615188036, 873771167, 1734030349, 488663950, 1985433483, 395279207};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        return b2 & ((iArr[7] % 395279207) ^ (i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6)));
    }

    public static byte[] zzh(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return new byte[0];
        }
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return bArr2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzv) {
            return Arrays.equals(this.zza, ((zzv) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(Arrays.hashCode(this.zza));
    }

    public final String toString() {
        int[] iArr = {95266356, 568641516, 183483904, 553669100, 504469011, 966284502, 91904737, 2026478004, 1659239833};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6);
        String string = Arrays.toString(this.zza);
        StringBuilder sb = new StringBuilder(String.valueOf(string).length() + ((i8 % 1659239833) ^ i9));
        sb.append(zzt.zza("CVC1qiQNJHikW0iU1TIPZA=="));
        sb.append(string);
        sb.append(zzt.zza("Ng=="));
        return sb.toString();
    }

    public final byte[] zza() {
        byte[] bArr = this.zza;
        int length = bArr.length;
        return length == 0 ? new byte[0] : zzh(bArr, 0, length);
    }

    public final byte zzb(int i) {
        int i2 = ((((~1635905385) & 436500160) | 1627617040) + ((1635905385 & 1527677400) | 1092341018)) - (-1251599269);
        int i3 = 1253207672 % 570073850;
        int i4 = ((((~1280321648) & 1509448256) | 1074834751) + ((1280321648 & 434689637) | 67544103)) - 1396684710;
        int i5 = 1309383303 % 1129033333;
        byte[] bArr = this.zza;
        int length = bArr.length;
        if (((length - (i + 1)) | i) >= 0) {
            return bArr[i];
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + (i2 ^ i3));
            sb.append(zzt.zza("Akelqh1fajntGgo="));
            sb.append(i);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(i).length() + (i4 ^ i5) + String.valueOf(length).length());
        String strZza = zzt.zza("Akelqh1faDmxRUSK1T9GeQ==");
        String strZza2 = zzt.zza("Zwk=");
        sb2.append(strZza);
        sb2.append(i);
        sb2.append(strZza2);
        sb2.append(length);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }

    public final String zzc() {
        Charset charsetForName = Charset.forName(zzt.zza("Hn2H4l0="));
        byte[] bArr = this.zza;
        return new String(bArr, 0, bArr.length, charsetForName);
    }

    public final zzv zzd(zzv zzvVar) {
        byte[] bArr = zzvVar.zza;
        int length = bArr.length;
        byte[] bArr2 = this.zza;
        int length2 = bArr2.length;
        byte[] bArr3 = new byte[length2 + length];
        System.arraycopy(bArr2, 0, bArr3, 0, length2);
        System.arraycopy(bArr, 0, bArr3, length2, length);
        return zze(bArr3);
    }
}
