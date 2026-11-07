package com.google.android.gms.internal.play_billing;

import com.google.protobuf.Utf8$Processor$$ExternalSyntheticBUOutline0;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzdx {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static volatile int zzb = 100;

    public static int zza(byte[] bArr, int i, zzdw zzdwVar) throws zzfq {
        int iZzi = zzi(bArr, i, zzdwVar);
        int i2 = zzdwVar.zza;
        if (i2 < 0) {
            zzdx$$ExternalSyntheticBUOutline0.m353m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        if (i2 > bArr.length - iZzi) {
            zzdx$$ExternalSyntheticBUOutline0.m353m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        if (i2 == 0) {
            zzdwVar.zzc = zzei.zzb;
            return iZzi;
        }
        zzdwVar.zzc = zzei.zzj(bArr, iZzi, i2);
        return iZzi + i2;
    }

    public static int zzb(byte[] bArr, int i) {
        int i2 = bArr[i] & UByte.MAX_VALUE;
        int i3 = bArr[i + 1] & UByte.MAX_VALUE;
        int i4 = bArr[i + 2] & UByte.MAX_VALUE;
        return ((bArr[i + 3] & UByte.MAX_VALUE) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public static int zzc(zzgv zzgvVar, byte[] bArr, int i, int i2, int i3, zzdw zzdwVar) throws zzfq {
        Object objZze = zzgvVar.zze();
        int iZzm = zzm(objZze, zzgvVar, bArr, i, i2, i3, zzdwVar);
        zzgvVar.zzf(objZze);
        zzdwVar.zzc = objZze;
        return iZzm;
    }

    public static int zzd(zzgv zzgvVar, byte[] bArr, int i, int i2, zzdw zzdwVar) throws zzfq {
        Object objZze = zzgvVar.zze();
        int iZzn = zzn(objZze, zzgvVar, bArr, i, i2, zzdwVar);
        zzgvVar.zzf(objZze);
        zzdwVar.zzc = objZze;
        return iZzn;
    }

    public static int zze(zzgv zzgvVar, int i, byte[] bArr, int i2, int i3, zzfn zzfnVar, zzdw zzdwVar) throws zzfq {
        int iZzd = zzd(zzgvVar, bArr, i2, i3, zzdwVar);
        zzfnVar.add(zzdwVar.zzc);
        while (iZzd < i3) {
            int iZzi = zzi(bArr, iZzd, zzdwVar);
            if (i != zzdwVar.zza) {
                break;
            }
            iZzd = zzd(zzgvVar, bArr, iZzi, i3, zzdwVar);
            zzfnVar.add(zzdwVar.zzc);
        }
        return iZzd;
    }

    public static int zzf(byte[] bArr, int i, zzfn zzfnVar, zzdw zzdwVar) throws zzfq {
        zzfj zzfjVar = (zzfj) zzfnVar;
        int iZzi = zzi(bArr, i, zzdwVar);
        int i2 = zzdwVar.zza + iZzi;
        while (iZzi < i2) {
            iZzi = zzi(bArr, iZzi, zzdwVar);
            zzfjVar.zzg(zzdwVar.zza);
        }
        if (iZzi == i2) {
            return iZzi;
        }
        zzdx$$ExternalSyntheticBUOutline0.m353m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        return 0;
    }

    public static int zzg(byte[] bArr, int i, zzdw zzdwVar) throws zzfq {
        int i2;
        int iZzi = zzi(bArr, i, zzdwVar);
        int i3 = zzdwVar.zza;
        if (i3 < 0) {
            zzdx$$ExternalSyntheticBUOutline0.m353m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        if (i3 == 0) {
            zzdwVar.zzc = _UrlKt.FRAGMENT_ENCODE_SET;
            return iZzi;
        }
        int i4 = zzhr.$r8$clinit;
        int length = bArr.length;
        if ((((length - iZzi) - i3) | iZzi | i3) < 0) {
            Utf8$Processor$$ExternalSyntheticBUOutline0.m508m("buffer length=%d, index=%d, size=%d", new Object[]{Integer.valueOf(length), Integer.valueOf(iZzi), Integer.valueOf(i3)});
            return 0;
        }
        int i5 = iZzi + i3;
        char[] cArr = new char[i3];
        int i6 = 0;
        while (iZzi < i5) {
            byte b2 = bArr[iZzi];
            if (!zzhp.zzd(b2)) {
                break;
            }
            iZzi++;
            cArr[i6] = (char) b2;
            i6++;
        }
        int i7 = i6;
        while (iZzi < i5) {
            int i8 = iZzi + 1;
            byte b3 = bArr[iZzi];
            if (zzhp.zzd(b3)) {
                cArr[i7] = (char) b3;
                i7++;
                iZzi = i8;
                while (iZzi < i5) {
                    byte b4 = bArr[iZzi];
                    if (zzhp.zzd(b4)) {
                        iZzi++;
                        cArr[i7] = (char) b4;
                        i7++;
                    }
                }
            } else {
                if (b3 < -32) {
                    if (i8 >= i5) {
                        zzdx$$ExternalSyntheticBUOutline0.m353m("Protocol message had invalid UTF-8.");
                        return 0;
                    }
                    i2 = i7 + 1;
                    iZzi += 2;
                    zzhp.zzc(b3, bArr[i8], cArr, i7);
                } else if (b3 < -16) {
                    if (i8 >= i5 - 1) {
                        zzdx$$ExternalSyntheticBUOutline0.m353m("Protocol message had invalid UTF-8.");
                        return 0;
                    }
                    i2 = i7 + 1;
                    int i9 = iZzi + 2;
                    iZzi += 3;
                    zzhp.zzb(b3, bArr[i8], bArr[i9], cArr, i7);
                } else {
                    if (i8 >= i5 - 2) {
                        zzdx$$ExternalSyntheticBUOutline0.m353m("Protocol message had invalid UTF-8.");
                        return 0;
                    }
                    byte b5 = bArr[i8];
                    int i10 = iZzi + 3;
                    byte b6 = bArr[iZzi + 2];
                    iZzi += 4;
                    zzhp.zza(b3, b5, b6, bArr[i10], cArr, i7);
                    i7 += 2;
                }
                i7 = i2;
            }
        }
        zzdwVar.zzc = new String(cArr, 0, i7);
        return i5;
    }

    public static int zzh(int i, byte[] bArr, int i2, int i3, zzhi zzhiVar, zzdw zzdwVar) throws zzfq {
        if ((i >>> 3) == 0) {
            zzdx$$ExternalSyntheticBUOutline0.m353m("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iZzl = zzl(bArr, i2, zzdwVar);
            zzhiVar.zzj(i, Long.valueOf(zzdwVar.zzb));
            return iZzl;
        }
        if (i4 == 1) {
            zzhiVar.zzj(i, Long.valueOf(zzo(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iZzi = zzi(bArr, i2, zzdwVar);
            int i5 = zzdwVar.zza;
            if (i5 < 0) {
                zzdx$$ExternalSyntheticBUOutline0.m353m("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                return 0;
            }
            if (i5 > bArr.length - iZzi) {
                zzdx$$ExternalSyntheticBUOutline0.m353m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                return 0;
            }
            if (i5 == 0) {
                zzhiVar.zzj(i, zzei.zzb);
            } else {
                zzhiVar.zzj(i, zzei.zzj(bArr, iZzi, i5));
            }
            return iZzi + i5;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                zzhiVar.zzj(i, Integer.valueOf(zzb(bArr, i2)));
                return i2 + 4;
            }
            zzdx$$ExternalSyntheticBUOutline0.m353m("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i6 = (i & (-8)) | 4;
        zzhi zzhiVarZzf = zzhi.zzf();
        int i7 = zzdwVar.zze + 1;
        zzdwVar.zze = i7;
        zzp(i7);
        int i8 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int iZzi2 = zzi(bArr, i2, zzdwVar);
            int i9 = zzdwVar.zza;
            if (i9 == i6) {
                i8 = i9;
                i2 = iZzi2;
                break;
            }
            i2 = zzh(i9, bArr, iZzi2, i3, zzhiVarZzf, zzdwVar);
            i8 = i9;
        }
        zzdwVar.zze--;
        if (i2 > i3 || i8 != i6) {
            zzdx$$ExternalSyntheticBUOutline0.m353m("Failed to parse the message.");
            return 0;
        }
        zzhiVar.zzj(i, zzhiVarZzf);
        return i2;
    }

    public static int zzi(byte[] bArr, int i, zzdw zzdwVar) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        if (b2 < 0) {
            return zzj(b2, bArr, i2, zzdwVar);
        }
        zzdwVar.zza = b2;
        return i2;
    }

    public static int zzj(int i, byte[] bArr, int i2, zzdw zzdwVar) {
        byte b2 = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b2 >= 0) {
            zzdwVar.zza = i4 | (b2 << 7);
            return i3;
        }
        int i5 = i4 | ((b2 & ByteCompanionObject.MAX_VALUE) << 7);
        int i6 = i2 + 2;
        byte b3 = bArr[i3];
        if (b3 >= 0) {
            zzdwVar.zza = i5 | (b3 << 14);
            return i6;
        }
        int i7 = i5 | ((b3 & ByteCompanionObject.MAX_VALUE) << 14);
        int i8 = i2 + 3;
        byte b4 = bArr[i6];
        if (b4 >= 0) {
            zzdwVar.zza = i7 | (b4 << 21);
            return i8;
        }
        int i9 = i7 | ((b4 & ByteCompanionObject.MAX_VALUE) << 21);
        int i10 = i2 + 4;
        byte b5 = bArr[i8];
        if (b5 >= 0) {
            zzdwVar.zza = i9 | (b5 << 28);
            return i10;
        }
        int i11 = i9 | ((b5 & ByteCompanionObject.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzdwVar.zza = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int zzk(int i, byte[] bArr, int i2, int i3, zzfn zzfnVar, zzdw zzdwVar) {
        zzfj zzfjVar = (zzfj) zzfnVar;
        int iZzi = zzi(bArr, i2, zzdwVar);
        zzfjVar.zzg(zzdwVar.zza);
        while (iZzi < i3) {
            int iZzi2 = zzi(bArr, iZzi, zzdwVar);
            if (i != zzdwVar.zza) {
                break;
            }
            iZzi = zzi(bArr, iZzi2, zzdwVar);
            zzfjVar.zzg(zzdwVar.zza);
        }
        return iZzi;
    }

    public static int zzl(byte[] bArr, int i, zzdw zzdwVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            zzdwVar.zzb = j;
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
        zzdwVar.zzb = j2;
        return i3;
    }

    public static int zzm(Object obj, zzgv zzgvVar, byte[] bArr, int i, int i2, int i3, zzdw zzdwVar) throws zzfq {
        int i4 = zzdwVar.zze + 1;
        zzdwVar.zze = i4;
        zzp(i4);
        int iZzc = ((zzgo) zzgvVar).zzc(obj, bArr, i, i2, i3, zzdwVar);
        zzdwVar.zze--;
        zzdwVar.zzc = obj;
        return iZzc;
    }

    public static int zzn(Object obj, zzgv zzgvVar, byte[] bArr, int i, int i2, zzdw zzdwVar) throws zzfq {
        int iZzj = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iZzj = zzj(i3, bArr, iZzj, zzdwVar);
            i3 = zzdwVar.zza;
        }
        int i4 = iZzj;
        if (i3 < 0 || i3 > i2 - i4) {
            zzdx$$ExternalSyntheticBUOutline0.m353m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        int i5 = zzdwVar.zze + 1;
        zzdwVar.zze = i5;
        zzp(i5);
        int i6 = i4 + i3;
        zzgvVar.zzh(obj, bArr, i4, i6, zzdwVar);
        zzdwVar.zze--;
        zzdwVar.zzc = obj;
        return i6;
    }

    public static long zzo(byte[] bArr, int i) {
        return (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    private static void zzp(int i) throws zzfq {
        if (i < zzb) {
            return;
        }
        zzdx$$ExternalSyntheticBUOutline0.m353m("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
    }
}
