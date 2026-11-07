package com.google.android.gms.internal.cast;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import okio.Segment$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline1;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
final class zzzl<T> implements zzzs<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzaak.zzq();
    private final int[] zzc;
    private final Object[] zzd;
    private final zzzi zze;
    private final boolean zzf = false;
    private final int[] zzg;
    private final int zzh;
    private final zzaad zzi;
    private final zzxs zzj;

    private zzzl(int[] iArr, Object[] objArr, int i, int i2, zzzi zzziVar, boolean z, int[] iArr2, int i3, int i4, zzzn zzznVar, zzyv zzyvVar, zzaad zzaadVar, zzxs zzxsVar, zzzd zzzdVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzg = iArr2;
        this.zzh = i3;
        this.zzi = zzaadVar;
        this.zzj = zzxsVar;
        this.zze = zzziVar;
    }

    private final boolean zzA(Object obj, int i) {
        int iZzq = zzq(i);
        long j = iZzq & 1048575;
        if (j != 1048575) {
            return ((1 << (iZzq >>> 20)) & zzaak.zzd(obj, j)) != 0;
        }
        int iZzp = zzp(i);
        long j2 = iZzp & 1048575;
        switch (zzr(iZzp)) {
            case 0:
                return Double.doubleToRawLongBits(zzaak.zzl(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzaak.zzj(obj, j2)) != 0;
            case 2:
                return zzaak.zzf(obj, j2) != 0;
            case 3:
                return zzaak.zzf(obj, j2) != 0;
            case 4:
                return zzaak.zzd(obj, j2) != 0;
            case 5:
                return zzaak.zzf(obj, j2) != 0;
            case 6:
                return zzaak.zzd(obj, j2) != 0;
            case 7:
                return zzaak.zzh(obj, j2);
            case 8:
                Object objZzn = zzaak.zzn(obj, j2);
                if (objZzn instanceof String) {
                    return !((String) objZzn).isEmpty();
                }
                if (objZzn instanceof zzxk) {
                    return !zzxk.zza.equals(objZzn);
                }
                Segment$$ExternalSyntheticBUOutline0.m924m();
                return false;
            case 9:
                return zzaak.zzn(obj, j2) != null;
            case 10:
                return !zzxk.zza.equals(zzaak.zzn(obj, j2));
            case 11:
                return zzaak.zzd(obj, j2) != 0;
            case 12:
                return zzaak.zzd(obj, j2) != 0;
            case 13:
                return zzaak.zzd(obj, j2) != 0;
            case 14:
                return zzaak.zzf(obj, j2) != 0;
            case 15:
                return zzaak.zzd(obj, j2) != 0;
            case 16:
                return zzaak.zzf(obj, j2) != 0;
            case 17:
                return zzaak.zzn(obj, j2) != null;
            default:
                Segment$$ExternalSyntheticBUOutline0.m924m();
                return false;
        }
    }

    private final void zzB(Object obj, int i) {
        int iZzq = zzq(i);
        long j = 1048575 & iZzq;
        if (j == 1048575) {
            return;
        }
        zzaak.zze(obj, j, (1 << (iZzq >>> 20)) | zzaak.zzd(obj, j));
    }

    private final boolean zzC(Object obj, int i, int i2) {
        return zzaak.zzd(obj, (long) (zzq(i2) & 1048575)) == i;
    }

    private final void zzD(Object obj, int i, int i2) {
        zzaak.zze(obj, zzq(i2) & 1048575, i);
    }

    private static final void zzE(int i, Object obj, zzaar zzaarVar) {
        if (obj instanceof String) {
            zzaarVar.zzm(i, (String) obj);
        } else {
            zzaarVar.zzn(i, (zzxk) obj);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:126:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x03a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzzl zzi(Class cls, zzzf zzzfVar, zzzn zzznVar, zzyv zzyvVar, zzaad zzaadVar, zzxs zzxsVar, zzzd zzzdVar) {
        int i;
        int iCharAt;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int[] iArr;
        int i7;
        int i8;
        char cCharAt;
        int i9;
        char cCharAt2;
        int i10;
        char cCharAt3;
        int i11;
        char cCharAt4;
        int i12;
        char cCharAt5;
        int i13;
        char cCharAt6;
        int i14;
        char cCharAt7;
        int i15;
        char cCharAt8;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        String str;
        int iObjectFieldOffset;
        char c2;
        int iObjectFieldOffset2;
        int i21;
        int i22;
        int i23;
        Field fieldZzj;
        char cCharAt9;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        Object obj;
        Field fieldZzj2;
        Object obj2;
        Field fieldZzj3;
        int i29;
        char cCharAt10;
        int i30;
        char cCharAt11;
        int i31;
        char cCharAt12;
        int i32;
        char cCharAt13;
        if (!(zzzfVar instanceof zzzr)) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(zzzfVar);
            throw null;
        }
        zzzr zzzrVar = (zzzr) zzzfVar;
        String strZzd = zzzrVar.zzd();
        int length = strZzd.length();
        char c3 = 55296;
        if (strZzd.charAt(0) >= 55296) {
            int i33 = 1;
            while (true) {
                i = i33 + 1;
                if (strZzd.charAt(i33) < 55296) {
                    break;
                }
                i33 = i;
            }
        } else {
            i = 1;
        }
        int i34 = i + 1;
        int iCharAt2 = strZzd.charAt(i);
        if (iCharAt2 >= 55296) {
            int i35 = iCharAt2 & 8191;
            int i36 = 13;
            while (true) {
                i32 = i34 + 1;
                cCharAt13 = strZzd.charAt(i34);
                if (cCharAt13 < 55296) {
                    break;
                }
                i35 |= (cCharAt13 & 8191) << i36;
                i36 += 13;
                i34 = i32;
            }
            iCharAt2 = i35 | (cCharAt13 << i36);
            i34 = i32;
        }
        if (iCharAt2 == 0) {
            i3 = 0;
            i6 = 0;
            iCharAt = 0;
            i2 = 0;
            i4 = 0;
            i5 = 0;
            iArr = zza;
            i7 = 0;
        } else {
            int i37 = i34 + 1;
            int iCharAt3 = strZzd.charAt(i34);
            if (iCharAt3 >= 55296) {
                int i38 = iCharAt3 & 8191;
                int i39 = 13;
                while (true) {
                    i15 = i37 + 1;
                    cCharAt8 = strZzd.charAt(i37);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i38 |= (cCharAt8 & 8191) << i39;
                    i39 += 13;
                    i37 = i15;
                }
                iCharAt3 = i38 | (cCharAt8 << i39);
                i37 = i15;
            }
            int i40 = i37 + 1;
            int iCharAt4 = strZzd.charAt(i37);
            if (iCharAt4 >= 55296) {
                int i41 = iCharAt4 & 8191;
                int i42 = 13;
                while (true) {
                    i14 = i40 + 1;
                    cCharAt7 = strZzd.charAt(i40);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i41 |= (cCharAt7 & 8191) << i42;
                    i42 += 13;
                    i40 = i14;
                }
                iCharAt4 = i41 | (cCharAt7 << i42);
                i40 = i14;
            }
            int i43 = i40 + 1;
            int iCharAt5 = strZzd.charAt(i40);
            if (iCharAt5 >= 55296) {
                int i44 = iCharAt5 & 8191;
                int i45 = 13;
                while (true) {
                    i13 = i43 + 1;
                    cCharAt6 = strZzd.charAt(i43);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i44 |= (cCharAt6 & 8191) << i45;
                    i45 += 13;
                    i43 = i13;
                }
                iCharAt5 = i44 | (cCharAt6 << i45);
                i43 = i13;
            }
            int i46 = i43 + 1;
            int iCharAt6 = strZzd.charAt(i43);
            if (iCharAt6 >= 55296) {
                int i47 = iCharAt6 & 8191;
                int i48 = 13;
                while (true) {
                    i12 = i46 + 1;
                    cCharAt5 = strZzd.charAt(i46);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt5 & 8191) << i48;
                    i48 += 13;
                    i46 = i12;
                }
                iCharAt6 = i47 | (cCharAt5 << i48);
                i46 = i12;
            }
            int i49 = i46 + 1;
            iCharAt = strZzd.charAt(i46);
            if (iCharAt >= 55296) {
                int i50 = iCharAt & 8191;
                int i51 = 13;
                while (true) {
                    i11 = i49 + 1;
                    cCharAt4 = strZzd.charAt(i49);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt4 & 8191) << i51;
                    i51 += 13;
                    i49 = i11;
                }
                iCharAt = i50 | (cCharAt4 << i51);
                i49 = i11;
            }
            int i52 = i49 + 1;
            int iCharAt7 = strZzd.charAt(i49);
            if (iCharAt7 >= 55296) {
                int i53 = iCharAt7 & 8191;
                int i54 = 13;
                while (true) {
                    i10 = i52 + 1;
                    cCharAt3 = strZzd.charAt(i52);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i53 |= (cCharAt3 & 8191) << i54;
                    i54 += 13;
                    i52 = i10;
                }
                iCharAt7 = i53 | (cCharAt3 << i54);
                i52 = i10;
            }
            int i55 = i52 + 1;
            int iCharAt8 = strZzd.charAt(i52);
            if (iCharAt8 >= 55296) {
                int i56 = iCharAt8 & 8191;
                int i57 = 13;
                while (true) {
                    i9 = i55 + 1;
                    cCharAt2 = strZzd.charAt(i55);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i56 |= (cCharAt2 & 8191) << i57;
                    i57 += 13;
                    i55 = i9;
                }
                iCharAt8 = i56 | (cCharAt2 << i57);
                i55 = i9;
            }
            int i58 = i55 + 1;
            int iCharAt9 = strZzd.charAt(i55);
            if (iCharAt9 >= 55296) {
                int i59 = iCharAt9 & 8191;
                int i60 = 13;
                while (true) {
                    i8 = i58 + 1;
                    cCharAt = strZzd.charAt(i58);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i59 |= (cCharAt & 8191) << i60;
                    i60 += 13;
                    i58 = i8;
                }
                iCharAt9 = i59 | (cCharAt << i60);
                i58 = i8;
            }
            int i61 = iCharAt3 + iCharAt3 + iCharAt4;
            int[] iArr2 = new int[iCharAt9 + iCharAt7 + iCharAt8];
            int i62 = iCharAt7;
            i2 = iCharAt5;
            i3 = i62;
            i4 = iCharAt6;
            i5 = iCharAt9;
            i6 = i61;
            iArr = iArr2;
            i7 = iCharAt3;
            i34 = i58;
        }
        Unsafe unsafe = zzb;
        Object[] objArrZze = zzzrVar.zze();
        Class<?> cls2 = zzzrVar.zzb().getClass();
        int i63 = i5 + i3;
        int i64 = iCharAt + iCharAt;
        int[] iArr3 = new int[iCharAt * 3];
        Object[] objArr = new Object[i64];
        int i65 = i5;
        int i66 = i63;
        int i67 = 0;
        int i68 = 0;
        while (i34 < length) {
            int i69 = i34 + 1;
            int iCharAt10 = strZzd.charAt(i34);
            if (iCharAt10 >= c3) {
                int i70 = iCharAt10 & 8191;
                int i71 = i69;
                int i72 = 13;
                while (true) {
                    i31 = i71 + 1;
                    cCharAt12 = strZzd.charAt(i71);
                    if (cCharAt12 < c3) {
                        break;
                    }
                    i70 |= (cCharAt12 & 8191) << i72;
                    i72 += 13;
                    i71 = i31;
                }
                iCharAt10 = i70 | (cCharAt12 << i72);
                i16 = i31;
            } else {
                i16 = i69;
            }
            int i73 = i16 + 1;
            int iCharAt11 = strZzd.charAt(i16);
            if (iCharAt11 >= c3) {
                int i74 = iCharAt11 & 8191;
                int i75 = i73;
                int i76 = 13;
                while (true) {
                    i30 = i75 + 1;
                    cCharAt11 = strZzd.charAt(i75);
                    if (cCharAt11 < c3) {
                        break;
                    }
                    i74 |= (cCharAt11 & 8191) << i76;
                    i76 += 13;
                    i75 = i30;
                }
                iCharAt11 = i74 | (cCharAt11 << i76);
                i17 = i30;
            } else {
                i17 = i73;
            }
            if ((iCharAt11 & 1024) != 0) {
                iArr[i67] = i68;
                i67++;
            }
            int i77 = iCharAt11 & 255;
            zzzr zzzrVar2 = zzzrVar;
            int i78 = iCharAt11 & 2048;
            if (i77 >= 51) {
                int i79 = i17 + 1;
                int iCharAt12 = strZzd.charAt(i17);
                char c4 = 55296;
                if (iCharAt12 >= 55296) {
                    int i80 = iCharAt12 & 8191;
                    int i81 = i79;
                    int i82 = 13;
                    while (true) {
                        i29 = i81 + 1;
                        cCharAt10 = strZzd.charAt(i81);
                        if (cCharAt10 < c4) {
                            break;
                        }
                        i80 |= (cCharAt10 & 8191) << i82;
                        i82 += 13;
                        i81 = i29;
                        c4 = 55296;
                    }
                    iCharAt12 = i80 | (cCharAt10 << i82);
                    i26 = i29;
                } else {
                    i26 = i79;
                }
                int i83 = i26;
                int i84 = i77 - 51;
                i18 = length;
                if (i84 == 9 || i84 == 17) {
                    i27 = i6 + 1;
                    int i85 = i68 / 3;
                    objArr[i85 + i85 + 1] = objArrZze[i6];
                } else {
                    if (i84 != 12) {
                        i28 = i78;
                    } else if (zzzrVar2.zzc() == 1 || i78 != 0) {
                        i27 = i6 + 1;
                        int i86 = i68 / 3;
                        objArr[i86 + i86 + 1] = objArrZze[i6];
                    } else {
                        i28 = 0;
                    }
                    int i87 = iCharAt12 + iCharAt12;
                    obj = objArrZze[i87];
                    int i88 = i28;
                    if (obj instanceof Field) {
                        fieldZzj2 = zzj(cls2, (String) obj);
                        objArrZze[i87] = fieldZzj2;
                    } else {
                        fieldZzj2 = (Field) obj;
                    }
                    int i89 = i7;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzj2);
                    int i90 = i87 + 1;
                    obj2 = objArrZze[i90];
                    i19 = i89;
                    if (obj2 instanceof Field) {
                        fieldZzj3 = zzj(cls2, (String) obj2);
                        objArrZze[i90] = fieldZzj3;
                    } else {
                        fieldZzj3 = (Field) obj2;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzj3);
                    str = strZzd;
                    i22 = i88;
                    i17 = i83;
                    i21 = 0;
                    c2 = 55296;
                }
                i6 = i27;
                i28 = i78;
                int i872 = iCharAt12 + iCharAt12;
                obj = objArrZze[i872];
                int i882 = i28;
                if (obj instanceof Field) {
                }
                int i892 = i7;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzj2);
                int i902 = i872 + 1;
                obj2 = objArrZze[i902];
                i19 = i892;
                if (obj2 instanceof Field) {
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzj3);
                str = strZzd;
                i22 = i882;
                i17 = i83;
                i21 = 0;
                c2 = 55296;
            } else {
                i18 = length;
                i19 = i7;
                int i91 = i6 + 1;
                Field fieldZzj4 = zzj(cls2, (String) objArrZze[i6]);
                if (i77 == 9 || i77 == 17) {
                    i20 = i91;
                    int i92 = i68 / 3;
                    objArr[i92 + i92 + 1] = fieldZzj4.getType();
                } else {
                    if (i77 == 27) {
                        i24 = i91;
                        i25 = 1;
                        i6 += 2;
                    } else if (i77 == 49) {
                        i6 += 2;
                        i24 = i91;
                        i25 = 1;
                    } else if (i77 == 12 || i77 == 30 || i77 == 44) {
                        if (zzzrVar2.zzc() == 1 || i78 != 0) {
                            i6 += 2;
                            int i93 = i68 / 3;
                            objArr[i93 + i93 + 1] = objArrZze[i91];
                            str = strZzd;
                            iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzj4);
                            if ((iCharAt11 & 4096) != 0 || i77 > 17) {
                                c2 = 55296;
                                iObjectFieldOffset2 = 1048575;
                                i21 = 0;
                            } else {
                                int i94 = i17 + 1;
                                int iCharAt13 = str.charAt(i17);
                                if (iCharAt13 >= 55296) {
                                    int i95 = iCharAt13 & 8191;
                                    int i96 = 13;
                                    while (true) {
                                        i23 = i94 + 1;
                                        cCharAt9 = str.charAt(i94);
                                        if (cCharAt9 < 55296) {
                                            break;
                                        }
                                        i95 |= (cCharAt9 & 8191) << i96;
                                        i96 += 13;
                                        i94 = i23;
                                    }
                                    iCharAt13 = i95 | (cCharAt9 << i96);
                                } else {
                                    i23 = i94;
                                }
                                int i97 = i19 + i19 + (iCharAt13 / 32);
                                Object obj3 = objArrZze[i97];
                                if (obj3 instanceof Field) {
                                    fieldZzj = (Field) obj3;
                                } else {
                                    fieldZzj = zzj(cls2, (String) obj3);
                                    objArrZze[i97] = fieldZzj;
                                }
                                int i98 = iCharAt13;
                                int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzj);
                                i21 = i98 % 32;
                                i17 = i23;
                                c2 = 55296;
                                iObjectFieldOffset2 = iObjectFieldOffset3;
                            }
                            if (i77 >= 18 && i77 <= 49) {
                                iArr[i66] = iObjectFieldOffset;
                                i66++;
                            }
                            i22 = i78;
                        } else {
                            str = strZzd;
                            i6 = i91;
                            i78 = 0;
                            iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzj4);
                            if ((iCharAt11 & 4096) != 0) {
                                c2 = 55296;
                                iObjectFieldOffset2 = 1048575;
                                i21 = 0;
                                if (i77 >= 18) {
                                    iArr[i66] = iObjectFieldOffset;
                                    i66++;
                                }
                                i22 = i78;
                            }
                        }
                    } else if (i77 == 50) {
                        int i99 = i6 + 2;
                        int i100 = i65 + 1;
                        iArr[i65] = i68;
                        int i101 = i68 / 3;
                        int i102 = i101 + i101;
                        objArr[i102] = objArrZze[i91];
                        if (i78 != 0) {
                            objArr[i102 + 1] = objArrZze[i99];
                            i6 += 3;
                            str = strZzd;
                            i65 = i100;
                            iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzj4);
                            if ((iCharAt11 & 4096) != 0) {
                            }
                        } else {
                            i6 = i99;
                            i65 = i100;
                            i78 = 0;
                            str = strZzd;
                            iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzj4);
                            if ((iCharAt11 & 4096) != 0) {
                            }
                        }
                    } else {
                        i20 = i91;
                    }
                    int i103 = i68 / 3;
                    objArr[i103 + i103 + i25] = objArrZze[i24];
                    str = strZzd;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzj4);
                    if ((iCharAt11 & 4096) != 0) {
                    }
                }
                str = strZzd;
                i6 = i20;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzj4);
                if ((iCharAt11 & 4096) != 0) {
                }
            }
            int i104 = i68 + 1;
            iArr3[i68] = iCharAt10;
            int i105 = i68 + 2;
            iArr3[i104] = ((iCharAt11 & 512) != 0 ? 536870912 : 0) | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | (i22 != 0 ? Integer.MIN_VALUE : 0) | (i77 << 20) | iObjectFieldOffset;
            i68 += 3;
            iArr3[i105] = (i21 << 20) | iObjectFieldOffset2;
            i34 = i17;
            strZzd = str;
            c3 = c2;
            zzzrVar = zzzrVar2;
            length = i18;
            i7 = i19;
        }
        return new zzzl(iArr3, objArr, i2, i4, zzzrVar.zzb(), false, iArr, i5, i63, zzznVar, zzyvVar, zzaadVar, zzxsVar, zzzdVar);
    }

    private static Field zzj(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            zzzl$$ExternalSyntheticBUOutline1.m319m(String.valueOf(str).length() + 11 + name.length() + 29 + String.valueOf(string).length(), str, name, string, e);
            return null;
        }
    }

    private final void zzk(Object obj, Object obj2, int i) {
        if (zzA(obj2, i)) {
            int iZzp = zzp(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzp;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                int i2 = this.zzc[i];
                String string = obj2.toString();
                zzzl$$ExternalSyntheticBUOutline0.m318m(String.valueOf(i2).length() + 38 + string.length(), i2, string);
                return;
            }
            zzzs zzzsVarZzm = zzm(i);
            if (!zzA(obj, i)) {
                if (zzs(object)) {
                    Object objZza = zzzsVarZzm.zza();
                    zzzsVarZzm.zzd(objZza, object);
                    unsafe.putObject(obj, j, objZza);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzB(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzs(object2)) {
                Object objZza2 = zzzsVarZzm.zza();
                zzzsVarZzm.zzd(objZza2, object2);
                unsafe.putObject(obj, j, objZza2);
                object2 = objZza2;
            }
            zzzsVarZzm.zzd(object2, object);
        }
    }

    private final void zzl(Object obj, Object obj2, int i) {
        int[] iArr = this.zzc;
        int i2 = iArr[i];
        if (zzC(obj2, i2, i)) {
            int iZzp = zzp(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzp;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                int i3 = iArr[i];
                String string = obj2.toString();
                zzzl$$ExternalSyntheticBUOutline0.m318m(String.valueOf(i3).length() + 38 + string.length(), i3, string);
                return;
            }
            zzzs zzzsVarZzm = zzm(i);
            if (!zzC(obj, i2, i)) {
                if (zzs(object)) {
                    Object objZza = zzzsVarZzm.zza();
                    zzzsVarZzm.zzd(objZza, object);
                    unsafe.putObject(obj, j, objZza);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzD(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzs(object2)) {
                Object objZza2 = zzzsVarZzm.zza();
                zzzsVarZzm.zzd(objZza2, object2);
                unsafe.putObject(obj, j, objZza2);
                object2 = objZza2;
            }
            zzzsVarZzm.zzd(object2, object);
        }
    }

    private final zzzs zzm(int i) {
        Object[] objArr = this.zzd;
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzzs zzzsVar = (zzzs) objArr[i3];
        if (zzzsVar != null) {
            return zzzsVar;
        }
        zzzs zzzsVarZzb = zzzp.zza().zzb((Class) objArr[i3 + 1]);
        objArr[i3] = zzzsVarZzb;
        return zzzsVarZzb;
    }

    private final Object zzn(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private static boolean zzo(Object obj, int i, zzzs zzzsVar) {
        return zzzsVar.zzh(zzaak.zzn(obj, i & 1048575));
    }

    private final int zzp(int i) {
        return this.zzc[i + 1];
    }

    private final int zzq(int i) {
        return this.zzc[i + 2];
    }

    private static int zzr(int i) {
        return (i >>> 20) & 255;
    }

    private static boolean zzs(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzyd) {
            return ((zzyd) obj).zzv();
        }
        return true;
    }

    private static double zzt(Object obj, long j) {
        return ((Double) zzaak.zzn(obj, j)).doubleValue();
    }

    private static float zzu(Object obj, long j) {
        return ((Float) zzaak.zzn(obj, j)).floatValue();
    }

    private static int zzv(Object obj, long j) {
        return ((Integer) zzaak.zzn(obj, j)).intValue();
    }

    private static long zzw(Object obj, long j) {
        return ((Long) zzaak.zzn(obj, j)).longValue();
    }

    private static boolean zzx(Object obj, long j) {
        return ((Boolean) zzaak.zzn(obj, j)).booleanValue();
    }

    private final boolean zzy(Object obj, Object obj2, int i) {
        return zzA(obj, i) == zzA(obj2, i);
    }

    private final boolean zzz(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zzA(obj, i) : (i3 & i4) != 0;
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final Object zza() {
        return ((zzyd) this.zze).zzy();
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final boolean zzb(Object obj, Object obj2) {
        boolean zZzC;
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzp = zzp(i);
            long j = iZzp & 1048575;
            switch (zzr(iZzp)) {
                case 0:
                    if (!zzy(obj, obj2, i) || Double.doubleToLongBits(zzaak.zzl(obj, j)) != Double.doubleToLongBits(zzaak.zzl(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzy(obj, obj2, i) || Float.floatToIntBits(zzaak.zzj(obj, j)) != Float.floatToIntBits(zzaak.zzj(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzy(obj, obj2, i) || zzaak.zzf(obj, j) != zzaak.zzf(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzy(obj, obj2, i) || zzaak.zzf(obj, j) != zzaak.zzf(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzy(obj, obj2, i) || zzaak.zzd(obj, j) != zzaak.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzy(obj, obj2, i) || zzaak.zzf(obj, j) != zzaak.zzf(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzy(obj, obj2, i) || zzaak.zzd(obj, j) != zzaak.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzy(obj, obj2, i) || zzaak.zzh(obj, j) != zzaak.zzh(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzy(obj, obj2, i) || !zzzu.zzC(zzaak.zzn(obj, j), zzaak.zzn(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzy(obj, obj2, i) || !zzzu.zzC(zzaak.zzn(obj, j), zzaak.zzn(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzy(obj, obj2, i) || !zzzu.zzC(zzaak.zzn(obj, j), zzaak.zzn(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzy(obj, obj2, i) || zzaak.zzd(obj, j) != zzaak.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzy(obj, obj2, i) || zzaak.zzd(obj, j) != zzaak.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzy(obj, obj2, i) || zzaak.zzd(obj, j) != zzaak.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzy(obj, obj2, i) || zzaak.zzf(obj, j) != zzaak.zzf(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzy(obj, obj2, i) || zzaak.zzd(obj, j) != zzaak.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzy(obj, obj2, i) || zzaak.zzf(obj, j) != zzaak.zzf(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzy(obj, obj2, i) || !zzzu.zzC(zzaak.zzn(obj, j), zzaak.zzn(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zZzC = zzzu.zzC(zzaak.zzn(obj, j), zzaak.zzn(obj2, j));
                    break;
                case 50:
                    zZzC = zzzu.zzC(zzaak.zzn(obj, j), zzaak.zzn(obj2, j));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long jZzq = zzq(i) & 1048575;
                    if (zzaak.zzd(obj, jZzq) != zzaak.zzd(obj2, jZzq) || !zzzu.zzC(zzaak.zzn(obj, j), zzaak.zzn(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    break;
            }
            if (!zZzC) {
                return false;
            }
        }
        if (!((zzyd) obj).zzc.equals(((zzyd) obj2).zzc)) {
            return false;
        }
        if (!this.zzf) {
            return true;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final int zzc(Object obj) {
        int i;
        long jDoubleToLongBits;
        int iFloatToIntBits;
        int i2;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int[] iArr = this.zzc;
            if (i3 >= iArr.length) {
                int iHashCode = (i4 * 53) + ((zzyd) obj).zzc.hashCode();
                if (!this.zzf) {
                    return iHashCode;
                }
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
                throw null;
            }
            int iZzp = zzp(i3);
            int i5 = 1048575 & iZzp;
            int iZzr = zzr(iZzp);
            int i6 = iArr[i3];
            long j = i5;
            int iHashCode2 = 37;
            switch (iZzr) {
                case 0:
                    i = i4 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(zzaak.zzl(obj, j));
                    byte[] bArr = zzym.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i4 = i + iFloatToIntBits;
                    break;
                case 1:
                    i = i4 * 53;
                    iFloatToIntBits = Float.floatToIntBits(zzaak.zzj(obj, j));
                    i4 = i + iFloatToIntBits;
                    break;
                case 2:
                    i = i4 * 53;
                    jDoubleToLongBits = zzaak.zzf(obj, j);
                    byte[] bArr2 = zzym.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i4 = i + iFloatToIntBits;
                    break;
                case 3:
                    i = i4 * 53;
                    jDoubleToLongBits = zzaak.zzf(obj, j);
                    byte[] bArr3 = zzym.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i4 = i + iFloatToIntBits;
                    break;
                case 4:
                    i = i4 * 53;
                    iFloatToIntBits = zzaak.zzd(obj, j);
                    i4 = i + iFloatToIntBits;
                    break;
                case 5:
                    i = i4 * 53;
                    jDoubleToLongBits = zzaak.zzf(obj, j);
                    byte[] bArr4 = zzym.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i4 = i + iFloatToIntBits;
                    break;
                case 6:
                    i = i4 * 53;
                    iFloatToIntBits = zzaak.zzd(obj, j);
                    i4 = i + iFloatToIntBits;
                    break;
                case 7:
                    i = i4 * 53;
                    iFloatToIntBits = zzym.zza(zzaak.zzh(obj, j));
                    i4 = i + iFloatToIntBits;
                    break;
                case 8:
                    i = i4 * 53;
                    iFloatToIntBits = ((String) zzaak.zzn(obj, j)).hashCode();
                    i4 = i + iFloatToIntBits;
                    break;
                case 9:
                    i2 = i4 * 53;
                    Object objZzn = zzaak.zzn(obj, j);
                    if (objZzn != null) {
                        iHashCode2 = objZzn.hashCode();
                    }
                    i4 = i2 + iHashCode2;
                    break;
                case 10:
                    i = i4 * 53;
                    iFloatToIntBits = zzaak.zzn(obj, j).hashCode();
                    i4 = i + iFloatToIntBits;
                    break;
                case 11:
                    i = i4 * 53;
                    iFloatToIntBits = zzaak.zzd(obj, j);
                    i4 = i + iFloatToIntBits;
                    break;
                case 12:
                    i = i4 * 53;
                    iFloatToIntBits = zzaak.zzd(obj, j);
                    i4 = i + iFloatToIntBits;
                    break;
                case 13:
                    i = i4 * 53;
                    iFloatToIntBits = zzaak.zzd(obj, j);
                    i4 = i + iFloatToIntBits;
                    break;
                case 14:
                    i = i4 * 53;
                    jDoubleToLongBits = zzaak.zzf(obj, j);
                    byte[] bArr5 = zzym.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i4 = i + iFloatToIntBits;
                    break;
                case 15:
                    i = i4 * 53;
                    iFloatToIntBits = zzaak.zzd(obj, j);
                    i4 = i + iFloatToIntBits;
                    break;
                case 16:
                    i = i4 * 53;
                    jDoubleToLongBits = zzaak.zzf(obj, j);
                    byte[] bArr6 = zzym.zzb;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i4 = i + iFloatToIntBits;
                    break;
                case 17:
                    i2 = i4 * 53;
                    Object objZzn2 = zzaak.zzn(obj, j);
                    if (objZzn2 != null) {
                        iHashCode2 = objZzn2.hashCode();
                    }
                    i4 = i2 + iHashCode2;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i4 * 53;
                    iFloatToIntBits = zzaak.zzn(obj, j).hashCode();
                    i4 = i + iFloatToIntBits;
                    break;
                case 50:
                    i = i4 * 53;
                    iFloatToIntBits = zzaak.zzn(obj, j).hashCode();
                    i4 = i + iFloatToIntBits;
                    break;
                case 51:
                    if (zzC(obj, i6, i3)) {
                        i = i4 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(zzt(obj, j));
                        byte[] bArr7 = zzym.zzb;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 52:
                    if (zzC(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = Float.floatToIntBits(zzu(obj, j));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 53:
                    if (zzC(obj, i6, i3)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzw(obj, j);
                        byte[] bArr8 = zzym.zzb;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 54:
                    if (zzC(obj, i6, i3)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzw(obj, j);
                        byte[] bArr9 = zzym.zzb;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 55:
                    if (zzC(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = zzv(obj, j);
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 56:
                    if (zzC(obj, i6, i3)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzw(obj, j);
                        byte[] bArr10 = zzym.zzb;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 57:
                    if (zzC(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = zzv(obj, j);
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 58:
                    if (zzC(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = zzym.zza(zzx(obj, j));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 59:
                    if (zzC(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = ((String) zzaak.zzn(obj, j)).hashCode();
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 60:
                    if (zzC(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = zzaak.zzn(obj, j).hashCode();
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 61:
                    if (zzC(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = zzaak.zzn(obj, j).hashCode();
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 62:
                    if (zzC(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = zzv(obj, j);
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 63:
                    if (zzC(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = zzv(obj, j);
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 64:
                    if (zzC(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = zzv(obj, j);
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 65:
                    if (zzC(obj, i6, i3)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzw(obj, j);
                        byte[] bArr11 = zzym.zzb;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 66:
                    if (zzC(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = zzv(obj, j);
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 67:
                    if (zzC(obj, i6, i3)) {
                        i = i4 * 53;
                        jDoubleToLongBits = zzw(obj, j);
                        byte[] bArr12 = zzym.zzb;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i4 = i + iFloatToIntBits;
                    }
                    break;
                case 68:
                    if (zzC(obj, i6, i3)) {
                        i = i4 * 53;
                        iFloatToIntBits = zzaak.zzn(obj, j).hashCode();
                        i4 = i + iFloatToIntBits;
                    }
                    break;
            }
            i3 += 3;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final void zzd(Object obj, Object obj2) {
        if (!zzs(obj)) {
            f$$ExternalSyntheticBUOutline1.m212m("Mutating immutable message: ".concat(String.valueOf(obj)));
            return;
        }
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.zzc;
            if (i >= iArr.length) {
                zzzu.zzE(this.zzi, obj, obj2);
                if (this.zzf) {
                    zzzu.zzD(this.zzj, obj, obj2);
                    return;
                }
                return;
            }
            int iZzp = zzp(i);
            int i2 = 1048575 & iZzp;
            int iZzr = zzr(iZzp);
            int i3 = iArr[i];
            long j = i2;
            switch (iZzr) {
                case 0:
                    if (zzA(obj2, i)) {
                        zzaak.zzm(obj, j, zzaak.zzl(obj2, j));
                        zzB(obj, i);
                    }
                    break;
                case 1:
                    if (zzA(obj2, i)) {
                        zzaak.zzk(obj, j, zzaak.zzj(obj2, j));
                        zzB(obj, i);
                    }
                    break;
                case 2:
                    if (zzA(obj2, i)) {
                        zzaak.zzg(obj, j, zzaak.zzf(obj2, j));
                        zzB(obj, i);
                    }
                    break;
                case 3:
                    if (zzA(obj2, i)) {
                        zzaak.zzg(obj, j, zzaak.zzf(obj2, j));
                        zzB(obj, i);
                    }
                    break;
                case 4:
                    if (zzA(obj2, i)) {
                        zzaak.zze(obj, j, zzaak.zzd(obj2, j));
                        zzB(obj, i);
                    }
                    break;
                case 5:
                    if (zzA(obj2, i)) {
                        zzaak.zzg(obj, j, zzaak.zzf(obj2, j));
                        zzB(obj, i);
                    }
                    break;
                case 6:
                    if (zzA(obj2, i)) {
                        zzaak.zze(obj, j, zzaak.zzd(obj2, j));
                        zzB(obj, i);
                    }
                    break;
                case 7:
                    if (zzA(obj2, i)) {
                        zzaak.zzi(obj, j, zzaak.zzh(obj2, j));
                        zzB(obj, i);
                    }
                    break;
                case 8:
                    if (zzA(obj2, i)) {
                        zzaak.zzo(obj, j, zzaak.zzn(obj2, j));
                        zzB(obj, i);
                    }
                    break;
                case 9:
                    zzk(obj, obj2, i);
                    break;
                case 10:
                    if (zzA(obj2, i)) {
                        zzaak.zzo(obj, j, zzaak.zzn(obj2, j));
                        zzB(obj, i);
                    }
                    break;
                case 11:
                    if (zzA(obj2, i)) {
                        zzaak.zze(obj, j, zzaak.zzd(obj2, j));
                        zzB(obj, i);
                    }
                    break;
                case 12:
                    if (zzA(obj2, i)) {
                        zzaak.zze(obj, j, zzaak.zzd(obj2, j));
                        zzB(obj, i);
                    }
                    break;
                case 13:
                    if (zzA(obj2, i)) {
                        zzaak.zze(obj, j, zzaak.zzd(obj2, j));
                        zzB(obj, i);
                    }
                    break;
                case 14:
                    if (zzA(obj2, i)) {
                        zzaak.zzg(obj, j, zzaak.zzf(obj2, j));
                        zzB(obj, i);
                    }
                    break;
                case 15:
                    if (zzA(obj2, i)) {
                        zzaak.zze(obj, j, zzaak.zzd(obj2, j));
                        zzB(obj, i);
                    }
                    break;
                case 16:
                    if (zzA(obj2, i)) {
                        zzaak.zzg(obj, j, zzaak.zzf(obj2, j));
                        zzB(obj, i);
                    }
                    break;
                case 17:
                    zzk(obj, obj2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zzyl zzylVarZzf = (zzyl) zzaak.zzn(obj, j);
                    zzyl zzylVar = (zzyl) zzaak.zzn(obj2, j);
                    int size = zzylVarZzf.size();
                    int size2 = zzylVar.size();
                    if (size > 0 && size2 > 0) {
                        if (!zzylVarZzf.zza()) {
                            zzylVarZzf = zzylVarZzf.zzf(size2 + size);
                        }
                        zzylVarZzf.addAll(zzylVar);
                    }
                    if (size > 0) {
                        zzylVar = zzylVarZzf;
                    }
                    zzaak.zzo(obj, j, zzylVar);
                    break;
                case 50:
                    int i4 = zzzu.$r8$clinit;
                    Object objZzn = zzaak.zzn(obj, j);
                    Object objZzn2 = zzaak.zzn(obj2, j);
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(objZzn);
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(objZzn2);
                    throw null;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zzC(obj2, i3, i)) {
                        zzaak.zzo(obj, j, zzaak.zzn(obj2, j));
                        zzD(obj, i3, i);
                    }
                    break;
                case 60:
                    zzl(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzC(obj2, i3, i)) {
                        zzaak.zzo(obj, j, zzaak.zzn(obj2, j));
                        zzD(obj, i3, i);
                    }
                    break;
                case 68:
                    zzl(obj, obj2, i);
                    break;
            }
            i += 3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:170:0x0453  */
    @Override // com.google.android.gms.internal.cast.zzzs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zze(Object obj) {
        int i;
        int iZzv;
        int iZzv2;
        int iZzw;
        int iZzv3;
        int iZzv4;
        int iZzv5;
        int iZza;
        int iZzv6;
        int iZzz;
        int size;
        int iZzp;
        int iZzv7;
        int iZzo;
        int iZza2;
        int iZzv8;
        int iZza3;
        int iZzv9;
        int iZzv10;
        int iZzv11;
        int iZzw2;
        int iZzx;
        int iZzv12;
        int iZzv13;
        int iZzA;
        int iZzv14;
        int iZzv15;
        int iZzv16;
        int iZza4;
        int iZzv17;
        zzzl<T> zzzlVar = this;
        Object obj2 = obj;
        Unsafe unsafe = zzb;
        int i2 = 0;
        int i3 = 0;
        int iZzv18 = 0;
        int i4 = 1048575;
        while (true) {
            int[] iArr = zzzlVar.zzc;
            if (i2 >= iArr.length) {
                int iZzf = iZzv18 + ((zzyd) obj).zzc.zzf();
                if (!zzzlVar.zzf) {
                    return iZzf;
                }
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
                throw null;
            }
            int iZzp2 = zzzlVar.zzp(i2);
            int iZzr = zzr(iZzp2);
            int i5 = iArr[i2];
            int i6 = iArr[i2 + 2];
            int i7 = i6 & 1048575;
            if (iZzr <= 17) {
                if (i7 != i4) {
                    i3 = i7 == 1048575 ? 0 : unsafe.getInt(obj2, i7);
                    i4 = i7;
                }
                i = 1 << (i6 >>> 20);
            } else {
                i = 0;
            }
            int i8 = iZzp2 & 1048575;
            if (iZzr >= zzxx.zzJ.zza()) {
                zzxx.zzW.zza();
            }
            long j = i8;
            switch (iZzr) {
                case 0:
                    if (zzzlVar.zzz(obj2, i2, i4, i3, i)) {
                        iZzv18 += zzxp.zzv(i5 << 3) + 8;
                    }
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 1:
                    if (zzzlVar.zzz(obj2, i2, i4, i3, i)) {
                        iZzv = zzxp.zzv(i5 << 3);
                        iZzv4 = iZzv + 4;
                        iZzv18 += iZzv4;
                    }
                    zzzlVar = this;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 2:
                    if (zzzlVar.zzz(obj2, i2, i4, i3, i)) {
                        long j2 = unsafe.getLong(obj2, j);
                        iZzv2 = zzxp.zzv(i5 << 3);
                        iZzw = zzxp.zzw(j2);
                        iZzv4 = iZzv2 + iZzw;
                        iZzv18 += iZzv4;
                    }
                    zzzlVar = this;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 3:
                    if (zzzlVar.zzz(obj2, i2, i4, i3, i)) {
                        long j3 = unsafe.getLong(obj2, j);
                        iZzv2 = zzxp.zzv(i5 << 3);
                        iZzw = zzxp.zzw(j3);
                        iZzv4 = iZzv2 + iZzw;
                        iZzv18 += iZzv4;
                    }
                    zzzlVar = this;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 4:
                    if (zzzlVar.zzz(obj2, i2, i4, i3, i)) {
                        long j4 = unsafe.getInt(obj2, j);
                        iZzv2 = zzxp.zzv(i5 << 3);
                        iZzw = zzxp.zzw(j4);
                        iZzv4 = iZzv2 + iZzw;
                        iZzv18 += iZzv4;
                    }
                    zzzlVar = this;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 5:
                    if (zzzlVar.zzz(obj2, i2, i4, i3, i)) {
                        iZzv3 = zzxp.zzv(i5 << 3);
                        iZzv4 = iZzv3 + 8;
                        iZzv18 += iZzv4;
                    }
                    zzzlVar = this;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 6:
                    if (zzzlVar.zzz(obj2, i2, i4, i3, i)) {
                        iZzv = zzxp.zzv(i5 << 3);
                        iZzv4 = iZzv + 4;
                        iZzv18 += iZzv4;
                    }
                    zzzlVar = this;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 7:
                    if (zzzlVar.zzz(obj2, i2, i4, i3, i)) {
                        iZzv4 = zzxp.zzv(i5 << 3) + 1;
                        iZzv18 += iZzv4;
                    }
                    zzzlVar = this;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 8:
                    if (zzzlVar.zzz(obj2, i2, i4, i3, i)) {
                        int i9 = i5 << 3;
                        Object object = unsafe.getObject(obj2, j);
                        if (object instanceof zzxk) {
                            iZzv5 = zzxp.zzv(i9);
                            iZza = ((zzxk) object).zzc();
                            iZzv6 = zzxp.zzv(iZza);
                        } else {
                            iZzv5 = zzxp.zzv(i9);
                            iZza = zzaao.zza((String) object);
                            iZzv6 = zzxp.zzv(iZza);
                        }
                        iZzv4 = iZzv5 + iZzv6 + iZza;
                        iZzv18 += iZzv4;
                    }
                    zzzlVar = this;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 9:
                    if (zzzlVar.zzz(obj2, i2, i4, i3, i)) {
                        iZzz = zzzu.zzz(i5, unsafe.getObject(obj2, j), zzzlVar.zzm(i2));
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 10:
                    if (zzzlVar.zzz(obj2, i2, i4, i3, i)) {
                        zzxk zzxkVar = (zzxk) unsafe.getObject(obj2, j);
                        iZzv5 = zzxp.zzv(i5 << 3);
                        iZza = zzxkVar.zzc();
                        iZzv6 = zzxp.zzv(iZza);
                        iZzv4 = iZzv5 + iZzv6 + iZza;
                        iZzv18 += iZzv4;
                    }
                    zzzlVar = this;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 11:
                    if (zzzlVar.zzz(obj2, i2, i4, i3, i)) {
                        int i10 = unsafe.getInt(obj2, j);
                        iZzv2 = zzxp.zzv(i5 << 3);
                        iZzw = zzxp.zzv(i10);
                        iZzv4 = iZzv2 + iZzw;
                        iZzv18 += iZzv4;
                    }
                    zzzlVar = this;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 12:
                    if (zzzlVar.zzz(obj2, i2, i4, i3, i)) {
                        long j5 = unsafe.getInt(obj2, j);
                        iZzv2 = zzxp.zzv(i5 << 3);
                        iZzw = zzxp.zzw(j5);
                        iZzv4 = iZzv2 + iZzw;
                        iZzv18 += iZzv4;
                    }
                    zzzlVar = this;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 13:
                    if (zzzlVar.zzz(obj2, i2, i4, i3, i)) {
                        iZzv = zzxp.zzv(i5 << 3);
                        iZzv4 = iZzv + 4;
                        iZzv18 += iZzv4;
                    }
                    zzzlVar = this;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 14:
                    if (zzzlVar.zzz(obj2, i2, i4, i3, i)) {
                        iZzv3 = zzxp.zzv(i5 << 3);
                        iZzv4 = iZzv3 + 8;
                        iZzv18 += iZzv4;
                    }
                    zzzlVar = this;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 15:
                    if (zzzlVar.zzz(obj2, i2, i4, i3, i)) {
                        int i11 = unsafe.getInt(obj2, j);
                        iZzv2 = zzxp.zzv(i5 << 3);
                        iZzw = zzxp.zzv((i11 >> 31) ^ (i11 + i11));
                        iZzv4 = iZzv2 + iZzw;
                        iZzv18 += iZzv4;
                    }
                    zzzlVar = this;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 16:
                    if (zzzlVar.zzz(obj2, i2, i4, i3, i)) {
                        long j6 = unsafe.getLong(obj2, j);
                        iZzv2 = zzxp.zzv(i5 << 3);
                        iZzw = zzxp.zzw((j6 >> 63) ^ (j6 + j6));
                        iZzv4 = iZzv2 + iZzw;
                        iZzv18 += iZzv4;
                    }
                    zzzlVar = this;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 17:
                    if (zzzlVar.zzz(obj2, i2, i4, i3, i)) {
                        iZzz = zzzu.zzA(i5, (zzzi) unsafe.getObject(obj2, j), zzzlVar.zzm(i2));
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 18:
                    iZzz = zzzu.zzy(i5, (List) unsafe.getObject(obj2, j), false);
                    iZzv18 += iZzz;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 19:
                    iZzz = zzzu.zzw(i5, (List) unsafe.getObject(obj2, j), false);
                    iZzv18 += iZzz;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj2, j);
                    int i12 = zzzu.$r8$clinit;
                    iZzo = list.size() == 0 ? 0 : zzzu.zzo(list) + (list.size() * zzxp.zzv(i5 << 3));
                    iZzv18 += iZzo;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(obj2, j);
                    int i13 = zzzu.$r8$clinit;
                    size = list2.size();
                    if (size != 0) {
                        iZzp = zzzu.zzp(list2);
                        iZzv7 = zzxp.zzv(i5 << 3);
                        iZzw2 = size * iZzv7;
                        iZzz = iZzp + iZzw2;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    }
                    iZzv18 += iZzz;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(obj2, j);
                    int i14 = zzzu.$r8$clinit;
                    size = list3.size();
                    if (size != 0) {
                        iZzp = zzzu.zzs(list3);
                        iZzv7 = zzxp.zzv(i5 << 3);
                        iZzw2 = size * iZzv7;
                        iZzz = iZzp + iZzw2;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    }
                    iZzv18 += iZzz;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 23:
                    iZzz = zzzu.zzy(i5, (List) unsafe.getObject(obj2, j), false);
                    iZzv18 += iZzz;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 24:
                    iZzz = zzzu.zzw(i5, (List) unsafe.getObject(obj2, j), false);
                    iZzv18 += iZzz;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(obj2, j);
                    int i15 = zzzu.$r8$clinit;
                    int size2 = list4.size();
                    iZzz = size2 == 0 ? 0 : size2 * (zzxp.zzv(i5 << 3) + 1);
                    iZzv18 += iZzz;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 26:
                    List list5 = (List) unsafe.getObject(obj2, j);
                    int i16 = zzzu.$r8$clinit;
                    int size3 = list5.size();
                    if (size3 != 0) {
                        iZzo = zzxp.zzv(i5 << 3) * size3;
                        if (list5 instanceof zzyu) {
                            zzyu zzyuVar = (zzyu) list5;
                            for (int i17 = 0; i17 < size3; i17++) {
                                Object objZza = zzyuVar.zza();
                                if (objZza instanceof zzxk) {
                                    iZza3 = ((zzxk) objZza).zzc();
                                    iZzv9 = zzxp.zzv(iZza3);
                                } else {
                                    iZza3 = zzaao.zza((String) objZza);
                                    iZzv9 = zzxp.zzv(iZza3);
                                }
                                iZzo += iZzv9 + iZza3;
                            }
                        } else {
                            for (int i18 = 0; i18 < size3; i18++) {
                                Object obj3 = list5.get(i18);
                                if (obj3 instanceof zzxk) {
                                    iZza2 = ((zzxk) obj3).zzc();
                                    iZzv8 = zzxp.zzv(iZza2);
                                } else {
                                    iZza2 = zzaao.zza((String) obj3);
                                    iZzv8 = zzxp.zzv(iZza2);
                                }
                                iZzo += iZzv8 + iZza2;
                            }
                        }
                    }
                    iZzv18 += iZzo;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 27:
                    List list6 = (List) unsafe.getObject(obj2, j);
                    zzzs zzzsVarZzm = zzzlVar.zzm(i2);
                    int i19 = zzzu.$r8$clinit;
                    int size4 = list6.size();
                    if (size4 == 0) {
                        iZzv10 = 0;
                    } else {
                        iZzv10 = zzxp.zzv(i5 << 3) * size4;
                        for (int i20 = 0; i20 < size4; i20++) {
                            int iZzt = ((zzwz) list6.get(i20)).zzt(zzzsVarZzm);
                            iZzv10 += zzxp.zzv(iZzt) + iZzt;
                        }
                    }
                    iZzv18 += iZzv10;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 28:
                    List list7 = (List) unsafe.getObject(obj2, j);
                    int i21 = zzzu.$r8$clinit;
                    int size5 = list7.size();
                    if (size5 == 0) {
                        iZzv11 = 0;
                    } else {
                        iZzv11 = size5 * zzxp.zzv(i5 << 3);
                        for (int i22 = 0; i22 < list7.size(); i22++) {
                            int iZzc = ((zzxk) list7.get(i22)).zzc();
                            iZzv11 += zzxp.zzv(iZzc) + iZzc;
                        }
                    }
                    iZzv18 += iZzv11;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 29:
                    List list8 = (List) unsafe.getObject(obj2, j);
                    int i23 = zzzu.$r8$clinit;
                    size = list8.size();
                    if (size != 0) {
                        iZzp = zzzu.zzt(list8);
                        iZzv7 = zzxp.zzv(i5 << 3);
                        iZzw2 = size * iZzv7;
                        iZzz = iZzp + iZzw2;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    }
                    iZzv18 += iZzz;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 30:
                    List list9 = (List) unsafe.getObject(obj2, j);
                    int i24 = zzzu.$r8$clinit;
                    size = list9.size();
                    if (size != 0) {
                        iZzp = zzzu.zzr(list9);
                        iZzv7 = zzxp.zzv(i5 << 3);
                        iZzw2 = size * iZzv7;
                        iZzz = iZzp + iZzw2;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    }
                    iZzv18 += iZzz;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 31:
                    iZzz = zzzu.zzw(i5, (List) unsafe.getObject(obj2, j), false);
                    iZzv18 += iZzz;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 32:
                    iZzz = zzzu.zzy(i5, (List) unsafe.getObject(obj2, j), false);
                    iZzv18 += iZzz;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 33:
                    List list10 = (List) unsafe.getObject(obj2, j);
                    int i25 = zzzu.$r8$clinit;
                    size = list10.size();
                    if (size != 0) {
                        iZzp = zzzu.zzu(list10);
                        iZzv7 = zzxp.zzv(i5 << 3);
                        iZzw2 = size * iZzv7;
                        iZzz = iZzp + iZzw2;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    }
                    iZzv18 += iZzz;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 34:
                    List list11 = (List) unsafe.getObject(obj2, j);
                    int i26 = zzzu.$r8$clinit;
                    size = list11.size();
                    if (size != 0) {
                        iZzp = zzzu.zzq(list11);
                        iZzv7 = zzxp.zzv(i5 << 3);
                        iZzw2 = size * iZzv7;
                        iZzz = iZzp + iZzw2;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    }
                    iZzv18 += iZzz;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 35:
                    iZzx = zzzu.zzx((List) unsafe.getObject(obj2, j));
                    if (iZzx > 0) {
                        iZzv12 = zzxp.zzv(i5 << 3);
                        iZzv13 = zzxp.zzv(iZzx);
                        iZzv11 = iZzv12 + iZzv13 + iZzx;
                        iZzv18 += iZzv11;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 36:
                    iZzx = zzzu.zzv((List) unsafe.getObject(obj2, j));
                    if (iZzx > 0) {
                        iZzv12 = zzxp.zzv(i5 << 3);
                        iZzv13 = zzxp.zzv(iZzx);
                        iZzv11 = iZzv12 + iZzv13 + iZzx;
                        iZzv18 += iZzv11;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 37:
                    iZzx = zzzu.zzo((List) unsafe.getObject(obj2, j));
                    if (iZzx > 0) {
                        iZzv12 = zzxp.zzv(i5 << 3);
                        iZzv13 = zzxp.zzv(iZzx);
                        iZzv11 = iZzv12 + iZzv13 + iZzx;
                        iZzv18 += iZzv11;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 38:
                    iZzx = zzzu.zzp((List) unsafe.getObject(obj2, j));
                    if (iZzx > 0) {
                        iZzv12 = zzxp.zzv(i5 << 3);
                        iZzv13 = zzxp.zzv(iZzx);
                        iZzv11 = iZzv12 + iZzv13 + iZzx;
                        iZzv18 += iZzv11;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 39:
                    iZzx = zzzu.zzs((List) unsafe.getObject(obj2, j));
                    if (iZzx > 0) {
                        iZzv12 = zzxp.zzv(i5 << 3);
                        iZzv13 = zzxp.zzv(iZzx);
                        iZzv11 = iZzv12 + iZzv13 + iZzx;
                        iZzv18 += iZzv11;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 40:
                    iZzx = zzzu.zzx((List) unsafe.getObject(obj2, j));
                    if (iZzx > 0) {
                        iZzv12 = zzxp.zzv(i5 << 3);
                        iZzv13 = zzxp.zzv(iZzx);
                        iZzv11 = iZzv12 + iZzv13 + iZzx;
                        iZzv18 += iZzv11;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 41:
                    iZzx = zzzu.zzv((List) unsafe.getObject(obj2, j));
                    if (iZzx > 0) {
                        iZzv12 = zzxp.zzv(i5 << 3);
                        iZzv13 = zzxp.zzv(iZzx);
                        iZzv11 = iZzv12 + iZzv13 + iZzx;
                        iZzv18 += iZzv11;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 42:
                    List list12 = (List) unsafe.getObject(obj2, j);
                    int i27 = zzzu.$r8$clinit;
                    iZzx = list12.size();
                    if (iZzx > 0) {
                        iZzv12 = zzxp.zzv(i5 << 3);
                        iZzv13 = zzxp.zzv(iZzx);
                        iZzv11 = iZzv12 + iZzv13 + iZzx;
                        iZzv18 += iZzv11;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 43:
                    iZzx = zzzu.zzt((List) unsafe.getObject(obj2, j));
                    if (iZzx > 0) {
                        iZzv12 = zzxp.zzv(i5 << 3);
                        iZzv13 = zzxp.zzv(iZzx);
                        iZzv11 = iZzv12 + iZzv13 + iZzx;
                        iZzv18 += iZzv11;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 44:
                    iZzx = zzzu.zzr((List) unsafe.getObject(obj2, j));
                    if (iZzx > 0) {
                        iZzv12 = zzxp.zzv(i5 << 3);
                        iZzv13 = zzxp.zzv(iZzx);
                        iZzv11 = iZzv12 + iZzv13 + iZzx;
                        iZzv18 += iZzv11;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 45:
                    iZzx = zzzu.zzv((List) unsafe.getObject(obj2, j));
                    if (iZzx > 0) {
                        iZzv12 = zzxp.zzv(i5 << 3);
                        iZzv13 = zzxp.zzv(iZzx);
                        iZzv11 = iZzv12 + iZzv13 + iZzx;
                        iZzv18 += iZzv11;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 46:
                    iZzx = zzzu.zzx((List) unsafe.getObject(obj2, j));
                    if (iZzx > 0) {
                        iZzv12 = zzxp.zzv(i5 << 3);
                        iZzv13 = zzxp.zzv(iZzx);
                        iZzv11 = iZzv12 + iZzv13 + iZzx;
                        iZzv18 += iZzv11;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 47:
                    iZzx = zzzu.zzu((List) unsafe.getObject(obj2, j));
                    if (iZzx > 0) {
                        iZzv12 = zzxp.zzv(i5 << 3);
                        iZzv13 = zzxp.zzv(iZzx);
                        iZzv11 = iZzv12 + iZzv13 + iZzx;
                        iZzv18 += iZzv11;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 48:
                    iZzx = zzzu.zzq((List) unsafe.getObject(obj2, j));
                    if (iZzx > 0) {
                        iZzv12 = zzxp.zzv(i5 << 3);
                        iZzv13 = zzxp.zzv(iZzx);
                        iZzv11 = iZzv12 + iZzv13 + iZzx;
                        iZzv18 += iZzv11;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 49:
                    List list13 = (List) unsafe.getObject(obj2, j);
                    zzzs zzzsVarZzm2 = zzzlVar.zzm(i2);
                    int i28 = zzzu.$r8$clinit;
                    int size6 = list13.size();
                    if (size6 == 0) {
                        iZzA = 0;
                    } else {
                        iZzA = 0;
                        for (int i29 = 0; i29 < size6; i29++) {
                            iZzA += zzzu.zzA(i5, (zzzi) list13.get(i29), zzzsVarZzm2);
                        }
                    }
                    iZzv18 += iZzA;
                    i2 += 3;
                    obj2 = obj;
                    break;
                case 50:
                    Object object2 = unsafe.getObject(obj2, j);
                    Object objZzn = zzzlVar.zzn(i2);
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(object2);
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(objZzn);
                    throw null;
                case 51:
                    if (zzzlVar.zzC(obj2, i5, i2)) {
                        iZzv14 = zzxp.zzv(i5 << 3);
                        iZzz = iZzv14 + 8;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 52:
                    if (zzzlVar.zzC(obj2, i5, i2)) {
                        iZzv15 = zzxp.zzv(i5 << 3);
                        iZzz = iZzv15 + 4;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 53:
                    if (zzzlVar.zzC(obj2, i5, i2)) {
                        long jZzw = zzw(obj2, j);
                        iZzp = zzxp.zzv(i5 << 3);
                        iZzw2 = zzxp.zzw(jZzw);
                        iZzz = iZzp + iZzw2;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 54:
                    if (zzzlVar.zzC(obj2, i5, i2)) {
                        long jZzw2 = zzw(obj2, j);
                        iZzp = zzxp.zzv(i5 << 3);
                        iZzw2 = zzxp.zzw(jZzw2);
                        iZzz = iZzp + iZzw2;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 55:
                    if (zzzlVar.zzC(obj2, i5, i2)) {
                        long jZzv = zzv(obj2, j);
                        iZzp = zzxp.zzv(i5 << 3);
                        iZzw2 = zzxp.zzw(jZzv);
                        iZzz = iZzp + iZzw2;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 56:
                    if (zzzlVar.zzC(obj2, i5, i2)) {
                        iZzv14 = zzxp.zzv(i5 << 3);
                        iZzz = iZzv14 + 8;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 57:
                    if (zzzlVar.zzC(obj2, i5, i2)) {
                        iZzv15 = zzxp.zzv(i5 << 3);
                        iZzz = iZzv15 + 4;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 58:
                    if (zzzlVar.zzC(obj2, i5, i2)) {
                        iZzz = zzxp.zzv(i5 << 3) + 1;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 59:
                    if (zzzlVar.zzC(obj2, i5, i2)) {
                        int i30 = i5 << 3;
                        Object object3 = unsafe.getObject(obj2, j);
                        if (object3 instanceof zzxk) {
                            iZzv16 = zzxp.zzv(i30);
                            iZza4 = ((zzxk) object3).zzc();
                            iZzv17 = zzxp.zzv(iZza4);
                        } else {
                            iZzv16 = zzxp.zzv(i30);
                            iZza4 = zzaao.zza((String) object3);
                            iZzv17 = zzxp.zzv(iZza4);
                        }
                        iZzz = iZzv16 + iZzv17 + iZza4;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 60:
                    if (zzzlVar.zzC(obj2, i5, i2)) {
                        iZzz = zzzu.zzz(i5, unsafe.getObject(obj2, j), zzzlVar.zzm(i2));
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 61:
                    if (zzzlVar.zzC(obj2, i5, i2)) {
                        zzxk zzxkVar2 = (zzxk) unsafe.getObject(obj2, j);
                        iZzv16 = zzxp.zzv(i5 << 3);
                        iZza4 = zzxkVar2.zzc();
                        iZzv17 = zzxp.zzv(iZza4);
                        iZzz = iZzv16 + iZzv17 + iZza4;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 62:
                    if (zzzlVar.zzC(obj2, i5, i2)) {
                        int iZzv19 = zzv(obj2, j);
                        iZzp = zzxp.zzv(i5 << 3);
                        iZzw2 = zzxp.zzv(iZzv19);
                        iZzz = iZzp + iZzw2;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 63:
                    if (zzzlVar.zzC(obj2, i5, i2)) {
                        long jZzv2 = zzv(obj2, j);
                        iZzp = zzxp.zzv(i5 << 3);
                        iZzw2 = zzxp.zzw(jZzv2);
                        iZzz = iZzp + iZzw2;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 64:
                    if (zzzlVar.zzC(obj2, i5, i2)) {
                        iZzv15 = zzxp.zzv(i5 << 3);
                        iZzz = iZzv15 + 4;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 65:
                    if (zzzlVar.zzC(obj2, i5, i2)) {
                        iZzv14 = zzxp.zzv(i5 << 3);
                        iZzz = iZzv14 + 8;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 66:
                    if (zzzlVar.zzC(obj2, i5, i2)) {
                        int iZzv20 = zzv(obj2, j);
                        iZzp = zzxp.zzv(i5 << 3);
                        iZzw2 = zzxp.zzv((iZzv20 >> 31) ^ (iZzv20 + iZzv20));
                        iZzz = iZzp + iZzw2;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 67:
                    if (zzzlVar.zzC(obj2, i5, i2)) {
                        long jZzw3 = zzw(obj2, j);
                        iZzp = zzxp.zzv(i5 << 3);
                        iZzw2 = zzxp.zzw((jZzw3 >> 63) ^ (jZzw3 + jZzw3));
                        iZzz = iZzp + iZzw2;
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                case 68:
                    if (zzzlVar.zzC(obj2, i5, i2)) {
                        iZzz = zzzu.zzA(i5, (zzzi) unsafe.getObject(obj2, j), zzzlVar.zzm(i2));
                        iZzv18 += iZzz;
                        i2 += 3;
                        obj2 = obj;
                    } else {
                        i2 += 3;
                        obj2 = obj;
                    }
                    break;
                default:
                    i2 += 3;
                    obj2 = obj;
                    break;
            }
        }
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final void zzf(Object obj, zzaar zzaarVar) throws Throwable {
        Throwable th;
        int i;
        zzzl<T> zzzlVar = this;
        if (zzzlVar.zzf) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
            throw null;
        }
        int[] iArr = zzzlVar.zzc;
        Unsafe unsafe = zzb;
        int i2 = 1048575;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i4 < iArr.length) {
            int iZzp = zzzlVar.zzp(i4);
            int iZzr = zzr(iZzp);
            int i6 = iArr[i4];
            if (iZzr <= 17) {
                int i7 = iArr[i4 + 2];
                th = null;
                int i8 = i7 & i2;
                if (i8 != i3) {
                    i5 = i8 == i2 ? 0 : unsafe.getInt(obj, i8);
                    i3 = i8;
                }
                i = 1 << (i7 >>> 20);
            } else {
                th = null;
                i = 0;
            }
            long j = iZzp & i2;
            switch (iZzr) {
                case 0:
                    if (zzzlVar.zzz(obj, i4, i3, i5, i)) {
                        zzaarVar.zzf(i6, zzaak.zzl(obj, j));
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 1:
                    if (zzzlVar.zzz(obj, i4, i3, i5, i)) {
                        zzaarVar.zze(i6, zzaak.zzj(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 2:
                    if (zzzlVar.zzz(obj, i4, i3, i5, i)) {
                        zzaarVar.zzc(i6, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 3:
                    if (zzzlVar.zzz(obj, i4, i3, i5, i)) {
                        zzaarVar.zzh(i6, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 4:
                    if (zzzlVar.zzz(obj, i4, i3, i5, i)) {
                        zzaarVar.zzi(i6, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 5:
                    if (zzzlVar.zzz(obj, i4, i3, i5, i)) {
                        zzaarVar.zzj(i6, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 6:
                    if (zzzlVar.zzz(obj, i4, i3, i5, i)) {
                        zzaarVar.zzk(i6, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 7:
                    if (zzzlVar.zzz(obj, i4, i3, i5, i)) {
                        zzaarVar.zzl(i6, zzaak.zzh(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 8:
                    if (zzzlVar.zzz(obj, i4, i3, i5, i)) {
                        zzE(i6, unsafe.getObject(obj, j), zzaarVar);
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 9:
                    if (zzzlVar.zzz(obj, i4, i3, i5, i)) {
                        zzaarVar.zzr(i6, unsafe.getObject(obj, j), zzzlVar.zzm(i4));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 10:
                    if (zzzlVar.zzz(obj, i4, i3, i5, i)) {
                        zzaarVar.zzn(i6, (zzxk) unsafe.getObject(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 11:
                    if (zzzlVar.zzz(obj, i4, i3, i5, i)) {
                        zzaarVar.zzo(i6, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 12:
                    if (zzzlVar.zzz(obj, i4, i3, i5, i)) {
                        zzaarVar.zzg(i6, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 13:
                    if (zzzlVar.zzz(obj, i4, i3, i5, i)) {
                        zzaarVar.zzb(i6, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 14:
                    if (zzzlVar.zzz(obj, i4, i3, i5, i)) {
                        zzaarVar.zzd(i6, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 15:
                    if (zzzlVar.zzz(obj, i4, i3, i5, i)) {
                        zzaarVar.zzp(i6, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 16:
                    if (zzzlVar.zzz(obj, i4, i3, i5, i)) {
                        zzaarVar.zzq(i6, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 17:
                    if (zzzlVar.zzz(obj, i4, i3, i5, i)) {
                        zzaarVar.zzs(i6, unsafe.getObject(obj, j), zzzlVar.zzm(i4));
                    } else {
                        continue;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 18:
                    zzzu.zza(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 19:
                    zzzu.zzb(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 20:
                    zzzu.zzc(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 21:
                    zzzu.zzd(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 22:
                    zzzu.zzh(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 23:
                    zzzu.zzf(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 24:
                    zzzu.zzk(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 25:
                    zzzu.zzn(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 26:
                    int i9 = iArr[i4];
                    List list = (List) unsafe.getObject(obj, j);
                    int i10 = zzzu.$r8$clinit;
                    if (list != null && !list.isEmpty()) {
                        zzaarVar.zzD(i9, list);
                    }
                    break;
                case 27:
                    int i11 = iArr[i4];
                    List list2 = (List) unsafe.getObject(obj, j);
                    zzzs zzzsVarZzm = zzzlVar.zzm(i4);
                    int i12 = zzzu.$r8$clinit;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i13 = 0; i13 < list2.size(); i13++) {
                            ((zzxq) zzaarVar).zzr(i11, list2.get(i13), zzzsVarZzm);
                        }
                    }
                    break;
                case 28:
                    int i14 = iArr[i4];
                    List list3 = (List) unsafe.getObject(obj, j);
                    int i15 = zzzu.$r8$clinit;
                    if (list3 != null && !list3.isEmpty()) {
                        zzaarVar.zzE(i14, list3);
                    }
                    break;
                case 29:
                    zzzu.zzi(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 30:
                    zzzu.zzm(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 31:
                    zzzu.zzl(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 32:
                    zzzu.zzg(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 33:
                    zzzu.zzj(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 34:
                    zzzu.zze(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, false);
                    continue;
                    i4 += 3;
                    i2 = 1048575;
                    zzzlVar = this;
                    break;
                case 35:
                    zzzu.zza(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, true);
                    break;
                case 36:
                    zzzu.zzb(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, true);
                    break;
                case 37:
                    zzzu.zzc(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, true);
                    break;
                case 38:
                    zzzu.zzd(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, true);
                    break;
                case 39:
                    zzzu.zzh(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, true);
                    break;
                case 40:
                    zzzu.zzf(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, true);
                    break;
                case 41:
                    zzzu.zzk(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, true);
                    break;
                case 42:
                    zzzu.zzn(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, true);
                    break;
                case 43:
                    zzzu.zzi(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, true);
                    break;
                case 44:
                    zzzu.zzm(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, true);
                    break;
                case 45:
                    zzzu.zzl(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, true);
                    break;
                case 46:
                    zzzu.zzg(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, true);
                    break;
                case 47:
                    zzzu.zzj(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, true);
                    break;
                case 48:
                    zzzu.zze(iArr[i4], (List) unsafe.getObject(obj, j), zzaarVar, true);
                    break;
                case 49:
                    int i16 = iArr[i4];
                    List list4 = (List) unsafe.getObject(obj, j);
                    zzzs zzzsVarZzm2 = zzzlVar.zzm(i4);
                    int i17 = zzzu.$r8$clinit;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i18 = 0; i18 < list4.size(); i18++) {
                            ((zzxq) zzaarVar).zzs(i16, list4.get(i18), zzzsVarZzm2);
                        }
                    }
                    break;
                case 50:
                    if (unsafe.getObject(obj, j) != null) {
                        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(zzzlVar.zzn(i4));
                        throw th;
                    }
                    break;
                case 51:
                    if (zzzlVar.zzC(obj, i6, i4)) {
                        zzaarVar.zzf(i6, zzt(obj, j));
                    }
                    break;
                case 52:
                    if (zzzlVar.zzC(obj, i6, i4)) {
                        zzaarVar.zze(i6, zzu(obj, j));
                    }
                    break;
                case 53:
                    if (zzzlVar.zzC(obj, i6, i4)) {
                        zzaarVar.zzc(i6, zzw(obj, j));
                    }
                    break;
                case 54:
                    if (zzzlVar.zzC(obj, i6, i4)) {
                        zzaarVar.zzh(i6, zzw(obj, j));
                    }
                    break;
                case 55:
                    if (zzzlVar.zzC(obj, i6, i4)) {
                        zzaarVar.zzi(i6, zzv(obj, j));
                    }
                    break;
                case 56:
                    if (zzzlVar.zzC(obj, i6, i4)) {
                        zzaarVar.zzj(i6, zzw(obj, j));
                    }
                    break;
                case 57:
                    if (zzzlVar.zzC(obj, i6, i4)) {
                        zzaarVar.zzk(i6, zzv(obj, j));
                    }
                    break;
                case 58:
                    if (zzzlVar.zzC(obj, i6, i4)) {
                        zzaarVar.zzl(i6, zzx(obj, j));
                    }
                    break;
                case 59:
                    if (zzzlVar.zzC(obj, i6, i4)) {
                        zzE(i6, unsafe.getObject(obj, j), zzaarVar);
                    }
                    break;
                case 60:
                    if (zzzlVar.zzC(obj, i6, i4)) {
                        zzaarVar.zzr(i6, unsafe.getObject(obj, j), zzzlVar.zzm(i4));
                    }
                    break;
                case 61:
                    if (zzzlVar.zzC(obj, i6, i4)) {
                        zzaarVar.zzn(i6, (zzxk) unsafe.getObject(obj, j));
                    }
                    break;
                case 62:
                    if (zzzlVar.zzC(obj, i6, i4)) {
                        zzaarVar.zzo(i6, zzv(obj, j));
                    }
                    break;
                case 63:
                    if (zzzlVar.zzC(obj, i6, i4)) {
                        zzaarVar.zzg(i6, zzv(obj, j));
                    }
                    break;
                case 64:
                    if (zzzlVar.zzC(obj, i6, i4)) {
                        zzaarVar.zzb(i6, zzv(obj, j));
                    }
                    break;
                case 65:
                    if (zzzlVar.zzC(obj, i6, i4)) {
                        zzaarVar.zzd(i6, zzw(obj, j));
                    }
                    break;
                case 66:
                    if (zzzlVar.zzC(obj, i6, i4)) {
                        zzaarVar.zzp(i6, zzv(obj, j));
                    }
                    break;
                case 67:
                    if (zzzlVar.zzC(obj, i6, i4)) {
                        zzaarVar.zzq(i6, zzw(obj, j));
                    }
                    break;
                case 68:
                    if (zzzlVar.zzC(obj, i6, i4)) {
                        zzaarVar.zzs(i6, unsafe.getObject(obj, j), zzzlVar.zzm(i4));
                    }
                    break;
            }
            i4 += 3;
            i2 = 1048575;
            zzzlVar = this;
        }
        zzaae zzaaeVar = ((zzyd) obj).zzc;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x007e, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006b  */
    @Override // com.google.android.gms.internal.cast.zzzs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzg(Object obj) {
        if (zzs(obj)) {
            if (obj instanceof zzyd) {
                zzyd zzydVar = (zzyd) obj;
                zzydVar.zzC(Integer.MAX_VALUE);
                zzydVar.zza = 0;
                zzydVar.zzw();
            }
            int[] iArr = this.zzc;
            for (int i = 0; i < iArr.length; i += 3) {
                int iZzp = zzp(i);
                int i2 = 1048575 & iZzp;
                int iZzr = zzr(iZzp);
                long j = i2;
                if (iZzr != 9) {
                    if (iZzr != 60 && iZzr != 68) {
                        switch (iZzr) {
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                                ((zzyl) zzaak.zzn(obj, j)).zzb();
                                break;
                            case 50:
                                Object object = zzb.getObject(obj, j);
                                if (object != null) {
                                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(object);
                                    throw null;
                                }
                                break;
                                break;
                        }
                    } else if (zzC(obj, iArr[i], i)) {
                        zzm(i).zzg(zzb.getObject(obj, j));
                    }
                } else if (zzA(obj, i)) {
                    zzm(i).zzg(zzb.getObject(obj, j));
                }
            }
            this.zzi.zza(obj);
            if (this.zzf) {
                this.zzj.zza(obj);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0082  */
    @Override // com.google.android.gms.internal.cast.zzzs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzh(Object obj) {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1048575;
        while (i5 < this.zzh) {
            int[] iArr = this.zzg;
            int[] iArr2 = this.zzc;
            int i7 = iArr[i5];
            int i8 = iArr2[i7];
            int iZzp = zzp(i7);
            int i9 = iArr2[i7 + 2];
            int i10 = i9 & 1048575;
            int i11 = 1 << (i9 >>> 20);
            if (i10 != i6) {
                if (i10 != 1048575) {
                    i4 = zzb.getInt(obj, i10);
                }
                i = i4;
                i6 = i10;
            } else {
                i = i4;
            }
            if ((268435456 & iZzp) != 0) {
                i2 = i7;
                i3 = i6;
                if (!zzz(obj, i2, i3, i, i11)) {
                    return false;
                }
            } else {
                i2 = i7;
                i3 = i6;
            }
            int iZzr = zzr(iZzp);
            if (iZzr == 9 || iZzr == 17) {
                if (zzz(obj, i2, i3, i, i11) && !zzo(obj, iZzp, zzm(i2))) {
                    return false;
                }
            } else if (iZzr == 27) {
                List list = (List) zzaak.zzn(obj, iZzp & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzzs zzzsVarZzm = zzm(i2);
                    for (int i12 = 0; i12 < list.size(); i12++) {
                        if (!zzzsVarZzm.zzh(list.get(i12))) {
                            return false;
                        }
                    }
                }
            } else if (iZzr == 60 || iZzr == 68) {
                if (zzC(obj, i8, i2) && !zzo(obj, iZzp, zzm(i2))) {
                    return false;
                }
            } else if (iZzr != 49) {
                if (iZzr == 50) {
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(zzaak.zzn(obj, iZzp & 1048575));
                    throw null;
                }
            }
            i5++;
            i6 = i3;
            i4 = i;
        }
        if (!this.zzf) {
            return true;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }
}
