package com.google.android.gms.internal.vision;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline0;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
final class zzko<T> implements zzlc<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzma.zzc();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzkk zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final boolean zzj;
    private final boolean zzk;
    private final int[] zzl;
    private final int zzm;
    private final int zzn;
    private final zzks zzo;
    private final zzju zzp;
    private final zzlu<?, ?> zzq;
    private final zziq<?> zzr;
    private final zzkh zzs;

    private zzko(int[] iArr, Object[] objArr, int i, int i2, zzkk zzkkVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzks zzksVar, zzju zzjuVar, zzlu<?, ?> zzluVar, zziq<?> zziqVar, zzkh zzkhVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = zzkkVar instanceof zzjb;
        this.zzj = z;
        this.zzh = zziqVar != null && zziqVar.zza(zzkkVar);
        this.zzk = false;
        this.zzl = iArr2;
        this.zzm = i3;
        this.zzn = i4;
        this.zzo = zzksVar;
        this.zzp = zzjuVar;
        this.zzq = zzluVar;
        this.zzr = zziqVar;
        this.zzg = zzkkVar;
        this.zzs = zzkhVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0381  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static <T> zzko<T> zza(Class<T> cls, zzki zzkiVar, zzks zzksVar, zzju zzjuVar, zzlu<?, ?> zzluVar, zziq<?> zziqVar, zzkh zzkhVar) {
        int i;
        int iCharAt;
        int iCharAt2;
        int iCharAt3;
        int iCharAt4;
        int i2;
        int i3;
        int[] iArr;
        int i4;
        char cCharAt;
        int i5;
        char cCharAt2;
        int i6;
        char cCharAt3;
        int i7;
        char cCharAt4;
        int i8;
        char cCharAt5;
        int i9;
        char cCharAt6;
        int i10;
        char cCharAt7;
        int i11;
        char cCharAt8;
        int i12;
        int i13;
        int i14;
        int iObjectFieldOffset;
        String str;
        int iObjectFieldOffset2;
        int i15;
        int i16;
        int i17;
        Field fieldZza;
        char cCharAt9;
        int i18;
        Object obj;
        Field fieldZza2;
        Object obj2;
        Field fieldZza3;
        int i19;
        char cCharAt10;
        int i20;
        char cCharAt11;
        int i21;
        int i22;
        char cCharAt12;
        int i23;
        char cCharAt13;
        if (zzkiVar instanceof zzla) {
            zzla zzlaVar = (zzla) zzkiVar;
            int i24 = 0;
            boolean z = zzlaVar.zza() == zzkz.zzb;
            String strZzd = zzlaVar.zzd();
            int length = strZzd.length();
            if (strZzd.charAt(0) >= 55296) {
                int i25 = 1;
                while (true) {
                    i = i25 + 1;
                    if (strZzd.charAt(i25) < 55296) {
                        break;
                    }
                    i25 = i;
                }
            } else {
                i = 1;
            }
            int i26 = i + 1;
            int iCharAt5 = strZzd.charAt(i);
            if (iCharAt5 >= 55296) {
                int i27 = iCharAt5 & 8191;
                int i28 = 13;
                while (true) {
                    i23 = i26 + 1;
                    cCharAt13 = strZzd.charAt(i26);
                    if (cCharAt13 < 55296) {
                        break;
                    }
                    i27 |= (cCharAt13 & 8191) << i28;
                    i28 += 13;
                    i26 = i23;
                }
                iCharAt5 = i27 | (cCharAt13 << i28);
                i26 = i23;
            }
            if (iCharAt5 == 0) {
                iCharAt = 0;
                iCharAt2 = 0;
                iCharAt3 = 0;
                i2 = 0;
                iCharAt4 = 0;
                iArr = zza;
                i3 = 0;
            } else {
                int i29 = i26 + 1;
                int iCharAt6 = strZzd.charAt(i26);
                if (iCharAt6 >= 55296) {
                    int i30 = iCharAt6 & 8191;
                    int i31 = 13;
                    while (true) {
                        i11 = i29 + 1;
                        cCharAt8 = strZzd.charAt(i29);
                        if (cCharAt8 < 55296) {
                            break;
                        }
                        i30 |= (cCharAt8 & 8191) << i31;
                        i31 += 13;
                        i29 = i11;
                    }
                    iCharAt6 = i30 | (cCharAt8 << i31);
                    i29 = i11;
                }
                int i32 = i29 + 1;
                int iCharAt7 = strZzd.charAt(i29);
                if (iCharAt7 >= 55296) {
                    int i33 = iCharAt7 & 8191;
                    int i34 = 13;
                    while (true) {
                        i10 = i32 + 1;
                        cCharAt7 = strZzd.charAt(i32);
                        if (cCharAt7 < 55296) {
                            break;
                        }
                        i33 |= (cCharAt7 & 8191) << i34;
                        i34 += 13;
                        i32 = i10;
                    }
                    iCharAt7 = i33 | (cCharAt7 << i34);
                    i32 = i10;
                }
                int i35 = i32 + 1;
                iCharAt = strZzd.charAt(i32);
                if (iCharAt >= 55296) {
                    int i36 = iCharAt & 8191;
                    int i37 = 13;
                    while (true) {
                        i9 = i35 + 1;
                        cCharAt6 = strZzd.charAt(i35);
                        if (cCharAt6 < 55296) {
                            break;
                        }
                        i36 |= (cCharAt6 & 8191) << i37;
                        i37 += 13;
                        i35 = i9;
                    }
                    iCharAt = i36 | (cCharAt6 << i37);
                    i35 = i9;
                }
                int i38 = i35 + 1;
                iCharAt2 = strZzd.charAt(i35);
                if (iCharAt2 >= 55296) {
                    int i39 = iCharAt2 & 8191;
                    int i40 = 13;
                    while (true) {
                        i8 = i38 + 1;
                        cCharAt5 = strZzd.charAt(i38);
                        if (cCharAt5 < 55296) {
                            break;
                        }
                        i39 |= (cCharAt5 & 8191) << i40;
                        i40 += 13;
                        i38 = i8;
                    }
                    iCharAt2 = i39 | (cCharAt5 << i40);
                    i38 = i8;
                }
                int i41 = i38 + 1;
                iCharAt3 = strZzd.charAt(i38);
                if (iCharAt3 >= 55296) {
                    int i42 = iCharAt3 & 8191;
                    int i43 = 13;
                    while (true) {
                        i7 = i41 + 1;
                        cCharAt4 = strZzd.charAt(i41);
                        if (cCharAt4 < 55296) {
                            break;
                        }
                        i42 |= (cCharAt4 & 8191) << i43;
                        i43 += 13;
                        i41 = i7;
                    }
                    iCharAt3 = i42 | (cCharAt4 << i43);
                    i41 = i7;
                }
                int i44 = i41 + 1;
                int iCharAt8 = strZzd.charAt(i41);
                if (iCharAt8 >= 55296) {
                    int i45 = iCharAt8 & 8191;
                    int i46 = 13;
                    while (true) {
                        i6 = i44 + 1;
                        cCharAt3 = strZzd.charAt(i44);
                        if (cCharAt3 < 55296) {
                            break;
                        }
                        i45 |= (cCharAt3 & 8191) << i46;
                        i46 += 13;
                        i44 = i6;
                    }
                    iCharAt8 = i45 | (cCharAt3 << i46);
                    i44 = i6;
                }
                int i47 = i44 + 1;
                int iCharAt9 = strZzd.charAt(i44);
                if (iCharAt9 >= 55296) {
                    int i48 = iCharAt9 & 8191;
                    int i49 = 13;
                    while (true) {
                        i5 = i47 + 1;
                        cCharAt2 = strZzd.charAt(i47);
                        if (cCharAt2 < 55296) {
                            break;
                        }
                        i48 |= (cCharAt2 & 8191) << i49;
                        i49 += 13;
                        i47 = i5;
                    }
                    iCharAt9 = i48 | (cCharAt2 << i49);
                    i47 = i5;
                }
                int i50 = i47 + 1;
                iCharAt4 = strZzd.charAt(i47);
                if (iCharAt4 >= 55296) {
                    int i51 = iCharAt4 & 8191;
                    int i52 = i50;
                    int i53 = 13;
                    while (true) {
                        i4 = i52 + 1;
                        cCharAt = strZzd.charAt(i52);
                        if (cCharAt < 55296) {
                            break;
                        }
                        i51 |= (cCharAt & 8191) << i53;
                        i53 += 13;
                        i52 = i4;
                    }
                    iCharAt4 = i51 | (cCharAt << i53);
                    i50 = i4;
                }
                int[] iArr2 = new int[iCharAt4 + iCharAt8 + iCharAt9];
                i2 = (iCharAt6 << 1) + iCharAt7;
                i3 = iCharAt8;
                iArr = iArr2;
                i24 = iCharAt6;
                i26 = i50;
            }
            Unsafe unsafe = zzb;
            Object[] objArrZze = zzlaVar.zze();
            Class<?> cls2 = zzlaVar.zzc().getClass();
            int[] iArr3 = new int[iCharAt3 * 3];
            Object[] objArr = new Object[iCharAt3 << 1];
            int i54 = i3 + iCharAt4;
            int i55 = i54;
            int i56 = iCharAt4;
            int i57 = 0;
            int i58 = 0;
            while (i26 < length) {
                int i59 = i26 + 1;
                int iCharAt10 = strZzd.charAt(i26);
                zzla zzlaVar2 = zzlaVar;
                if (iCharAt10 >= 55296) {
                    int i60 = iCharAt10 & 8191;
                    int i61 = i59;
                    int i62 = 13;
                    while (true) {
                        i22 = i61 + 1;
                        cCharAt12 = strZzd.charAt(i61);
                        i12 = length;
                        if (cCharAt12 < 55296) {
                            break;
                        }
                        i60 |= (cCharAt12 & 8191) << i62;
                        i62 += 13;
                        i61 = i22;
                        length = i12;
                    }
                    iCharAt10 = i60 | (cCharAt12 << i62);
                    i13 = i22;
                } else {
                    i12 = length;
                    i13 = i59;
                }
                int i63 = i13 + 1;
                int iCharAt11 = strZzd.charAt(i13);
                if (iCharAt11 >= 55296) {
                    int i64 = iCharAt11 & 8191;
                    int i65 = i63;
                    int i66 = 13;
                    while (true) {
                        i20 = i65 + 1;
                        cCharAt11 = strZzd.charAt(i65);
                        i21 = i64;
                        if (cCharAt11 < 55296) {
                            break;
                        }
                        i64 = i21 | ((cCharAt11 & 8191) << i66);
                        i66 += 13;
                        i65 = i20;
                    }
                    iCharAt11 = i21 | (cCharAt11 << i66);
                    i14 = i20;
                } else {
                    i14 = i63;
                }
                int i67 = i24;
                int i68 = iCharAt11 & 255;
                int i69 = iCharAt10;
                if ((iCharAt11 & 1024) != 0) {
                    iArr[i57] = i58;
                    i57++;
                }
                int[] iArr4 = iArr3;
                if (i68 >= 51) {
                    int i70 = i14 + 1;
                    int iCharAt12 = strZzd.charAt(i14);
                    char c2 = 55296;
                    if (iCharAt12 >= 55296) {
                        int i71 = iCharAt12 & 8191;
                        int i72 = 13;
                        while (true) {
                            i19 = i70 + 1;
                            cCharAt10 = strZzd.charAt(i70);
                            if (cCharAt10 < c2) {
                                break;
                            }
                            i71 |= (cCharAt10 & 8191) << i72;
                            i72 += 13;
                            i70 = i19;
                            c2 = 55296;
                        }
                        iCharAt12 = i71 | (cCharAt10 << i72);
                        i70 = i19;
                    }
                    int i73 = i68 - 51;
                    int i74 = iCharAt12;
                    if (i73 == 9 || i73 == 17) {
                        i18 = i2 + 1;
                        objArr[((i58 / 3) << 1) + 1] = objArrZze[i2];
                    } else {
                        if (i73 == 12 && !z) {
                            i18 = i2 + 1;
                            objArr[((i58 / 3) << 1) + 1] = objArrZze[i2];
                        }
                        int i75 = i74 << 1;
                        obj = objArrZze[i75];
                        if (!(obj instanceof Field)) {
                            fieldZza2 = (Field) obj;
                        } else {
                            fieldZza2 = zza(cls2, (String) obj);
                            objArrZze[i75] = fieldZza2;
                        }
                        int i76 = i70;
                        int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZza2);
                        int i77 = i75 + 1;
                        obj2 = objArrZze[i77];
                        if (!(obj2 instanceof Field)) {
                            fieldZza3 = (Field) obj2;
                        } else {
                            fieldZza3 = zza(cls2, (String) obj2);
                            objArrZze[i77] = fieldZza3;
                        }
                        str = strZzd;
                        iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZza3);
                        i17 = iObjectFieldOffset3;
                        i16 = 0;
                        i15 = i76;
                    }
                    i2 = i18;
                    int i752 = i74 << 1;
                    obj = objArrZze[i752];
                    if (!(obj instanceof Field)) {
                    }
                    int i762 = i70;
                    int iObjectFieldOffset32 = (int) unsafe.objectFieldOffset(fieldZza2);
                    int i772 = i752 + 1;
                    obj2 = objArrZze[i772];
                    if (!(obj2 instanceof Field)) {
                    }
                    str = strZzd;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZza3);
                    i17 = iObjectFieldOffset32;
                    i16 = 0;
                    i15 = i762;
                } else {
                    int i78 = i2 + 1;
                    Field fieldZza4 = zza(cls2, (String) objArrZze[i2]);
                    if (i68 == 9 || i68 == 17) {
                        objArr[((i58 / 3) << 1) + 1] = fieldZza4.getType();
                    } else {
                        if (i68 == 27 || i68 == 49) {
                            i2 += 2;
                            objArr[((i58 / 3) << 1) + 1] = objArrZze[i78];
                        } else if (i68 == 12 || i68 == 30 || i68 == 44) {
                            if (!z) {
                                i2 += 2;
                                objArr[((i58 / 3) << 1) + 1] = objArrZze[i78];
                            }
                        } else if (i68 == 50) {
                            int i79 = i56 + 1;
                            iArr[i56] = i58;
                            int i80 = (i58 / 3) << 1;
                            int i81 = i2 + 2;
                            objArr[i80] = objArrZze[i78];
                            if ((iCharAt11 & 2048) != 0) {
                                objArr[i80 + 1] = objArrZze[i81];
                                i2 += 3;
                            } else {
                                i2 = i81;
                            }
                            i56 = i79;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZza4);
                        if ((iCharAt11 & 4096) == 4096 || i68 > 17) {
                            str = strZzd;
                            iObjectFieldOffset2 = 1048575;
                            i15 = i14;
                            i16 = 0;
                        } else {
                            int i82 = i14 + 1;
                            int iCharAt13 = strZzd.charAt(i14);
                            if (iCharAt13 >= 55296) {
                                int i83 = iCharAt13 & 8191;
                                int i84 = 13;
                                while (true) {
                                    i15 = i82 + 1;
                                    cCharAt9 = strZzd.charAt(i82);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i83 |= (cCharAt9 & 8191) << i84;
                                    i84 += 13;
                                    i82 = i15;
                                }
                                iCharAt13 = i83 | (cCharAt9 << i84);
                            } else {
                                i15 = i82;
                            }
                            int i85 = (i67 << 1) + (iCharAt13 / 32);
                            Object obj3 = objArrZze[i85];
                            str = strZzd;
                            if (obj3 instanceof Field) {
                                fieldZza = (Field) obj3;
                            } else {
                                fieldZza = zza(cls2, (String) obj3);
                                objArrZze[i85] = fieldZza;
                            }
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZza);
                            i16 = iCharAt13 % 32;
                        }
                        if (i68 >= 18 && i68 <= 49) {
                            iArr[i55] = iObjectFieldOffset;
                            i55++;
                        }
                        i17 = iObjectFieldOffset;
                    }
                    i2 = i78;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZza4);
                    if ((iCharAt11 & 4096) == 4096) {
                        str = strZzd;
                        iObjectFieldOffset2 = 1048575;
                        i15 = i14;
                        i16 = 0;
                        if (i68 >= 18) {
                            iArr[i55] = iObjectFieldOffset;
                            i55++;
                        }
                        i17 = iObjectFieldOffset;
                    }
                }
                int i86 = i58 + 1;
                iArr4[i58] = i69;
                int i87 = i58 + 2;
                int i88 = iObjectFieldOffset2;
                iArr4[i86] = ((iCharAt11 & 256) != 0 ? 268435456 : 0) | ((iCharAt11 & 512) != 0 ? 536870912 : 0) | (i68 << 20) | i17;
                i58 += 3;
                iArr4[i87] = (i16 << 20) | i88;
                i24 = i67;
                zzlaVar = zzlaVar2;
                length = i12;
                i26 = i15;
                iArr3 = iArr4;
                strZzd = str;
            }
            return new zzko<>(iArr3, objArr, iCharAt, iCharAt2, zzlaVar.zzc(), z, false, iArr, iCharAt4, i54, zzksVar, zzjuVar, zzluVar, zziqVar, zzkhVar);
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(zzkiVar);
        throw null;
    }

    private static Field zza(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + name.length() + String.valueOf(string).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(string);
            throw new RuntimeException(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final T zza() {
        return (T) this.zzo.zza(this.zzg);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003a  */
    @Override // com.google.android.gms.internal.vision.zzlc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zza(T t, T t2) {
        int length = this.zzc.length;
        int i = 0;
        while (true) {
            boolean zZza = true;
            if (i < length) {
                int iZzd = zzd(i);
                long j = iZzd & 1048575;
                switch ((iZzd & 267386880) >>> 20) {
                    case 0:
                        if (!zzc(t, t2, i) || Double.doubleToLongBits(zzma.zze(t, j)) != Double.doubleToLongBits(zzma.zze(t2, j))) {
                            zZza = false;
                        }
                        break;
                    case 1:
                        if (!zzc(t, t2, i) || Float.floatToIntBits(zzma.zzd(t, j)) != Float.floatToIntBits(zzma.zzd(t2, j))) {
                        }
                        break;
                    case 2:
                        if (!zzc(t, t2, i) || zzma.zzb(t, j) != zzma.zzb(t2, j)) {
                        }
                        break;
                    case 3:
                        if (!zzc(t, t2, i) || zzma.zzb(t, j) != zzma.zzb(t2, j)) {
                        }
                        break;
                    case 4:
                        if (!zzc(t, t2, i) || zzma.zza(t, j) != zzma.zza(t2, j)) {
                        }
                        break;
                    case 5:
                        if (!zzc(t, t2, i) || zzma.zzb(t, j) != zzma.zzb(t2, j)) {
                        }
                        break;
                    case 6:
                        if (!zzc(t, t2, i) || zzma.zza(t, j) != zzma.zza(t2, j)) {
                        }
                        break;
                    case 7:
                        if (!zzc(t, t2, i) || zzma.zzc(t, j) != zzma.zzc(t2, j)) {
                        }
                        break;
                    case 8:
                        if (!zzc(t, t2, i) || !zzle.zza(zzma.zzf(t, j), zzma.zzf(t2, j))) {
                        }
                        break;
                    case 9:
                        if (!zzc(t, t2, i) || !zzle.zza(zzma.zzf(t, j), zzma.zzf(t2, j))) {
                        }
                        break;
                    case 10:
                        if (!zzc(t, t2, i) || !zzle.zza(zzma.zzf(t, j), zzma.zzf(t2, j))) {
                        }
                        break;
                    case 11:
                        if (!zzc(t, t2, i) || zzma.zza(t, j) != zzma.zza(t2, j)) {
                        }
                        break;
                    case 12:
                        if (!zzc(t, t2, i) || zzma.zza(t, j) != zzma.zza(t2, j)) {
                        }
                        break;
                    case 13:
                        if (!zzc(t, t2, i) || zzma.zza(t, j) != zzma.zza(t2, j)) {
                        }
                        break;
                    case 14:
                        if (!zzc(t, t2, i) || zzma.zzb(t, j) != zzma.zzb(t2, j)) {
                        }
                        break;
                    case 15:
                        if (!zzc(t, t2, i) || zzma.zza(t, j) != zzma.zza(t2, j)) {
                        }
                        break;
                    case 16:
                        if (!zzc(t, t2, i) || zzma.zzb(t, j) != zzma.zzb(t2, j)) {
                        }
                        break;
                    case 17:
                        if (!zzc(t, t2, i) || !zzle.zza(zzma.zzf(t, j), zzma.zzf(t2, j))) {
                        }
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
                        zZza = zzle.zza(zzma.zzf(t, j), zzma.zzf(t2, j));
                        break;
                    case 50:
                        zZza = zzle.zza(zzma.zzf(t, j), zzma.zzf(t2, j));
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
                        long jZze = zze(i) & 1048575;
                        if (zzma.zza(t, jZze) != zzma.zza(t2, jZze) || !zzle.zza(zzma.zzf(t, j), zzma.zzf(t2, j))) {
                        }
                        break;
                }
                if (!zZza) {
                    return false;
                }
                i += 3;
            } else {
                if (!this.zzq.zzb(t).equals(this.zzq.zzb(t2))) {
                    return false;
                }
                if (this.zzh) {
                    return this.zzr.zza(t).equals(this.zzr.zza(t2));
                }
                return true;
            }
        }
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final int zza(T t) {
        int i;
        int iZza;
        int length = this.zzc.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int iZzd = zzd(i3);
            int i4 = this.zzc[i3];
            long j = 1048575 & iZzd;
            int iHashCode = 37;
            switch ((iZzd & 267386880) >>> 20) {
                case 0:
                    i = i2 * 53;
                    iZza = zzjf.zza(Double.doubleToLongBits(zzma.zze(t, j)));
                    i2 = i + iZza;
                    break;
                case 1:
                    i = i2 * 53;
                    iZza = Float.floatToIntBits(zzma.zzd(t, j));
                    i2 = i + iZza;
                    break;
                case 2:
                    i = i2 * 53;
                    iZza = zzjf.zza(zzma.zzb(t, j));
                    i2 = i + iZza;
                    break;
                case 3:
                    i = i2 * 53;
                    iZza = zzjf.zza(zzma.zzb(t, j));
                    i2 = i + iZza;
                    break;
                case 4:
                    i = i2 * 53;
                    iZza = zzma.zza(t, j);
                    i2 = i + iZza;
                    break;
                case 5:
                    i = i2 * 53;
                    iZza = zzjf.zza(zzma.zzb(t, j));
                    i2 = i + iZza;
                    break;
                case 6:
                    i = i2 * 53;
                    iZza = zzma.zza(t, j);
                    i2 = i + iZza;
                    break;
                case 7:
                    i = i2 * 53;
                    iZza = zzjf.zza(zzma.zzc(t, j));
                    i2 = i + iZza;
                    break;
                case 8:
                    i = i2 * 53;
                    iZza = ((String) zzma.zzf(t, j)).hashCode();
                    i2 = i + iZza;
                    break;
                case 9:
                    Object objZzf = zzma.zzf(t, j);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 10:
                    i = i2 * 53;
                    iZza = zzma.zzf(t, j).hashCode();
                    i2 = i + iZza;
                    break;
                case 11:
                    i = i2 * 53;
                    iZza = zzma.zza(t, j);
                    i2 = i + iZza;
                    break;
                case 12:
                    i = i2 * 53;
                    iZza = zzma.zza(t, j);
                    i2 = i + iZza;
                    break;
                case 13:
                    i = i2 * 53;
                    iZza = zzma.zza(t, j);
                    i2 = i + iZza;
                    break;
                case 14:
                    i = i2 * 53;
                    iZza = zzjf.zza(zzma.zzb(t, j));
                    i2 = i + iZza;
                    break;
                case 15:
                    i = i2 * 53;
                    iZza = zzma.zza(t, j);
                    i2 = i + iZza;
                    break;
                case 16:
                    i = i2 * 53;
                    iZza = zzjf.zza(zzma.zzb(t, j));
                    i2 = i + iZza;
                    break;
                case 17:
                    Object objZzf2 = zzma.zzf(t, j);
                    if (objZzf2 != null) {
                        iHashCode = objZzf2.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
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
                    i = i2 * 53;
                    iZza = zzma.zzf(t, j).hashCode();
                    i2 = i + iZza;
                    break;
                case 50:
                    i = i2 * 53;
                    iZza = zzma.zzf(t, j).hashCode();
                    i2 = i + iZza;
                    break;
                case 51:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzjf.zza(Double.doubleToLongBits(zzb(t, j)));
                        i2 = i + iZza;
                    }
                    break;
                case 52:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = Float.floatToIntBits(zzc(t, j));
                        i2 = i + iZza;
                    }
                    break;
                case 53:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzjf.zza(zze(t, j));
                        i2 = i + iZza;
                    }
                    break;
                case 54:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzjf.zza(zze(t, j));
                        i2 = i + iZza;
                    }
                    break;
                case 55:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzd(t, j);
                        i2 = i + iZza;
                    }
                    break;
                case 56:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzjf.zza(zze(t, j));
                        i2 = i + iZza;
                    }
                    break;
                case 57:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzd(t, j);
                        i2 = i + iZza;
                    }
                    break;
                case 58:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzjf.zza(zzf(t, j));
                        i2 = i + iZza;
                    }
                    break;
                case 59:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = ((String) zzma.zzf(t, j)).hashCode();
                        i2 = i + iZza;
                    }
                    break;
                case 60:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzma.zzf(t, j).hashCode();
                        i2 = i + iZza;
                    }
                    break;
                case 61:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzma.zzf(t, j).hashCode();
                        i2 = i + iZza;
                    }
                    break;
                case 62:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzd(t, j);
                        i2 = i + iZza;
                    }
                    break;
                case 63:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzd(t, j);
                        i2 = i + iZza;
                    }
                    break;
                case 64:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzd(t, j);
                        i2 = i + iZza;
                    }
                    break;
                case 65:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzjf.zza(zze(t, j));
                        i2 = i + iZza;
                    }
                    break;
                case 66:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzd(t, j);
                        i2 = i + iZza;
                    }
                    break;
                case 67:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzjf.zza(zze(t, j));
                        i2 = i + iZza;
                    }
                    break;
                case 68:
                    if (zza(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzma.zzf(t, j).hashCode();
                        i2 = i + iZza;
                    }
                    break;
            }
        }
        int iHashCode2 = (i2 * 53) + this.zzq.zzb(t).hashCode();
        return this.zzh ? (iHashCode2 * 53) + this.zzr.zza(t).hashCode() : iHashCode2;
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final void zzb(T t, T t2) {
        t2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzd = zzd(i);
            long j = 1048575 & iZzd;
            int i2 = this.zzc[i];
            switch ((iZzd & 267386880) >>> 20) {
                case 0:
                    if (zza((Object) t2, i)) {
                        zzma.zza(t, j, zzma.zze(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 1:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zzd(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 2:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zzb(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 3:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zzb(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 4:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zza(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 5:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zzb(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 6:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zza(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 7:
                    if (zza((Object) t2, i)) {
                        zzma.zza(t, j, zzma.zzc(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 8:
                    if (zza((Object) t2, i)) {
                        zzma.zza(t, j, zzma.zzf(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 9:
                    zza(t, t2, i);
                    break;
                case 10:
                    if (zza((Object) t2, i)) {
                        zzma.zza(t, j, zzma.zzf(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 11:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zza(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 12:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zza(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 13:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zza(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 14:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zzb(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 15:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zza(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 16:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zzb(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 17:
                    zza(t, t2, i);
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
                    this.zzp.zza(t, t2, j);
                    break;
                case 50:
                    zzle.zza(this.zzs, t, t2, j);
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
                    if (zza(t2, i2, i)) {
                        zzma.zza(t, j, zzma.zzf(t2, j));
                        zzb(t, i2, i);
                    }
                    break;
                case 60:
                    zzb(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zza(t2, i2, i)) {
                        zzma.zza(t, j, zzma.zzf(t2, j));
                        zzb(t, i2, i);
                    }
                    break;
                case 68:
                    zzb(t, t2, i);
                    break;
            }
        }
        zzle.zza(this.zzq, t, t2);
        if (this.zzh) {
            zzle.zza(this.zzr, t, t2);
        }
    }

    private final void zza(T t, T t2, int i) {
        long jZzd = zzd(i) & 1048575;
        if (zza((Object) t2, i)) {
            Object objZzf = zzma.zzf(t, jZzd);
            Object objZzf2 = zzma.zzf(t2, jZzd);
            if (objZzf != null && objZzf2 != null) {
                zzma.zza(t, jZzd, zzjf.zza(objZzf, objZzf2));
                zzb((Object) t, i);
            } else if (objZzf2 != null) {
                zzma.zza(t, jZzd, objZzf2);
                zzb((Object) t, i);
            }
        }
    }

    private final void zzb(T t, T t2, int i) {
        int iZzd = zzd(i);
        int i2 = this.zzc[i];
        long j = iZzd & 1048575;
        if (zza(t2, i2, i)) {
            Object objZzf = zza(t, i2, i) ? zzma.zzf(t, j) : null;
            Object objZzf2 = zzma.zzf(t2, j);
            if (objZzf != null && objZzf2 != null) {
                zzma.zza(t, j, zzjf.zza(objZzf, objZzf2));
                zzb(t, i2, i);
            } else if (objZzf2 != null) {
                zzma.zza(t, j, objZzf2);
                zzb(t, i2, i);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.vision.zzlc
    public final int zzb(T t) {
        int i;
        int i2;
        boolean z;
        int iZzd;
        int iZzb;
        int iZzj;
        int iZzi;
        int iZze;
        int iZzg;
        int iZzb2;
        int iZzi2;
        int iZze2;
        int iZzg2;
        int i3 = 267386880;
        int i4 = 1048575;
        int i5 = 0;
        if (this.zzj) {
            Unsafe unsafe = zzb;
            int i6 = 0;
            int i7 = 0;
            while (i6 < this.zzc.length) {
                int iZzd2 = zzd(i6);
                int i8 = (iZzd2 & i3) >>> 20;
                int i9 = i3;
                int i10 = this.zzc[i6];
                long j = iZzd2 & 1048575;
                if (i8 >= zziv.zza.zza() && i8 <= zziv.zzb.zza()) {
                    int i11 = this.zzc[i6 + 2];
                }
                switch (i8) {
                    case 0:
                        if (zza((Object) t, i6)) {
                            iZzb2 = zzii.zzb(i10, 0.0d);
                            i7 += iZzb2;
                        }
                        break;
                    case 1:
                        if (zza((Object) t, i6)) {
                            iZzb2 = zzii.zzb(i10, 0.0f);
                            i7 += iZzb2;
                        }
                        break;
                    case 2:
                        if (zza((Object) t, i6)) {
                            iZzb2 = zzii.zzd(i10, zzma.zzb(t, j));
                            i7 += iZzb2;
                        }
                        break;
                    case 3:
                        if (zza((Object) t, i6)) {
                            iZzb2 = zzii.zze(i10, zzma.zzb(t, j));
                            i7 += iZzb2;
                        }
                        break;
                    case 4:
                        if (zza((Object) t, i6)) {
                            iZzb2 = zzii.zzf(i10, zzma.zza(t, j));
                            i7 += iZzb2;
                        }
                        break;
                    case 5:
                        if (zza((Object) t, i6)) {
                            iZzb2 = zzii.zzg(i10, 0L);
                            i7 += iZzb2;
                        }
                        break;
                    case 6:
                        if (zza((Object) t, i6)) {
                            iZzb2 = zzii.zzi(i10, 0);
                            i7 += iZzb2;
                        }
                        break;
                    case 7:
                        if (zza((Object) t, i6)) {
                            iZzb2 = zzii.zzb(i10, true);
                            i7 += iZzb2;
                        }
                        break;
                    case 8:
                        if (zza((Object) t, i6)) {
                            Object objZzf = zzma.zzf(t, j);
                            if (objZzf instanceof zzht) {
                                iZzb2 = zzii.zzc(i10, (zzht) objZzf);
                            } else {
                                iZzb2 = zzii.zzb(i10, (String) objZzf);
                            }
                            i7 += iZzb2;
                        }
                        break;
                    case 9:
                        if (zza((Object) t, i6)) {
                            iZzb2 = zzle.zza(i10, zzma.zzf(t, j), zza(i6));
                            i7 += iZzb2;
                        }
                        break;
                    case 10:
                        if (zza((Object) t, i6)) {
                            iZzb2 = zzii.zzc(i10, (zzht) zzma.zzf(t, j));
                            i7 += iZzb2;
                        }
                        break;
                    case 11:
                        if (zza((Object) t, i6)) {
                            iZzb2 = zzii.zzg(i10, zzma.zza(t, j));
                            i7 += iZzb2;
                        }
                        break;
                    case 12:
                        if (zza((Object) t, i6)) {
                            iZzb2 = zzii.zzk(i10, zzma.zza(t, j));
                            i7 += iZzb2;
                        }
                        break;
                    case 13:
                        if (zza((Object) t, i6)) {
                            iZzb2 = zzii.zzj(i10, 0);
                            i7 += iZzb2;
                        }
                        break;
                    case 14:
                        if (zza((Object) t, i6)) {
                            iZzb2 = zzii.zzh(i10, 0L);
                            i7 += iZzb2;
                        }
                        break;
                    case 15:
                        if (zza((Object) t, i6)) {
                            iZzb2 = zzii.zzh(i10, zzma.zza(t, j));
                            i7 += iZzb2;
                        }
                        break;
                    case 16:
                        if (zza((Object) t, i6)) {
                            iZzb2 = zzii.zzf(i10, zzma.zzb(t, j));
                            i7 += iZzb2;
                        }
                        break;
                    case 17:
                        if (zza((Object) t, i6)) {
                            iZzb2 = zzii.zzc(i10, (zzkk) zzma.zzf(t, j), zza(i6));
                            i7 += iZzb2;
                        }
                        break;
                    case 18:
                        iZzb2 = zzle.zzi(i10, zza(t, j), false);
                        i7 += iZzb2;
                        break;
                    case 19:
                        iZzb2 = zzle.zzh(i10, zza(t, j), false);
                        i7 += iZzb2;
                        break;
                    case 20:
                        iZzb2 = zzle.zza(i10, (List<Long>) zza(t, j), false);
                        i7 += iZzb2;
                        break;
                    case 21:
                        iZzb2 = zzle.zzb(i10, (List<Long>) zza(t, j), false);
                        i7 += iZzb2;
                        break;
                    case 22:
                        iZzb2 = zzle.zze(i10, zza(t, j), false);
                        i7 += iZzb2;
                        break;
                    case 23:
                        iZzb2 = zzle.zzi(i10, zza(t, j), false);
                        i7 += iZzb2;
                        break;
                    case 24:
                        iZzb2 = zzle.zzh(i10, zza(t, j), false);
                        i7 += iZzb2;
                        break;
                    case 25:
                        iZzb2 = zzle.zzj(i10, zza(t, j), false);
                        i7 += iZzb2;
                        break;
                    case 26:
                        iZzb2 = zzle.zza(i10, zza(t, j));
                        i7 += iZzb2;
                        break;
                    case 27:
                        iZzb2 = zzle.zza(i10, zza(t, j), zza(i6));
                        i7 += iZzb2;
                        break;
                    case 28:
                        iZzb2 = zzle.zzb(i10, zza(t, j));
                        i7 += iZzb2;
                        break;
                    case 29:
                        iZzb2 = zzle.zzf(i10, zza(t, j), false);
                        i7 += iZzb2;
                        break;
                    case 30:
                        iZzb2 = zzle.zzd(i10, zza(t, j), false);
                        i7 += iZzb2;
                        break;
                    case 31:
                        iZzb2 = zzle.zzh(i10, zza(t, j), false);
                        i7 += iZzb2;
                        break;
                    case 32:
                        iZzb2 = zzle.zzi(i10, zza(t, j), false);
                        i7 += iZzb2;
                        break;
                    case 33:
                        iZzb2 = zzle.zzg(i10, zza(t, j), false);
                        i7 += iZzb2;
                        break;
                    case 34:
                        iZzb2 = zzle.zzc(i10, zza(t, j), false);
                        i7 += iZzb2;
                        break;
                    case 35:
                        iZzi2 = zzle.zzi((List) unsafe.getObject(t, j));
                        if (iZzi2 > 0) {
                            iZze2 = zzii.zze(i10);
                            iZzg2 = zzii.zzg(iZzi2);
                            iZzb2 = iZze2 + iZzg2 + iZzi2;
                            i7 += iZzb2;
                        }
                        break;
                    case 36:
                        iZzi2 = zzle.zzh((List) unsafe.getObject(t, j));
                        if (iZzi2 > 0) {
                            iZze2 = zzii.zze(i10);
                            iZzg2 = zzii.zzg(iZzi2);
                            iZzb2 = iZze2 + iZzg2 + iZzi2;
                            i7 += iZzb2;
                        }
                        break;
                    case 37:
                        iZzi2 = zzle.zza((List<Long>) unsafe.getObject(t, j));
                        if (iZzi2 > 0) {
                            iZze2 = zzii.zze(i10);
                            iZzg2 = zzii.zzg(iZzi2);
                            iZzb2 = iZze2 + iZzg2 + iZzi2;
                            i7 += iZzb2;
                        }
                        break;
                    case 38:
                        iZzi2 = zzle.zzb((List) unsafe.getObject(t, j));
                        if (iZzi2 > 0) {
                            iZze2 = zzii.zze(i10);
                            iZzg2 = zzii.zzg(iZzi2);
                            iZzb2 = iZze2 + iZzg2 + iZzi2;
                            i7 += iZzb2;
                        }
                        break;
                    case 39:
                        iZzi2 = zzle.zze((List) unsafe.getObject(t, j));
                        if (iZzi2 > 0) {
                            iZze2 = zzii.zze(i10);
                            iZzg2 = zzii.zzg(iZzi2);
                            iZzb2 = iZze2 + iZzg2 + iZzi2;
                            i7 += iZzb2;
                        }
                        break;
                    case 40:
                        iZzi2 = zzle.zzi((List) unsafe.getObject(t, j));
                        if (iZzi2 > 0) {
                            iZze2 = zzii.zze(i10);
                            iZzg2 = zzii.zzg(iZzi2);
                            iZzb2 = iZze2 + iZzg2 + iZzi2;
                            i7 += iZzb2;
                        }
                        break;
                    case 41:
                        iZzi2 = zzle.zzh((List) unsafe.getObject(t, j));
                        if (iZzi2 > 0) {
                            iZze2 = zzii.zze(i10);
                            iZzg2 = zzii.zzg(iZzi2);
                            iZzb2 = iZze2 + iZzg2 + iZzi2;
                            i7 += iZzb2;
                        }
                        break;
                    case 42:
                        iZzi2 = zzle.zzj((List) unsafe.getObject(t, j));
                        if (iZzi2 > 0) {
                            iZze2 = zzii.zze(i10);
                            iZzg2 = zzii.zzg(iZzi2);
                            iZzb2 = iZze2 + iZzg2 + iZzi2;
                            i7 += iZzb2;
                        }
                        break;
                    case 43:
                        iZzi2 = zzle.zzf((List) unsafe.getObject(t, j));
                        if (iZzi2 > 0) {
                            iZze2 = zzii.zze(i10);
                            iZzg2 = zzii.zzg(iZzi2);
                            iZzb2 = iZze2 + iZzg2 + iZzi2;
                            i7 += iZzb2;
                        }
                        break;
                    case 44:
                        iZzi2 = zzle.zzd((List) unsafe.getObject(t, j));
                        if (iZzi2 > 0) {
                            iZze2 = zzii.zze(i10);
                            iZzg2 = zzii.zzg(iZzi2);
                            iZzb2 = iZze2 + iZzg2 + iZzi2;
                            i7 += iZzb2;
                        }
                        break;
                    case 45:
                        iZzi2 = zzle.zzh((List) unsafe.getObject(t, j));
                        if (iZzi2 > 0) {
                            iZze2 = zzii.zze(i10);
                            iZzg2 = zzii.zzg(iZzi2);
                            iZzb2 = iZze2 + iZzg2 + iZzi2;
                            i7 += iZzb2;
                        }
                        break;
                    case 46:
                        iZzi2 = zzle.zzi((List) unsafe.getObject(t, j));
                        if (iZzi2 > 0) {
                            iZze2 = zzii.zze(i10);
                            iZzg2 = zzii.zzg(iZzi2);
                            iZzb2 = iZze2 + iZzg2 + iZzi2;
                            i7 += iZzb2;
                        }
                        break;
                    case 47:
                        iZzi2 = zzle.zzg((List) unsafe.getObject(t, j));
                        if (iZzi2 > 0) {
                            iZze2 = zzii.zze(i10);
                            iZzg2 = zzii.zzg(iZzi2);
                            iZzb2 = iZze2 + iZzg2 + iZzi2;
                            i7 += iZzb2;
                        }
                        break;
                    case 48:
                        iZzi2 = zzle.zzc((List) unsafe.getObject(t, j));
                        if (iZzi2 > 0) {
                            iZze2 = zzii.zze(i10);
                            iZzg2 = zzii.zzg(iZzi2);
                            iZzb2 = iZze2 + iZzg2 + iZzi2;
                            i7 += iZzb2;
                        }
                        break;
                    case 49:
                        iZzb2 = zzle.zzb(i10, (List<zzkk>) zza(t, j), zza(i6));
                        i7 += iZzb2;
                        break;
                    case 50:
                        iZzb2 = this.zzs.zza(i10, zzma.zzf(t, j), zzb(i6));
                        i7 += iZzb2;
                        break;
                    case 51:
                        if (zza(t, i10, i6)) {
                            iZzb2 = zzii.zzb(i10, 0.0d);
                            i7 += iZzb2;
                        }
                        break;
                    case 52:
                        if (zza(t, i10, i6)) {
                            iZzb2 = zzii.zzb(i10, 0.0f);
                            i7 += iZzb2;
                        }
                        break;
                    case 53:
                        if (zza(t, i10, i6)) {
                            iZzb2 = zzii.zzd(i10, zze(t, j));
                            i7 += iZzb2;
                        }
                        break;
                    case 54:
                        if (zza(t, i10, i6)) {
                            iZzb2 = zzii.zze(i10, zze(t, j));
                            i7 += iZzb2;
                        }
                        break;
                    case 55:
                        if (zza(t, i10, i6)) {
                            iZzb2 = zzii.zzf(i10, zzd(t, j));
                            i7 += iZzb2;
                        }
                        break;
                    case 56:
                        if (zza(t, i10, i6)) {
                            iZzb2 = zzii.zzg(i10, 0L);
                            i7 += iZzb2;
                        }
                        break;
                    case 57:
                        if (zza(t, i10, i6)) {
                            iZzb2 = zzii.zzi(i10, 0);
                            i7 += iZzb2;
                        }
                        break;
                    case 58:
                        if (zza(t, i10, i6)) {
                            iZzb2 = zzii.zzb(i10, true);
                            i7 += iZzb2;
                        }
                        break;
                    case 59:
                        if (zza(t, i10, i6)) {
                            Object objZzf2 = zzma.zzf(t, j);
                            if (objZzf2 instanceof zzht) {
                                iZzb2 = zzii.zzc(i10, (zzht) objZzf2);
                            } else {
                                iZzb2 = zzii.zzb(i10, (String) objZzf2);
                            }
                            i7 += iZzb2;
                        }
                        break;
                    case 60:
                        if (zza(t, i10, i6)) {
                            iZzb2 = zzle.zza(i10, zzma.zzf(t, j), zza(i6));
                            i7 += iZzb2;
                        }
                        break;
                    case 61:
                        if (zza(t, i10, i6)) {
                            iZzb2 = zzii.zzc(i10, (zzht) zzma.zzf(t, j));
                            i7 += iZzb2;
                        }
                        break;
                    case 62:
                        if (zza(t, i10, i6)) {
                            iZzb2 = zzii.zzg(i10, zzd(t, j));
                            i7 += iZzb2;
                        }
                        break;
                    case 63:
                        if (zza(t, i10, i6)) {
                            iZzb2 = zzii.zzk(i10, zzd(t, j));
                            i7 += iZzb2;
                        }
                        break;
                    case 64:
                        if (zza(t, i10, i6)) {
                            iZzb2 = zzii.zzj(i10, 0);
                            i7 += iZzb2;
                        }
                        break;
                    case 65:
                        if (zza(t, i10, i6)) {
                            iZzb2 = zzii.zzh(i10, 0L);
                            i7 += iZzb2;
                        }
                        break;
                    case 66:
                        if (zza(t, i10, i6)) {
                            iZzb2 = zzii.zzh(i10, zzd(t, j));
                            i7 += iZzb2;
                        }
                        break;
                    case 67:
                        if (zza(t, i10, i6)) {
                            iZzb2 = zzii.zzf(i10, zze(t, j));
                            i7 += iZzb2;
                        }
                        break;
                    case 68:
                        if (zza(t, i10, i6)) {
                            iZzb2 = zzii.zzc(i10, (zzkk) zzma.zzf(t, j), zza(i6));
                            i7 += iZzb2;
                        }
                        break;
                }
                i6 += 3;
                i3 = i9;
            }
            return i7 + zza((zzlu) this.zzq, (Object) t);
        }
        Unsafe unsafe2 = zzb;
        int i12 = 1048575;
        int i13 = 0;
        int iZzb3 = 0;
        int i14 = 0;
        while (i13 < this.zzc.length) {
            int iZzd3 = zzd(i13);
            int[] iArr = this.zzc;
            int i15 = iArr[i13];
            int i16 = i4;
            int i17 = (iZzd3 & 267386880) >>> 20;
            if (i17 <= 17) {
                int i18 = iArr[i13 + 2];
                int i19 = i18 & i16;
                i = 1 << (i18 >>> 20);
                if (i19 != i12) {
                    i14 = unsafe2.getInt(t, i19);
                    i12 = i19;
                }
            } else {
                i = 0;
            }
            long j2 = iZzd3 & i16;
            switch (i17) {
                case 0:
                    i2 = 0;
                    z = false;
                    if ((i & i14) != 0) {
                        iZzb3 += zzii.zzb(i15, 0.0d);
                    }
                    break;
                case 1:
                    i2 = 0;
                    if ((i & i14) != 0) {
                        z = false;
                        iZzb3 += zzii.zzb(i15, 0.0f);
                    } else {
                        z = false;
                    }
                    break;
                case 2:
                    i2 = 0;
                    if ((i & i14) != 0) {
                        iZzd = zzii.zzd(i15, unsafe2.getLong(t, j2));
                        iZzb3 += iZzd;
                    }
                    z = false;
                    break;
                case 3:
                    i2 = 0;
                    if ((i & i14) != 0) {
                        iZzd = zzii.zze(i15, unsafe2.getLong(t, j2));
                        iZzb3 += iZzd;
                    }
                    z = false;
                    break;
                case 4:
                    i2 = 0;
                    if ((i & i14) != 0) {
                        iZzd = zzii.zzf(i15, unsafe2.getInt(t, j2));
                        iZzb3 += iZzd;
                    }
                    z = false;
                    break;
                case 5:
                    i2 = 0;
                    if ((i & i14) != 0) {
                        iZzd = zzii.zzg(i15, 0L);
                        iZzb3 += iZzd;
                    }
                    z = false;
                    break;
                case 6:
                    if ((i & i14) != 0) {
                        i2 = 0;
                        iZzd = zzii.zzi(i15, 0);
                        iZzb3 += iZzd;
                        z = false;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 7:
                    if ((i & i14) != 0) {
                        iZzb = zzii.zzb(i15, true);
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 8:
                    if ((i & i14) != 0) {
                        Object object = unsafe2.getObject(t, j2);
                        if (object instanceof zzht) {
                            iZzb = zzii.zzc(i15, (zzht) object);
                        } else {
                            iZzb = zzii.zzb(i15, (String) object);
                        }
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 9:
                    if ((i & i14) != 0) {
                        iZzb = zzle.zza(i15, unsafe2.getObject(t, j2), zza(i13));
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 10:
                    if ((i & i14) != 0) {
                        iZzb = zzii.zzc(i15, (zzht) unsafe2.getObject(t, j2));
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 11:
                    if ((i & i14) != 0) {
                        iZzb = zzii.zzg(i15, unsafe2.getInt(t, j2));
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 12:
                    if ((i & i14) != 0) {
                        iZzb = zzii.zzk(i15, unsafe2.getInt(t, j2));
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 13:
                    if ((i & i14) != 0) {
                        iZzj = zzii.zzj(i15, 0);
                        iZzb3 += iZzj;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 14:
                    if ((i & i14) != 0) {
                        iZzb = zzii.zzh(i15, 0L);
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 15:
                    if ((i & i14) != 0) {
                        iZzb = zzii.zzh(i15, unsafe2.getInt(t, j2));
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 16:
                    if ((i & i14) != 0) {
                        iZzb = zzii.zzf(i15, unsafe2.getLong(t, j2));
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 17:
                    if ((i & i14) != 0) {
                        iZzb = zzii.zzc(i15, (zzkk) unsafe2.getObject(t, j2), zza(i13));
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 18:
                    iZzb = zzle.zzi(i15, (List) unsafe2.getObject(t, j2), false);
                    iZzb3 += iZzb;
                    i2 = 0;
                    z = false;
                    break;
                case 19:
                    i2 = 0;
                    iZzd = zzle.zzh(i15, (List) unsafe2.getObject(t, j2), false);
                    iZzb3 += iZzd;
                    z = false;
                    break;
                case 20:
                    i2 = 0;
                    iZzd = zzle.zza(i15, (List<Long>) unsafe2.getObject(t, j2), false);
                    iZzb3 += iZzd;
                    z = false;
                    break;
                case 21:
                    i2 = 0;
                    iZzd = zzle.zzb(i15, (List<Long>) unsafe2.getObject(t, j2), false);
                    iZzb3 += iZzd;
                    z = false;
                    break;
                case 22:
                    i2 = 0;
                    iZzd = zzle.zze(i15, (List) unsafe2.getObject(t, j2), false);
                    iZzb3 += iZzd;
                    z = false;
                    break;
                case 23:
                    i2 = 0;
                    iZzd = zzle.zzi(i15, (List) unsafe2.getObject(t, j2), false);
                    iZzb3 += iZzd;
                    z = false;
                    break;
                case 24:
                    i2 = 0;
                    iZzd = zzle.zzh(i15, (List) unsafe2.getObject(t, j2), false);
                    iZzb3 += iZzd;
                    z = false;
                    break;
                case 25:
                    i2 = 0;
                    iZzd = zzle.zzj(i15, (List) unsafe2.getObject(t, j2), false);
                    iZzb3 += iZzd;
                    z = false;
                    break;
                case 26:
                    iZzb = zzle.zza(i15, (List<?>) unsafe2.getObject(t, j2));
                    iZzb3 += iZzb;
                    i2 = 0;
                    z = false;
                    break;
                case 27:
                    iZzb = zzle.zza(i15, (List<?>) unsafe2.getObject(t, j2), zza(i13));
                    iZzb3 += iZzb;
                    i2 = 0;
                    z = false;
                    break;
                case 28:
                    iZzb = zzle.zzb(i15, (List) unsafe2.getObject(t, j2));
                    iZzb3 += iZzb;
                    i2 = 0;
                    z = false;
                    break;
                case 29:
                    iZzb = zzle.zzf(i15, (List) unsafe2.getObject(t, j2), false);
                    iZzb3 += iZzb;
                    i2 = 0;
                    z = false;
                    break;
                case 30:
                    i2 = 0;
                    iZzd = zzle.zzd(i15, (List) unsafe2.getObject(t, j2), false);
                    iZzb3 += iZzd;
                    z = false;
                    break;
                case 31:
                    i2 = 0;
                    iZzd = zzle.zzh(i15, (List) unsafe2.getObject(t, j2), false);
                    iZzb3 += iZzd;
                    z = false;
                    break;
                case 32:
                    i2 = 0;
                    iZzd = zzle.zzi(i15, (List) unsafe2.getObject(t, j2), false);
                    iZzb3 += iZzd;
                    z = false;
                    break;
                case 33:
                    i2 = 0;
                    iZzd = zzle.zzg(i15, (List) unsafe2.getObject(t, j2), false);
                    iZzb3 += iZzd;
                    z = false;
                    break;
                case 34:
                    i2 = 0;
                    iZzd = zzle.zzc(i15, (List) unsafe2.getObject(t, j2), false);
                    iZzb3 += iZzd;
                    z = false;
                    break;
                case 35:
                    iZzi = zzle.zzi((List) unsafe2.getObject(t, j2));
                    if (iZzi > 0) {
                        iZze = zzii.zze(i15);
                        iZzg = zzii.zzg(iZzi);
                        iZzj = iZze + iZzg + iZzi;
                        iZzb3 += iZzj;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 36:
                    iZzi = zzle.zzh((List) unsafe2.getObject(t, j2));
                    if (iZzi > 0) {
                        iZze = zzii.zze(i15);
                        iZzg = zzii.zzg(iZzi);
                        iZzj = iZze + iZzg + iZzi;
                        iZzb3 += iZzj;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 37:
                    iZzi = zzle.zza((List<Long>) unsafe2.getObject(t, j2));
                    if (iZzi > 0) {
                        iZze = zzii.zze(i15);
                        iZzg = zzii.zzg(iZzi);
                        iZzj = iZze + iZzg + iZzi;
                        iZzb3 += iZzj;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 38:
                    iZzi = zzle.zzb((List) unsafe2.getObject(t, j2));
                    if (iZzi > 0) {
                        iZze = zzii.zze(i15);
                        iZzg = zzii.zzg(iZzi);
                        iZzj = iZze + iZzg + iZzi;
                        iZzb3 += iZzj;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 39:
                    iZzi = zzle.zze((List) unsafe2.getObject(t, j2));
                    if (iZzi > 0) {
                        iZze = zzii.zze(i15);
                        iZzg = zzii.zzg(iZzi);
                        iZzj = iZze + iZzg + iZzi;
                        iZzb3 += iZzj;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 40:
                    iZzi = zzle.zzi((List) unsafe2.getObject(t, j2));
                    if (iZzi > 0) {
                        iZze = zzii.zze(i15);
                        iZzg = zzii.zzg(iZzi);
                        iZzj = iZze + iZzg + iZzi;
                        iZzb3 += iZzj;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 41:
                    iZzi = zzle.zzh((List) unsafe2.getObject(t, j2));
                    if (iZzi > 0) {
                        iZze = zzii.zze(i15);
                        iZzg = zzii.zzg(iZzi);
                        iZzj = iZze + iZzg + iZzi;
                        iZzb3 += iZzj;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 42:
                    iZzi = zzle.zzj((List) unsafe2.getObject(t, j2));
                    if (iZzi > 0) {
                        iZze = zzii.zze(i15);
                        iZzg = zzii.zzg(iZzi);
                        iZzj = iZze + iZzg + iZzi;
                        iZzb3 += iZzj;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 43:
                    iZzi = zzle.zzf((List) unsafe2.getObject(t, j2));
                    if (iZzi > 0) {
                        iZze = zzii.zze(i15);
                        iZzg = zzii.zzg(iZzi);
                        iZzj = iZze + iZzg + iZzi;
                        iZzb3 += iZzj;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 44:
                    iZzi = zzle.zzd((List) unsafe2.getObject(t, j2));
                    if (iZzi > 0) {
                        iZze = zzii.zze(i15);
                        iZzg = zzii.zzg(iZzi);
                        iZzj = iZze + iZzg + iZzi;
                        iZzb3 += iZzj;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 45:
                    iZzi = zzle.zzh((List) unsafe2.getObject(t, j2));
                    if (iZzi > 0) {
                        iZze = zzii.zze(i15);
                        iZzg = zzii.zzg(iZzi);
                        iZzj = iZze + iZzg + iZzi;
                        iZzb3 += iZzj;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 46:
                    iZzi = zzle.zzi((List) unsafe2.getObject(t, j2));
                    if (iZzi > 0) {
                        iZze = zzii.zze(i15);
                        iZzg = zzii.zzg(iZzi);
                        iZzj = iZze + iZzg + iZzi;
                        iZzb3 += iZzj;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 47:
                    iZzi = zzle.zzg((List) unsafe2.getObject(t, j2));
                    if (iZzi > 0) {
                        iZze = zzii.zze(i15);
                        iZzg = zzii.zzg(iZzi);
                        iZzj = iZze + iZzg + iZzi;
                        iZzb3 += iZzj;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 48:
                    iZzi = zzle.zzc((List) unsafe2.getObject(t, j2));
                    if (iZzi > 0) {
                        iZze = zzii.zze(i15);
                        iZzg = zzii.zzg(iZzi);
                        iZzj = iZze + iZzg + iZzi;
                        iZzb3 += iZzj;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 49:
                    iZzb = zzle.zzb(i15, (List<zzkk>) unsafe2.getObject(t, j2), zza(i13));
                    iZzb3 += iZzb;
                    i2 = 0;
                    z = false;
                    break;
                case 50:
                    iZzb = this.zzs.zza(i15, unsafe2.getObject(t, j2), zzb(i13));
                    iZzb3 += iZzb;
                    i2 = 0;
                    z = false;
                    break;
                case 51:
                    if (zza(t, i15, i13)) {
                        iZzb3 += zzii.zzb(i15, 0.0d);
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 52:
                    if (zza(t, i15, i13)) {
                        iZzj = zzii.zzb(i15, 0.0f);
                        iZzb3 += iZzj;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 53:
                    if (zza(t, i15, i13)) {
                        iZzb = zzii.zzd(i15, zze(t, j2));
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 54:
                    if (zza(t, i15, i13)) {
                        iZzb = zzii.zze(i15, zze(t, j2));
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 55:
                    if (zza(t, i15, i13)) {
                        iZzb = zzii.zzf(i15, zzd(t, j2));
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 56:
                    if (zza(t, i15, i13)) {
                        iZzb = zzii.zzg(i15, 0L);
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 57:
                    if (zza(t, i15, i13)) {
                        iZzj = zzii.zzi(i15, 0);
                        iZzb3 += iZzj;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 58:
                    if (zza(t, i15, i13)) {
                        iZzb = zzii.zzb(i15, true);
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 59:
                    if (zza(t, i15, i13)) {
                        Object object2 = unsafe2.getObject(t, j2);
                        if (object2 instanceof zzht) {
                            iZzb = zzii.zzc(i15, (zzht) object2);
                        } else {
                            iZzb = zzii.zzb(i15, (String) object2);
                        }
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 60:
                    if (zza(t, i15, i13)) {
                        iZzb = zzle.zza(i15, unsafe2.getObject(t, j2), zza(i13));
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 61:
                    if (zza(t, i15, i13)) {
                        iZzb = zzii.zzc(i15, (zzht) unsafe2.getObject(t, j2));
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 62:
                    if (zza(t, i15, i13)) {
                        iZzb = zzii.zzg(i15, zzd(t, j2));
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 63:
                    if (zza(t, i15, i13)) {
                        iZzb = zzii.zzk(i15, zzd(t, j2));
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 64:
                    if (zza(t, i15, i13)) {
                        iZzj = zzii.zzj(i15, 0);
                        iZzb3 += iZzj;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 65:
                    if (zza(t, i15, i13)) {
                        iZzb = zzii.zzh(i15, 0L);
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 66:
                    if (zza(t, i15, i13)) {
                        iZzb = zzii.zzh(i15, zzd(t, j2));
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 67:
                    if (zza(t, i15, i13)) {
                        iZzb = zzii.zzf(i15, zze(t, j2));
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                case 68:
                    if (zza(t, i15, i13)) {
                        iZzb = zzii.zzc(i15, (zzkk) unsafe2.getObject(t, j2), zza(i13));
                        iZzb3 += iZzb;
                    }
                    i2 = 0;
                    z = false;
                    break;
                default:
                    i2 = 0;
                    z = false;
                    break;
            }
            i13 += 3;
            i5 = i2;
            i4 = i16;
        }
        int iZzc = i5;
        int iZza = iZzb3 + zza((zzlu) this.zzq, (Object) t);
        if (!this.zzh) {
            return iZza;
        }
        zziu<T> zziuVarZza = this.zzr.zza(t);
        int i20 = iZzc;
        while (true) {
            int iZzc2 = zziuVarZza.zza.zzc();
            zzlh<T, Object> zzlhVar = zziuVarZza.zza;
            if (i20 < iZzc2) {
                Map.Entry entryZzb = zzlhVar.zzb(i20);
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(entryZzb.getKey());
                iZzc += zziu.zzc(null, entryZzb.getValue());
                i20++;
            } else {
                for (Map.Entry entry : zzlhVar.zzd()) {
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(entry.getKey());
                    iZzc += zziu.zzc(null, entry.getValue());
                }
                return iZza + iZzc;
            }
        }
    }

    private static <UT, UB> int zza(zzlu<UT, UB> zzluVar, T t) {
        return zzluVar.zzf(zzluVar.zzb(t));
    }

    private static List<?> zza(Object obj, long j) {
        return (List) zzma.zzf(obj, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:178:0x054a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0032  */
    @Override // com.google.android.gms.internal.vision.zzlc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(T t, zzmr zzmrVar) {
        Iterator itZzd;
        Map.Entry<?, ?> entry;
        Iterator itZze;
        Map.Entry<?, ?> entry2;
        if (zzmrVar.zza() == zzmq.zzb) {
            zza(this.zzq, t, zzmrVar);
            if (this.zzh) {
                zziu<T> zziuVarZza = this.zzr.zza(t);
                if (zziuVarZza.zza.isEmpty()) {
                    itZze = null;
                    entry2 = null;
                } else {
                    itZze = zziuVarZza.zze();
                    entry2 = (Map.Entry) itZze.next();
                }
            }
            for (int length = this.zzc.length - 3; length >= 0; length -= 3) {
                int iZzd = zzd(length);
                int i = this.zzc[length];
                while (entry2 != null && this.zzr.zza(entry2) > i) {
                    this.zzr.zza(zzmrVar, entry2);
                    entry2 = itZze.hasNext() ? (Map.Entry) itZze.next() : null;
                }
                switch ((iZzd & 267386880) >>> 20) {
                    case 0:
                        if (zza((Object) t, length)) {
                            zzmrVar.zza(i, zzma.zze(t, iZzd & 1048575));
                        }
                        break;
                    case 1:
                        if (zza((Object) t, length)) {
                            zzmrVar.zza(i, zzma.zzd(t, iZzd & 1048575));
                        }
                        break;
                    case 2:
                        if (zza((Object) t, length)) {
                            zzmrVar.zza(i, zzma.zzb(t, iZzd & 1048575));
                        }
                        break;
                    case 3:
                        if (zza((Object) t, length)) {
                            zzmrVar.zzc(i, zzma.zzb(t, iZzd & 1048575));
                        }
                        break;
                    case 4:
                        if (zza((Object) t, length)) {
                            zzmrVar.zzc(i, zzma.zza(t, iZzd & 1048575));
                        }
                        break;
                    case 5:
                        if (zza((Object) t, length)) {
                            zzmrVar.zzd(i, zzma.zzb(t, iZzd & 1048575));
                        }
                        break;
                    case 6:
                        if (zza((Object) t, length)) {
                            zzmrVar.zzd(i, zzma.zza(t, iZzd & 1048575));
                        }
                        break;
                    case 7:
                        if (zza((Object) t, length)) {
                            zzmrVar.zza(i, zzma.zzc(t, iZzd & 1048575));
                        }
                        break;
                    case 8:
                        if (zza((Object) t, length)) {
                            zza(i, zzma.zzf(t, iZzd & 1048575), zzmrVar);
                        }
                        break;
                    case 9:
                        if (zza((Object) t, length)) {
                            zzmrVar.zza(i, zzma.zzf(t, iZzd & 1048575), zza(length));
                        }
                        break;
                    case 10:
                        if (zza((Object) t, length)) {
                            zzmrVar.zza(i, (zzht) zzma.zzf(t, iZzd & 1048575));
                        }
                        break;
                    case 11:
                        if (zza((Object) t, length)) {
                            zzmrVar.zze(i, zzma.zza(t, iZzd & 1048575));
                        }
                        break;
                    case 12:
                        if (zza((Object) t, length)) {
                            zzmrVar.zzb(i, zzma.zza(t, iZzd & 1048575));
                        }
                        break;
                    case 13:
                        if (zza((Object) t, length)) {
                            zzmrVar.zza(i, zzma.zza(t, iZzd & 1048575));
                        }
                        break;
                    case 14:
                        if (zza((Object) t, length)) {
                            zzmrVar.zzb(i, zzma.zzb(t, iZzd & 1048575));
                        }
                        break;
                    case 15:
                        if (zza((Object) t, length)) {
                            zzmrVar.zzf(i, zzma.zza(t, iZzd & 1048575));
                        }
                        break;
                    case 16:
                        if (zza((Object) t, length)) {
                            zzmrVar.zze(i, zzma.zzb(t, iZzd & 1048575));
                        }
                        break;
                    case 17:
                        if (zza((Object) t, length)) {
                            zzmrVar.zzb(i, zzma.zzf(t, iZzd & 1048575), zza(length));
                        }
                        break;
                    case 18:
                        zzle.zza(this.zzc[length], (List<Double>) zzma.zzf(t, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 19:
                        zzle.zzb(this.zzc[length], (List<Float>) zzma.zzf(t, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 20:
                        zzle.zzc(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 21:
                        zzle.zzd(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 22:
                        zzle.zzh(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 23:
                        zzle.zzf(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 24:
                        zzle.zzk(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 25:
                        zzle.zzn(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 26:
                        zzle.zza(this.zzc[length], (List<String>) zzma.zzf(t, iZzd & 1048575), zzmrVar);
                        break;
                    case 27:
                        zzle.zza(this.zzc[length], (List<?>) zzma.zzf(t, iZzd & 1048575), zzmrVar, zza(length));
                        break;
                    case 28:
                        zzle.zzb(this.zzc[length], (List<zzht>) zzma.zzf(t, iZzd & 1048575), zzmrVar);
                        break;
                    case 29:
                        zzle.zzi(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 30:
                        zzle.zzm(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 31:
                        zzle.zzl(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 32:
                        zzle.zzg(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 33:
                        zzle.zzj(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 34:
                        zzle.zze(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, false);
                        break;
                    case 35:
                        zzle.zza(this.zzc[length], (List<Double>) zzma.zzf(t, iZzd & 1048575), zzmrVar, true);
                        break;
                    case 36:
                        zzle.zzb(this.zzc[length], (List<Float>) zzma.zzf(t, iZzd & 1048575), zzmrVar, true);
                        break;
                    case 37:
                        zzle.zzc(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, true);
                        break;
                    case 38:
                        zzle.zzd(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, true);
                        break;
                    case 39:
                        zzle.zzh(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, true);
                        break;
                    case 40:
                        zzle.zzf(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, true);
                        break;
                    case 41:
                        zzle.zzk(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, true);
                        break;
                    case 42:
                        zzle.zzn(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, true);
                        break;
                    case 43:
                        zzle.zzi(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, true);
                        break;
                    case 44:
                        zzle.zzm(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, true);
                        break;
                    case 45:
                        zzle.zzl(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, true);
                        break;
                    case 46:
                        zzle.zzg(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, true);
                        break;
                    case 47:
                        zzle.zzj(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, true);
                        break;
                    case 48:
                        zzle.zze(this.zzc[length], (List) zzma.zzf(t, iZzd & 1048575), zzmrVar, true);
                        break;
                    case 49:
                        zzle.zzb(this.zzc[length], (List<?>) zzma.zzf(t, iZzd & 1048575), zzmrVar, zza(length));
                        break;
                    case 50:
                        zza(zzmrVar, i, zzma.zzf(t, iZzd & 1048575), length);
                        break;
                    case 51:
                        if (zza(t, i, length)) {
                            zzmrVar.zza(i, zzb(t, iZzd & 1048575));
                        }
                        break;
                    case 52:
                        if (zza(t, i, length)) {
                            zzmrVar.zza(i, zzc(t, iZzd & 1048575));
                        }
                        break;
                    case 53:
                        if (zza(t, i, length)) {
                            zzmrVar.zza(i, zze(t, iZzd & 1048575));
                        }
                        break;
                    case 54:
                        if (zza(t, i, length)) {
                            zzmrVar.zzc(i, zze(t, iZzd & 1048575));
                        }
                        break;
                    case 55:
                        if (zza(t, i, length)) {
                            zzmrVar.zzc(i, zzd(t, iZzd & 1048575));
                        }
                        break;
                    case 56:
                        if (zza(t, i, length)) {
                            zzmrVar.zzd(i, zze(t, iZzd & 1048575));
                        }
                        break;
                    case 57:
                        if (zza(t, i, length)) {
                            zzmrVar.zzd(i, zzd(t, iZzd & 1048575));
                        }
                        break;
                    case 58:
                        if (zza(t, i, length)) {
                            zzmrVar.zza(i, zzf(t, iZzd & 1048575));
                        }
                        break;
                    case 59:
                        if (zza(t, i, length)) {
                            zza(i, zzma.zzf(t, iZzd & 1048575), zzmrVar);
                        }
                        break;
                    case 60:
                        if (zza(t, i, length)) {
                            zzmrVar.zza(i, zzma.zzf(t, iZzd & 1048575), zza(length));
                        }
                        break;
                    case 61:
                        if (zza(t, i, length)) {
                            zzmrVar.zza(i, (zzht) zzma.zzf(t, iZzd & 1048575));
                        }
                        break;
                    case 62:
                        if (zza(t, i, length)) {
                            zzmrVar.zze(i, zzd(t, iZzd & 1048575));
                        }
                        break;
                    case 63:
                        if (zza(t, i, length)) {
                            zzmrVar.zzb(i, zzd(t, iZzd & 1048575));
                        }
                        break;
                    case 64:
                        if (zza(t, i, length)) {
                            zzmrVar.zza(i, zzd(t, iZzd & 1048575));
                        }
                        break;
                    case 65:
                        if (zza(t, i, length)) {
                            zzmrVar.zzb(i, zze(t, iZzd & 1048575));
                        }
                        break;
                    case 66:
                        if (zza(t, i, length)) {
                            zzmrVar.zzf(i, zzd(t, iZzd & 1048575));
                        }
                        break;
                    case 67:
                        if (zza(t, i, length)) {
                            zzmrVar.zze(i, zze(t, iZzd & 1048575));
                        }
                        break;
                    case 68:
                        if (zza(t, i, length)) {
                            zzmrVar.zzb(i, zzma.zzf(t, iZzd & 1048575), zza(length));
                        }
                        break;
                }
            }
            while (entry2 != null) {
                this.zzr.zza(zzmrVar, entry2);
                entry2 = itZze.hasNext() ? (Map.Entry) itZze.next() : null;
            }
            return;
        }
        if (this.zzj) {
            if (this.zzh) {
                zziu<T> zziuVarZza2 = this.zzr.zza(t);
                if (zziuVarZza2.zza.isEmpty()) {
                    itZzd = null;
                    entry = null;
                } else {
                    itZzd = zziuVarZza2.zzd();
                    entry = (Map.Entry) itZzd.next();
                }
            }
            int length2 = this.zzc.length;
            for (int i2 = 0; i2 < length2; i2 += 3) {
                int iZzd2 = zzd(i2);
                int i3 = this.zzc[i2];
                while (entry != null && this.zzr.zza(entry) <= i3) {
                    this.zzr.zza(zzmrVar, entry);
                    entry = itZzd.hasNext() ? (Map.Entry) itZzd.next() : null;
                }
                switch ((iZzd2 & 267386880) >>> 20) {
                    case 0:
                        if (zza((Object) t, i2)) {
                            zzmrVar.zza(i3, zzma.zze(t, iZzd2 & 1048575));
                        }
                        break;
                    case 1:
                        if (zza((Object) t, i2)) {
                            zzmrVar.zza(i3, zzma.zzd(t, iZzd2 & 1048575));
                        }
                        break;
                    case 2:
                        if (zza((Object) t, i2)) {
                            zzmrVar.zza(i3, zzma.zzb(t, iZzd2 & 1048575));
                        }
                        break;
                    case 3:
                        if (zza((Object) t, i2)) {
                            zzmrVar.zzc(i3, zzma.zzb(t, iZzd2 & 1048575));
                        }
                        break;
                    case 4:
                        if (zza((Object) t, i2)) {
                            zzmrVar.zzc(i3, zzma.zza(t, iZzd2 & 1048575));
                        }
                        break;
                    case 5:
                        if (zza((Object) t, i2)) {
                            zzmrVar.zzd(i3, zzma.zzb(t, iZzd2 & 1048575));
                        }
                        break;
                    case 6:
                        if (zza((Object) t, i2)) {
                            zzmrVar.zzd(i3, zzma.zza(t, iZzd2 & 1048575));
                        }
                        break;
                    case 7:
                        if (zza((Object) t, i2)) {
                            zzmrVar.zza(i3, zzma.zzc(t, iZzd2 & 1048575));
                        }
                        break;
                    case 8:
                        if (zza((Object) t, i2)) {
                            zza(i3, zzma.zzf(t, iZzd2 & 1048575), zzmrVar);
                        }
                        break;
                    case 9:
                        if (zza((Object) t, i2)) {
                            zzmrVar.zza(i3, zzma.zzf(t, iZzd2 & 1048575), zza(i2));
                        }
                        break;
                    case 10:
                        if (zza((Object) t, i2)) {
                            zzmrVar.zza(i3, (zzht) zzma.zzf(t, iZzd2 & 1048575));
                        }
                        break;
                    case 11:
                        if (zza((Object) t, i2)) {
                            zzmrVar.zze(i3, zzma.zza(t, iZzd2 & 1048575));
                        }
                        break;
                    case 12:
                        if (zza((Object) t, i2)) {
                            zzmrVar.zzb(i3, zzma.zza(t, iZzd2 & 1048575));
                        }
                        break;
                    case 13:
                        if (zza((Object) t, i2)) {
                            zzmrVar.zza(i3, zzma.zza(t, iZzd2 & 1048575));
                        }
                        break;
                    case 14:
                        if (zza((Object) t, i2)) {
                            zzmrVar.zzb(i3, zzma.zzb(t, iZzd2 & 1048575));
                        }
                        break;
                    case 15:
                        if (zza((Object) t, i2)) {
                            zzmrVar.zzf(i3, zzma.zza(t, iZzd2 & 1048575));
                        }
                        break;
                    case 16:
                        if (zza((Object) t, i2)) {
                            zzmrVar.zze(i3, zzma.zzb(t, iZzd2 & 1048575));
                        }
                        break;
                    case 17:
                        if (zza((Object) t, i2)) {
                            zzmrVar.zzb(i3, zzma.zzf(t, iZzd2 & 1048575), zza(i2));
                        }
                        break;
                    case 18:
                        zzle.zza(this.zzc[i2], (List<Double>) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, false);
                        break;
                    case 19:
                        zzle.zzb(this.zzc[i2], (List<Float>) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, false);
                        break;
                    case 20:
                        zzle.zzc(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, false);
                        break;
                    case 21:
                        zzle.zzd(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, false);
                        break;
                    case 22:
                        zzle.zzh(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, false);
                        break;
                    case 23:
                        zzle.zzf(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, false);
                        break;
                    case 24:
                        zzle.zzk(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, false);
                        break;
                    case 25:
                        zzle.zzn(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, false);
                        break;
                    case 26:
                        zzle.zza(this.zzc[i2], (List<String>) zzma.zzf(t, iZzd2 & 1048575), zzmrVar);
                        break;
                    case 27:
                        zzle.zza(this.zzc[i2], (List<?>) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, zza(i2));
                        break;
                    case 28:
                        zzle.zzb(this.zzc[i2], (List<zzht>) zzma.zzf(t, iZzd2 & 1048575), zzmrVar);
                        break;
                    case 29:
                        zzle.zzi(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, false);
                        break;
                    case 30:
                        zzle.zzm(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, false);
                        break;
                    case 31:
                        zzle.zzl(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, false);
                        break;
                    case 32:
                        zzle.zzg(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, false);
                        break;
                    case 33:
                        zzle.zzj(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, false);
                        break;
                    case 34:
                        zzle.zze(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, false);
                        break;
                    case 35:
                        zzle.zza(this.zzc[i2], (List<Double>) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, true);
                        break;
                    case 36:
                        zzle.zzb(this.zzc[i2], (List<Float>) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, true);
                        break;
                    case 37:
                        zzle.zzc(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, true);
                        break;
                    case 38:
                        zzle.zzd(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, true);
                        break;
                    case 39:
                        zzle.zzh(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, true);
                        break;
                    case 40:
                        zzle.zzf(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, true);
                        break;
                    case 41:
                        zzle.zzk(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, true);
                        break;
                    case 42:
                        zzle.zzn(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, true);
                        break;
                    case 43:
                        zzle.zzi(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, true);
                        break;
                    case 44:
                        zzle.zzm(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, true);
                        break;
                    case 45:
                        zzle.zzl(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, true);
                        break;
                    case 46:
                        zzle.zzg(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, true);
                        break;
                    case 47:
                        zzle.zzj(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, true);
                        break;
                    case 48:
                        zzle.zze(this.zzc[i2], (List) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, true);
                        break;
                    case 49:
                        zzle.zzb(this.zzc[i2], (List<?>) zzma.zzf(t, iZzd2 & 1048575), zzmrVar, zza(i2));
                        break;
                    case 50:
                        zza(zzmrVar, i3, zzma.zzf(t, iZzd2 & 1048575), i2);
                        break;
                    case 51:
                        if (zza(t, i3, i2)) {
                            zzmrVar.zza(i3, zzb(t, iZzd2 & 1048575));
                        }
                        break;
                    case 52:
                        if (zza(t, i3, i2)) {
                            zzmrVar.zza(i3, zzc(t, iZzd2 & 1048575));
                        }
                        break;
                    case 53:
                        if (zza(t, i3, i2)) {
                            zzmrVar.zza(i3, zze(t, iZzd2 & 1048575));
                        }
                        break;
                    case 54:
                        if (zza(t, i3, i2)) {
                            zzmrVar.zzc(i3, zze(t, iZzd2 & 1048575));
                        }
                        break;
                    case 55:
                        if (zza(t, i3, i2)) {
                            zzmrVar.zzc(i3, zzd(t, iZzd2 & 1048575));
                        }
                        break;
                    case 56:
                        if (zza(t, i3, i2)) {
                            zzmrVar.zzd(i3, zze(t, iZzd2 & 1048575));
                        }
                        break;
                    case 57:
                        if (zza(t, i3, i2)) {
                            zzmrVar.zzd(i3, zzd(t, iZzd2 & 1048575));
                        }
                        break;
                    case 58:
                        if (zza(t, i3, i2)) {
                            zzmrVar.zza(i3, zzf(t, iZzd2 & 1048575));
                        }
                        break;
                    case 59:
                        if (zza(t, i3, i2)) {
                            zza(i3, zzma.zzf(t, iZzd2 & 1048575), zzmrVar);
                        }
                        break;
                    case 60:
                        if (zza(t, i3, i2)) {
                            zzmrVar.zza(i3, zzma.zzf(t, iZzd2 & 1048575), zza(i2));
                        }
                        break;
                    case 61:
                        if (zza(t, i3, i2)) {
                            zzmrVar.zza(i3, (zzht) zzma.zzf(t, iZzd2 & 1048575));
                        }
                        break;
                    case 62:
                        if (zza(t, i3, i2)) {
                            zzmrVar.zze(i3, zzd(t, iZzd2 & 1048575));
                        }
                        break;
                    case 63:
                        if (zza(t, i3, i2)) {
                            zzmrVar.zzb(i3, zzd(t, iZzd2 & 1048575));
                        }
                        break;
                    case 64:
                        if (zza(t, i3, i2)) {
                            zzmrVar.zza(i3, zzd(t, iZzd2 & 1048575));
                        }
                        break;
                    case 65:
                        if (zza(t, i3, i2)) {
                            zzmrVar.zzb(i3, zze(t, iZzd2 & 1048575));
                        }
                        break;
                    case 66:
                        if (zza(t, i3, i2)) {
                            zzmrVar.zzf(i3, zzd(t, iZzd2 & 1048575));
                        }
                        break;
                    case 67:
                        if (zza(t, i3, i2)) {
                            zzmrVar.zze(i3, zze(t, iZzd2 & 1048575));
                        }
                        break;
                    case 68:
                        if (zza(t, i3, i2)) {
                            zzmrVar.zzb(i3, zzma.zzf(t, iZzd2 & 1048575), zza(i2));
                        }
                        break;
                }
            }
            while (entry != null) {
                this.zzr.zza(zzmrVar, entry);
                entry = itZzd.hasNext() ? (Map.Entry) itZzd.next() : null;
            }
            zza(this.zzq, t, zzmrVar);
            return;
        }
        zzb((Object) t, zzmrVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzb(T t, zzmr zzmrVar) {
        Iterator itZzd;
        Map.Entry<?, ?> entry;
        int i;
        if (this.zzh) {
            zziu<T> zziuVarZza = this.zzr.zza(t);
            if (zziuVarZza.zza.isEmpty()) {
                itZzd = null;
                entry = null;
            } else {
                itZzd = zziuVarZza.zzd();
                entry = (Map.Entry) itZzd.next();
            }
        }
        int length = this.zzc.length;
        Unsafe unsafe = zzb;
        int i2 = 1048575;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int iZzd = zzd(i4);
            int[] iArr = this.zzc;
            int i5 = iArr[i4];
            int i6 = (iZzd & 267386880) >>> 20;
            if (i6 <= 17) {
                int i7 = iArr[i4 + 2];
                int i8 = i7 & 1048575;
                if (i8 != i2) {
                    i3 = unsafe.getInt(t, i8);
                    i2 = i8;
                }
                i = 1 << (i7 >>> 20);
            } else {
                i = 0;
            }
            while (entry != null && this.zzr.zza(entry) <= i5) {
                this.zzr.zza(zzmrVar, entry);
                entry = itZzd.hasNext() ? (Map.Entry) itZzd.next() : null;
            }
            long j = iZzd & 1048575;
            switch (i6) {
                case 0:
                    if ((i3 & i) != 0) {
                        zzmrVar.zza(i5, zzma.zze(t, j));
                        continue;
                    }
                    break;
                case 1:
                    if ((i3 & i) != 0) {
                        zzmrVar.zza(i5, zzma.zzd(t, j));
                    } else {
                        continue;
                    }
                    break;
                case 2:
                    if ((i3 & i) != 0) {
                        zzmrVar.zza(i5, unsafe.getLong(t, j));
                    } else {
                        continue;
                    }
                    break;
                case 3:
                    if ((i3 & i) != 0) {
                        zzmrVar.zzc(i5, unsafe.getLong(t, j));
                    } else {
                        continue;
                    }
                    break;
                case 4:
                    if ((i3 & i) != 0) {
                        zzmrVar.zzc(i5, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    break;
                case 5:
                    if ((i3 & i) != 0) {
                        zzmrVar.zzd(i5, unsafe.getLong(t, j));
                    } else {
                        continue;
                    }
                    break;
                case 6:
                    if ((i3 & i) != 0) {
                        zzmrVar.zzd(i5, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    break;
                case 7:
                    if ((i3 & i) != 0) {
                        zzmrVar.zza(i5, zzma.zzc(t, j));
                    } else {
                        continue;
                    }
                    break;
                case 8:
                    if ((i3 & i) != 0) {
                        zza(i5, unsafe.getObject(t, j), zzmrVar);
                    } else {
                        continue;
                    }
                    break;
                case 9:
                    if ((i3 & i) != 0) {
                        zzmrVar.zza(i5, unsafe.getObject(t, j), zza(i4));
                    } else {
                        continue;
                    }
                    break;
                case 10:
                    if ((i3 & i) != 0) {
                        zzmrVar.zza(i5, (zzht) unsafe.getObject(t, j));
                    } else {
                        continue;
                    }
                    break;
                case 11:
                    if ((i3 & i) != 0) {
                        zzmrVar.zze(i5, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    break;
                case 12:
                    if ((i3 & i) != 0) {
                        zzmrVar.zzb(i5, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    break;
                case 13:
                    if ((i3 & i) != 0) {
                        zzmrVar.zza(i5, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    break;
                case 14:
                    if ((i3 & i) != 0) {
                        zzmrVar.zzb(i5, unsafe.getLong(t, j));
                    } else {
                        continue;
                    }
                    break;
                case 15:
                    if ((i3 & i) != 0) {
                        zzmrVar.zzf(i5, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    break;
                case 16:
                    if ((i3 & i) != 0) {
                        zzmrVar.zze(i5, unsafe.getLong(t, j));
                    } else {
                        continue;
                    }
                    break;
                case 17:
                    if ((i3 & i) != 0) {
                        zzmrVar.zzb(i5, unsafe.getObject(t, j), zza(i4));
                    } else {
                        continue;
                    }
                    break;
                case 18:
                    zzle.zza(this.zzc[i4], (List<Double>) unsafe.getObject(t, j), zzmrVar, false);
                    continue;
                    break;
                case 19:
                    zzle.zzb(this.zzc[i4], (List<Float>) unsafe.getObject(t, j), zzmrVar, false);
                    continue;
                    break;
                case 20:
                    zzle.zzc(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, false);
                    continue;
                    break;
                case 21:
                    zzle.zzd(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, false);
                    continue;
                    break;
                case 22:
                    zzle.zzh(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, false);
                    continue;
                    break;
                case 23:
                    zzle.zzf(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, false);
                    continue;
                    break;
                case 24:
                    zzle.zzk(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, false);
                    continue;
                    break;
                case 25:
                    zzle.zzn(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, false);
                    continue;
                    break;
                case 26:
                    zzle.zza(this.zzc[i4], (List<String>) unsafe.getObject(t, j), zzmrVar);
                    break;
                case 27:
                    zzle.zza(this.zzc[i4], (List<?>) unsafe.getObject(t, j), zzmrVar, zza(i4));
                    break;
                case 28:
                    zzle.zzb(this.zzc[i4], (List<zzht>) unsafe.getObject(t, j), zzmrVar);
                    break;
                case 29:
                    zzle.zzi(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, false);
                    continue;
                    break;
                case 30:
                    zzle.zzm(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, false);
                    continue;
                    break;
                case 31:
                    zzle.zzl(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, false);
                    continue;
                    break;
                case 32:
                    zzle.zzg(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, false);
                    continue;
                    break;
                case 33:
                    zzle.zzj(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, false);
                    continue;
                    break;
                case 34:
                    zzle.zze(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, false);
                    continue;
                    break;
                case 35:
                    zzle.zza(this.zzc[i4], (List<Double>) unsafe.getObject(t, j), zzmrVar, true);
                    break;
                case 36:
                    zzle.zzb(this.zzc[i4], (List<Float>) unsafe.getObject(t, j), zzmrVar, true);
                    break;
                case 37:
                    zzle.zzc(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, true);
                    break;
                case 38:
                    zzle.zzd(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, true);
                    break;
                case 39:
                    zzle.zzh(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, true);
                    break;
                case 40:
                    zzle.zzf(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, true);
                    break;
                case 41:
                    zzle.zzk(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, true);
                    break;
                case 42:
                    zzle.zzn(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, true);
                    break;
                case 43:
                    zzle.zzi(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, true);
                    break;
                case 44:
                    zzle.zzm(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, true);
                    break;
                case 45:
                    zzle.zzl(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, true);
                    break;
                case 46:
                    zzle.zzg(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, true);
                    break;
                case 47:
                    zzle.zzj(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, true);
                    break;
                case 48:
                    zzle.zze(this.zzc[i4], (List) unsafe.getObject(t, j), zzmrVar, true);
                    break;
                case 49:
                    zzle.zzb(this.zzc[i4], (List<?>) unsafe.getObject(t, j), zzmrVar, zza(i4));
                    break;
                case 50:
                    zza(zzmrVar, i5, unsafe.getObject(t, j), i4);
                    break;
                case 51:
                    if (zza(t, i5, i4)) {
                        zzmrVar.zza(i5, zzb(t, j));
                    }
                    break;
                case 52:
                    if (zza(t, i5, i4)) {
                        zzmrVar.zza(i5, zzc(t, j));
                    }
                    break;
                case 53:
                    if (zza(t, i5, i4)) {
                        zzmrVar.zza(i5, zze(t, j));
                    }
                    break;
                case 54:
                    if (zza(t, i5, i4)) {
                        zzmrVar.zzc(i5, zze(t, j));
                    }
                    break;
                case 55:
                    if (zza(t, i5, i4)) {
                        zzmrVar.zzc(i5, zzd(t, j));
                    }
                    break;
                case 56:
                    if (zza(t, i5, i4)) {
                        zzmrVar.zzd(i5, zze(t, j));
                    }
                    break;
                case 57:
                    if (zza(t, i5, i4)) {
                        zzmrVar.zzd(i5, zzd(t, j));
                    }
                    break;
                case 58:
                    if (zza(t, i5, i4)) {
                        zzmrVar.zza(i5, zzf(t, j));
                    }
                    break;
                case 59:
                    if (zza(t, i5, i4)) {
                        zza(i5, unsafe.getObject(t, j), zzmrVar);
                    }
                    break;
                case 60:
                    if (zza(t, i5, i4)) {
                        zzmrVar.zza(i5, unsafe.getObject(t, j), zza(i4));
                    }
                    break;
                case 61:
                    if (zza(t, i5, i4)) {
                        zzmrVar.zza(i5, (zzht) unsafe.getObject(t, j));
                    }
                    break;
                case 62:
                    if (zza(t, i5, i4)) {
                        zzmrVar.zze(i5, zzd(t, j));
                    }
                    break;
                case 63:
                    if (zza(t, i5, i4)) {
                        zzmrVar.zzb(i5, zzd(t, j));
                    }
                    break;
                case 64:
                    if (zza(t, i5, i4)) {
                        zzmrVar.zza(i5, zzd(t, j));
                    }
                    break;
                case 65:
                    if (zza(t, i5, i4)) {
                        zzmrVar.zzb(i5, zze(t, j));
                    }
                    break;
                case 66:
                    if (zza(t, i5, i4)) {
                        zzmrVar.zzf(i5, zzd(t, j));
                    }
                    break;
                case 67:
                    if (zza(t, i5, i4)) {
                        zzmrVar.zze(i5, zze(t, j));
                    }
                    break;
                case 68:
                    if (zza(t, i5, i4)) {
                        zzmrVar.zzb(i5, unsafe.getObject(t, j), zza(i4));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.zzr.zza(zzmrVar, entry);
            entry = itZzd.hasNext() ? (Map.Entry) itZzd.next() : null;
        }
        zza(this.zzq, t, zzmrVar);
    }

    private final <K, V> void zza(zzmr zzmrVar, int i, Object obj, int i2) {
        if (obj != null) {
            this.zzs.zzb(zzb(i2));
            zzmrVar.zza(i, (zzkf) null, this.zzs.zzc(obj));
        }
    }

    private static <UT, UB> void zza(zzlu<UT, UB> zzluVar, T t, zzmr zzmrVar) {
        zzluVar.zza(zzluVar.zzb(t), zzmrVar);
    }

    private static zzlx zze(Object obj) {
        zzjb zzjbVar = (zzjb) obj;
        zzlx zzlxVar = zzjbVar.zzb;
        if (zzlxVar != zzlx.zza()) {
            return zzlxVar;
        }
        zzlx zzlxVarZzb = zzlx.zzb();
        zzjbVar.zzb = zzlxVarZzb;
        return zzlxVarZzb;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    private final int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, zzhn zzhnVar) throws zzjk {
        int iZza;
        Unsafe unsafe = zzb;
        zzjl zzjlVarZza = (zzjl) unsafe.getObject(t, j2);
        if (!zzjlVarZza.zza()) {
            int size = zzjlVarZza.size();
            zzjlVarZza = zzjlVarZza.zza(size == 0 ? 10 : size << 1);
            unsafe.putObject(t, j2, zzjlVarZza);
        }
        zzjl zzjlVar = zzjlVarZza;
        switch (i7) {
            case 18:
            case 35:
                if (i5 != 2) {
                    if (i5 == 1) {
                        zzhl.zzc(bArr, i);
                        throw null;
                    }
                    return i;
                }
                int iZza2 = zzhl.zza(bArr, i, zzhnVar);
                int i8 = zzhnVar.zza + iZza2;
                if (iZza2 < i8) {
                    zzhl.zzc(bArr, iZza2);
                    throw null;
                }
                if (iZza2 == i8) {
                    return iZza2;
                }
                throw zzjk.zza();
            case 19:
            case 36:
                if (i5 != 2) {
                    if (i5 == 5) {
                        zzhl.zzd(bArr, i);
                        throw null;
                    }
                    return i;
                }
                int iZza3 = zzhl.zza(bArr, i, zzhnVar);
                int i9 = zzhnVar.zza + iZza3;
                if (iZza3 < i9) {
                    zzhl.zzd(bArr, iZza3);
                    throw null;
                }
                if (iZza3 == i9) {
                    return iZza3;
                }
                throw zzjk.zza();
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 != 2) {
                    if (i5 == 0) {
                        zzhl.zzb(bArr, i, zzhnVar);
                        long j3 = zzhnVar.zzb;
                        throw null;
                    }
                    return i;
                }
                int iZza4 = zzhl.zza(bArr, i, zzhnVar);
                int i10 = zzhnVar.zza + iZza4;
                if (iZza4 < i10) {
                    zzhl.zzb(bArr, iZza4, zzhnVar);
                    throw null;
                }
                if (iZza4 == i10) {
                    return iZza4;
                }
                throw zzjk.zza();
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return zzhl.zza(bArr, i, (zzjl<?>) zzjlVar, zzhnVar);
                }
                if (i5 == 0) {
                    return zzhl.zza(i3, bArr, i, i2, (zzjl<?>) zzjlVar, zzhnVar);
                }
                return i;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 != 2) {
                    if (i5 == 1) {
                        zzhl.zzb(bArr, i);
                        throw null;
                    }
                    return i;
                }
                int iZza5 = zzhl.zza(bArr, i, zzhnVar);
                int i11 = zzhnVar.zza + iZza5;
                if (iZza5 < i11) {
                    zzhl.zzb(bArr, iZza5);
                    throw null;
                }
                if (iZza5 == i11) {
                    return iZza5;
                }
                throw zzjk.zza();
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    zzjd zzjdVar = (zzjd) zzjlVar;
                    int iZza6 = zzhl.zza(bArr, i, zzhnVar);
                    int i12 = zzhnVar.zza + iZza6;
                    while (iZza6 < i12) {
                        zzjdVar.zzc(zzhl.zza(bArr, iZza6));
                        iZza6 += 4;
                    }
                    if (iZza6 == i12) {
                        return iZza6;
                    }
                    throw zzjk.zza();
                }
                if (i5 == 5) {
                    zzjd zzjdVar2 = (zzjd) zzjlVar;
                    zzjdVar2.zzc(zzhl.zza(bArr, i));
                    int i13 = i + 4;
                    while (i13 < i2) {
                        int iZza7 = zzhl.zza(bArr, i13, zzhnVar);
                        if (i3 != zzhnVar.zza) {
                            return i13;
                        }
                        zzjdVar2.zzc(zzhl.zza(bArr, iZza7));
                        i13 = iZza7 + 4;
                    }
                    return i13;
                }
                return i;
            case 25:
            case 42:
                if (i5 != 2) {
                    if (i5 == 0) {
                        zzhl.zzb(bArr, i, zzhnVar);
                        long j4 = zzhnVar.zzb;
                        throw null;
                    }
                    return i;
                }
                int iZza8 = zzhl.zza(bArr, i, zzhnVar);
                int i14 = zzhnVar.zza + iZza8;
                if (iZza8 < i14) {
                    zzhl.zzb(bArr, iZza8, zzhnVar);
                    throw null;
                }
                if (iZza8 == i14) {
                    return iZza8;
                }
                throw zzjk.zza();
            case 26:
                if (i5 == 2) {
                    if ((j & 536870912) == 0) {
                        int iZza9 = zzhl.zza(bArr, i, zzhnVar);
                        int i15 = zzhnVar.zza;
                        if (i15 < 0) {
                            throw zzjk.zzb();
                        }
                        if (i15 == 0) {
                            zzjlVar.add(_UrlKt.FRAGMENT_ENCODE_SET);
                        } else {
                            zzjlVar.add(new String(bArr, iZza9, i15, zzjf.zza));
                            iZza9 += i15;
                        }
                        while (iZza9 < i2) {
                            int iZza10 = zzhl.zza(bArr, iZza9, zzhnVar);
                            if (i3 != zzhnVar.zza) {
                                return iZza9;
                            }
                            iZza9 = zzhl.zza(bArr, iZza10, zzhnVar);
                            int i16 = zzhnVar.zza;
                            if (i16 < 0) {
                                throw zzjk.zzb();
                            }
                            if (i16 == 0) {
                                zzjlVar.add(_UrlKt.FRAGMENT_ENCODE_SET);
                            } else {
                                zzjlVar.add(new String(bArr, iZza9, i16, zzjf.zza));
                                iZza9 += i16;
                            }
                        }
                        return iZza9;
                    }
                    int iZza11 = zzhl.zza(bArr, i, zzhnVar);
                    int i17 = zzhnVar.zza;
                    if (i17 < 0) {
                        throw zzjk.zzb();
                    }
                    if (i17 == 0) {
                        zzjlVar.add(_UrlKt.FRAGMENT_ENCODE_SET);
                    } else {
                        int i18 = iZza11 + i17;
                        if (!zzmd.zza(bArr, iZza11, i18)) {
                            throw zzjk.zzh();
                        }
                        zzjlVar.add(new String(bArr, iZza11, i17, zzjf.zza));
                        iZza11 = i18;
                    }
                    while (iZza11 < i2) {
                        int iZza12 = zzhl.zza(bArr, iZza11, zzhnVar);
                        if (i3 != zzhnVar.zza) {
                            return iZza11;
                        }
                        iZza11 = zzhl.zza(bArr, iZza12, zzhnVar);
                        int i19 = zzhnVar.zza;
                        if (i19 < 0) {
                            throw zzjk.zzb();
                        }
                        if (i19 == 0) {
                            zzjlVar.add(_UrlKt.FRAGMENT_ENCODE_SET);
                        } else {
                            int i20 = iZza11 + i19;
                            if (!zzmd.zza(bArr, iZza11, i20)) {
                                throw zzjk.zzh();
                            }
                            zzjlVar.add(new String(bArr, iZza11, i19, zzjf.zza));
                            iZza11 = i20;
                        }
                    }
                    return iZza11;
                }
                return i;
            case 27:
                if (i5 == 2) {
                    return zzhl.zza(zza(i6), i3, bArr, i, i2, zzjlVar, zzhnVar);
                }
                return i;
            case 28:
                if (i5 == 2) {
                    int iZza13 = zzhl.zza(bArr, i, zzhnVar);
                    int i21 = zzhnVar.zza;
                    if (i21 < 0) {
                        throw zzjk.zzb();
                    }
                    if (i21 > bArr.length - iZza13) {
                        throw zzjk.zza();
                    }
                    if (i21 == 0) {
                        zzjlVar.add(zzht.zza);
                    } else {
                        zzjlVar.add(zzht.zza(bArr, iZza13, i21));
                        iZza13 += i21;
                    }
                    while (iZza13 < i2) {
                        int iZza14 = zzhl.zza(bArr, iZza13, zzhnVar);
                        if (i3 != zzhnVar.zza) {
                            return iZza13;
                        }
                        iZza13 = zzhl.zza(bArr, iZza14, zzhnVar);
                        int i22 = zzhnVar.zza;
                        if (i22 < 0) {
                            throw zzjk.zzb();
                        }
                        if (i22 > bArr.length - iZza13) {
                            throw zzjk.zza();
                        }
                        if (i22 == 0) {
                            zzjlVar.add(zzht.zza);
                        } else {
                            zzjlVar.add(zzht.zza(bArr, iZza13, i22));
                            iZza13 += i22;
                        }
                    }
                    return iZza13;
                }
                return i;
            case 30:
            case 44:
                if (i5 != 2) {
                    if (i5 == 0) {
                        iZza = zzhl.zza(i3, bArr, i, i2, (zzjl<?>) zzjlVar, zzhnVar);
                    }
                    return i;
                }
                iZza = zzhl.zza(bArr, i, (zzjl<?>) zzjlVar, zzhnVar);
                zzjb zzjbVar = (zzjb) t;
                zzlx zzlxVar = zzjbVar.zzb;
                zzlx zzlxVar2 = (zzlx) zzle.zza(i4, zzjlVar, zzc(i6), zzlxVar != zzlx.zza() ? zzlxVar : null, this.zzq);
                if (zzlxVar2 != null) {
                    zzjbVar.zzb = zzlxVar2;
                }
                return iZza;
            case 33:
            case 47:
                if (i5 == 2) {
                    zzjd zzjdVar3 = (zzjd) zzjlVar;
                    int iZza15 = zzhl.zza(bArr, i, zzhnVar);
                    int i23 = zzhnVar.zza + iZza15;
                    while (iZza15 < i23) {
                        iZza15 = zzhl.zza(bArr, iZza15, zzhnVar);
                        zzjdVar3.zzc(zzif.zze(zzhnVar.zza));
                    }
                    if (iZza15 == i23) {
                        return iZza15;
                    }
                    throw zzjk.zza();
                }
                if (i5 == 0) {
                    zzjd zzjdVar4 = (zzjd) zzjlVar;
                    int iZza16 = zzhl.zza(bArr, i, zzhnVar);
                    zzjdVar4.zzc(zzif.zze(zzhnVar.zza));
                    while (iZza16 < i2) {
                        int iZza17 = zzhl.zza(bArr, iZza16, zzhnVar);
                        if (i3 != zzhnVar.zza) {
                            return iZza16;
                        }
                        iZza16 = zzhl.zza(bArr, iZza17, zzhnVar);
                        zzjdVar4.zzc(zzif.zze(zzhnVar.zza));
                    }
                    return iZza16;
                }
                return i;
            case 34:
            case 48:
                if (i5 != 2) {
                    if (i5 == 0) {
                        zzhl.zzb(bArr, i, zzhnVar);
                        zzif.zza(zzhnVar.zzb);
                        throw null;
                    }
                    return i;
                }
                int iZza18 = zzhl.zza(bArr, i, zzhnVar);
                int i24 = zzhnVar.zza + iZza18;
                if (iZza18 >= i24) {
                    if (iZza18 == i24) {
                        return iZza18;
                    }
                    throw zzjk.zza();
                }
                zzhl.zzb(bArr, iZza18, zzhnVar);
                zzif.zza(zzhnVar.zzb);
                throw null;
            case 49:
                if (i5 == 3) {
                    zzlc zzlcVarZza = zza(i6);
                    int i25 = (i3 & (-8)) | 4;
                    int iZza19 = zzhl.zza(zzlcVarZza, bArr, i, i2, i25, zzhnVar);
                    zzhn zzhnVar2 = zzhnVar;
                    zzjlVar.add(zzhnVar2.zzc);
                    while (iZza19 < i2) {
                        int iZza20 = zzhl.zza(bArr, iZza19, zzhnVar2);
                        if (i3 != zzhnVar2.zza) {
                            return iZza19;
                        }
                        zzhn zzhnVar3 = zzhnVar2;
                        iZza19 = zzhl.zza(zzlcVarZza, bArr, iZza20, i2, i25, zzhnVar3);
                        zzjlVar.add(zzhnVar3.zzc);
                        zzhnVar2 = zzhnVar3;
                    }
                    return iZza19;
                }
                return i;
            default:
                return i;
        }
    }

    private final <K, V> int zza(T t, byte[] bArr, int i, int i2, int i3, long j, zzhn zzhnVar) throws zzjk {
        Unsafe unsafe = zzb;
        Object objZzb = zzb(i3);
        Object object = unsafe.getObject(t, j);
        if (this.zzs.zzd(object)) {
            Object objZzf = this.zzs.zzf(objZzb);
            this.zzs.zza(objZzf, object);
            unsafe.putObject(t, j, objZzf);
            object = objZzf;
        }
        this.zzs.zzb(objZzb);
        this.zzs.zza(object);
        int iZza = zzhl.zza(bArr, i, zzhnVar);
        int i4 = zzhnVar.zza;
        if (i4 < 0 || i4 > i2 - iZza) {
            throw zzjk.zza();
        }
        throw null;
    }

    private final int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzhn zzhnVar) throws zzjk {
        int i9;
        int i10;
        int iZzb;
        Object object;
        Unsafe unsafe = zzb;
        long j2 = this.zzc[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                i9 = i;
                if (i5 != 1) {
                    return i9;
                }
                unsafe.putObject(t, j, Double.valueOf(zzhl.zzc(bArr, i)));
                iZzb = i9 + 8;
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 52:
                i10 = i;
                if (i5 != 5) {
                    return i10;
                }
                unsafe.putObject(t, j, Float.valueOf(zzhl.zzd(bArr, i)));
                iZzb = i10 + 4;
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 53:
            case 54:
                if (i5 != 0) {
                    return i;
                }
                iZzb = zzhl.zzb(bArr, i, zzhnVar);
                unsafe.putObject(t, j, Long.valueOf(zzhnVar.zzb));
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 55:
            case 62:
                if (i5 != 0) {
                    return i;
                }
                iZzb = zzhl.zza(bArr, i, zzhnVar);
                unsafe.putObject(t, j, Integer.valueOf(zzhnVar.zza));
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 56:
            case 65:
                i9 = i;
                if (i5 != 1) {
                    return i9;
                }
                unsafe.putObject(t, j, Long.valueOf(zzhl.zzb(bArr, i)));
                iZzb = i9 + 8;
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 57:
            case 64:
                i10 = i;
                if (i5 != 5) {
                    return i10;
                }
                unsafe.putObject(t, j, Integer.valueOf(zzhl.zza(bArr, i)));
                iZzb = i10 + 4;
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 58:
                if (i5 != 0) {
                    return i;
                }
                iZzb = zzhl.zzb(bArr, i, zzhnVar);
                unsafe.putObject(t, j, Boolean.valueOf(zzhnVar.zzb != 0));
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 59:
                if (i5 != 2) {
                    return i;
                }
                int iZza = zzhl.zza(bArr, i, zzhnVar);
                int i11 = zzhnVar.zza;
                if (i11 == 0) {
                    unsafe.putObject(t, j, _UrlKt.FRAGMENT_ENCODE_SET);
                } else {
                    if ((i6 & 536870912) != 0 && !zzmd.zza(bArr, iZza, iZza + i11)) {
                        throw zzjk.zzh();
                    }
                    unsafe.putObject(t, j, new String(bArr, iZza, i11, zzjf.zza));
                    iZza += i11;
                }
                unsafe.putInt(t, j2, i4);
                return iZza;
            case 60:
                if (i5 != 2) {
                    return i;
                }
                int iZza2 = zzhl.zza(zza(i8), bArr, i, i2, zzhnVar);
                object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                if (object == null) {
                    unsafe.putObject(t, j, zzhnVar.zzc);
                } else {
                    unsafe.putObject(t, j, zzjf.zza(object, zzhnVar.zzc));
                }
                unsafe.putInt(t, j2, i4);
                return iZza2;
            case 61:
                if (i5 != 2) {
                    return i;
                }
                iZzb = zzhl.zze(bArr, i, zzhnVar);
                unsafe.putObject(t, j, zzhnVar.zzc);
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 63:
                if (i5 != 0) {
                    return i;
                }
                int iZza3 = zzhl.zza(bArr, i, zzhnVar);
                int i12 = zzhnVar.zza;
                zzjg zzjgVarZzc = zzc(i8);
                if (zzjgVarZzc == null || zzjgVarZzc.zza(i12)) {
                    unsafe.putObject(t, j, Integer.valueOf(i12));
                    iZzb = iZza3;
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
                zze(t).zza(i3, Long.valueOf(i12));
                return iZza3;
            case 66:
                if (i5 != 0) {
                    return i;
                }
                iZzb = zzhl.zza(bArr, i, zzhnVar);
                unsafe.putObject(t, j, Integer.valueOf(zzif.zze(zzhnVar.zza)));
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 67:
                if (i5 != 0) {
                    return i;
                }
                iZzb = zzhl.zzb(bArr, i, zzhnVar);
                unsafe.putObject(t, j, Long.valueOf(zzif.zza(zzhnVar.zzb)));
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 68:
                if (i5 == 3) {
                    iZzb = zzhl.zza(zza(i8), bArr, i, i2, (i3 & (-8)) | 4, zzhnVar);
                    object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, zzhnVar.zzc);
                    } else {
                        unsafe.putObject(t, j, zzjf.zza(object, zzhnVar.zzc));
                    }
                    unsafe.putInt(t, j2, i4);
                    return iZzb;
                }
            default:
                return i;
        }
    }

    private final zzlc zza(int i) {
        int i2 = (i / 3) << 1;
        zzlc zzlcVar = (zzlc) this.zzd[i2];
        if (zzlcVar != null) {
            return zzlcVar;
        }
        zzlc<T> zzlcVarZza = zzky.zza().zza((Class) this.zzd[i2 + 1]);
        this.zzd[i2] = zzlcVarZza;
        return zzlcVarZza;
    }

    private final Object zzb(int i) {
        return this.zzd[(i / 3) << 1];
    }

    private final zzjg zzc(int i) {
        return (zzjg) this.zzd[((i / 3) << 1) + 1];
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:23:0x008b. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:139:0x03ec A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x03f8  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0423  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zza(T t, byte[] bArr, int i, int i2, int i3, zzhn zzhnVar) throws zzjk {
        int i4;
        zzko<T> zzkoVar;
        T t2;
        Unsafe unsafe;
        int i5;
        int iZzg;
        int i6;
        int i7;
        int i8;
        zzhn zzhnVar2;
        Unsafe unsafe2;
        int i9;
        int i10;
        byte[] bArr2;
        Unsafe unsafe3;
        byte[] bArr3;
        int i11;
        int i12;
        Unsafe unsafe4;
        int iZzd;
        byte[] bArr4;
        int i13;
        int i14;
        int iZza;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        zzko<T> zzkoVar2 = this;
        T t3 = t;
        byte[] bArr5 = bArr;
        int i20 = i2;
        zzhn zzhnVar3 = zzhnVar;
        Unsafe unsafe5 = zzb;
        int i21 = -1;
        int i22 = i;
        int i23 = -1;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        int i27 = 1048575;
        while (true) {
            if (i22 < i20) {
                int iZza2 = i22 + 1;
                int i28 = bArr5[i22];
                if (i28 < 0) {
                    iZza2 = zzhl.zza(i28, bArr5, iZza2, zzhnVar3);
                    i28 = zzhnVar3.zza;
                }
                int i29 = iZza2;
                i26 = i28;
                int i30 = (i26 == true ? 1 : 0) >>> 3;
                int i31 = i24;
                int i32 = (i26 == true ? 1 : 0) & 7;
                if (i30 > i23) {
                    iZzg = zzkoVar2.zza(i30, i31 / 3);
                } else {
                    iZzg = zzkoVar2.zzg(i30);
                }
                if (iZzg == i21) {
                    zzkoVar = zzkoVar2;
                    i6 = i29;
                    unsafe = unsafe5;
                    i7 = i21;
                    i23 = i30;
                    i24 = 0;
                    i5 = 1048575;
                    i4 = i3;
                } else {
                    int[] iArr = zzkoVar2.zzc;
                    int i33 = iArr[iZzg + 1];
                    int i34 = (i33 & 267386880) >>> 20;
                    long j = i33 & 1048575;
                    if (i34 <= 17) {
                        int i35 = iArr[iZzg + 2];
                        int i36 = 1 << (i35 >>> 20);
                        int i37 = i35 & 1048575;
                        if (i37 != i27) {
                            if (i27 != 1048575) {
                                unsafe5.putInt(t3, i27, i25);
                            }
                            i27 = i37;
                            i25 = unsafe5.getInt(t3, i37);
                        }
                        switch (i34) {
                            case 0:
                                i8 = iZzg;
                                unsafe2 = unsafe5;
                                i9 = i29;
                                i10 = i2;
                                bArr2 = bArr;
                                zzhnVar2 = zzhnVar3;
                                if (i32 == 1) {
                                    zzma.zza(t3, j, zzhl.zzc(bArr2, i9));
                                    i22 = i9 + 8;
                                    i25 |= i36;
                                    int i38 = i10;
                                    unsafe5 = unsafe2;
                                    i20 = i38;
                                    i24 = i8;
                                    zzhnVar3 = zzhnVar2;
                                    bArr5 = bArr2;
                                    i23 = i30;
                                    i21 = -1;
                                } else {
                                    unsafe = unsafe2;
                                    i6 = i9;
                                    i24 = i8;
                                    zzhnVar3 = zzhnVar2;
                                    i23 = i30;
                                    i5 = 1048575;
                                    i7 = -1;
                                    i4 = i3;
                                    zzkoVar = zzkoVar2;
                                }
                                break;
                            case 1:
                                i8 = iZzg;
                                unsafe2 = unsafe5;
                                i9 = i29;
                                i10 = i2;
                                bArr2 = bArr;
                                zzhnVar2 = zzhnVar3;
                                if (i32 == 5) {
                                    zzma.zza((Object) t3, j, zzhl.zzd(bArr2, i9));
                                    i22 = i9 + 4;
                                    i25 |= i36;
                                    int i382 = i10;
                                    unsafe5 = unsafe2;
                                    i20 = i382;
                                    i24 = i8;
                                    zzhnVar3 = zzhnVar2;
                                    bArr5 = bArr2;
                                    i23 = i30;
                                    i21 = -1;
                                } else {
                                    unsafe = unsafe2;
                                    i6 = i9;
                                    i24 = i8;
                                    zzhnVar3 = zzhnVar2;
                                    i23 = i30;
                                    i5 = 1048575;
                                    i7 = -1;
                                    i4 = i3;
                                    zzkoVar = zzkoVar2;
                                }
                                break;
                            case 2:
                            case 3:
                                i8 = iZzg;
                                unsafe3 = unsafe5;
                                i9 = i29;
                                bArr2 = bArr;
                                zzhnVar2 = zzhnVar3;
                                if (i32 == 0) {
                                    int iZzb = zzhl.zzb(bArr2, i9, zzhnVar2);
                                    unsafe3.putLong(t, j, zzhnVar2.zzb);
                                    t3 = t;
                                    i25 |= i36;
                                    unsafe5 = unsafe3;
                                    i20 = i2;
                                    i22 = iZzb;
                                    i24 = i8;
                                    zzhnVar3 = zzhnVar2;
                                    bArr5 = bArr2;
                                    i23 = i30;
                                    i21 = -1;
                                } else {
                                    unsafe2 = unsafe3;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                    i24 = i8;
                                    zzhnVar3 = zzhnVar2;
                                    i23 = i30;
                                    i5 = 1048575;
                                    i7 = -1;
                                    i4 = i3;
                                    zzkoVar = zzkoVar2;
                                }
                                break;
                            case 4:
                            case 11:
                                i8 = iZzg;
                                unsafe3 = unsafe5;
                                i9 = i29;
                                bArr3 = bArr;
                                i11 = i2;
                                zzhnVar2 = zzhnVar3;
                                if (i32 == 0) {
                                    int iZza3 = zzhl.zza(bArr3, i9, zzhnVar2);
                                    unsafe3.putInt(t3, j, zzhnVar2.zza);
                                    i25 |= i36;
                                    i22 = iZza3;
                                    i20 = i11;
                                    i24 = i8;
                                    zzhnVar3 = zzhnVar2;
                                    bArr5 = bArr3;
                                    i21 = -1;
                                    unsafe5 = unsafe3;
                                    i23 = i30;
                                } else {
                                    unsafe2 = unsafe3;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                    i24 = i8;
                                    zzhnVar3 = zzhnVar2;
                                    i23 = i30;
                                    i5 = 1048575;
                                    i7 = -1;
                                    i4 = i3;
                                    zzkoVar = zzkoVar2;
                                }
                                break;
                            case 5:
                            case 14:
                                i8 = iZzg;
                                unsafe3 = unsafe5;
                                i12 = i29;
                                i11 = i2;
                                bArr3 = bArr;
                                zzhnVar2 = zzhnVar3;
                                if (i32 == 1) {
                                    unsafe3.putLong(t, j, zzhl.zzb(bArr3, i12));
                                    unsafe3 = unsafe3;
                                    t3 = t;
                                    i22 = i12 + 8;
                                    i25 |= i36;
                                    i20 = i11;
                                    i24 = i8;
                                    zzhnVar3 = zzhnVar2;
                                    bArr5 = bArr3;
                                    i21 = -1;
                                    unsafe5 = unsafe3;
                                    i23 = i30;
                                } else {
                                    i9 = i12;
                                    unsafe2 = unsafe3;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                    i24 = i8;
                                    zzhnVar3 = zzhnVar2;
                                    i23 = i30;
                                    i5 = 1048575;
                                    i7 = -1;
                                    i4 = i3;
                                    zzkoVar = zzkoVar2;
                                }
                                break;
                            case 6:
                            case 13:
                                zzhnVar2 = zzhnVar3;
                                bArr3 = bArr;
                                i8 = iZzg;
                                unsafe3 = unsafe5;
                                i12 = i29;
                                i11 = i2;
                                if (i32 == 5) {
                                    unsafe3.putInt(t3, j, zzhl.zza(bArr3, i12));
                                    i22 = i12 + 4;
                                    i25 |= i36;
                                    i20 = i11;
                                    i24 = i8;
                                    zzhnVar3 = zzhnVar2;
                                    bArr5 = bArr3;
                                    i21 = -1;
                                    unsafe5 = unsafe3;
                                    i23 = i30;
                                } else {
                                    i9 = i12;
                                    unsafe2 = unsafe3;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                    i24 = i8;
                                    zzhnVar3 = zzhnVar2;
                                    i23 = i30;
                                    i5 = 1048575;
                                    i7 = -1;
                                    i4 = i3;
                                    zzkoVar = zzkoVar2;
                                }
                                break;
                            case 7:
                                zzhnVar2 = zzhnVar3;
                                bArr3 = bArr;
                                i8 = iZzg;
                                unsafe3 = unsafe5;
                                i12 = i29;
                                i11 = i2;
                                if (i32 == 0) {
                                    int iZzb2 = zzhl.zzb(bArr3, i12, zzhnVar2);
                                    zzma.zza(t3, j, zzhnVar2.zzb != 0);
                                    i25 |= i36;
                                    i22 = iZzb2;
                                    i20 = i11;
                                    i24 = i8;
                                    zzhnVar3 = zzhnVar2;
                                    bArr5 = bArr3;
                                    i21 = -1;
                                    unsafe5 = unsafe3;
                                    i23 = i30;
                                } else {
                                    i9 = i12;
                                    unsafe2 = unsafe3;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                    i24 = i8;
                                    zzhnVar3 = zzhnVar2;
                                    i23 = i30;
                                    i5 = 1048575;
                                    i7 = -1;
                                    i4 = i3;
                                    zzkoVar = zzkoVar2;
                                }
                                break;
                            case 8:
                                i8 = iZzg;
                                zzhnVar2 = zzhnVar3;
                                unsafe4 = unsafe5;
                                if (i32 == 2) {
                                    if ((536870912 & i33) == 0) {
                                        iZzd = zzhl.zzc(bArr, i29, zzhnVar2);
                                    } else {
                                        iZzd = zzhl.zzd(bArr, i29, zzhnVar2);
                                    }
                                    unsafe4.putObject(t3, j, zzhnVar2.zzc);
                                    i25 |= i36;
                                    i22 = iZzd;
                                    i20 = i2;
                                    i24 = i8;
                                    bArr5 = bArr;
                                    i23 = i30;
                                    i21 = -1;
                                    unsafe5 = unsafe4;
                                    zzhnVar3 = zzhnVar2;
                                } else {
                                    i9 = i29;
                                    unsafe2 = unsafe4;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                    i24 = i8;
                                    zzhnVar3 = zzhnVar2;
                                    i23 = i30;
                                    i5 = 1048575;
                                    i7 = -1;
                                    i4 = i3;
                                    zzkoVar = zzkoVar2;
                                }
                                break;
                            case 9:
                                bArr4 = bArr;
                                i8 = iZzg;
                                i13 = i29;
                                zzhnVar2 = zzhnVar3;
                                unsafe4 = unsafe5;
                                i14 = i2;
                                if (i32 == 2) {
                                    iZza = zzhl.zza(zzkoVar2.zza(i8), bArr4, i13, i14, zzhnVar2);
                                    if ((i25 & i36) == 0) {
                                        unsafe4.putObject(t3, j, zzhnVar2.zzc);
                                    } else {
                                        unsafe4.putObject(t3, j, zzjf.zza(unsafe4.getObject(t3, j), zzhnVar2.zzc));
                                    }
                                    i25 |= i36;
                                    i22 = iZza;
                                    i20 = i14;
                                    bArr5 = bArr4;
                                    i24 = i8;
                                    i23 = i30;
                                    i21 = -1;
                                    unsafe5 = unsafe4;
                                    zzhnVar3 = zzhnVar2;
                                } else {
                                    unsafe2 = unsafe4;
                                    i9 = i13;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                    i24 = i8;
                                    zzhnVar3 = zzhnVar2;
                                    i23 = i30;
                                    i5 = 1048575;
                                    i7 = -1;
                                    i4 = i3;
                                    zzkoVar = zzkoVar2;
                                }
                                break;
                            case 10:
                                bArr4 = bArr;
                                i8 = iZzg;
                                i13 = i29;
                                zzhnVar2 = zzhnVar3;
                                unsafe4 = unsafe5;
                                i14 = i2;
                                if (i32 == 2) {
                                    iZza = zzhl.zze(bArr4, i13, zzhnVar2);
                                    unsafe4.putObject(t3, j, zzhnVar2.zzc);
                                    i25 |= i36;
                                    i22 = iZza;
                                    i20 = i14;
                                    bArr5 = bArr4;
                                    i24 = i8;
                                    i23 = i30;
                                    i21 = -1;
                                    unsafe5 = unsafe4;
                                    zzhnVar3 = zzhnVar2;
                                } else {
                                    unsafe2 = unsafe4;
                                    i9 = i13;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                    i24 = i8;
                                    zzhnVar3 = zzhnVar2;
                                    i23 = i30;
                                    i5 = 1048575;
                                    i7 = -1;
                                    i4 = i3;
                                    zzkoVar = zzkoVar2;
                                }
                                break;
                            case 12:
                                bArr4 = bArr;
                                i8 = iZzg;
                                i13 = i29;
                                zzhnVar2 = zzhnVar3;
                                unsafe4 = unsafe5;
                                i14 = i2;
                                if (i32 == 0) {
                                    iZza = zzhl.zza(bArr4, i13, zzhnVar2);
                                    int i39 = zzhnVar2.zza;
                                    zzjg zzjgVarZzc = zzkoVar2.zzc(i8);
                                    if (zzjgVarZzc == null || zzjgVarZzc.zza(i39)) {
                                        unsafe4.putInt(t3, j, i39);
                                        i25 |= i36;
                                        i22 = iZza;
                                        i20 = i14;
                                        bArr5 = bArr4;
                                        i24 = i8;
                                        i23 = i30;
                                        i21 = -1;
                                        unsafe5 = unsafe4;
                                        zzhnVar3 = zzhnVar2;
                                    } else {
                                        zze(t3).zza(i26 == true ? 1 : 0, Long.valueOf(i39));
                                        i22 = iZza;
                                        i20 = i14;
                                        bArr5 = bArr4;
                                        i24 = i8;
                                        i23 = i30;
                                        i21 = -1;
                                        unsafe5 = unsafe4;
                                        zzhnVar3 = zzhnVar2;
                                    }
                                } else {
                                    unsafe2 = unsafe4;
                                    i9 = i13;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                    i24 = i8;
                                    zzhnVar3 = zzhnVar2;
                                    i23 = i30;
                                    i5 = 1048575;
                                    i7 = -1;
                                    i4 = i3;
                                    zzkoVar = zzkoVar2;
                                }
                                break;
                            case 15:
                                bArr4 = bArr;
                                i8 = iZzg;
                                i13 = i29;
                                zzhnVar2 = zzhnVar3;
                                unsafe4 = unsafe5;
                                i14 = i2;
                                if (i32 == 0) {
                                    iZza = zzhl.zza(bArr4, i13, zzhnVar2);
                                    unsafe4.putInt(t3, j, zzif.zze(zzhnVar2.zza));
                                    i25 |= i36;
                                    i22 = iZza;
                                    i20 = i14;
                                    bArr5 = bArr4;
                                    i24 = i8;
                                    i23 = i30;
                                    i21 = -1;
                                    unsafe5 = unsafe4;
                                    zzhnVar3 = zzhnVar2;
                                } else {
                                    unsafe2 = unsafe4;
                                    i9 = i13;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                    i24 = i8;
                                    zzhnVar3 = zzhnVar2;
                                    i23 = i30;
                                    i5 = 1048575;
                                    i7 = -1;
                                    i4 = i3;
                                    zzkoVar = zzkoVar2;
                                }
                                break;
                            case 16:
                                bArr4 = bArr;
                                zzhn zzhnVar4 = zzhnVar3;
                                i8 = iZzg;
                                i13 = i29;
                                if (i32 == 0) {
                                    int iZzb3 = zzhl.zzb(bArr4, i13, zzhnVar4);
                                    zzhnVar2 = zzhnVar4;
                                    T t4 = t3;
                                    Unsafe unsafe6 = unsafe5;
                                    i14 = i2;
                                    unsafe6.putLong(t4, j, zzif.zza(zzhnVar4.zzb));
                                    unsafe4 = unsafe6;
                                    t3 = t4;
                                    i25 |= i36;
                                    i22 = iZzb3;
                                    i20 = i14;
                                    bArr5 = bArr4;
                                    i24 = i8;
                                    i23 = i30;
                                    i21 = -1;
                                    unsafe5 = unsafe4;
                                    zzhnVar3 = zzhnVar2;
                                } else {
                                    zzhnVar2 = zzhnVar4;
                                    unsafe4 = unsafe5;
                                    unsafe2 = unsafe4;
                                    i9 = i13;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                    i24 = i8;
                                    zzhnVar3 = zzhnVar2;
                                    i23 = i30;
                                    i5 = 1048575;
                                    i7 = -1;
                                    i4 = i3;
                                    zzkoVar = zzkoVar2;
                                }
                                break;
                            case 17:
                                if (i32 == 3) {
                                    zzhn zzhnVar5 = zzhnVar3;
                                    int i40 = iZzg;
                                    int iZza4 = zzhl.zza(zzkoVar2.zza(iZzg), bArr, i29, i2, (i30 << 3) | 4, zzhnVar5);
                                    if ((i25 & i36) == 0) {
                                        unsafe5.putObject(t3, j, zzhnVar5.zzc);
                                    } else {
                                        unsafe5.putObject(t3, j, zzjf.zza(unsafe5.getObject(t3, j), zzhnVar5.zzc));
                                    }
                                    i25 |= i36;
                                    i20 = i2;
                                    zzhnVar3 = zzhnVar5;
                                    i24 = i40;
                                    i23 = i30;
                                    i21 = -1;
                                    i22 = iZza4;
                                    bArr5 = bArr;
                                } else {
                                    i8 = iZzg;
                                    zzhnVar2 = zzhnVar3;
                                    unsafe2 = unsafe5;
                                    i9 = i29;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                    i24 = i8;
                                    zzhnVar3 = zzhnVar2;
                                    i23 = i30;
                                    i5 = 1048575;
                                    i7 = -1;
                                    i4 = i3;
                                    zzkoVar = zzkoVar2;
                                }
                                break;
                            default:
                                zzhnVar2 = zzhnVar3;
                                i8 = iZzg;
                                unsafe2 = unsafe5;
                                i9 = i29;
                                unsafe = unsafe2;
                                i6 = i9;
                                i24 = i8;
                                zzhnVar3 = zzhnVar2;
                                i23 = i30;
                                i5 = 1048575;
                                i7 = -1;
                                i4 = i3;
                                zzkoVar = zzkoVar2;
                                break;
                        }
                    } else {
                        int i41 = iZzg;
                        Unsafe unsafe7 = unsafe5;
                        zzhn zzhnVar6 = zzhnVar3;
                        if (i34 != 27) {
                            i18 = i29;
                            if (i34 <= 49) {
                                i15 = i41;
                                i16 = i27;
                                i17 = i25;
                                unsafe = unsafe7;
                                i5 = 1048575;
                                i7 = -1;
                                int iZza5 = zzkoVar2.zza(t, bArr, i18, i2, i26 == true ? 1 : 0, i30, i32, i15, i33, i34, j, zzhnVar);
                                i26 = i26 == true ? 1 : 0;
                                i19 = i30;
                                if (iZza5 == i18) {
                                    zzkoVar = this;
                                    i4 = i3;
                                    zzhnVar3 = zzhnVar;
                                    i6 = iZza5;
                                } else {
                                    zzkoVar2 = this;
                                    t3 = t;
                                    bArr5 = bArr;
                                    i20 = i2;
                                    zzhnVar3 = zzhnVar;
                                    i22 = iZza5;
                                    i24 = i15;
                                    i23 = i19;
                                    i27 = i16;
                                    i25 = i17;
                                    unsafe5 = unsafe;
                                    i21 = i7;
                                }
                            } else {
                                i15 = i41;
                                i16 = i27;
                                i17 = i25;
                                unsafe = unsafe7;
                                i19 = i30;
                                i5 = 1048575;
                                i7 = -1;
                                if (i34 != 50) {
                                    i23 = i19;
                                    int iZza6 = zza(t, bArr, i18, i2, i26 == true ? 1 : 0, i23, i32, i33, i34, j, i15, zzhnVar);
                                    i26 = i26 == true ? 1 : 0;
                                    zzhnVar3 = zzhnVar;
                                    zzkoVar = this;
                                    t2 = t;
                                    i4 = i3;
                                    if (iZza6 == i18) {
                                        i6 = iZza6;
                                        i24 = i15;
                                        i27 = i16;
                                        i25 = i17;
                                        if (i26 == i4 || i4 == 0) {
                                            if (zzkoVar.zzh && zzhnVar3.zzd != zzio.zzb()) {
                                                zzhnVar3.zzd.zza(zzkoVar.zzg, i23);
                                                int iZza7 = zzhl.zza((i26 == true ? 1 : 0) == true ? 1 : 0, bArr, i6, i2, zze(t2), zzhnVar3);
                                                i20 = i2;
                                                zzhnVar3 = zzhnVar;
                                                i22 = iZza7;
                                                zzkoVar2 = zzkoVar;
                                                t3 = t2;
                                                unsafe5 = unsafe;
                                                i21 = i7;
                                            } else {
                                                zzhnVar3 = zzhnVar;
                                                int iZza8 = zzhl.zza((i26 == true ? 1 : 0) == true ? 1 : 0, bArr, i6, i2, zze(t2), zzhnVar3);
                                                i20 = i2;
                                                zzkoVar2 = zzkoVar;
                                                t3 = t2;
                                                unsafe5 = unsafe;
                                                i21 = i7;
                                                i22 = iZza8;
                                            }
                                            bArr5 = bArr;
                                        } else {
                                            i20 = i2;
                                            i22 = i6;
                                        }
                                    } else {
                                        bArr5 = bArr;
                                        i20 = i2;
                                        zzhnVar3 = zzhnVar;
                                        i22 = iZza6;
                                        i24 = i15;
                                        zzkoVar2 = zzkoVar;
                                        t3 = t2;
                                        i27 = i16;
                                        i25 = i17;
                                        unsafe5 = unsafe;
                                        i21 = i7;
                                    }
                                } else if (i32 == 2) {
                                    int iZza9 = zza(t, bArr, i18, i2, i15, j, zzhnVar);
                                    i15 = i15;
                                    if (iZza9 == i18) {
                                        zzkoVar = this;
                                        i4 = i3;
                                        zzhnVar3 = zzhnVar;
                                        i6 = iZza9;
                                    } else {
                                        zzkoVar2 = this;
                                        t3 = t;
                                        bArr5 = bArr;
                                        i20 = i2;
                                        zzhnVar3 = zzhnVar;
                                        i22 = iZza9;
                                        i24 = i15;
                                        i23 = i19;
                                        i27 = i16;
                                        i25 = i17;
                                        unsafe5 = unsafe;
                                        i21 = i7;
                                    }
                                } else {
                                    zzkoVar = this;
                                    i4 = i3;
                                    zzhnVar3 = zzhnVar;
                                    i6 = i18;
                                }
                            }
                        } else if (i32 == 2) {
                            zzjl zzjlVarZza = (zzjl) unsafe7.getObject(t3, j);
                            if (!zzjlVarZza.zza()) {
                                int size = zzjlVarZza.size();
                                zzjlVarZza = zzjlVarZza.zza(size == 0 ? 10 : size << 1);
                                unsafe7.putObject(t3, j, zzjlVarZza);
                            }
                            int iZza10 = zzhl.zza(zzkoVar2.zza(i41), i26 == true ? 1 : 0, bArr, i29, i2, zzjlVarZza, zzhnVar6);
                            bArr5 = bArr;
                            i20 = i2;
                            zzhnVar3 = zzhnVar;
                            i22 = iZza10;
                            i24 = i41;
                            unsafe5 = unsafe7;
                            i23 = i30;
                            i21 = -1;
                            t3 = t;
                        } else {
                            i15 = i41;
                            i16 = i27;
                            i17 = i25;
                            i18 = i29;
                            i19 = i30;
                            i5 = 1048575;
                            i7 = -1;
                            unsafe = unsafe7;
                            zzkoVar = this;
                            i4 = i3;
                            zzhnVar3 = zzhnVar;
                            i6 = i18;
                        }
                        i24 = i15;
                        i23 = i19;
                        i27 = i16;
                        i25 = i17;
                        t2 = t;
                        if (i26 == i4) {
                        }
                        if (zzkoVar.zzh) {
                            zzhnVar3 = zzhnVar;
                            int iZza82 = zzhl.zza((i26 == true ? 1 : 0) == true ? 1 : 0, bArr, i6, i2, zze(t2), zzhnVar3);
                            i20 = i2;
                            zzkoVar2 = zzkoVar;
                            t3 = t2;
                            unsafe5 = unsafe;
                            i21 = i7;
                            i22 = iZza82;
                            bArr5 = bArr;
                        }
                    }
                }
                t2 = t3;
                if (i26 == i4) {
                }
                if (zzkoVar.zzh) {
                }
            } else {
                i4 = i3;
                zzkoVar = zzkoVar2;
                t2 = t3;
                unsafe = unsafe5;
                i5 = 1048575;
            }
        }
        if (i27 != i5) {
            unsafe.putInt(t2, i27, i25);
        }
        zzlx zzlxVar = null;
        for (int i42 = zzkoVar.zzm; i42 < zzkoVar.zzn; i42++) {
            zzlxVar = (zzlx) zzkoVar.zza(t2, zzkoVar.zzl[i42], zzlxVar, (zzlu<UT, zzlx>) zzkoVar.zzq);
        }
        if (zzlxVar != null) {
            zzkoVar.zzq.zzb(t2, zzlxVar);
        }
        if (i4 == 0) {
            if (i22 != i20) {
                throw zzjk.zzg();
            }
        } else if (i22 > i20 || i26 != i4) {
            throw zzjk.zzg();
        }
        return i22;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0087. Please report as an issue. */
    @Override // com.google.android.gms.internal.vision.zzlc
    public final void zza(T t, byte[] bArr, int i, int i2, zzhn zzhnVar) throws zzjk {
        int iZzg;
        T t2;
        Unsafe unsafe;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        zzko<T> zzkoVar = this;
        T t3 = t;
        byte[] bArr2 = bArr;
        int i13 = i2;
        zzhn zzhnVar2 = zzhnVar;
        if (zzkoVar.zzj) {
            Unsafe unsafe2 = zzb;
            int i14 = -1;
            int iZzb = i;
            int i15 = -1;
            int i16 = 0;
            int i17 = 0;
            int i18 = 1048575;
            while (iZzb < i13) {
                int iZza = iZzb + 1;
                int i19 = bArr2[iZzb];
                if (i19 < 0) {
                    iZza = zzhl.zza(i19, bArr2, iZza, zzhnVar2);
                    i19 = zzhnVar2.zza;
                }
                int i20 = iZza;
                int i21 = i19 >>> 3;
                int i22 = i19 & 7;
                if (i21 > i15) {
                    iZzg = zzkoVar.zza(i21, i16 / 3);
                } else {
                    iZzg = zzkoVar.zzg(i21);
                }
                if (iZzg == i14) {
                    t2 = t3;
                    unsafe = unsafe2;
                    i3 = i19;
                    i4 = i21;
                    i5 = 0;
                } else {
                    int[] iArr = zzkoVar.zzc;
                    int i23 = iArr[iZzg + 1];
                    int i24 = (i23 & 267386880) >>> 20;
                    int i25 = i19;
                    int i26 = iZzg;
                    long j = i23 & 1048575;
                    if (i24 <= 17) {
                        int i27 = iArr[i26 + 2];
                        int i28 = 1 << (i27 >>> 20);
                        int i29 = i27 & 1048575;
                        int i30 = 1048575;
                        if (i29 != i18) {
                            if (i18 != 1048575) {
                                unsafe2.putInt(t3, i18, i17);
                                i30 = 1048575;
                            }
                            if (i29 != i30) {
                                i17 = unsafe2.getInt(t3, i29);
                            }
                            i18 = i29;
                        }
                        switch (i24) {
                            case 0:
                                i11 = i30;
                                if (i22 != 1) {
                                    t2 = t3;
                                    unsafe = unsafe2;
                                    i4 = i21;
                                    i5 = i26;
                                    i3 = i25 == true ? 1 : 0;
                                } else {
                                    zzma.zza(t3, j, zzhl.zzc(bArr2, i20));
                                    iZzb = i20 + 8;
                                    i17 |= i28;
                                    i13 = i2;
                                    i15 = i21;
                                    i16 = i26;
                                    i14 = -1;
                                }
                                break;
                            case 1:
                                i11 = i30;
                                if (i22 != 5) {
                                    t2 = t3;
                                    unsafe = unsafe2;
                                    i4 = i21;
                                    i5 = i26;
                                    i3 = i25 == true ? 1 : 0;
                                } else {
                                    zzma.zza((Object) t3, j, zzhl.zzd(bArr2, i20));
                                    iZzb = i20 + 4;
                                    i17 |= i28;
                                    i13 = i2;
                                    i15 = i21;
                                    i16 = i26;
                                    i14 = -1;
                                }
                                break;
                            case 2:
                            case 3:
                                i11 = i30;
                                if (i22 != 0) {
                                    t2 = t3;
                                    unsafe = unsafe2;
                                    i4 = i21;
                                    i5 = i26;
                                    i3 = i25 == true ? 1 : 0;
                                } else {
                                    int iZzb2 = zzhl.zzb(bArr2, i20, zzhnVar2);
                                    Unsafe unsafe3 = unsafe2;
                                    T t4 = t3;
                                    unsafe3.putLong(t4, j, zzhnVar2.zzb);
                                    unsafe2 = unsafe3;
                                    t3 = t4;
                                    i17 |= i28;
                                    iZzb = iZzb2;
                                    i15 = i21;
                                    i16 = i26;
                                    i14 = -1;
                                    i13 = i2;
                                }
                                break;
                            case 4:
                            case 11:
                                i11 = i30;
                                if (i22 != 0) {
                                    t2 = t3;
                                    unsafe = unsafe2;
                                    i4 = i21;
                                    i5 = i26;
                                    i3 = i25 == true ? 1 : 0;
                                } else {
                                    int iZza2 = zzhl.zza(bArr2, i20, zzhnVar2);
                                    unsafe2.putInt(t3, j, zzhnVar2.zza);
                                    i17 |= i28;
                                    i13 = i2;
                                    iZzb = iZza2;
                                    i15 = i21;
                                    i16 = i26;
                                    i14 = -1;
                                }
                                break;
                            case 5:
                            case 14:
                                i11 = i30;
                                if (i22 != 1) {
                                    t2 = t3;
                                    unsafe = unsafe2;
                                    i4 = i21;
                                    i5 = i26;
                                    i3 = i25 == true ? 1 : 0;
                                } else {
                                    Unsafe unsafe4 = unsafe2;
                                    T t5 = t3;
                                    unsafe4.putLong(t5, j, zzhl.zzb(bArr2, i20));
                                    unsafe2 = unsafe4;
                                    t3 = t5;
                                    iZzb = i20 + 8;
                                    i17 |= i28;
                                    i13 = i2;
                                    i15 = i21;
                                    i16 = i26;
                                    i14 = -1;
                                }
                                break;
                            case 6:
                            case 13:
                                i11 = i30;
                                if (i22 != 5) {
                                    t2 = t3;
                                    unsafe = unsafe2;
                                    i4 = i21;
                                    i5 = i26;
                                    i3 = i25 == true ? 1 : 0;
                                } else {
                                    unsafe2.putInt(t3, j, zzhl.zza(bArr2, i20));
                                    iZzb = i20 + 4;
                                    i17 |= i28;
                                    i13 = i2;
                                    i15 = i21;
                                    i16 = i26;
                                    i14 = -1;
                                }
                                break;
                            case 7:
                                i11 = i30;
                                if (i22 != 0) {
                                    t2 = t3;
                                    unsafe = unsafe2;
                                    i4 = i21;
                                    i5 = i26;
                                    i3 = i25 == true ? 1 : 0;
                                } else {
                                    iZzb = zzhl.zzb(bArr2, i20, zzhnVar2);
                                    zzma.zza(t3, j, zzhnVar2.zzb != 0);
                                    i17 |= i28;
                                    i13 = i2;
                                    i15 = i21;
                                    i16 = i26;
                                    i14 = -1;
                                }
                                break;
                            case 8:
                                i11 = i30;
                                if (i22 != 2) {
                                    t2 = t3;
                                    unsafe = unsafe2;
                                    i4 = i21;
                                    i5 = i26;
                                    i3 = i25 == true ? 1 : 0;
                                } else {
                                    if ((536870912 & i23) == 0) {
                                        iZzb = zzhl.zzc(bArr2, i20, zzhnVar2);
                                    } else {
                                        iZzb = zzhl.zzd(bArr2, i20, zzhnVar2);
                                    }
                                    unsafe2.putObject(t3, j, zzhnVar2.zzc);
                                    i17 |= i28;
                                    i15 = i21;
                                    i16 = i26;
                                    i14 = -1;
                                }
                                break;
                            case 9:
                                i11 = i30;
                                i12 = i26;
                                if (i22 != 2) {
                                    i26 = i12;
                                    t2 = t3;
                                    unsafe = unsafe2;
                                    i4 = i21;
                                    i5 = i26;
                                    i3 = i25 == true ? 1 : 0;
                                } else {
                                    iZzb = zzhl.zza(zzkoVar.zza(i12), bArr2, i20, i13, zzhnVar2);
                                    Object object = unsafe2.getObject(t3, j);
                                    if (object == null) {
                                        unsafe2.putObject(t3, j, zzhnVar2.zzc);
                                    } else {
                                        unsafe2.putObject(t3, j, zzjf.zza(object, zzhnVar2.zzc));
                                    }
                                    i17 |= i28;
                                    i15 = i21;
                                    i16 = i12;
                                    i14 = -1;
                                }
                                break;
                            case 10:
                                i11 = i30;
                                i12 = i26;
                                if (i22 != 2) {
                                    i26 = i12;
                                    t2 = t3;
                                    unsafe = unsafe2;
                                    i4 = i21;
                                    i5 = i26;
                                    i3 = i25 == true ? 1 : 0;
                                } else {
                                    iZzb = zzhl.zze(bArr2, i20, zzhnVar2);
                                    unsafe2.putObject(t3, j, zzhnVar2.zzc);
                                    i17 |= i28;
                                    i15 = i21;
                                    i16 = i12;
                                    i14 = -1;
                                }
                                break;
                            case 12:
                                i11 = i30;
                                i12 = i26;
                                if (i22 != 0) {
                                    i26 = i12;
                                    t2 = t3;
                                    unsafe = unsafe2;
                                    i4 = i21;
                                    i5 = i26;
                                    i3 = i25 == true ? 1 : 0;
                                } else {
                                    iZzb = zzhl.zza(bArr2, i20, zzhnVar2);
                                    unsafe2.putInt(t3, j, zzhnVar2.zza);
                                    i17 |= i28;
                                    i15 = i21;
                                    i16 = i12;
                                    i14 = -1;
                                }
                                break;
                            case 15:
                                i11 = i30;
                                i12 = i26;
                                if (i22 != 0) {
                                    i26 = i12;
                                    t2 = t3;
                                    unsafe = unsafe2;
                                    i4 = i21;
                                    i5 = i26;
                                    i3 = i25 == true ? 1 : 0;
                                } else {
                                    iZzb = zzhl.zza(bArr2, i20, zzhnVar2);
                                    unsafe2.putInt(t3, j, zzif.zze(zzhnVar2.zza));
                                    i17 |= i28;
                                    i15 = i21;
                                    i16 = i12;
                                    i14 = -1;
                                }
                                break;
                            case 16:
                                if (i22 != 0) {
                                    i11 = i30;
                                    t2 = t3;
                                    unsafe = unsafe2;
                                    i4 = i21;
                                    i5 = i26;
                                    i3 = i25 == true ? 1 : 0;
                                } else {
                                    int iZzb3 = zzhl.zzb(bArr2, i20, zzhnVar2);
                                    Unsafe unsafe5 = unsafe2;
                                    T t6 = t3;
                                    i12 = i26;
                                    unsafe5.putLong(t6, j, zzif.zza(zzhnVar2.zzb));
                                    unsafe2 = unsafe5;
                                    t3 = t6;
                                    i17 |= i28;
                                    iZzb = iZzb3;
                                    i15 = i21;
                                    i16 = i12;
                                    i14 = -1;
                                }
                                break;
                            default:
                                i11 = i30;
                                t2 = t3;
                                unsafe = unsafe2;
                                i4 = i21;
                                i5 = i26;
                                i3 = i25 == true ? 1 : 0;
                                break;
                        }
                    } else {
                        i5 = i26;
                        if (i24 != 27) {
                            i6 = i20;
                            Unsafe unsafe6 = unsafe2;
                            if (i24 <= 49) {
                                int i31 = i18;
                                i7 = i17;
                                unsafe = unsafe6;
                                int iZza3 = zzkoVar.zza(t, bArr, i6, i2, i25 == true ? 1 : 0, i21, i22, i5, i23, i24, j, zzhnVar);
                                if (iZza3 == i6) {
                                    i20 = iZza3;
                                    i4 = i21;
                                    i3 = i25 == true ? 1 : 0;
                                    i17 = i7;
                                    t2 = t;
                                    i18 = i31;
                                } else {
                                    zzkoVar = this;
                                    t3 = t;
                                    i18 = i31;
                                    zzhnVar2 = zzhnVar;
                                    iZzb = iZza3;
                                    i16 = i5;
                                    i15 = i21;
                                    i17 = i7;
                                    unsafe2 = unsafe;
                                    i14 = -1;
                                    bArr2 = bArr;
                                    i13 = i2;
                                }
                            } else {
                                i7 = i17;
                                unsafe = unsafe6;
                                i8 = i21;
                                i9 = i18;
                                i10 = i25 == true ? 1 : 0;
                                if (i24 != 50) {
                                    i4 = i8;
                                    int iZza4 = zza(t, bArr, i6, i2, i10 == true ? 1 : 0, i4, i22, i23, i24, j, i5, zzhnVar);
                                    t2 = t;
                                    i3 = i10 == true ? 1 : 0;
                                    i5 = i5;
                                    if (iZza4 == i6) {
                                        i20 = iZza4;
                                        i18 = i9;
                                        i17 = i7;
                                    } else {
                                        zzkoVar = this;
                                        zzhnVar2 = zzhnVar;
                                        i15 = i4;
                                        iZzb = iZza4;
                                        i16 = i5;
                                        t3 = t2;
                                        i18 = i9;
                                        i17 = i7;
                                        unsafe2 = unsafe;
                                        i14 = -1;
                                        bArr2 = bArr;
                                        i13 = i2;
                                    }
                                } else if (i22 == 2) {
                                    int iZza5 = zza(t, bArr, i6, i2, i5, j, zzhnVar);
                                    i5 = i5;
                                    if (iZza5 == i6) {
                                        i20 = iZza5;
                                        i4 = i8;
                                        i3 = i10;
                                        i18 = i9;
                                        i17 = i7;
                                        t2 = t;
                                    } else {
                                        zzkoVar = this;
                                        t3 = t;
                                        bArr2 = bArr;
                                        zzhnVar2 = zzhnVar;
                                        iZzb = iZza5;
                                        i16 = i5;
                                        i15 = i8;
                                        i18 = i9;
                                        i17 = i7;
                                        unsafe2 = unsafe;
                                        i14 = -1;
                                        i13 = i2;
                                    }
                                } else {
                                    i5 = i5;
                                    i20 = i6;
                                    i4 = i8;
                                    i3 = i10;
                                    i18 = i9;
                                    i17 = i7;
                                    t2 = t;
                                }
                            }
                        } else if (i22 == 2) {
                            zzjl zzjlVarZza = (zzjl) unsafe2.getObject(t3, j);
                            if (!zzjlVarZza.zza()) {
                                int size = zzjlVarZza.size();
                                zzjlVarZza = zzjlVarZza.zza(size == 0 ? 10 : size << 1);
                                unsafe2.putObject(t3, j, zzjlVarZza);
                            }
                            int iZza6 = zzhl.zza(zzkoVar.zza(i5), i25 == true ? 1 : 0, bArr2, i20, i2, zzjlVarZza, zzhnVar2);
                            bArr2 = bArr;
                            zzhnVar2 = zzhnVar;
                            iZzb = iZza6;
                            i16 = i5;
                            unsafe2 = unsafe2;
                            i15 = i21;
                            i14 = -1;
                            t3 = t;
                            i13 = i2;
                        } else {
                            i6 = i20;
                            i7 = i17;
                            unsafe = unsafe2;
                            i8 = i21;
                            i9 = i18;
                            i10 = i25 == true ? 1 : 0;
                            i20 = i6;
                            i4 = i8;
                            i3 = i10;
                            i18 = i9;
                            i17 = i7;
                            t2 = t;
                        }
                    }
                }
                int iZza7 = zzhl.zza(i3 == true ? 1 : 0, bArr, i20, i2, zze(t2), zzhnVar);
                bArr2 = bArr;
                zzhnVar2 = zzhnVar;
                i15 = i4;
                i16 = i5;
                t3 = t2;
                unsafe2 = unsafe;
                i14 = -1;
                i13 = i2;
                iZzb = iZza7;
                zzkoVar = this;
            }
            T t7 = t3;
            Unsafe unsafe7 = unsafe2;
            int i32 = i13;
            int i33 = i18;
            int i34 = i17;
            if (i33 != 1048575) {
                unsafe7.putInt(t7, i33, i34);
            }
            if (iZzb != i32) {
                throw zzjk.zzg();
            }
            return;
        }
        zza(t3, bArr, i, i13, 0, zzhnVar);
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final void zzc(T t) {
        int i;
        int[] iArr;
        int i2 = this.zzm;
        while (true) {
            i = this.zzn;
            iArr = this.zzl;
            if (i2 >= i) {
                break;
            }
            long jZzd = zzd(iArr[i2]) & 1048575;
            Object objZzf = zzma.zzf(t, jZzd);
            if (objZzf != null) {
                zzma.zza(t, jZzd, this.zzs.zze(objZzf));
            }
            i2++;
        }
        int length = iArr.length;
        while (i < length) {
            this.zzp.zzb(t, this.zzl[i]);
            i++;
        }
        this.zzq.zzd(t);
        if (this.zzh) {
            this.zzr.zzc(t);
        }
    }

    private final <UT, UB> UB zza(Object obj, int i, UB ub, zzlu<UT, UB> zzluVar) {
        zzjg zzjgVarZzc;
        int i2 = this.zzc[i];
        Object objZzf = zzma.zzf(obj, zzd(i) & 1048575);
        return (objZzf == null || (zzjgVarZzc = zzc(i)) == null) ? ub : (UB) zza(i, i2, this.zzs.zza(objZzf), zzjgVarZzc, ub, zzluVar);
    }

    private final <K, V, UT, UB> UB zza(int i, int i2, Map<K, V> map, zzjg zzjgVar, UB ub, zzlu<UT, UB> zzluVar) {
        this.zzs.zzb(zzb(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzjgVar.zza(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = zzluVar.zza();
                }
                zzib zzibVarZzc = zzht.zzc(zzkc.zza(null, next.getKey(), next.getValue()));
                try {
                    zzkc.zza(zzibVarZzc.zzb(), null, next.getKey(), next.getValue());
                    zzluVar.zza(ub, i2, zzibVarZzc.zza());
                    it.remove();
                } catch (IOException e) {
                    HttpUrl$$ExternalSyntheticBUOutline0.m899m(e);
                    return null;
                }
            }
        }
        return ub;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0096  */
    @Override // com.google.android.gms.internal.vision.zzlc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzd(T t) {
        int i;
        int i2;
        zzko<T> zzkoVar;
        T t2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i4 < this.zzm) {
            int i6 = this.zzl[i4];
            int i7 = this.zzc[i6];
            int iZzd = this.zzd(i6);
            int i8 = this.zzc[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i3) {
                if (i9 != 1048575) {
                    i5 = zzb.getInt(t, i9);
                }
                i2 = i5;
                i = i9;
            } else {
                i = i3;
                i2 = i5;
            }
            if ((268435456 & iZzd) != 0) {
                zzkoVar = this;
                t2 = t;
                if (!zzkoVar.zza(t2, i6, i, i2, i10)) {
                    return false;
                }
            } else {
                zzkoVar = this;
                t2 = t;
            }
            int i11 = (267386880 & iZzd) >>> 20;
            if (i11 == 9 || i11 == 17) {
                if (zzkoVar.zza(t2, i6, i, i2, i10) && !zza(t2, iZzd, zzkoVar.zza(i6))) {
                    return false;
                }
            } else if (i11 == 27) {
                List list = (List) zzma.zzf(t2, iZzd & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzlc zzlcVarZza = zzkoVar.zza(i6);
                    for (int i12 = 0; i12 < list.size(); i12++) {
                        if (!zzlcVarZza.zzd(list.get(i12))) {
                            return false;
                        }
                    }
                }
            } else if (i11 == 60 || i11 == 68) {
                if (zzkoVar.zza(t2, i7, i6) && !zza(t2, iZzd, zzkoVar.zza(i6))) {
                    return false;
                }
            } else if (i11 != 49) {
                if (i11 == 50 && !zzkoVar.zzs.zzc(zzma.zzf(t2, iZzd & 1048575)).isEmpty()) {
                    zzkoVar.zzs.zzb(zzkoVar.zzb(i6));
                    throw null;
                }
            }
            i4++;
            this = zzkoVar;
            t = t2;
            i3 = i;
            i5 = i2;
        }
        zzko<T> zzkoVar2 = this;
        return !zzkoVar2.zzh || zzkoVar2.zzr.zza(t).zzf();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzlc zzlcVar) {
        return zzlcVar.zzd(zzma.zzf(obj, i & 1048575));
    }

    private static void zza(int i, Object obj, zzmr zzmrVar) {
        if (obj instanceof String) {
            zzmrVar.zza(i, (String) obj);
        } else {
            zzmrVar.zza(i, (zzht) obj);
        }
    }

    private final int zzd(int i) {
        return this.zzc[i + 1];
    }

    private final int zze(int i) {
        return this.zzc[i + 2];
    }

    private static <T> double zzb(T t, long j) {
        return ((Double) zzma.zzf(t, j)).doubleValue();
    }

    private static <T> float zzc(T t, long j) {
        return ((Float) zzma.zzf(t, j)).floatValue();
    }

    private static <T> int zzd(T t, long j) {
        return ((Integer) zzma.zzf(t, j)).intValue();
    }

    private static <T> long zze(T t, long j) {
        return ((Long) zzma.zzf(t, j)).longValue();
    }

    private static <T> boolean zzf(T t, long j) {
        return ((Boolean) zzma.zzf(t, j)).booleanValue();
    }

    private final boolean zzc(T t, T t2, int i) {
        return zza((Object) t, i) == zza((Object) t2, i);
    }

    private final boolean zza(T t, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zza((Object) t, i);
        }
        return (i3 & i4) != 0;
    }

    private final boolean zza(T t, int i) {
        int iZze = zze(i);
        long j = iZze & 1048575;
        if (j != 1048575) {
            return ((1 << (iZze >>> 20)) & zzma.zza(t, j)) != 0;
        }
        int iZzd = zzd(i);
        long j2 = iZzd & 1048575;
        switch ((iZzd & 267386880) >>> 20) {
            case 0:
                return zzma.zze(t, j2) != 0.0d;
            case 1:
                return zzma.zzd(t, j2) != 0.0f;
            case 2:
                return zzma.zzb(t, j2) != 0;
            case 3:
                return zzma.zzb(t, j2) != 0;
            case 4:
                return zzma.zza(t, j2) != 0;
            case 5:
                return zzma.zzb(t, j2) != 0;
            case 6:
                return zzma.zza(t, j2) != 0;
            case 7:
                return zzma.zzc(t, j2);
            case 8:
                Object objZzf = zzma.zzf(t, j2);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzht) {
                    return !zzht.zza.equals(objZzf);
                }
                Segment$$ExternalSyntheticBUOutline0.m924m();
                return false;
            case 9:
                return zzma.zzf(t, j2) != null;
            case 10:
                return !zzht.zza.equals(zzma.zzf(t, j2));
            case 11:
                return zzma.zza(t, j2) != 0;
            case 12:
                return zzma.zza(t, j2) != 0;
            case 13:
                return zzma.zza(t, j2) != 0;
            case 14:
                return zzma.zzb(t, j2) != 0;
            case 15:
                return zzma.zza(t, j2) != 0;
            case 16:
                return zzma.zzb(t, j2) != 0;
            case 17:
                return zzma.zzf(t, j2) != null;
            default:
                Segment$$ExternalSyntheticBUOutline0.m924m();
                return false;
        }
    }

    private final void zzb(T t, int i) {
        int iZze = zze(i);
        long j = 1048575 & iZze;
        if (j == 1048575) {
            return;
        }
        zzma.zza((Object) t, j, (1 << (iZze >>> 20)) | zzma.zza(t, j));
    }

    private final boolean zza(T t, int i, int i2) {
        return zzma.zza(t, (long) (zze(i2) & 1048575)) == i;
    }

    private final void zzb(T t, int i, int i2) {
        zzma.zza((Object) t, zze(i2) & 1048575, i);
    }

    private final int zzg(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzb(i, 0);
    }

    private final int zza(int i, int i2) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzb(i, i2);
    }

    private final int zzb(int i, int i2) {
        int length = (this.zzc.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzc[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }
}
