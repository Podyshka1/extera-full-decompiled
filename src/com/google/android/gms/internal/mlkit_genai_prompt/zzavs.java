package com.google.android.gms.internal.mlkit_genai_prompt;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzavs {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static volatile int zzb = 100;

    public static int zza(byte[] bArr, int i, zzavr zzavrVar) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        if (b2 < 0) {
            return zzb(b2, bArr, i2, zzavrVar);
        }
        zzavrVar.zza = b2;
        return i2;
    }

    public static int zzb(int i, byte[] bArr, int i2, zzavr zzavrVar) {
        byte b2 = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b2 >= 0) {
            zzavrVar.zza = i4 | (b2 << 7);
            return i3;
        }
        int i5 = i4 | ((b2 & ByteCompanionObject.MAX_VALUE) << 7);
        int i6 = i2 + 2;
        byte b3 = bArr[i3];
        if (b3 >= 0) {
            zzavrVar.zza = i5 | (b3 << 14);
            return i6;
        }
        int i7 = i5 | ((b3 & ByteCompanionObject.MAX_VALUE) << 14);
        int i8 = i2 + 3;
        byte b4 = bArr[i6];
        if (b4 >= 0) {
            zzavrVar.zza = i7 | (b4 << 21);
            return i8;
        }
        int i9 = i7 | ((b4 & ByteCompanionObject.MAX_VALUE) << 21);
        int i10 = i2 + 4;
        byte b5 = bArr[i8];
        if (b5 >= 0) {
            zzavrVar.zza = i9 | (b5 << 28);
            return i10;
        }
        int i11 = i9 | ((b5 & ByteCompanionObject.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzavrVar.zza = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int zzc(byte[] bArr, int i, zzavr zzavrVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            zzavrVar.zzb = j;
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
        zzavrVar.zzb = j2;
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

    public static int zzf(byte[] bArr, int i, zzavr zzavrVar) throws zzaxm {
        int iZza = zza(bArr, i, zzavrVar);
        int i2 = zzavrVar.zza;
        if (i2 < 0) {
            zzavs$$ExternalSyntheticBUOutline0.m352m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        if (i2 > bArr.length - iZza) {
            zzavs$$ExternalSyntheticBUOutline0.m352m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        if (i2 == 0) {
            zzavrVar.zzc = zzawb.zza;
            return iZza;
        }
        zzavrVar.zzc = zzawb.zzi(bArr, iZza, i2);
        return iZza + i2;
    }

    public static int zzg(zzayg zzaygVar, byte[] bArr, int i, int i2, zzavr zzavrVar) throws zzaxm {
        Object objZza = zzaygVar.zza();
        int iZzi = zzi(objZza, zzaygVar, bArr, i, i2, zzavrVar);
        zzaygVar.zzh(objZza);
        zzavrVar.zzc = objZza;
        return iZzi;
    }

    public static int zzh(zzayg zzaygVar, byte[] bArr, int i, int i2, int i3, zzavr zzavrVar) throws zzaxm {
        Object objZza = zzaygVar.zza();
        int iZzj = zzj(objZza, zzaygVar, bArr, i, i2, i3, zzavrVar);
        zzaygVar.zzh(objZza);
        zzavrVar.zzc = objZza;
        return iZzj;
    }

    public static int zzi(Object obj, zzayg zzaygVar, byte[] bArr, int i, int i2, zzavr zzavrVar) throws zzaxm {
        int iZzb = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iZzb = zzb(i3, bArr, iZzb, zzavrVar);
            i3 = zzavrVar.zza;
        }
        int i4 = iZzb;
        if (i3 < 0 || i3 > i2 - i4) {
            zzavs$$ExternalSyntheticBUOutline0.m352m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        int i5 = zzavrVar.zze + 1;
        zzavrVar.zze = i5;
        zzo(i5);
        int i6 = i4 + i3;
        zzaygVar.zzg(obj, bArr, i4, i6, zzavrVar);
        zzavrVar.zze--;
        zzavrVar.zzc = obj;
        return i6;
    }

    public static int zzj(Object obj, zzayg zzaygVar, byte[] bArr, int i, int i2, int i3, zzavr zzavrVar) throws zzaxm {
        int i4 = zzavrVar.zze + 1;
        zzavrVar.zze = i4;
        zzo(i4);
        int iZzf = ((zzaxz) zzaygVar).zzf(obj, bArr, i, i2, i3, zzavrVar);
        zzavrVar.zze--;
        zzavrVar.zzc = obj;
        return iZzf;
    }

    public static int zzk(int i, byte[] bArr, int i2, int i3, zzaxh zzaxhVar, zzavr zzavrVar) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(zzaxhVar);
        zza(bArr, i2, zzavrVar);
        int i4 = zzavrVar.zza;
        throw null;
    }

    public static int zzl(byte[] bArr, int i, zzaxh zzaxhVar, zzavr zzavrVar) throws zzaxm {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(zzaxhVar);
        int iZza = zza(bArr, i, zzavrVar);
        int i2 = zzavrVar.zza;
        if (i2 < 0) {
            zzavs$$ExternalSyntheticBUOutline0.m352m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        if (i2 > bArr.length - iZza) {
            zzavs$$ExternalSyntheticBUOutline0.m352m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        int i3 = i2 + iZza;
        if (iZza < i3) {
            zza(bArr, iZza, zzavrVar);
            throw null;
        }
        if (iZza == i3) {
            return iZza;
        }
        zzavs$$ExternalSyntheticBUOutline0.m352m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        return 0;
    }

    public static int zzm(zzayg zzaygVar, int i, byte[] bArr, int i2, int i3, zzaxh zzaxhVar, zzavr zzavrVar) throws zzaxm {
        int iZzg = zzg(zzaygVar, bArr, i2, i3, zzavrVar);
        zzaxhVar.add(zzavrVar.zzc);
        while (iZzg < i3) {
            int iZza = zza(bArr, iZzg, zzavrVar);
            if (i != zzavrVar.zza) {
                break;
            }
            iZzg = zzg(zzaygVar, bArr, iZza, i3, zzavrVar);
            zzaxhVar.add(zzavrVar.zzc);
        }
        return iZzg;
    }

    public static int zzn(int i, byte[] bArr, int i2, int i3, zzayr zzayrVar, zzavr zzavrVar) throws zzaxm {
        if ((i >>> 3) == 0) {
            zzavs$$ExternalSyntheticBUOutline0.m352m("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iZzc = zzc(bArr, i2, zzavrVar);
            zzayrVar.zzg(i, Long.valueOf(zzavrVar.zzb));
            return iZzc;
        }
        if (i4 == 1) {
            zzayrVar.zzg(i, Long.valueOf(zze(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iZza = zza(bArr, i2, zzavrVar);
            int i5 = zzavrVar.zza;
            if (i5 < 0) {
                zzavs$$ExternalSyntheticBUOutline0.m352m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                return 0;
            }
            if (i5 > bArr.length - iZza) {
                zzavs$$ExternalSyntheticBUOutline0.m352m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                return 0;
            }
            if (i5 == 0) {
                zzayrVar.zzg(i, zzawb.zza);
            } else {
                zzayrVar.zzg(i, zzawb.zzi(bArr, iZza, i5));
            }
            return iZza + i5;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                zzayrVar.zzg(i, Integer.valueOf(zzd(bArr, i2)));
                return i2 + 4;
            }
            zzavs$$ExternalSyntheticBUOutline0.m352m("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i6 = (i & (-8)) | 4;
        zzayr zzayrVarZzb = zzayr.zzb();
        int i7 = zzavrVar.zze + 1;
        zzavrVar.zze = i7;
        zzo(i7);
        int i8 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int iZza2 = zza(bArr, i2, zzavrVar);
            int i9 = zzavrVar.zza;
            if (i9 == i6) {
                i8 = i9;
                i2 = iZza2;
                break;
            }
            i2 = zzn(i9, bArr, iZza2, i3, zzayrVarZzb, zzavrVar);
            i8 = i9;
        }
        zzavrVar.zze--;
        if (i2 > i3 || i8 != i6) {
            zzavs$$ExternalSyntheticBUOutline0.m352m("Failed to parse the message.");
            return 0;
        }
        zzayrVar.zzg(i, zzayrVarZzb);
        return i2;
    }

    private static void zzo(int i) throws zzaxm {
        if (i < zzb) {
            return;
        }
        zzavs$$ExternalSyntheticBUOutline0.m352m("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
    }
}
