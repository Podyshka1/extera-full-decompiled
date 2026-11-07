package com.google.android.recaptcha.internal;

import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzaeh {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static volatile int zzb = 100;

    public static int zza(byte[] bArr, int i, zzaeg zzaegVar) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        if (b2 < 0) {
            return zzb(b2, bArr, i2, zzaegVar);
        }
        zzaegVar.zza = b2;
        return i2;
    }

    public static int zzb(int i, byte[] bArr, int i2, zzaeg zzaegVar) {
        byte b2 = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b2 >= 0) {
            zzaegVar.zza = i4 | (b2 << 7);
            return i3;
        }
        int i5 = i4 | ((b2 & ByteCompanionObject.MAX_VALUE) << 7);
        int i6 = i2 + 2;
        byte b3 = bArr[i3];
        if (b3 >= 0) {
            zzaegVar.zza = i5 | (b3 << 14);
            return i6;
        }
        int i7 = i5 | ((b3 & ByteCompanionObject.MAX_VALUE) << 14);
        int i8 = i2 + 3;
        byte b4 = bArr[i6];
        if (b4 >= 0) {
            zzaegVar.zza = i7 | (b4 << 21);
            return i8;
        }
        int i9 = i7 | ((b4 & ByteCompanionObject.MAX_VALUE) << 21);
        int i10 = i2 + 4;
        byte b5 = bArr[i8];
        if (b5 >= 0) {
            zzaegVar.zza = i9 | (b5 << 28);
            return i10;
        }
        int i11 = i9 | ((b5 & ByteCompanionObject.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzaegVar.zza = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int zzc(byte[] bArr, int i, zzaeg zzaegVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            zzaegVar.zzb = j;
            return i2;
        }
        int i3 = i + 2;
        byte b2 = bArr[i2];
        long j2 = (j & 127) | (((long) (b2 & ByteCompanionObject.MAX_VALUE)) << 7);
        int i4 = 7;
        while (b2 < 0) {
            int i5 = i3 + 1;
            byte b3 = bArr[i3];
            i4 += 7;
            j2 |= ((long) (b3 & ByteCompanionObject.MAX_VALUE)) << i4;
            b2 = b3;
            i3 = i5;
        }
        zzaegVar.zzb = j2;
        return i3;
    }

    public static int zzd(byte[] bArr, int i) {
        int i2 = bArr[i] & UByte.MAX_VALUE;
        int i3 = bArr[i + 1] & UByte.MAX_VALUE;
        int i4 = bArr[i + 2] & UByte.MAX_VALUE;
        return ((bArr[i + 3] & UByte.MAX_VALUE) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public static long zze(byte[] bArr, int i) {
        return (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    public static int zzf(byte[] bArr, int i, zzaeg zzaegVar) throws zzagk {
        int iZza = zza(bArr, i, zzaegVar);
        int i2 = zzaegVar.zza;
        if (i2 < 0) {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        if (i2 > bArr.length - iZza) {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        if (i2 == 0) {
            zzaegVar.zzc = zzaer.zza;
            return iZza;
        }
        zzaegVar.zzc = zzaer.zzs(bArr, iZza, i2);
        return iZza + i2;
    }

    public static int zzg(zzahn zzahnVar, byte[] bArr, int i, int i2, zzaeg zzaegVar) throws zzagk {
        Object objZza = zzahnVar.zza();
        int iZzi = zzi(objZza, zzahnVar, bArr, i, i2, zzaegVar);
        zzahnVar.zzk(objZza);
        zzaegVar.zzc = objZza;
        return iZzi;
    }

    public static int zzh(zzahn zzahnVar, byte[] bArr, int i, int i2, int i3, zzaeg zzaegVar) throws zzagk {
        Object objZza = zzahnVar.zza();
        int iZzj = zzj(objZza, zzahnVar, bArr, i, i2, i3, zzaegVar);
        zzahnVar.zzk(objZza);
        zzaegVar.zzc = objZza;
        return iZzj;
    }

    public static int zzi(Object obj, zzahn zzahnVar, byte[] bArr, int i, int i2, zzaeg zzaegVar) throws zzagk {
        int iZzb = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iZzb = zzb(i3, bArr, iZzb, zzaegVar);
            i3 = zzaegVar.zza;
        }
        int i4 = iZzb;
        if (i3 < 0 || i3 > i2 - i4) {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        int i5 = zzaegVar.zze + 1;
        zzaegVar.zze = i5;
        zzo(i5);
        int i6 = i4 + i3;
        zzahnVar.zzj(obj, bArr, i4, i6, zzaegVar);
        zzaegVar.zze--;
        zzaegVar.zzc = obj;
        return i6;
    }

    public static int zzj(Object obj, zzahn zzahnVar, byte[] bArr, int i, int i2, int i3, zzaeg zzaegVar) throws zzagk {
        int i4 = zzaegVar.zze + 1;
        zzaegVar.zze = i4;
        zzo(i4);
        int iZzi = ((zzaha) zzahnVar).zzi(obj, bArr, i, i2, i3, zzaegVar);
        zzaegVar.zze--;
        zzaegVar.zzc = obj;
        return iZzi;
    }

    public static int zzk(int i, byte[] bArr, int i2, int i3, zzage zzageVar, zzaeg zzaegVar) {
        zzafw zzafwVar = (zzafw) zzageVar;
        int iZza = zza(bArr, i2, zzaegVar);
        zzafwVar.zzh(zzaegVar.zza);
        while (iZza < i3) {
            int iZza2 = zza(bArr, iZza, zzaegVar);
            if (i != zzaegVar.zza) {
                break;
            }
            iZza = zza(bArr, iZza2, zzaegVar);
            zzafwVar.zzh(zzaegVar.zza);
        }
        return iZza;
    }

    public static int zzl(byte[] bArr, int i, zzage zzageVar, zzaeg zzaegVar) throws zzagk {
        zzafw zzafwVar = (zzafw) zzageVar;
        int iZza = zza(bArr, i, zzaegVar);
        int i2 = zzaegVar.zza;
        if (i2 < 0) {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        if (i2 > bArr.length - iZza) {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        int i3 = i2 + iZza;
        while (iZza < i3) {
            iZza = zza(bArr, iZza, zzaegVar);
            zzafwVar.zzh(zzaegVar.zza);
        }
        if (iZza == i3) {
            return iZza;
        }
        zzaeh$$ExternalSyntheticBUOutline0.m453m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        return 0;
    }

    public static int zzm(zzahn zzahnVar, int i, byte[] bArr, int i2, int i3, zzage zzageVar, zzaeg zzaegVar) throws zzagk {
        int iZzg = zzg(zzahnVar, bArr, i2, i3, zzaegVar);
        zzageVar.add(zzaegVar.zzc);
        while (iZzg < i3) {
            int iZza = zza(bArr, iZzg, zzaegVar);
            if (i != zzaegVar.zza) {
                break;
            }
            iZzg = zzg(zzahnVar, bArr, iZza, i3, zzaegVar);
            zzageVar.add(zzaegVar.zzc);
        }
        return iZzg;
    }

    public static int zzn(int i, byte[] bArr, int i2, int i3, zzaia zzaiaVar, zzaeg zzaegVar) throws zzagk {
        if ((i >>> 3) == 0) {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iZzc = zzc(bArr, i2, zzaegVar);
            zzaiaVar.zzk(i, Long.valueOf(zzaegVar.zzb));
            return iZzc;
        }
        if (i4 == 1) {
            zzaiaVar.zzk(i, Long.valueOf(zze(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iZza = zza(bArr, i2, zzaegVar);
            int i5 = zzaegVar.zza;
            if (i5 < 0) {
                zzaeh$$ExternalSyntheticBUOutline0.m453m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                return 0;
            }
            if (i5 > bArr.length - iZza) {
                zzaeh$$ExternalSyntheticBUOutline0.m453m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                return 0;
            }
            if (i5 == 0) {
                zzaiaVar.zzk(i, zzaer.zza);
            } else {
                zzaiaVar.zzk(i, zzaer.zzs(bArr, iZza, i5));
            }
            return iZza + i5;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                zzaiaVar.zzk(i, Integer.valueOf(zzd(bArr, i2)));
                return i2 + 4;
            }
            zzaeh$$ExternalSyntheticBUOutline0.m453m("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i6 = (i & (-8)) | 4;
        zzaia zzaiaVarZzb = zzaia.zzb();
        int i7 = zzaegVar.zze + 1;
        zzaegVar.zze = i7;
        zzo(i7);
        int i8 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int iZza2 = zza(bArr, i2, zzaegVar);
            int i9 = zzaegVar.zza;
            if (i9 == i6) {
                i8 = i9;
                i2 = iZza2;
                break;
            }
            i2 = zzn(i9, bArr, iZza2, i3, zzaiaVarZzb, zzaegVar);
            i8 = i9;
        }
        zzaegVar.zze--;
        if (i2 > i3 || i8 != i6) {
            zzaeh$$ExternalSyntheticBUOutline0.m453m("Failed to parse the message.");
            return 0;
        }
        zzaiaVar.zzk(i, zzaiaVarZzb);
        return i2;
    }

    private static void zzo(int i) throws zzagk {
        if (i < zzb) {
            return;
        }
        zzaeh$$ExternalSyntheticBUOutline0.m453m("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
    }
}
