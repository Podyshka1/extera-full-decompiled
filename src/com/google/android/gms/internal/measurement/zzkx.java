package com.google.android.gms.internal.measurement;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzkx {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static volatile int zzb = 100;

    static int zza(byte[] bArr, int i, zzkw zzkwVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return zzb(b, bArr, i2, zzkwVar);
        }
        zzkwVar.zza = b;
        return i2;
    }

    static int zzb(int i, byte[] bArr, int i2, zzkw zzkwVar) {
        byte b = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b >= 0) {
            zzkwVar.zza = i4 | (b << 7);
            return i3;
        }
        int i5 = i4 | ((b & 127) << 7);
        int i6 = i2 + 2;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            zzkwVar.zza = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & 127) << 14);
        int i8 = i2 + 3;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzkwVar.zza = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & 127) << 21);
        int i10 = i2 + 4;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzkwVar.zza = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & 127) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzkwVar.zza = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    static int zzc(byte[] bArr, int i, zzkw zzkwVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            zzkwVar.zzb = j;
            return i2;
        }
        int i3 = i + 2;
        byte b = bArr[i2];
        long j2 = (j & 127) | (((long) (b & 127)) << 7);
        int i4 = 7;
        while (b < 0) {
            int i5 = i3 + 1;
            byte b2 = bArr[i3];
            i4 += 7;
            j2 |= ((long) (b2 & 127)) << i4;
            b = b2;
            i3 = i5;
        }
        zzkwVar.zzb = j2;
        return i3;
    }

    static int zzd(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    static long zze(byte[] bArr, int i) {
        return (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    static int zzf(byte[] bArr, int i, zzkw zzkwVar) throws zzmr {
        int i2;
        int iZza = zza(bArr, i, zzkwVar);
        int i3 = zzkwVar.zza;
        if (i3 < 0) {
            throw new zzmr("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i3 == 0) {
            zzkwVar.zzc = _UrlKt.FRAGMENT_ENCODE_SET;
            return iZza;
        }
        int i4 = zzos.$r8$clinit;
        int length = bArr.length;
        if ((((length - iZza) - i3) | iZza | i3) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(iZza), Integer.valueOf(i3)));
        }
        int i5 = iZza + i3;
        char[] cArr = new char[i3];
        int i6 = 0;
        while (iZza < i5) {
            byte b = bArr[iZza];
            if (!zzoq.zza(b)) {
                break;
            }
            iZza++;
            cArr[i6] = (char) b;
            i6++;
        }
        int i7 = i6;
        while (iZza < i5) {
            int i8 = iZza + 1;
            byte b2 = bArr[iZza];
            if (zzoq.zza(b2)) {
                cArr[i7] = (char) b2;
                i7++;
                iZza = i8;
                while (iZza < i5) {
                    byte b3 = bArr[iZza];
                    if (zzoq.zza(b3)) {
                        iZza++;
                        cArr[i7] = (char) b3;
                        i7++;
                    }
                }
            } else {
                if (b2 < -32) {
                    if (i8 >= i5) {
                        throw new zzmr("Protocol message had invalid UTF-8.");
                    }
                    i2 = i7 + 1;
                    iZza += 2;
                    zzoq.zzb(b2, bArr[i8], cArr, i7);
                } else if (b2 < -16) {
                    if (i8 >= i5 - 1) {
                        throw new zzmr("Protocol message had invalid UTF-8.");
                    }
                    i2 = i7 + 1;
                    int i9 = iZza + 2;
                    iZza += 3;
                    zzoq.zzc(b2, bArr[i8], bArr[i9], cArr, i7);
                } else {
                    if (i8 >= i5 - 2) {
                        throw new zzmr("Protocol message had invalid UTF-8.");
                    }
                    byte b4 = bArr[i8];
                    int i10 = iZza + 3;
                    byte b5 = bArr[iZza + 2];
                    iZza += 4;
                    zzoq.zzd(b2, b4, b5, bArr[i10], cArr, i7);
                    i7 += 2;
                }
                i7 = i2;
            }
        }
        zzkwVar.zzc = new String(cArr, 0, i7);
        return i5;
    }

    static int zzg(byte[] bArr, int i, zzkw zzkwVar) throws zzmr {
        int iZza = zza(bArr, i, zzkwVar);
        int i2 = zzkwVar.zza;
        if (i2 < 0) {
            throw new zzmr("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i2 > bArr.length - iZza) {
            throw new zzmr("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        if (i2 == 0) {
            zzkwVar.zzc = zzlh.zzb;
            return iZza;
        }
        zzkwVar.zzc = zzlh.zzh(bArr, iZza, i2);
        return iZza + i2;
    }

    static int zzh(zznx zznxVar, byte[] bArr, int i, int i2, zzkw zzkwVar) throws zzmr {
        Object objZza = zznxVar.zza();
        int iZzj = zzj(objZza, zznxVar, bArr, i, i2, zzkwVar);
        zznxVar.zzj(objZza);
        zzkwVar.zzc = objZza;
        return iZzj;
    }

    static int zzi(zznx zznxVar, byte[] bArr, int i, int i2, int i3, zzkw zzkwVar) throws zzmr {
        Object objZza = zznxVar.zza();
        int iZzk = zzk(objZza, zznxVar, bArr, i, i2, i3, zzkwVar);
        zznxVar.zzj(objZza);
        zzkwVar.zzc = objZza;
        return iZzk;
    }

    static int zzj(Object obj, zznx zznxVar, byte[] bArr, int i, int i2, zzkw zzkwVar) throws zzmr {
        int iZzb = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iZzb = zzb(i3, bArr, iZzb, zzkwVar);
            i3 = zzkwVar.zza;
        }
        int i4 = iZzb;
        if (i3 < 0 || i3 > i2 - i4) {
            throw new zzmr("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        int i5 = zzkwVar.zze + 1;
        zzkwVar.zze = i5;
        zzq(i5);
        int i6 = i4 + i3;
        zznxVar.zzi(obj, bArr, i4, i6, zzkwVar);
        zzkwVar.zze--;
        zzkwVar.zzc = obj;
        return i6;
    }

    static int zzk(Object obj, zznx zznxVar, byte[] bArr, int i, int i2, int i3, zzkw zzkwVar) throws zzmr {
        int i4 = zzkwVar.zze + 1;
        zzkwVar.zze = i4;
        zzq(i4);
        int iZzh = ((zznp) zznxVar).zzh(obj, bArr, i, i2, i3, zzkwVar);
        zzkwVar.zze--;
        zzkwVar.zzc = obj;
        return iZzh;
    }

    static int zzl(int i, byte[] bArr, int i2, int i3, zzmo zzmoVar, zzkw zzkwVar) {
        zzmg zzmgVar = (zzmg) zzmoVar;
        int iZza = zza(bArr, i2, zzkwVar);
        zzmgVar.zzh(zzkwVar.zza);
        while (iZza < i3) {
            int iZza2 = zza(bArr, iZza, zzkwVar);
            if (i != zzkwVar.zza) {
                break;
            }
            iZza = zza(bArr, iZza2, zzkwVar);
            zzmgVar.zzh(zzkwVar.zza);
        }
        return iZza;
    }

    static int zzm(byte[] bArr, int i, zzmo zzmoVar, zzkw zzkwVar) throws zzmr {
        zzmg zzmgVar = (zzmg) zzmoVar;
        int iZza = zza(bArr, i, zzkwVar);
        int i2 = zzkwVar.zza + iZza;
        while (iZza < i2) {
            iZza = zza(bArr, iZza, zzkwVar);
            zzmgVar.zzh(zzkwVar.zza);
        }
        if (iZza == i2) {
            return iZza;
        }
        throw new zzmr("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    static int zzn(zznx zznxVar, int i, byte[] bArr, int i2, int i3, zzmo zzmoVar, zzkw zzkwVar) throws zzmr {
        int iZzh = zzh(zznxVar, bArr, i2, i3, zzkwVar);
        zzmoVar.add(zzkwVar.zzc);
        while (iZzh < i3) {
            int iZza = zza(bArr, iZzh, zzkwVar);
            if (i != zzkwVar.zza) {
                break;
            }
            iZzh = zzh(zznxVar, bArr, iZza, i3, zzkwVar);
            zzmoVar.add(zzkwVar.zzc);
        }
        return iZzh;
    }

    static int zzo(int i, byte[] bArr, int i2, int i3, zzoj zzojVar, zzkw zzkwVar) throws zzmr {
        if ((i >>> 3) == 0) {
            throw new zzmr("Protocol message contained an invalid tag (zero).");
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iZzc = zzc(bArr, i2, zzkwVar);
            zzojVar.zzk(i, Long.valueOf(zzkwVar.zzb));
            return iZzc;
        }
        if (i4 == 1) {
            zzojVar.zzk(i, Long.valueOf(zze(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iZza = zza(bArr, i2, zzkwVar);
            int i5 = zzkwVar.zza;
            if (i5 < 0) {
                throw new zzmr("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            if (i5 > bArr.length - iZza) {
                throw new zzmr("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            if (i5 == 0) {
                zzojVar.zzk(i, zzlh.zzb);
            } else {
                zzojVar.zzk(i, zzlh.zzh(bArr, iZza, i5));
            }
            return iZza + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw new zzmr("Protocol message contained an invalid tag (zero).");
            }
            zzojVar.zzk(i, Integer.valueOf(zzd(bArr, i2)));
            return i2 + 4;
        }
        int i6 = (i & (-8)) | 4;
        zzoj zzojVarZzb = zzoj.zzb();
        int i7 = zzkwVar.zze + 1;
        zzkwVar.zze = i7;
        zzq(i7);
        int i8 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int iZza2 = zza(bArr, i2, zzkwVar);
            int i9 = zzkwVar.zza;
            if (i9 == i6) {
                i8 = i9;
                i2 = iZza2;
                break;
            }
            i2 = zzo(i9, bArr, iZza2, i3, zzojVarZzb, zzkwVar);
            i8 = i9;
        }
        zzkwVar.zze--;
        if (i2 > i3 || i8 != i6) {
            throw new zzmr("Failed to parse the message.");
        }
        zzojVar.zzk(i, zzojVarZzb);
        return i2;
    }

    static int zzp(int i, byte[] bArr, int i2, int i3, zzkw zzkwVar) throws zzmr {
        if ((i >>> 3) == 0) {
            throw new zzmr("Protocol message contained an invalid tag (zero).");
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return zzc(bArr, i2, zzkwVar);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return zza(bArr, i2, zzkwVar) + zzkwVar.zza;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            throw new zzmr("Protocol message contained an invalid tag (zero).");
        }
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (i2 < i3) {
            i2 = zza(bArr, i2, zzkwVar);
            i6 = zzkwVar.zza;
            if (i6 == i5) {
                break;
            }
            i2 = zzp(i6, bArr, i2, i3, zzkwVar);
        }
        if (i2 > i3 || i6 != i5) {
            throw new zzmr("Failed to parse the message.");
        }
        return i2;
    }

    private static void zzq(int i) throws zzmr {
        if (i >= zzb) {
            throw new zzmr("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
    }
}
