package com.google.android.gms.internal.cast;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import org.telegram.messenger.CharacterCompat;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
final class zzva implements zzvi {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzwj.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final zzux zze;
    private final boolean zzf;
    private final int[] zzg;
    private final int zzh;
    private final zzul zzi;
    private final zzvz zzj;
    private final zztf zzk;
    private final zzvc zzl;
    private final zzus zzm;

    private zzva(int[] iArr, Object[] objArr, int i, int i2, zzux zzuxVar, int i3, boolean z, int[] iArr2, int i4, int i5, zzvc zzvcVar, zzul zzulVar, zzvz zzvzVar, zztf zztfVar, zzus zzusVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        boolean z2 = false;
        if (zztfVar != null && zztfVar.zzc(zzuxVar)) {
            z2 = true;
        }
        this.zzf = z2;
        this.zzg = iArr2;
        this.zzh = i4;
        this.zzl = zzvcVar;
        this.zzi = zzulVar;
        this.zzj = zzvzVar;
        this.zzk = zztfVar;
        this.zze = zzuxVar;
        this.zzm = zzusVar;
    }

    private static boolean zzA(Object obj, int i, zzvi zzviVar) {
        return zzviVar.zzh(zzwj.zzf(obj, i & 1048575));
    }

    private static boolean zzB(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zztp) {
            return ((zztp) obj).zzK();
        }
        return true;
    }

    private final boolean zzC(Object obj, int i, int i2) {
        return zzwj.zzc(obj, (long) (zzm(i2) & 1048575)) == i;
    }

    private static boolean zzD(Object obj, long j) {
        return ((Boolean) zzwj.zzf(obj, j)).booleanValue();
    }

    private static final void zzE(int i, Object obj, zzwq zzwqVar) {
        if (obj instanceof String) {
            zzwqVar.zzD(i, (String) obj);
        } else {
            zzwqVar.zzd(i, (zzsu) obj);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x03a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static zzva zzi(Class cls, zzuu zzuuVar, zzvc zzvcVar, zzul zzulVar, zzvz zzvzVar, zztf zztfVar, zzus zzusVar) {
        int i;
        int iCharAt;
        int i2;
        int i3;
        int i4;
        int[] iArr;
        int i5;
        int i6;
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
        int i21;
        int iObjectFieldOffset;
        int i22;
        String str;
        int i23;
        int iObjectFieldOffset2;
        int i24;
        int iObjectFieldOffset3;
        Field fieldZzs;
        char cCharAt9;
        int i25;
        int i26;
        int i27;
        int i28;
        Object obj;
        Field fieldZzs2;
        Object obj2;
        Field fieldZzs3;
        int i29;
        char cCharAt10;
        int i30;
        char cCharAt11;
        int i31;
        char cCharAt12;
        int i32;
        char cCharAt13;
        if (!(zzuuVar instanceof zzvh)) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(zzuuVar);
            throw null;
        }
        zzvh zzvhVar = (zzvh) zzuuVar;
        String strZzd = zzvhVar.zzd();
        int length = strZzd.length();
        char cCharAt14 = strZzd.charAt(0);
        char c = CharacterCompat.MIN_HIGH_SURROGATE;
        if (cCharAt14 >= 55296) {
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
            i4 = 0;
            iCharAt = 0;
            i3 = 0;
            i5 = 0;
            i2 = 0;
            i6 = 0;
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
            i2 = iCharAt3 + iCharAt3 + iCharAt4;
            int[] iArr2 = new int[iCharAt9 + iCharAt7 + iCharAt8];
            int i61 = iCharAt7;
            i3 = iCharAt5;
            i4 = i61;
            iArr = iArr2;
            i5 = iCharAt6;
            i6 = iCharAt9;
            i7 = iCharAt3;
            i34 = i58;
        }
        Unsafe unsafe = zzb;
        Object[] objArrZze = zzvhVar.zze();
        Class<?> cls2 = zzvhVar.zza().getClass();
        int i62 = i6 + i4;
        int i63 = iCharAt + iCharAt;
        int[] iArr3 = new int[iCharAt * 3];
        Object[] objArr = new Object[i63];
        int i64 = 0;
        int i65 = 0;
        int i66 = i6;
        int i67 = i62;
        while (i34 < length) {
            int i68 = i34 + 1;
            int iCharAt10 = strZzd.charAt(i34);
            if (iCharAt10 >= c) {
                int i69 = iCharAt10 & 8191;
                int i70 = i68;
                int i71 = 13;
                while (true) {
                    i31 = i70 + 1;
                    cCharAt12 = strZzd.charAt(i70);
                    if (cCharAt12 < c) {
                        break;
                    }
                    i69 |= (cCharAt12 & 8191) << i71;
                    i71 += 13;
                    i70 = i31;
                }
                iCharAt10 = i69 | (cCharAt12 << i71);
                i16 = i31;
            } else {
                i16 = i68;
            }
            int i72 = i16 + 1;
            int iCharAt11 = strZzd.charAt(i16);
            if (iCharAt11 >= c) {
                int i73 = iCharAt11 & 8191;
                int i74 = i72;
                int i75 = 13;
                while (true) {
                    i30 = i74 + 1;
                    cCharAt11 = strZzd.charAt(i74);
                    if (cCharAt11 < c) {
                        break;
                    }
                    i73 |= (cCharAt11 & 8191) << i75;
                    i75 += 13;
                    i74 = i30;
                }
                iCharAt11 = i73 | (cCharAt11 << i75);
                i17 = i30;
            } else {
                i17 = i72;
            }
            if ((iCharAt11 & 1024) != 0) {
                iArr[i64] = i65;
                i64++;
            }
            int i76 = iCharAt11 & 255;
            int i77 = iCharAt11 & 2048;
            zzvh zzvhVar2 = zzvhVar;
            if (i76 >= 51) {
                int i78 = i17 + 1;
                int iCharAt12 = strZzd.charAt(i17);
                char c2 = CharacterCompat.MIN_HIGH_SURROGATE;
                if (iCharAt12 >= 55296) {
                    int i79 = iCharAt12 & 8191;
                    int i80 = i78;
                    int i81 = 13;
                    while (true) {
                        i29 = i80 + 1;
                        cCharAt10 = strZzd.charAt(i80);
                        if (cCharAt10 < c2) {
                            break;
                        }
                        i79 |= (cCharAt10 & 8191) << i81;
                        i81 += 13;
                        i80 = i29;
                        c2 = CharacterCompat.MIN_HIGH_SURROGATE;
                    }
                    iCharAt12 = i79 | (cCharAt10 << i81);
                    i27 = i29;
                } else {
                    i27 = i78;
                }
                int i82 = i27;
                int i83 = i76 - 51;
                i18 = length;
                if (i83 == 9 || i83 == 17) {
                    i28 = i2 + 1;
                    int i84 = i65 / 3;
                    objArr[i84 + i84 + 1] = objArrZze[i2];
                } else {
                    if (i83 == 12) {
                        if (zzvhVar2.zzc() == 1 || i77 != 0) {
                            i28 = i2 + 1;
                            int i85 = i65 / 3;
                            objArr[i85 + i85 + 1] = objArrZze[i2];
                        } else {
                            i77 = 0;
                        }
                    }
                    int i86 = iCharAt12 + iCharAt12;
                    obj = objArrZze[i86];
                    if (obj instanceof Field) {
                        fieldZzs2 = zzs(cls2, (String) obj);
                        objArrZze[i86] = fieldZzs2;
                    } else {
                        fieldZzs2 = (Field) obj;
                    }
                    int i87 = iCharAt10;
                    int i88 = i77;
                    iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzs2);
                    int i89 = i86 + 1;
                    obj2 = objArrZze[i89];
                    if (obj2 instanceof Field) {
                        fieldZzs3 = zzs(cls2, (String) obj2);
                        objArrZze[i89] = fieldZzs3;
                    } else {
                        fieldZzs3 = (Field) obj2;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzs3);
                    str = strZzd;
                    i23 = i82;
                    i77 = i88;
                    i24 = 0;
                    i19 = i87;
                }
                i2 = i28;
                int i862 = iCharAt12 + iCharAt12;
                obj = objArrZze[i862];
                if (obj instanceof Field) {
                }
                int i872 = iCharAt10;
                int i882 = i77;
                iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzs2);
                int i892 = i862 + 1;
                obj2 = objArrZze[i892];
                if (obj2 instanceof Field) {
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzs3);
                str = strZzd;
                i23 = i82;
                i77 = i882;
                i24 = 0;
                i19 = i872;
            } else {
                i18 = length;
                int i90 = iCharAt10;
                int i91 = i2 + 1;
                Field fieldZzs4 = zzs(cls2, (String) objArrZze[i2]);
                if (i76 == 9 || i76 == 17) {
                    i19 = i90;
                    int i92 = i65 / 3;
                    objArr[i92 + i92 + 1] = fieldZzs4.getType();
                } else {
                    if (i76 == 27) {
                        i19 = i90;
                        i25 = 1;
                        i26 = i2 + 2;
                    } else if (i76 == 49) {
                        i26 = i2 + 2;
                        i19 = i90;
                        i25 = 1;
                    } else {
                        if (i76 == 12 || i76 == 30 || i76 == 44) {
                            i19 = i90;
                            if (zzvhVar2.zzc() == 1 || i77 != 0) {
                                i26 = i2 + 2;
                                int i93 = i65 / 3;
                                objArr[i93 + i93 + 1] = objArrZze[i91];
                                i21 = i26;
                                i20 = iCharAt11;
                            } else {
                                i20 = iCharAt11;
                                i21 = i91;
                                i77 = 0;
                            }
                        } else if (i76 == 50) {
                            i21 = i2 + 2;
                            int i94 = i66 + 1;
                            iArr[i66] = i65;
                            int i95 = i65 / 3;
                            int i96 = i95 + i95;
                            objArr[i96] = objArrZze[i91];
                            if (i77 != 0) {
                                objArr[i96 + 1] = objArrZze[i21];
                                i21 = i2 + 3;
                                i66 = i94;
                                i19 = i90;
                                i20 = iCharAt11;
                            } else {
                                i20 = iCharAt11;
                                i66 = i94;
                                i77 = 0;
                                i19 = i90;
                            }
                        } else {
                            i19 = i90;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzs4);
                        iCharAt11 = i20;
                        if ((iCharAt11 & 4096) == 0 || i76 > 17) {
                            i22 = i21;
                            str = strZzd;
                            i23 = i17;
                            iObjectFieldOffset2 = 1048575;
                            i24 = 0;
                        } else {
                            int i97 = i17 + 1;
                            int iCharAt13 = strZzd.charAt(i17);
                            i22 = i21;
                            if (iCharAt13 >= 55296) {
                                int i98 = iCharAt13 & 8191;
                                int i99 = 13;
                                while (true) {
                                    i23 = i97 + 1;
                                    cCharAt9 = strZzd.charAt(i97);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i98 |= (cCharAt9 & 8191) << i99;
                                    i99 += 13;
                                    i97 = i23;
                                }
                                iCharAt13 = i98 | (cCharAt9 << i99);
                            } else {
                                i23 = i97;
                            }
                            int i100 = i7 + i7 + (iCharAt13 / 32);
                            Object obj3 = objArrZze[i100];
                            str = strZzd;
                            if (obj3 instanceof Field) {
                                fieldZzs = (Field) obj3;
                            } else {
                                fieldZzs = zzs(cls2, (String) obj3);
                                objArrZze[i100] = fieldZzs;
                            }
                            i24 = iCharAt13 % 32;
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzs);
                        }
                        if (i76 >= 18 && i76 <= 49) {
                            iArr[i67] = iObjectFieldOffset;
                            i67++;
                        }
                        iObjectFieldOffset3 = iObjectFieldOffset;
                        i2 = i22;
                    }
                    int i101 = i65 / 3;
                    objArr[i101 + i101 + i25] = objArrZze[i91];
                    i21 = i26;
                    i20 = iCharAt11;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzs4);
                    iCharAt11 = i20;
                    if ((iCharAt11 & 4096) == 0) {
                        i22 = i21;
                        str = strZzd;
                        i23 = i17;
                        iObjectFieldOffset2 = 1048575;
                        i24 = 0;
                        if (i76 >= 18) {
                            iArr[i67] = iObjectFieldOffset;
                            i67++;
                        }
                        iObjectFieldOffset3 = iObjectFieldOffset;
                        i2 = i22;
                    }
                }
                i20 = iCharAt11;
                i21 = i91;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzs4);
                iCharAt11 = i20;
                if ((iCharAt11 & 4096) == 0) {
                }
            }
            int i102 = i65 + 1;
            iArr3[i65] = i19;
            int i103 = i65 + 2;
            iArr3[i102] = ((iCharAt11 & 512) != 0 ? 536870912 : 0) | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | (i77 != 0 ? Integer.MIN_VALUE : 0) | (i76 << 20) | iObjectFieldOffset3;
            i65 += 3;
            iArr3[i103] = (i24 << 20) | iObjectFieldOffset2;
            i34 = i23;
            zzvhVar = zzvhVar2;
            strZzd = str;
            length = i18;
            c = CharacterCompat.MIN_HIGH_SURROGATE;
        }
        zzvh zzvhVar3 = zzvhVar;
        return new zzva(iArr3, objArr, i3, i5, zzvhVar3.zza(), zzvhVar3.zzc(), false, iArr, i6, i62, zzvcVar, zzulVar, zzvzVar, zztfVar, zzusVar);
    }

    private static double zzj(Object obj, long j) {
        return ((Double) zzwj.zzf(obj, j)).doubleValue();
    }

    private static float zzk(Object obj, long j) {
        return ((Float) zzwj.zzf(obj, j)).floatValue();
    }

    private static int zzl(Object obj, long j) {
        return ((Integer) zzwj.zzf(obj, j)).intValue();
    }

    private final int zzm(int i) {
        return this.zzc[i + 2];
    }

    private static int zzn(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzo(int i) {
        return this.zzc[i + 1];
    }

    private static long zzp(Object obj, long j) {
        return ((Long) zzwj.zzf(obj, j)).longValue();
    }

    private final zzvi zzq(int i) {
        Object[] objArr = this.zzd;
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzvi zzviVar = (zzvi) objArr[i3];
        if (zzviVar != null) {
            return zzviVar;
        }
        zzvi zzviVarZzb = zzvf.zza().zzb((Class) objArr[i3 + 1]);
        this.zzd[i3] = zzviVarZzb;
        return zzviVarZzb;
    }

    private final Object zzr(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private static Field zzs(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private final void zzt(Object obj, Object obj2, int i) {
        if (zzy(obj2, i)) {
            int iZzo = zzo(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzo;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzvi zzviVarZzq = zzq(i);
            if (!zzy(obj, i)) {
                if (zzB(object)) {
                    Object objZzc = zzviVarZzq.zzc();
                    zzviVarZzq.zze(objZzc, object);
                    unsafe.putObject(obj, j, objZzc);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzv(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzB(object2)) {
                Object objZzc2 = zzviVarZzq.zzc();
                zzviVarZzq.zze(objZzc2, object2);
                unsafe.putObject(obj, j, objZzc2);
                object2 = objZzc2;
            }
            zzviVarZzq.zze(object2, object);
        }
    }

    private final void zzu(Object obj, Object obj2, int i) {
        int i2 = this.zzc[i];
        if (zzC(obj2, i2, i)) {
            int iZzo = zzo(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = iZzo;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzvi zzviVarZzq = zzq(i);
            if (!zzC(obj, i2, i)) {
                if (zzB(object)) {
                    Object objZzc = zzviVarZzq.zzc();
                    zzviVarZzq.zze(objZzc, object);
                    unsafe.putObject(obj, j, objZzc);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzw(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzB(object2)) {
                Object objZzc2 = zzviVarZzq.zzc();
                zzviVarZzq.zze(objZzc2, object2);
                unsafe.putObject(obj, j, objZzc2);
                object2 = objZzc2;
            }
            zzviVarZzq.zze(object2, object);
        }
    }

    private final void zzv(Object obj, int i) {
        int iZzm = zzm(i);
        long j = 1048575 & iZzm;
        if (j == 1048575) {
            return;
        }
        zzwj.zzq(obj, j, (1 << (iZzm >>> 20)) | zzwj.zzc(obj, j));
    }

    private final void zzw(Object obj, int i, int i2) {
        zzwj.zzq(obj, zzm(i2) & 1048575, i);
    }

    private final boolean zzx(Object obj, Object obj2, int i) {
        return zzy(obj, i) == zzy(obj2, i);
    }

    private final boolean zzy(Object obj, int i) {
        int iZzm = zzm(i);
        long j = iZzm & 1048575;
        if (j != 1048575) {
            return (zzwj.zzc(obj, j) & (1 << (iZzm >>> 20))) != 0;
        }
        int iZzo = zzo(i);
        long j2 = iZzo & 1048575;
        switch (zzn(iZzo)) {
            case 0:
                return Double.doubleToRawLongBits(zzwj.zza(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzwj.zzb(obj, j2)) != 0;
            case 2:
                return zzwj.zzd(obj, j2) != 0;
            case 3:
                return zzwj.zzd(obj, j2) != 0;
            case 4:
                return zzwj.zzc(obj, j2) != 0;
            case 5:
                return zzwj.zzd(obj, j2) != 0;
            case 6:
                return zzwj.zzc(obj, j2) != 0;
            case 7:
                return zzwj.zzw(obj, j2);
            case 8:
                Object objZzf = zzwj.zzf(obj, j2);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzsu) {
                    return !zzsu.zzb.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzwj.zzf(obj, j2) != null;
            case 10:
                return !zzsu.zzb.equals(zzwj.zzf(obj, j2));
            case 11:
                return zzwj.zzc(obj, j2) != 0;
            case 12:
                return zzwj.zzc(obj, j2) != 0;
            case 13:
                return zzwj.zzc(obj, j2) != 0;
            case 14:
                return zzwj.zzd(obj, j2) != 0;
            case 15:
                return zzwj.zzc(obj, j2) != 0;
            case 16:
                return zzwj.zzd(obj, j2) != 0;
            case 17:
                return zzwj.zzf(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzz(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zzy(obj, i) : (i3 & i4) != 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0455  */
    @Override // com.google.android.gms.internal.cast.zzvi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zza(Object obj) {
        int i;
        int iZzx;
        int iZzx2;
        int iZzy;
        int iZzx3;
        int iZzx4;
        int iZzx5;
        int iZzx6;
        int iZzx7;
        int iZzh;
        int i2;
        int size;
        int iZzl;
        int iZzx8;
        int iZzg;
        int iZzx9;
        int iZzx10;
        int iZzy2;
        int iZze;
        int iZzx11;
        int iZzx12;
        int iZzt;
        int iZzx13;
        int iZzx14;
        int iZzx15;
        zzva zzvaVar = this;
        Object obj2 = obj;
        Unsafe unsafe = zzb;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 1048575;
        while (i4 < zzvaVar.zzc.length) {
            int iZzo = zzvaVar.zzo(i4);
            int iZzn = zzn(iZzo);
            int[] iArr = zzvaVar.zzc;
            int i8 = iArr[i4];
            int i9 = iArr[i4 + 2];
            int i10 = i9 & i3;
            if (iZzn <= 17) {
                if (i10 != i7) {
                    i5 = i10 == i3 ? 0 : unsafe.getInt(obj2, i10);
                    i7 = i10;
                }
                i = 1 << (i9 >>> 20);
            } else {
                i = 0;
            }
            int i11 = iZzo & i3;
            if (iZzn >= zztk.zzJ.zza()) {
                zztk.zzW.zza();
            }
            int i12 = i6;
            long j = i11;
            switch (iZzn) {
                case 0:
                    if (zzvaVar.zzz(obj2, i4, i7, i5, i)) {
                        iZzx = zztc.zzx(i8 << 3);
                        iZzh = iZzx + 8;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 1:
                    if (zzvaVar.zzz(obj2, i4, i7, i5, i)) {
                        iZzx2 = zztc.zzx(i8 << 3);
                        iZzx5 = iZzx2 + 4;
                        i6 = i12 + iZzx5;
                        zzvaVar = this;
                        obj2 = obj;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    zzvaVar = this;
                    obj2 = obj;
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 2:
                    if (zzvaVar.zzz(obj2, i4, i7, i5, i)) {
                        iZzy = zztc.zzy(unsafe.getLong(obj2, j));
                        iZzx3 = zztc.zzx(i8 << 3);
                        i2 = iZzx3 + iZzy;
                        i6 = i12 + i2;
                        zzvaVar = this;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    zzvaVar = this;
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 3:
                    if (zzvaVar.zzz(obj2, i4, i7, i5, i)) {
                        iZzy = zztc.zzy(unsafe.getLong(obj2, j));
                        iZzx3 = zztc.zzx(i8 << 3);
                        i2 = iZzx3 + iZzy;
                        i6 = i12 + i2;
                        zzvaVar = this;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    zzvaVar = this;
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 4:
                    if (zzvaVar.zzz(obj2, i4, i7, i5, i)) {
                        iZzy = zztc.zzu(unsafe.getInt(obj2, j));
                        iZzx3 = zztc.zzx(i8 << 3);
                        i2 = iZzx3 + iZzy;
                        i6 = i12 + i2;
                        zzvaVar = this;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    zzvaVar = this;
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 5:
                    if (zzvaVar.zzz(obj2, i4, i7, i5, i)) {
                        iZzx4 = zztc.zzx(i8 << 3);
                        iZzx5 = iZzx4 + 8;
                        i6 = i12 + iZzx5;
                        zzvaVar = this;
                        obj2 = obj;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    zzvaVar = this;
                    obj2 = obj;
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 6:
                    if (zzvaVar.zzz(obj2, i4, i7, i5, i)) {
                        iZzx2 = zztc.zzx(i8 << 3);
                        iZzx5 = iZzx2 + 4;
                        i6 = i12 + iZzx5;
                        zzvaVar = this;
                        obj2 = obj;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    zzvaVar = this;
                    obj2 = obj;
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 7:
                    if (zzvaVar.zzz(obj2, i4, i7, i5, i)) {
                        iZzx5 = zztc.zzx(i8 << 3) + 1;
                        i6 = i12 + iZzx5;
                        zzvaVar = this;
                        obj2 = obj;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    zzvaVar = this;
                    obj2 = obj;
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 8:
                    if (zzvaVar.zzz(obj2, i4, i7, i5, i)) {
                        int i13 = i8 << 3;
                        Object object = unsafe.getObject(obj2, j);
                        if (object instanceof zzsu) {
                            int i14 = zztc.$r8$clinit;
                            int iZzd = ((zzsu) object).zzd();
                            iZzx6 = zztc.zzx(iZzd) + iZzd;
                            iZzx7 = zztc.zzx(i13);
                            i2 = iZzx7 + iZzx6;
                            i6 = i12 + i2;
                            zzvaVar = this;
                            i4 += 3;
                            i3 = 1048575;
                        } else {
                            iZzy = zztc.zzw((String) object);
                            iZzx3 = zztc.zzx(i13);
                            i2 = iZzx3 + iZzy;
                            i6 = i12 + i2;
                            zzvaVar = this;
                            i4 += 3;
                            i3 = 1048575;
                        }
                    }
                    zzvaVar = this;
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 9:
                    if (zzvaVar.zzz(obj2, i4, i7, i5, i)) {
                        iZzh = zzvk.zzh(i8, unsafe.getObject(obj2, j), zzvaVar.zzq(i4));
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 10:
                    if (zzvaVar.zzz(obj2, i4, i7, i5, i)) {
                        zzsu zzsuVar = (zzsu) unsafe.getObject(obj2, j);
                        int i15 = zztc.$r8$clinit;
                        int iZzd2 = zzsuVar.zzd();
                        iZzx6 = zztc.zzx(iZzd2) + iZzd2;
                        iZzx7 = zztc.zzx(i8 << 3);
                        i2 = iZzx7 + iZzx6;
                        i6 = i12 + i2;
                        zzvaVar = this;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    zzvaVar = this;
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 11:
                    if (zzvaVar.zzz(obj2, i4, i7, i5, i)) {
                        iZzy = zztc.zzx(unsafe.getInt(obj2, j));
                        iZzx3 = zztc.zzx(i8 << 3);
                        i2 = iZzx3 + iZzy;
                        i6 = i12 + i2;
                        zzvaVar = this;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    zzvaVar = this;
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 12:
                    if (zzvaVar.zzz(obj2, i4, i7, i5, i)) {
                        iZzy = zztc.zzu(unsafe.getInt(obj2, j));
                        iZzx3 = zztc.zzx(i8 << 3);
                        i2 = iZzx3 + iZzy;
                        i6 = i12 + i2;
                        zzvaVar = this;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    zzvaVar = this;
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 13:
                    if (zzvaVar.zzz(obj2, i4, i7, i5, i)) {
                        iZzx2 = zztc.zzx(i8 << 3);
                        iZzx5 = iZzx2 + 4;
                        i6 = i12 + iZzx5;
                        zzvaVar = this;
                        obj2 = obj;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    zzvaVar = this;
                    obj2 = obj;
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 14:
                    if (zzvaVar.zzz(obj2, i4, i7, i5, i)) {
                        iZzx4 = zztc.zzx(i8 << 3);
                        iZzx5 = iZzx4 + 8;
                        i6 = i12 + iZzx5;
                        zzvaVar = this;
                        obj2 = obj;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    zzvaVar = this;
                    obj2 = obj;
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 15:
                    if (zzvaVar.zzz(obj2, i4, i7, i5, i)) {
                        int i16 = unsafe.getInt(obj2, j);
                        iZzx3 = zztc.zzx(i8 << 3);
                        iZzy = zztc.zzx((i16 >> 31) ^ (i16 + i16));
                        i2 = iZzx3 + iZzy;
                        i6 = i12 + i2;
                        zzvaVar = this;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    zzvaVar = this;
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 16:
                    if (zzvaVar.zzz(obj2, i4, i7, i5, i)) {
                        long j2 = unsafe.getLong(obj2, j);
                        iZzx3 = zztc.zzx(i8 << 3);
                        iZzy = zztc.zzy((j2 >> 63) ^ (j2 + j2));
                        i2 = iZzx3 + iZzy;
                        i6 = i12 + i2;
                        zzvaVar = this;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    zzvaVar = this;
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 17:
                    if (zzvaVar.zzz(obj2, i4, i7, i5, i)) {
                        iZzh = zztc.zzt(i8, (zzux) unsafe.getObject(obj2, j), zzvaVar.zzq(i4));
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 18:
                    iZzh = zzvk.zzd(i8, (List) unsafe.getObject(obj2, j), false);
                    i6 = i12 + iZzh;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 19:
                    iZzh = zzvk.zzb(i8, (List) unsafe.getObject(obj2, j), false);
                    i6 = i12 + iZzh;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj2, j);
                    int i17 = zzvk.$r8$clinit;
                    iZzg = list.size() == 0 ? 0 : zzvk.zzg(list) + (list.size() * zztc.zzx(i8 << 3));
                    i6 = iZzg + i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(obj2, j);
                    int i18 = zzvk.$r8$clinit;
                    size = list2.size();
                    if (size != 0) {
                        iZzl = zzvk.zzl(list2);
                        iZzx8 = zztc.zzx(i8 << 3);
                        iZzy2 = size * iZzx8;
                        iZzh = iZzl + iZzy2;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12 + iZzh;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(obj2, j);
                    int i19 = zzvk.$r8$clinit;
                    size = list3.size();
                    if (size != 0) {
                        iZzl = zzvk.zzf(list3);
                        iZzx8 = zztc.zzx(i8 << 3);
                        iZzy2 = size * iZzx8;
                        iZzh = iZzl + iZzy2;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12 + iZzh;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 23:
                    iZzh = zzvk.zzd(i8, (List) unsafe.getObject(obj2, j), false);
                    i6 = i12 + iZzh;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 24:
                    iZzh = zzvk.zzb(i8, (List) unsafe.getObject(obj2, j), false);
                    i6 = i12 + iZzh;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(obj2, j);
                    int i20 = zzvk.$r8$clinit;
                    int size2 = list4.size();
                    iZzh = size2 == 0 ? 0 : size2 * (zztc.zzx(i8 << 3) + 1);
                    i6 = i12 + iZzh;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 26:
                    List list5 = (List) unsafe.getObject(obj2, j);
                    int i21 = zzvk.$r8$clinit;
                    int size3 = list5.size();
                    if (size3 != 0) {
                        boolean z = list5 instanceof zzuf;
                        iZzg = zztc.zzx(i8 << 3) * size3;
                        if (z) {
                            zzuf zzufVar = (zzuf) list5;
                            for (int i22 = 0; i22 < size3; i22++) {
                                Object objZze = zzufVar.zze(i22);
                                if (objZze instanceof zzsu) {
                                    int iZzd3 = ((zzsu) objZze).zzd();
                                    iZzg += zztc.zzx(iZzd3) + iZzd3;
                                } else {
                                    iZzg += zztc.zzw((String) objZze);
                                }
                            }
                        } else {
                            for (int i23 = 0; i23 < size3; i23++) {
                                Object obj3 = list5.get(i23);
                                if (obj3 instanceof zzsu) {
                                    int iZzd4 = ((zzsu) obj3).zzd();
                                    iZzg += zztc.zzx(iZzd4) + iZzd4;
                                } else {
                                    iZzg += zztc.zzw((String) obj3);
                                }
                            }
                        }
                    }
                    i6 = iZzg + i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 27:
                    List list6 = (List) unsafe.getObject(obj2, j);
                    zzvi zzviVarZzq = zzvaVar.zzq(i4);
                    int i24 = zzvk.$r8$clinit;
                    int size4 = list6.size();
                    if (size4 == 0) {
                        iZzx9 = 0;
                    } else {
                        iZzx9 = zztc.zzx(i8 << 3) * size4;
                        for (int i25 = 0; i25 < size4; i25++) {
                            iZzx9 += zztc.zzv((zzux) list6.get(i25), zzviVarZzq);
                        }
                    }
                    i6 = i12 + iZzx9;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 28:
                    List list7 = (List) unsafe.getObject(obj2, j);
                    int i26 = zzvk.$r8$clinit;
                    int size5 = list7.size();
                    if (size5 == 0) {
                        iZzx10 = 0;
                    } else {
                        iZzx10 = size5 * zztc.zzx(i8 << 3);
                        for (int i27 = 0; i27 < list7.size(); i27++) {
                            int iZzd5 = ((zzsu) list7.get(i27)).zzd();
                            iZzx10 += zztc.zzx(iZzd5) + iZzd5;
                        }
                    }
                    i6 = i12 + iZzx10;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 29:
                    List list8 = (List) unsafe.getObject(obj2, j);
                    int i28 = zzvk.$r8$clinit;
                    size = list8.size();
                    if (size != 0) {
                        iZzl = zzvk.zzk(list8);
                        iZzx8 = zztc.zzx(i8 << 3);
                        iZzy2 = size * iZzx8;
                        iZzh = iZzl + iZzy2;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12 + iZzh;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 30:
                    List list9 = (List) unsafe.getObject(obj2, j);
                    int i29 = zzvk.$r8$clinit;
                    size = list9.size();
                    if (size != 0) {
                        iZzl = zzvk.zza(list9);
                        iZzx8 = zztc.zzx(i8 << 3);
                        iZzy2 = size * iZzx8;
                        iZzh = iZzl + iZzy2;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12 + iZzh;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 31:
                    iZzh = zzvk.zzb(i8, (List) unsafe.getObject(obj2, j), false);
                    i6 = i12 + iZzh;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 32:
                    iZzh = zzvk.zzd(i8, (List) unsafe.getObject(obj2, j), false);
                    i6 = i12 + iZzh;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 33:
                    List list10 = (List) unsafe.getObject(obj2, j);
                    int i30 = zzvk.$r8$clinit;
                    size = list10.size();
                    if (size != 0) {
                        iZzl = zzvk.zzi(list10);
                        iZzx8 = zztc.zzx(i8 << 3);
                        iZzy2 = size * iZzx8;
                        iZzh = iZzl + iZzy2;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12 + iZzh;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 34:
                    List list11 = (List) unsafe.getObject(obj2, j);
                    int i31 = zzvk.$r8$clinit;
                    size = list11.size();
                    if (size != 0) {
                        iZzl = zzvk.zzj(list11);
                        iZzx8 = zztc.zzx(i8 << 3);
                        iZzy2 = size * iZzx8;
                        iZzh = iZzl + iZzy2;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12 + iZzh;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 35:
                    iZze = zzvk.zze((List) unsafe.getObject(obj2, j));
                    if (iZze > 0) {
                        iZzx11 = zztc.zzx(iZze);
                        iZzx12 = zztc.zzx(i8 << 3);
                        iZzx10 = iZzx12 + iZzx11 + iZze;
                        i6 = i12 + iZzx10;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 36:
                    iZze = zzvk.zzc((List) unsafe.getObject(obj2, j));
                    if (iZze > 0) {
                        iZzx11 = zztc.zzx(iZze);
                        iZzx12 = zztc.zzx(i8 << 3);
                        iZzx10 = iZzx12 + iZzx11 + iZze;
                        i6 = i12 + iZzx10;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 37:
                    iZze = zzvk.zzg((List) unsafe.getObject(obj2, j));
                    if (iZze > 0) {
                        iZzx11 = zztc.zzx(iZze);
                        iZzx12 = zztc.zzx(i8 << 3);
                        iZzx10 = iZzx12 + iZzx11 + iZze;
                        i6 = i12 + iZzx10;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 38:
                    iZze = zzvk.zzl((List) unsafe.getObject(obj2, j));
                    if (iZze > 0) {
                        iZzx11 = zztc.zzx(iZze);
                        iZzx12 = zztc.zzx(i8 << 3);
                        iZzx10 = iZzx12 + iZzx11 + iZze;
                        i6 = i12 + iZzx10;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 39:
                    iZze = zzvk.zzf((List) unsafe.getObject(obj2, j));
                    if (iZze > 0) {
                        iZzx11 = zztc.zzx(iZze);
                        iZzx12 = zztc.zzx(i8 << 3);
                        iZzx10 = iZzx12 + iZzx11 + iZze;
                        i6 = i12 + iZzx10;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 40:
                    iZze = zzvk.zze((List) unsafe.getObject(obj2, j));
                    if (iZze > 0) {
                        iZzx11 = zztc.zzx(iZze);
                        iZzx12 = zztc.zzx(i8 << 3);
                        iZzx10 = iZzx12 + iZzx11 + iZze;
                        i6 = i12 + iZzx10;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 41:
                    iZze = zzvk.zzc((List) unsafe.getObject(obj2, j));
                    if (iZze > 0) {
                        iZzx11 = zztc.zzx(iZze);
                        iZzx12 = zztc.zzx(i8 << 3);
                        iZzx10 = iZzx12 + iZzx11 + iZze;
                        i6 = i12 + iZzx10;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 42:
                    List list12 = (List) unsafe.getObject(obj2, j);
                    int i32 = zzvk.$r8$clinit;
                    iZze = list12.size();
                    if (iZze > 0) {
                        iZzx11 = zztc.zzx(iZze);
                        iZzx12 = zztc.zzx(i8 << 3);
                        iZzx10 = iZzx12 + iZzx11 + iZze;
                        i6 = i12 + iZzx10;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 43:
                    iZze = zzvk.zzk((List) unsafe.getObject(obj2, j));
                    if (iZze > 0) {
                        iZzx11 = zztc.zzx(iZze);
                        iZzx12 = zztc.zzx(i8 << 3);
                        iZzx10 = iZzx12 + iZzx11 + iZze;
                        i6 = i12 + iZzx10;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 44:
                    iZze = zzvk.zza((List) unsafe.getObject(obj2, j));
                    if (iZze > 0) {
                        iZzx11 = zztc.zzx(iZze);
                        iZzx12 = zztc.zzx(i8 << 3);
                        iZzx10 = iZzx12 + iZzx11 + iZze;
                        i6 = i12 + iZzx10;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 45:
                    iZze = zzvk.zzc((List) unsafe.getObject(obj2, j));
                    if (iZze > 0) {
                        iZzx11 = zztc.zzx(iZze);
                        iZzx12 = zztc.zzx(i8 << 3);
                        iZzx10 = iZzx12 + iZzx11 + iZze;
                        i6 = i12 + iZzx10;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 46:
                    iZze = zzvk.zze((List) unsafe.getObject(obj2, j));
                    if (iZze > 0) {
                        iZzx11 = zztc.zzx(iZze);
                        iZzx12 = zztc.zzx(i8 << 3);
                        iZzx10 = iZzx12 + iZzx11 + iZze;
                        i6 = i12 + iZzx10;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 47:
                    iZze = zzvk.zzi((List) unsafe.getObject(obj2, j));
                    if (iZze > 0) {
                        iZzx11 = zztc.zzx(iZze);
                        iZzx12 = zztc.zzx(i8 << 3);
                        iZzx10 = iZzx12 + iZzx11 + iZze;
                        i6 = i12 + iZzx10;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 48:
                    iZze = zzvk.zzj((List) unsafe.getObject(obj2, j));
                    if (iZze > 0) {
                        iZzx11 = zztc.zzx(iZze);
                        iZzx12 = zztc.zzx(i8 << 3);
                        iZzx10 = iZzx12 + iZzx11 + iZze;
                        i6 = i12 + iZzx10;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 49:
                    List list13 = (List) unsafe.getObject(obj2, j);
                    zzvi zzviVarZzq2 = zzvaVar.zzq(i4);
                    int i33 = zzvk.$r8$clinit;
                    int size6 = list13.size();
                    if (size6 == 0) {
                        iZzt = 0;
                    } else {
                        iZzt = 0;
                        for (int i34 = 0; i34 < size6; i34++) {
                            iZzt += zztc.zzt(i8, (zzux) list13.get(i34), zzviVarZzq2);
                        }
                    }
                    i6 = i12 + iZzt;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 50:
                    Object object2 = unsafe.getObject(obj2, j);
                    Object objZzr = zzvaVar.zzr(i4);
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(object2);
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(objZzr);
                    throw null;
                case 51:
                    if (zzvaVar.zzC(obj2, i8, i4)) {
                        iZzx = zztc.zzx(i8 << 3);
                        iZzh = iZzx + 8;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 52:
                    if (zzvaVar.zzC(obj2, i8, i4)) {
                        iZzx13 = zztc.zzx(i8 << 3);
                        iZzh = iZzx13 + 4;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 53:
                    if (zzvaVar.zzC(obj2, i8, i4)) {
                        iZzy2 = zztc.zzy(zzp(obj2, j));
                        iZzl = zztc.zzx(i8 << 3);
                        iZzh = iZzl + iZzy2;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 54:
                    if (zzvaVar.zzC(obj2, i8, i4)) {
                        iZzy2 = zztc.zzy(zzp(obj2, j));
                        iZzl = zztc.zzx(i8 << 3);
                        iZzh = iZzl + iZzy2;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 55:
                    if (zzvaVar.zzC(obj2, i8, i4)) {
                        iZzy2 = zztc.zzu(zzl(obj2, j));
                        iZzl = zztc.zzx(i8 << 3);
                        iZzh = iZzl + iZzy2;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 56:
                    if (zzvaVar.zzC(obj2, i8, i4)) {
                        iZzx = zztc.zzx(i8 << 3);
                        iZzh = iZzx + 8;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 57:
                    if (zzvaVar.zzC(obj2, i8, i4)) {
                        iZzx13 = zztc.zzx(i8 << 3);
                        iZzh = iZzx13 + 4;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 58:
                    if (zzvaVar.zzC(obj2, i8, i4)) {
                        iZzh = zztc.zzx(i8 << 3) + 1;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 59:
                    if (zzvaVar.zzC(obj2, i8, i4)) {
                        int i35 = i8 << 3;
                        Object object3 = unsafe.getObject(obj2, j);
                        if (object3 instanceof zzsu) {
                            int i36 = zztc.$r8$clinit;
                            int iZzd6 = ((zzsu) object3).zzd();
                            iZzx14 = zztc.zzx(iZzd6) + iZzd6;
                            iZzx15 = zztc.zzx(i35);
                            iZzh = iZzx15 + iZzx14;
                            i6 = i12 + iZzh;
                            i4 += 3;
                            i3 = 1048575;
                        } else {
                            iZzy2 = zztc.zzw((String) object3);
                            iZzl = zztc.zzx(i35);
                            iZzh = iZzl + iZzy2;
                            i6 = i12 + iZzh;
                            i4 += 3;
                            i3 = 1048575;
                        }
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 60:
                    if (zzvaVar.zzC(obj2, i8, i4)) {
                        iZzh = zzvk.zzh(i8, unsafe.getObject(obj2, j), zzvaVar.zzq(i4));
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 61:
                    if (zzvaVar.zzC(obj2, i8, i4)) {
                        zzsu zzsuVar2 = (zzsu) unsafe.getObject(obj2, j);
                        int i37 = zztc.$r8$clinit;
                        int iZzd7 = zzsuVar2.zzd();
                        iZzx14 = zztc.zzx(iZzd7) + iZzd7;
                        iZzx15 = zztc.zzx(i8 << 3);
                        iZzh = iZzx15 + iZzx14;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 62:
                    if (zzvaVar.zzC(obj2, i8, i4)) {
                        iZzy2 = zztc.zzx(zzl(obj2, j));
                        iZzl = zztc.zzx(i8 << 3);
                        iZzh = iZzl + iZzy2;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 63:
                    if (zzvaVar.zzC(obj2, i8, i4)) {
                        iZzy2 = zztc.zzu(zzl(obj2, j));
                        iZzl = zztc.zzx(i8 << 3);
                        iZzh = iZzl + iZzy2;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 64:
                    if (zzvaVar.zzC(obj2, i8, i4)) {
                        iZzx13 = zztc.zzx(i8 << 3);
                        iZzh = iZzx13 + 4;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 65:
                    if (zzvaVar.zzC(obj2, i8, i4)) {
                        iZzx = zztc.zzx(i8 << 3);
                        iZzh = iZzx + 8;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 66:
                    if (zzvaVar.zzC(obj2, i8, i4)) {
                        int iZzl2 = zzl(obj2, j);
                        iZzl = zztc.zzx(i8 << 3);
                        iZzy2 = zztc.zzx((iZzl2 >> 31) ^ (iZzl2 + iZzl2));
                        iZzh = iZzl + iZzy2;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 67:
                    if (zzvaVar.zzC(obj2, i8, i4)) {
                        long jZzp = zzp(obj2, j);
                        iZzl = zztc.zzx(i8 << 3);
                        iZzy2 = zztc.zzy((jZzp >> 63) ^ (jZzp + jZzp));
                        iZzh = iZzl + iZzy2;
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                case 68:
                    if (zzvaVar.zzC(obj2, i8, i4)) {
                        iZzh = zztc.zzt(i8, (zzux) unsafe.getObject(obj2, j), zzvaVar.zzq(i4));
                        i6 = i12 + iZzh;
                        i4 += 3;
                        i3 = 1048575;
                    }
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
                default:
                    i6 = i12;
                    i4 += 3;
                    i3 = 1048575;
                    break;
            }
        }
        zzvz zzvzVar = zzvaVar.zzj;
        int iZza = i6 + zzvzVar.zza(zzvzVar.zzc(obj2));
        if (!zzvaVar.zzf) {
            return iZza;
        }
        zzvaVar.zzk.zza(obj2);
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.zzvi
    public final int zzb(Object obj) {
        int i;
        long jDoubleToLongBits;
        int iFloatToIntBits;
        int i2;
        int i3 = 0;
        for (int i4 = 0; i4 < this.zzc.length; i4 += 3) {
            int iZzo = zzo(i4);
            int[] iArr = this.zzc;
            int i5 = 1048575 & iZzo;
            int iZzn = zzn(iZzo);
            int i6 = iArr[i4];
            long j = i5;
            int iHashCode = 37;
            switch (iZzn) {
                case 0:
                    i = i3 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(zzwj.zza(obj, j));
                    byte[] bArr = zzty.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 1:
                    i = i3 * 53;
                    iFloatToIntBits = Float.floatToIntBits(zzwj.zzb(obj, j));
                    i3 = i + iFloatToIntBits;
                    break;
                case 2:
                    i = i3 * 53;
                    jDoubleToLongBits = zzwj.zzd(obj, j);
                    byte[] bArr2 = zzty.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 3:
                    i = i3 * 53;
                    jDoubleToLongBits = zzwj.zzd(obj, j);
                    byte[] bArr3 = zzty.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 4:
                    i = i3 * 53;
                    iFloatToIntBits = zzwj.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 5:
                    i = i3 * 53;
                    jDoubleToLongBits = zzwj.zzd(obj, j);
                    byte[] bArr4 = zzty.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 6:
                    i = i3 * 53;
                    iFloatToIntBits = zzwj.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 7:
                    i = i3 * 53;
                    iFloatToIntBits = zzty.zza(zzwj.zzw(obj, j));
                    i3 = i + iFloatToIntBits;
                    break;
                case 8:
                    i = i3 * 53;
                    iFloatToIntBits = ((String) zzwj.zzf(obj, j)).hashCode();
                    i3 = i + iFloatToIntBits;
                    break;
                case 9:
                    i2 = i3 * 53;
                    Object objZzf = zzwj.zzf(obj, j);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    i3 = i2 + iHashCode;
                    break;
                case 10:
                    i = i3 * 53;
                    iFloatToIntBits = zzwj.zzf(obj, j).hashCode();
                    i3 = i + iFloatToIntBits;
                    break;
                case 11:
                    i = i3 * 53;
                    iFloatToIntBits = zzwj.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 12:
                    i = i3 * 53;
                    iFloatToIntBits = zzwj.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 13:
                    i = i3 * 53;
                    iFloatToIntBits = zzwj.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 14:
                    i = i3 * 53;
                    jDoubleToLongBits = zzwj.zzd(obj, j);
                    byte[] bArr5 = zzty.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 15:
                    i = i3 * 53;
                    iFloatToIntBits = zzwj.zzc(obj, j);
                    i3 = i + iFloatToIntBits;
                    break;
                case 16:
                    i = i3 * 53;
                    jDoubleToLongBits = zzwj.zzd(obj, j);
                    byte[] bArr6 = zzty.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i3 = i + iFloatToIntBits;
                    break;
                case 17:
                    i2 = i3 * 53;
                    Object objZzf2 = zzwj.zzf(obj, j);
                    if (objZzf2 != null) {
                        iHashCode = objZzf2.hashCode();
                    }
                    i3 = i2 + iHashCode;
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
                    i = i3 * 53;
                    iFloatToIntBits = zzwj.zzf(obj, j).hashCode();
                    i3 = i + iFloatToIntBits;
                    break;
                case 50:
                    i = i3 * 53;
                    iFloatToIntBits = zzwj.zzf(obj, j).hashCode();
                    i3 = i + iFloatToIntBits;
                    break;
                case 51:
                    if (zzC(obj, i6, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(zzj(obj, j));
                        byte[] bArr7 = zzty.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 52:
                    if (zzC(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = Float.floatToIntBits(zzk(obj, j));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 53:
                    if (zzC(obj, i6, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = zzp(obj, j);
                        byte[] bArr8 = zzty.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 54:
                    if (zzC(obj, i6, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = zzp(obj, j);
                        byte[] bArr9 = zzty.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 55:
                    if (zzC(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzl(obj, j);
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 56:
                    if (zzC(obj, i6, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = zzp(obj, j);
                        byte[] bArr10 = zzty.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 57:
                    if (zzC(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzl(obj, j);
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 58:
                    if (zzC(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzty.zza(zzD(obj, j));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 59:
                    if (zzC(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = ((String) zzwj.zzf(obj, j)).hashCode();
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 60:
                    if (zzC(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzwj.zzf(obj, j).hashCode();
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 61:
                    if (zzC(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzwj.zzf(obj, j).hashCode();
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 62:
                    if (zzC(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzl(obj, j);
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 63:
                    if (zzC(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzl(obj, j);
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 64:
                    if (zzC(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzl(obj, j);
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 65:
                    if (zzC(obj, i6, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = zzp(obj, j);
                        byte[] bArr11 = zzty.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 66:
                    if (zzC(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzl(obj, j);
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 67:
                    if (zzC(obj, i6, i4)) {
                        i = i3 * 53;
                        jDoubleToLongBits = zzp(obj, j);
                        byte[] bArr12 = zzty.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i3 = i + iFloatToIntBits;
                    }
                    break;
                case 68:
                    if (zzC(obj, i6, i4)) {
                        i = i3 * 53;
                        iFloatToIntBits = zzwj.zzf(obj, j).hashCode();
                        i3 = i + iFloatToIntBits;
                    }
                    break;
            }
        }
        int iHashCode2 = (i3 * 53) + this.zzj.zzc(obj).hashCode();
        if (!this.zzf) {
            return iHashCode2;
        }
        this.zzk.zza(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.zzvi
    public final Object zzc() {
        return ((zztp) this.zze).zzx();
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x007c, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0069  */
    @Override // com.google.android.gms.internal.cast.zzvi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzd(Object obj) {
        if (zzB(obj)) {
            if (obj instanceof zztp) {
                zztp zztpVar = (zztp) obj;
                zztpVar.zzI(Integer.MAX_VALUE);
                zztpVar.zza = 0;
                zztpVar.zzG();
            }
            int[] iArr = this.zzc;
            for (int i = 0; i < iArr.length; i += 3) {
                int iZzo = zzo(i);
                int i2 = 1048575 & iZzo;
                int iZzn = zzn(iZzo);
                long j = i2;
                if (iZzn != 9) {
                    if (iZzn != 60 && iZzn != 68) {
                        switch (iZzn) {
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
                                this.zzi.zza(obj, j);
                                break;
                            case 50:
                                Object object = zzb.getObject(obj, j);
                                if (object != null) {
                                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(object);
                                    throw null;
                                }
                                break;
                                break;
                        }
                    } else if (zzC(obj, this.zzc[i], i)) {
                        zzq(i).zzd(zzb.getObject(obj, j));
                    }
                } else if (zzy(obj, i)) {
                    zzq(i).zzd(zzb.getObject(obj, j));
                }
            }
            this.zzj.zze(obj);
            if (this.zzf) {
                this.zzk.zzb(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.cast.zzvi
    public final void zze(Object obj, Object obj2) {
        if (!zzB(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
        obj2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzo = zzo(i);
            int i2 = 1048575 & iZzo;
            int[] iArr = this.zzc;
            int iZzn = zzn(iZzo);
            int i3 = iArr[i];
            long j = i2;
            switch (iZzn) {
                case 0:
                    if (zzy(obj2, i)) {
                        zzwj.zzo(obj, j, zzwj.zza(obj2, j));
                        zzv(obj, i);
                    }
                    break;
                case 1:
                    if (zzy(obj2, i)) {
                        zzwj.zzp(obj, j, zzwj.zzb(obj2, j));
                        zzv(obj, i);
                    }
                    break;
                case 2:
                    if (zzy(obj2, i)) {
                        zzwj.zzr(obj, j, zzwj.zzd(obj2, j));
                        zzv(obj, i);
                    }
                    break;
                case 3:
                    if (zzy(obj2, i)) {
                        zzwj.zzr(obj, j, zzwj.zzd(obj2, j));
                        zzv(obj, i);
                    }
                    break;
                case 4:
                    if (zzy(obj2, i)) {
                        zzwj.zzq(obj, j, zzwj.zzc(obj2, j));
                        zzv(obj, i);
                    }
                    break;
                case 5:
                    if (zzy(obj2, i)) {
                        zzwj.zzr(obj, j, zzwj.zzd(obj2, j));
                        zzv(obj, i);
                    }
                    break;
                case 6:
                    if (zzy(obj2, i)) {
                        zzwj.zzq(obj, j, zzwj.zzc(obj2, j));
                        zzv(obj, i);
                    }
                    break;
                case 7:
                    if (zzy(obj2, i)) {
                        zzwj.zzm(obj, j, zzwj.zzw(obj2, j));
                        zzv(obj, i);
                    }
                    break;
                case 8:
                    if (zzy(obj2, i)) {
                        zzwj.zzs(obj, j, zzwj.zzf(obj2, j));
                        zzv(obj, i);
                    }
                    break;
                case 9:
                    zzt(obj, obj2, i);
                    break;
                case 10:
                    if (zzy(obj2, i)) {
                        zzwj.zzs(obj, j, zzwj.zzf(obj2, j));
                        zzv(obj, i);
                    }
                    break;
                case 11:
                    if (zzy(obj2, i)) {
                        zzwj.zzq(obj, j, zzwj.zzc(obj2, j));
                        zzv(obj, i);
                    }
                    break;
                case 12:
                    if (zzy(obj2, i)) {
                        zzwj.zzq(obj, j, zzwj.zzc(obj2, j));
                        zzv(obj, i);
                    }
                    break;
                case 13:
                    if (zzy(obj2, i)) {
                        zzwj.zzq(obj, j, zzwj.zzc(obj2, j));
                        zzv(obj, i);
                    }
                    break;
                case 14:
                    if (zzy(obj2, i)) {
                        zzwj.zzr(obj, j, zzwj.zzd(obj2, j));
                        zzv(obj, i);
                    }
                    break;
                case 15:
                    if (zzy(obj2, i)) {
                        zzwj.zzq(obj, j, zzwj.zzc(obj2, j));
                        zzv(obj, i);
                    }
                    break;
                case 16:
                    if (zzy(obj2, i)) {
                        zzwj.zzr(obj, j, zzwj.zzd(obj2, j));
                        zzv(obj, i);
                    }
                    break;
                case 17:
                    zzt(obj, obj2, i);
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
                    this.zzi.zzb(obj, obj2, j);
                    break;
                case 50:
                    int i4 = zzvk.$r8$clinit;
                    Object objZzf = zzwj.zzf(obj, j);
                    Object objZzf2 = zzwj.zzf(obj2, j);
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(objZzf);
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(objZzf2);
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
                        zzwj.zzs(obj, j, zzwj.zzf(obj2, j));
                        zzw(obj, i3, i);
                    }
                    break;
                case 60:
                    zzu(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzC(obj2, i3, i)) {
                        zzwj.zzs(obj, j, zzwj.zzf(obj2, j));
                        zzw(obj, i3, i);
                    }
                    break;
                case 68:
                    zzu(obj, obj2, i);
                    break;
            }
        }
        zzvk.zzo(this.zzj, obj, obj2);
        if (this.zzf) {
            this.zzk.zza(obj2);
            throw null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.cast.zzvi
    public final void zzf(Object obj, zzwq zzwqVar) throws zzta {
        int i;
        zzva zzvaVar = this;
        if (zzvaVar.zzf) {
            zzvaVar.zzk.zza(obj);
            throw null;
        }
        int[] iArr = zzvaVar.zzc;
        Unsafe unsafe = zzb;
        int i2 = 1048575;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i4 < iArr.length) {
            int iZzo = zzvaVar.zzo(i4);
            int[] iArr2 = zzvaVar.zzc;
            int iZzn = zzn(iZzo);
            int i6 = iArr2[i4];
            if (iZzn <= 17) {
                int i7 = iArr2[i4 + 2];
                int i8 = i7 & i2;
                if (i8 != i3) {
                    i5 = i8 == i2 ? 0 : unsafe.getInt(obj, i8);
                    i3 = i8;
                }
                i = 1 << (i7 >>> 20);
            } else {
                i = 0;
            }
            long j = iZzo & i2;
            switch (iZzn) {
                case 0:
                    if (zzvaVar.zzz(obj, i4, i3, i5, i)) {
                        zzwqVar.zzf(i6, zzwj.zza(obj, j));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 1:
                    if (zzvaVar.zzz(obj, i4, i3, i5, i)) {
                        zzwqVar.zzn(i6, zzwj.zzb(obj, j));
                    }
                    zzvaVar = this;
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 2:
                    if (zzvaVar.zzz(obj, i4, i3, i5, i)) {
                        zzwqVar.zzs(i6, unsafe.getLong(obj, j));
                    }
                    zzvaVar = this;
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 3:
                    if (zzvaVar.zzz(obj, i4, i3, i5, i)) {
                        zzwqVar.zzH(i6, unsafe.getLong(obj, j));
                    }
                    zzvaVar = this;
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 4:
                    if (zzvaVar.zzz(obj, i4, i3, i5, i)) {
                        zzwqVar.zzq(i6, unsafe.getInt(obj, j));
                    }
                    zzvaVar = this;
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 5:
                    if (zzvaVar.zzz(obj, i4, i3, i5, i)) {
                        zzwqVar.zzl(i6, unsafe.getLong(obj, j));
                    }
                    zzvaVar = this;
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 6:
                    if (zzvaVar.zzz(obj, i4, i3, i5, i)) {
                        zzwqVar.zzj(i6, unsafe.getInt(obj, j));
                    }
                    zzvaVar = this;
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 7:
                    if (zzvaVar.zzz(obj, i4, i3, i5, i)) {
                        zzwqVar.zzb(i6, zzwj.zzw(obj, j));
                    }
                    zzvaVar = this;
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 8:
                    if (zzvaVar.zzz(obj, i4, i3, i5, i)) {
                        zzE(i6, unsafe.getObject(obj, j), zzwqVar);
                    }
                    zzvaVar = this;
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 9:
                    if (zzvaVar.zzz(obj, i4, i3, i5, i)) {
                        zzwqVar.zzu(i6, unsafe.getObject(obj, j), zzvaVar.zzq(i4));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 10:
                    if (zzvaVar.zzz(obj, i4, i3, i5, i)) {
                        zzwqVar.zzd(i6, (zzsu) unsafe.getObject(obj, j));
                    }
                    zzvaVar = this;
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 11:
                    if (zzvaVar.zzz(obj, i4, i3, i5, i)) {
                        zzwqVar.zzF(i6, unsafe.getInt(obj, j));
                    }
                    zzvaVar = this;
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 12:
                    if (zzvaVar.zzz(obj, i4, i3, i5, i)) {
                        zzwqVar.zzh(i6, unsafe.getInt(obj, j));
                    }
                    zzvaVar = this;
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 13:
                    if (zzvaVar.zzz(obj, i4, i3, i5, i)) {
                        zzwqVar.zzv(i6, unsafe.getInt(obj, j));
                    }
                    zzvaVar = this;
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 14:
                    if (zzvaVar.zzz(obj, i4, i3, i5, i)) {
                        zzwqVar.zzx(i6, unsafe.getLong(obj, j));
                    }
                    zzvaVar = this;
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 15:
                    if (zzvaVar.zzz(obj, i4, i3, i5, i)) {
                        zzwqVar.zzz(i6, unsafe.getInt(obj, j));
                    }
                    zzvaVar = this;
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 16:
                    if (zzvaVar.zzz(obj, i4, i3, i5, i)) {
                        zzwqVar.zzB(i6, unsafe.getLong(obj, j));
                    }
                    zzvaVar = this;
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 17:
                    if (zzvaVar.zzz(obj, i4, i3, i5, i)) {
                        zzwqVar.zzp(i6, unsafe.getObject(obj, j), zzvaVar.zzq(i4));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 18:
                    zzvk.zzr(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 19:
                    zzvk.zzv(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 20:
                    zzvk.zzx(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 21:
                    zzvk.zzD(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 22:
                    zzvk.zzw(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 23:
                    zzvk.zzu(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 24:
                    zzvk.zzt(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 25:
                    zzvk.zzq(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 26:
                    int i9 = zzvaVar.zzc[i4];
                    List list = (List) unsafe.getObject(obj, j);
                    int i10 = zzvk.$r8$clinit;
                    if (list != null && !list.isEmpty()) {
                        zzwqVar.zzE(i9, list);
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 27:
                    int i11 = zzvaVar.zzc[i4];
                    List list2 = (List) unsafe.getObject(obj, j);
                    zzvi zzviVarZzq = zzvaVar.zzq(i4);
                    int i12 = zzvk.$r8$clinit;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i13 = 0; i13 < list2.size(); i13++) {
                            ((zztd) zzwqVar).zzu(i11, list2.get(i13), zzviVarZzq);
                        }
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 28:
                    int i14 = zzvaVar.zzc[i4];
                    List list3 = (List) unsafe.getObject(obj, j);
                    int i15 = zzvk.$r8$clinit;
                    if (list3 != null && !list3.isEmpty()) {
                        zzwqVar.zze(i14, list3);
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 29:
                    zzvk.zzC(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 30:
                    zzvk.zzs(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 31:
                    zzvk.zzy(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 32:
                    zzvk.zzz(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 33:
                    zzvk.zzA(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 34:
                    zzvk.zzB(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, false);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 35:
                    zzvk.zzr(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, true);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 36:
                    zzvk.zzv(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, true);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 37:
                    zzvk.zzx(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, true);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 38:
                    zzvk.zzD(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, true);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 39:
                    zzvk.zzw(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, true);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 40:
                    zzvk.zzu(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, true);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 41:
                    zzvk.zzt(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, true);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 42:
                    zzvk.zzq(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, true);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 43:
                    zzvk.zzC(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, true);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 44:
                    zzvk.zzs(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, true);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 45:
                    zzvk.zzy(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, true);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 46:
                    zzvk.zzz(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, true);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 47:
                    zzvk.zzA(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, true);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 48:
                    zzvk.zzB(zzvaVar.zzc[i4], (List) unsafe.getObject(obj, j), zzwqVar, true);
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 49:
                    int i16 = zzvaVar.zzc[i4];
                    List list4 = (List) unsafe.getObject(obj, j);
                    zzvi zzviVarZzq2 = zzvaVar.zzq(i4);
                    int i17 = zzvk.$r8$clinit;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i18 = 0; i18 < list4.size(); i18++) {
                            ((zztd) zzwqVar).zzp(i16, list4.get(i18), zzviVarZzq2);
                        }
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 50:
                    if (unsafe.getObject(obj, j) != null) {
                        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(zzvaVar.zzr(i4));
                        throw null;
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 51:
                    if (zzvaVar.zzC(obj, i6, i4)) {
                        zzwqVar.zzf(i6, zzj(obj, j));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 52:
                    if (zzvaVar.zzC(obj, i6, i4)) {
                        zzwqVar.zzn(i6, zzk(obj, j));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 53:
                    if (zzvaVar.zzC(obj, i6, i4)) {
                        zzwqVar.zzs(i6, zzp(obj, j));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 54:
                    if (zzvaVar.zzC(obj, i6, i4)) {
                        zzwqVar.zzH(i6, zzp(obj, j));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 55:
                    if (zzvaVar.zzC(obj, i6, i4)) {
                        zzwqVar.zzq(i6, zzl(obj, j));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 56:
                    if (zzvaVar.zzC(obj, i6, i4)) {
                        zzwqVar.zzl(i6, zzp(obj, j));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 57:
                    if (zzvaVar.zzC(obj, i6, i4)) {
                        zzwqVar.zzj(i6, zzl(obj, j));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 58:
                    if (zzvaVar.zzC(obj, i6, i4)) {
                        zzwqVar.zzb(i6, zzD(obj, j));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 59:
                    if (zzvaVar.zzC(obj, i6, i4)) {
                        zzE(i6, unsafe.getObject(obj, j), zzwqVar);
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 60:
                    if (zzvaVar.zzC(obj, i6, i4)) {
                        zzwqVar.zzu(i6, unsafe.getObject(obj, j), zzvaVar.zzq(i4));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 61:
                    if (zzvaVar.zzC(obj, i6, i4)) {
                        zzwqVar.zzd(i6, (zzsu) unsafe.getObject(obj, j));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 62:
                    if (zzvaVar.zzC(obj, i6, i4)) {
                        zzwqVar.zzF(i6, zzl(obj, j));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 63:
                    if (zzvaVar.zzC(obj, i6, i4)) {
                        zzwqVar.zzh(i6, zzl(obj, j));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 64:
                    if (zzvaVar.zzC(obj, i6, i4)) {
                        zzwqVar.zzv(i6, zzl(obj, j));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 65:
                    if (zzvaVar.zzC(obj, i6, i4)) {
                        zzwqVar.zzx(i6, zzp(obj, j));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 66:
                    if (zzvaVar.zzC(obj, i6, i4)) {
                        zzwqVar.zzz(i6, zzl(obj, j));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 67:
                    if (zzvaVar.zzC(obj, i6, i4)) {
                        zzwqVar.zzB(i6, zzp(obj, j));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                case 68:
                    if (zzvaVar.zzC(obj, i6, i4)) {
                        zzwqVar.zzp(i6, unsafe.getObject(obj, j), zzvaVar.zzq(i4));
                    }
                    i4 += 3;
                    i2 = 1048575;
                    break;
                default:
                    i4 += 3;
                    i2 = 1048575;
                    break;
            }
        }
        zzvz zzvzVar = zzvaVar.zzj;
        zzvzVar.zzg(zzvzVar.zzc(obj), zzwqVar);
    }

    @Override // com.google.android.gms.internal.cast.zzvi
    public final boolean zzg(Object obj, Object obj2) {
        boolean zZzE;
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzo = zzo(i);
            long j = iZzo & 1048575;
            switch (zzn(iZzo)) {
                case 0:
                    if (!zzx(obj, obj2, i) || Double.doubleToLongBits(zzwj.zza(obj, j)) != Double.doubleToLongBits(zzwj.zza(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzx(obj, obj2, i) || Float.floatToIntBits(zzwj.zzb(obj, j)) != Float.floatToIntBits(zzwj.zzb(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzx(obj, obj2, i) || zzwj.zzd(obj, j) != zzwj.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzx(obj, obj2, i) || zzwj.zzd(obj, j) != zzwj.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzx(obj, obj2, i) || zzwj.zzc(obj, j) != zzwj.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzx(obj, obj2, i) || zzwj.zzd(obj, j) != zzwj.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzx(obj, obj2, i) || zzwj.zzc(obj, j) != zzwj.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzx(obj, obj2, i) || zzwj.zzw(obj, j) != zzwj.zzw(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzx(obj, obj2, i) || !zzvk.zzE(zzwj.zzf(obj, j), zzwj.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzx(obj, obj2, i) || !zzvk.zzE(zzwj.zzf(obj, j), zzwj.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzx(obj, obj2, i) || !zzvk.zzE(zzwj.zzf(obj, j), zzwj.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzx(obj, obj2, i) || zzwj.zzc(obj, j) != zzwj.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzx(obj, obj2, i) || zzwj.zzc(obj, j) != zzwj.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzx(obj, obj2, i) || zzwj.zzc(obj, j) != zzwj.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzx(obj, obj2, i) || zzwj.zzd(obj, j) != zzwj.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzx(obj, obj2, i) || zzwj.zzc(obj, j) != zzwj.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzx(obj, obj2, i) || zzwj.zzd(obj, j) != zzwj.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzx(obj, obj2, i) || !zzvk.zzE(zzwj.zzf(obj, j), zzwj.zzf(obj2, j))) {
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
                    zZzE = zzvk.zzE(zzwj.zzf(obj, j), zzwj.zzf(obj2, j));
                    break;
                case 50:
                    zZzE = zzvk.zzE(zzwj.zzf(obj, j), zzwj.zzf(obj2, j));
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
                    long jZzm = zzm(i) & 1048575;
                    if (zzwj.zzc(obj, jZzm) != zzwj.zzc(obj2, jZzm) || !zzvk.zzE(zzwj.zzf(obj, j), zzwj.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    break;
            }
            if (!zZzE) {
                return false;
            }
        }
        if (!this.zzj.zzc(obj).equals(this.zzj.zzc(obj2))) {
            return false;
        }
        if (!this.zzf) {
            return true;
        }
        this.zzk.zza(obj);
        this.zzk.zza(obj2);
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0085  */
    @Override // com.google.android.gms.internal.cast.zzvi
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
            int iZzo = zzo(i7);
            int i9 = this.zzc[i7 + 2];
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
            if ((268435456 & iZzo) != 0) {
                i2 = i7;
                i3 = i6;
                if (!zzz(obj, i2, i3, i, i11)) {
                    return false;
                }
            } else {
                i2 = i7;
                i3 = i6;
            }
            int iZzn = zzn(iZzo);
            if (iZzn == 9 || iZzn == 17) {
                if (zzz(obj, i2, i3, i, i11) && !zzA(obj, iZzo, zzq(i2))) {
                    return false;
                }
            } else if (iZzn == 27) {
                List list = (List) zzwj.zzf(obj, iZzo & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzvi zzviVarZzq = zzq(i2);
                    for (int i12 = 0; i12 < list.size(); i12++) {
                        if (!zzviVarZzq.zzh(list.get(i12))) {
                            return false;
                        }
                    }
                }
            } else if (iZzn == 60 || iZzn == 68) {
                if (zzC(obj, i8, i2) && !zzA(obj, iZzo, zzq(i2))) {
                    return false;
                }
            } else if (iZzn != 49) {
                if (iZzn == 50) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(zzwj.zzf(obj, iZzo & 1048575));
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
        this.zzk.zza(obj);
        throw null;
    }
}
