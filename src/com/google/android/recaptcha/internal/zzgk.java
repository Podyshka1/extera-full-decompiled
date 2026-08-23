package com.google.android.recaptcha.internal;

import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzgk {
    public static int zza(byte[] bArr, int i, zzgj zzgjVar) {
        int iZzi = zzi(bArr, i, zzgjVar);
        int i2 = zzgjVar.zza;
        if (i2 < 0) {
            throw zzje.zzf();
        }
        if (i2 > bArr.length - iZzi) {
            throw zzje.zzj();
        }
        if (i2 == 0) {
            zzgjVar.zzc = zzgw.zzb;
            return iZzi;
        }
        zzgjVar.zzc = zzgw.zzm(bArr, iZzi, i2);
        return iZzi + i2;
    }

    public static int zzb(byte[] bArr, int i) {
        int i2 = bArr[i] & UByte.MAX_VALUE;
        int i3 = bArr[i + 1] & UByte.MAX_VALUE;
        int i4 = bArr[i + 2] & UByte.MAX_VALUE;
        return ((bArr[i + 3] & UByte.MAX_VALUE) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public static int zzc(zzkr zzkrVar, byte[] bArr, int i, int i2, int i3, zzgj zzgjVar) {
        Object objZze = zzkrVar.zze();
        int iZzm = zzm(objZze, zzkrVar, bArr, i, i2, i3, zzgjVar);
        zzkrVar.zzf(objZze);
        zzgjVar.zzc = objZze;
        return iZzm;
    }

    public static int zzd(zzkr zzkrVar, byte[] bArr, int i, int i2, zzgj zzgjVar) {
        Object objZze = zzkrVar.zze();
        int iZzn = zzn(objZze, zzkrVar, bArr, i, i2, zzgjVar);
        zzkrVar.zzf(objZze);
        zzgjVar.zzc = objZze;
        return iZzn;
    }

    public static int zze(zzkr zzkrVar, int i, byte[] bArr, int i2, int i3, zzjb zzjbVar, zzgj zzgjVar) {
        int iZzd = zzd(zzkrVar, bArr, i2, i3, zzgjVar);
        zzjbVar.add(zzgjVar.zzc);
        while (iZzd < i3) {
            int iZzi = zzi(bArr, iZzd, zzgjVar);
            if (i != zzgjVar.zza) {
                break;
            }
            iZzd = zzd(zzkrVar, bArr, iZzi, i3, zzgjVar);
            zzjbVar.add(zzgjVar.zzc);
        }
        return iZzd;
    }

    public static int zzf(byte[] bArr, int i, zzjb zzjbVar, zzgj zzgjVar) {
        zziu zziuVar = (zziu) zzjbVar;
        int iZzi = zzi(bArr, i, zzgjVar);
        int i2 = zzgjVar.zza + iZzi;
        while (iZzi < i2) {
            iZzi = zzi(bArr, iZzi, zzgjVar);
            zziuVar.zzg(zzgjVar.zza);
        }
        if (iZzi == i2) {
            return iZzi;
        }
        throw zzje.zzj();
    }

    public static int zzg(byte[] bArr, int i, zzgj zzgjVar) {
        int iZzi = zzi(bArr, i, zzgjVar);
        int i2 = zzgjVar.zza;
        if (i2 < 0) {
            throw zzje.zzf();
        }
        if (i2 == 0) {
            zzgjVar.zzc = _UrlKt.FRAGMENT_ENCODE_SET;
            return iZzi;
        }
        zzgjVar.zzc = new String(bArr, iZzi, i2, zzjc.zzb);
        return iZzi + i2;
    }

    public static int zzh(int i, byte[] bArr, int i2, int i3, zzlm zzlmVar, zzgj zzgjVar) {
        if ((i >>> 3) == 0) {
            throw zzje.zzc();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iZzl = zzl(bArr, i2, zzgjVar);
            zzlmVar.zzj(i, Long.valueOf(zzgjVar.zzb));
            return iZzl;
        }
        if (i4 == 1) {
            zzlmVar.zzj(i, Long.valueOf(zzp(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iZzi = zzi(bArr, i2, zzgjVar);
            int i5 = zzgjVar.zza;
            if (i5 < 0) {
                throw zzje.zzf();
            }
            if (i5 > bArr.length - iZzi) {
                throw zzje.zzj();
            }
            if (i5 == 0) {
                zzlmVar.zzj(i, zzgw.zzb);
            } else {
                zzlmVar.zzj(i, zzgw.zzm(bArr, iZzi, i5));
            }
            return iZzi + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw zzje.zzc();
            }
            zzlmVar.zzj(i, Integer.valueOf(zzb(bArr, i2)));
            return i2 + 4;
        }
        int i6 = (i & (-8)) | 4;
        zzlm zzlmVarZzf = zzlm.zzf();
        int i7 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int iZzi2 = zzi(bArr, i2, zzgjVar);
            i7 = zzgjVar.zza;
            if (i7 == i6) {
                i2 = iZzi2;
                break;
            }
            i2 = zzh(i7, bArr, iZzi2, i3, zzlmVarZzf, zzgjVar);
        }
        if (i2 > i3 || i7 != i6) {
            throw zzje.zzg();
        }
        zzlmVar.zzj(i, zzlmVarZzf);
        return i2;
    }

    public static int zzi(byte[] bArr, int i, zzgj zzgjVar) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        if (b2 < 0) {
            return zzj(b2, bArr, i2, zzgjVar);
        }
        zzgjVar.zza = b2;
        return i2;
    }

    public static int zzj(int i, byte[] bArr, int i2, zzgj zzgjVar) {
        byte b2 = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b2 >= 0) {
            zzgjVar.zza = i4 | (b2 << 7);
            return i3;
        }
        int i5 = i4 | ((b2 & ByteCompanionObject.MAX_VALUE) << 7);
        int i6 = i2 + 2;
        byte b3 = bArr[i3];
        if (b3 >= 0) {
            zzgjVar.zza = i5 | (b3 << 14);
            return i6;
        }
        int i7 = i5 | ((b3 & ByteCompanionObject.MAX_VALUE) << 14);
        int i8 = i2 + 3;
        byte b4 = bArr[i6];
        if (b4 >= 0) {
            zzgjVar.zza = i7 | (b4 << 21);
            return i8;
        }
        int i9 = i7 | ((b4 & ByteCompanionObject.MAX_VALUE) << 21);
        int i10 = i2 + 4;
        byte b5 = bArr[i8];
        if (b5 >= 0) {
            zzgjVar.zza = i9 | (b5 << 28);
            return i10;
        }
        int i11 = i9 | ((b5 & ByteCompanionObject.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzgjVar.zza = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int zzk(int i, byte[] bArr, int i2, int i3, zzjb zzjbVar, zzgj zzgjVar) {
        zziu zziuVar = (zziu) zzjbVar;
        int iZzi = zzi(bArr, i2, zzgjVar);
        zziuVar.zzg(zzgjVar.zza);
        while (iZzi < i3) {
            int iZzi2 = zzi(bArr, iZzi, zzgjVar);
            if (i != zzgjVar.zza) {
                break;
            }
            iZzi = zzi(bArr, iZzi2, zzgjVar);
            zziuVar.zzg(zzgjVar.zza);
        }
        return iZzi;
    }

    public static int zzl(byte[] bArr, int i, zzgj zzgjVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            zzgjVar.zzb = j;
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
        zzgjVar.zzb = j2;
        return i3;
    }

    public static int zzm(Object obj, zzkr zzkrVar, byte[] bArr, int i, int i2, int i3, zzgj zzgjVar) {
        int iZzc = ((zzkh) zzkrVar).zzc(obj, bArr, i, i2, i3, zzgjVar);
        zzgjVar.zzc = obj;
        return iZzc;
    }

    public static int zzn(Object obj, zzkr zzkrVar, byte[] bArr, int i, int i2, zzgj zzgjVar) {
        int iZzj = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iZzj = zzj(i3, bArr, iZzj, zzgjVar);
            i3 = zzgjVar.zza;
        }
        int i4 = iZzj;
        if (i3 < 0 || i3 > i2 - i4) {
            throw zzje.zzj();
        }
        int i5 = i4 + i3;
        zzkrVar.zzi(obj, bArr, i4, i5, zzgjVar);
        zzgjVar.zzc = obj;
        return i5;
    }

    public static long zzp(byte[] bArr, int i) {
        return (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    public static int zzo(int i, byte[] bArr, int i2, int i3, zzgj zzgjVar) {
        if ((i >>> 3) == 0) {
            throw zzje.zzc();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return zzl(bArr, i2, zzgjVar);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return zzi(bArr, i2, zzgjVar) + zzgjVar.zza;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            throw zzje.zzc();
        }
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (i2 < i3) {
            i2 = zzi(bArr, i2, zzgjVar);
            i6 = zzgjVar.zza;
            if (i6 == i5) {
                break;
            }
            i2 = zzo(i6, bArr, i2, i3, zzgjVar);
        }
        if (i2 > i3 || i6 != i5) {
            throw zzje.zzg();
        }
        return i2;
    }
}
