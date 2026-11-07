package com.google.android.recaptcha.internal;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.AbstractCollection;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import okio.Buffer$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
public final class zzar {
    public int zza = 1;
    private Object zzb;
    private long zzc;
    private double zzd;
    private zzv zze;
    private List zzf;
    private zzaj zzg;

    private zzar() {
    }

    public static zzar zza(Object obj) {
        zzar zzarVar = new zzar();
        int[] iArr = {1867107722, 219499797, 1647318768, 791628709, 1929020072, -436492773, 156903819, 1390543437, 216220853};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6);
        zzarVar.zzr();
        zzarVar.zza = (i8 % 216220853) ^ i9;
        zzarVar.zzb = obj;
        return zzarVar;
    }

    public static zzar zzb(long j) {
        zzar zzarVar = new zzar();
        int[] iArr = {1539942439, 1535257185, 1094537855, 446310416, 545003193, -1960816486, 411522957, 1143565421, 981914693};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6);
        zzarVar.zzr();
        zzarVar.zza = (i8 % 981914693) ^ i9;
        zzarVar.zzc = j;
        return zzarVar;
    }

    public static zzar zzc(double d) {
        zzar zzarVar = new zzar();
        int[] iArr = {978587665, 1228171534, 1025392329, 1075859846, 983056097, -1399000571, 190113083, 1723578341, 672563970};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6);
        zzarVar.zzr();
        zzarVar.zza = (i8 % 672563970) ^ i9;
        zzarVar.zzd = d;
        return zzarVar;
    }

    public static zzar zzd(zzv zzvVar) {
        zzar zzarVar = new zzar();
        int[] iArr = {1910210050, 1342515460, 1453014483, 168034308, 1540440520, -994065400, 318322042, 817572761, 14933990};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6);
        zzarVar.zzr();
        zzarVar.zza = (i8 % 14933990) ^ i9;
        zzarVar.zze = zzvVar;
        return zzarVar;
    }

    public static zzar zze(List list) {
        zzar zzarVar = new zzar();
        int[] iArr = {379366797, 35537464, 1403037965, -2078358863, -1757307767, -386763992, 522971726, 1554725062, 997276125};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6);
        zzarVar.zzr();
        zzarVar.zza = (i8 % 997276125) ^ i9;
        zzarVar.zzf = list;
        return zzarVar;
    }

    public static zzar zzf(zzaj zzajVar) {
        zzar zzarVar = new zzar();
        int[] iArr = {2021303708, 824774792, 51514445, 1009340548, 257220717, 1682859529, 597010431, 1024027583, 198628789};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6);
        zzarVar.zzr();
        zzarVar.zza = (i8 % 198628789) ^ i9;
        zzarVar.zzg = zzajVar;
        return zzarVar;
    }

    public static zzar zzg(Object obj) {
        if (obj instanceof Long) {
            return zzb(((Long) obj).longValue());
        }
        if (obj instanceof Boolean) {
            return zzb(true != ((Boolean) obj).booleanValue() ? 0L : 1L);
        }
        if (obj instanceof Integer) {
            return zzb(((Integer) obj).intValue());
        }
        if (obj instanceof Double) {
            return zzc(((Double) obj).doubleValue());
        }
        if (obj instanceof Float) {
            return zzc(((Float) obj).floatValue());
        }
        if (obj instanceof Short) {
            return zzb(((Short) obj).shortValue());
        }
        if (obj instanceof Byte) {
            return zzb(((Byte) obj).byteValue());
        }
        if (obj instanceof zzv) {
            return zzd((zzv) obj);
        }
        if (obj instanceof String) {
            return zzd(zzv.zzf((String) obj));
        }
        if (!(obj instanceof ArrayList)) {
            return zza(obj);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = (ArrayList) obj;
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(zzg(arrayList2.get(i)));
        }
        return zze(arrayList);
    }

    public static zzar zzj(zzar zzarVar) {
        int[] iArr = {368046387, 1524073695, 1753971274, -1235975019, -1392305918, 807149497, 27679574, 1740033621, 135813159};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6);
        int i10 = i8 % 135813159;
        try {
            int i11 = zzarVar.zza;
            int i12 = (i10 ^ i9) + i11;
            if (i11 == 0) {
                throw null;
            }
            switch (i12) {
                case 0:
                    return new zzar();
                case 1:
                    return zza(zzarVar.zzl());
                case 2:
                    return zzb(zzarVar.zzm());
                case 3:
                    return zzd(zzarVar.zzn());
                case 4:
                    ArrayList arrayList = new ArrayList();
                    Iterator it = zzarVar.zzo().iterator();
                    while (it.hasNext()) {
                        arrayList.add(zzj((zzar) it.next()));
                    }
                    return zze(arrayList);
                case 5:
                    return zzf(zzarVar.zzp());
                case 6:
                    return zzc(zzarVar.zzq());
                default:
                    Buffer$$ExternalSyntheticBUOutline2.m917m(zzt.zza("HkezqgQcPni/TE/NwjgYPC5H6Q2JRdEp275wOg=="));
                    return null;
            }
        } catch (zzao e) {
            throw new AssertionError(zzt.zza("CEiv6BFfPnitUE+D"), e);
        }
    }

    private final void zzr() {
        this.zza = 1;
        this.zzc = 0L;
        this.zzb = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = null;
    }

    private final void zzs(int i) throws zzao {
        if (i != this.zza) {
            throw new zzao();
        }
    }

    public final Object zzh() throws zzao {
        int[] iArr = {1946855866, 1570063841, 244151099, -250444080, -1599884485, 118034294, 5125130, 1535589735, 713475737};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6);
        int i10 = this.zza;
        int i11 = ((i8 % 713475737) ^ i9) + i10;
        if (i10 == 0) {
            throw null;
        }
        switch (i11) {
            case 0:
            case 5:
                throw new zzao();
            case 1:
                return zzl();
            case 2:
                return Long.valueOf(zzm());
            case 3:
                return zzn().zza();
            case 4:
                ArrayList arrayList = new ArrayList();
                Iterator it = zzo().iterator();
                while (it.hasNext()) {
                    arrayList.add(((zzar) it.next()).zzh());
                }
                return arrayList;
            case 6:
                return Double.valueOf(zzq());
            default:
                Buffer$$ExternalSyntheticBUOutline2.m917m(zzt.zza("HkezqgQcPni/TE/NwjgYPC5H6Q2JRdEp275wOg=="));
                return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:138:0x0252, code lost:
    
        if (r20.equals(java.lang.Object.class) != false) goto L150;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzi(Class cls) throws zzao {
        int i = ((((~97611886) & 164954443) | 114310280) + ((97611886 & 151322963) | 281583160)) - 463131379;
        int i2 = 1657262432 % 1573177440;
        int i3 = ((((~1700313522) & 591806470) | 140250211) + ((1700313522 & 587350565) | 347441897)) - 1065422613;
        int i4 = 1418468232 % 12692331;
        int i5 = this.zza;
        int i6 = ((((((~1340321698) & 1570808991) | 704716576) + ((1340321698 & (-174021889)) | (-1570942368))) - 718310630) ^ (1426869906 % 213153954)) + i5;
        if (i5 == 0) {
            throw null;
        }
        int i7 = i3 ^ i4;
        int i8 = i ^ i2;
        Class cls2 = Double.TYPE;
        Class cls3 = Short.TYPE;
        Class cls4 = Byte.TYPE;
        Class cls5 = Long.TYPE;
        Class cls6 = Integer.TYPE;
        Class cls7 = Float.TYPE;
        switch (i6) {
            case 0:
                break;
            case 1:
                return zzl();
            case 2:
                long jZzm = zzm();
                if (!cls.equals(Byte.class) && !cls.equals(cls4)) {
                    if (cls.equals(Short.class) || cls.equals(cls3)) {
                        return Short.valueOf((short) ((((int) jZzm) << i8) >> i8));
                    }
                    if (cls.equals(Integer.class) || cls.equals(cls6)) {
                        return Integer.valueOf(Math.toIntExact(jZzm));
                    }
                    if (!cls.equals(Long.class) && !cls.equals(cls5)) {
                        if (cls.equals(Float.class) || cls.equals(cls7)) {
                            return Float.valueOf(jZzm);
                        }
                        if (cls.equals(Double.class) || cls.equals(cls2)) {
                            return Double.valueOf(jZzm);
                        }
                        if (cls.equals(Boolean.class) || cls.equals(Boolean.TYPE)) {
                            return Boolean.valueOf(jZzm != 0);
                        }
                        if (!cls.equals(Character.class) && !cls.equals(Character.TYPE)) {
                        }
                        break;
                    }
                    return Long.valueOf(jZzm);
                }
                return Byte.valueOf((byte) ((((int) jZzm) << i7) >> i7));
            case 3:
                zzv zzvVarZzn = zzn();
                if (cls.equals(zzv.class)) {
                    return zzvVarZzn;
                }
                if (cls.equals(Object.class) || cls.equals(String.class)) {
                    return zzvVarZzn.zzc();
                }
                if (cls.equals(byte[].class)) {
                    return zzvVarZzn.zza();
                }
                break;
            case 4:
                if (cls.equals(ArrayList.class) || cls.equals(Object.class) || cls.equals(AbstractList.class) || cls.equals(AbstractCollection.class) || cls.equals(Serializable.class) || cls.equals(Cloneable.class) || cls.equals(Iterable.class) || cls.equals(Collection.class) || cls.equals(List.class) || cls.equals(RandomAccess.class)) {
                    return zzh();
                }
                if (cls.isArray()) {
                    List listZzo = zzo();
                    Class<?> componentType = cls.getComponentType();
                    Object objNewInstance = Array.newInstance(componentType, listZzo.size());
                    for (int i9 = 0; i9 < listZzo.size(); i9++) {
                        Array.set(objNewInstance, i9, ((zzar) listZzo.get(i9)).zzi(componentType));
                    }
                    return objNewInstance;
                }
                break;
            case 5:
                return zzp();
            case 6:
                double dZzq = zzq();
                if (cls.equals(Float.class) || cls.equals(cls7)) {
                    return Float.valueOf((float) dZzq);
                }
                if (cls.equals(Integer.class) || cls.equals(cls6)) {
                    return Integer.valueOf((int) dZzq);
                }
                if (cls.equals(Long.class) || cls.equals(cls5)) {
                    return Long.valueOf((long) dZzq);
                }
                if (cls.equals(Byte.class) || cls.equals(cls4)) {
                    return Byte.valueOf((byte) ((((int) dZzq) << i7) >> i7));
                }
                if (cls.equals(Short.class) || cls.equals(cls3)) {
                    return Short.valueOf((short) ((((int) dZzq) << i8) >> i8));
                }
                if (cls.equals(Double.class) || cls.equals(cls2) || cls.equals(Object.class)) {
                    return Double.valueOf(dZzq);
                }
                break;
            default:
                Buffer$$ExternalSyntheticBUOutline2.m917m(zzt.zza("HkezqgQcPni/TE/NwjgYPC5H6Q2JRdEp275wOg=="));
                return null;
        }
        throw new zzao();
    }

    public final void zzk(OutputStream outputStream) throws IOException, zzao {
        long[] jArr = {1096079422, 21345924, 206269241, 1367643268, 1352213041, 1453396557, 419974390, 1998713308, 1456575805};
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        long j6 = jArr[5];
        long j7 = jArr[6];
        long j8 = jArr[7];
        long j9 = j7 + (((((~j) & j2) | j3) + ((j & j4) | j5)) - j6);
        long j10 = j8 % 1456575805;
        int i = ((((~1182595892) & 2124317320) | 1268383979) + ((1182595892 & 872718928) | 1132164311)) - (-1060702887);
        int i2 = 1072628238 % 516816850;
        int i3 = ((((~25701533) & 1812499204) | 591223219) + ((25701533 & 1287816772) | 64642538)) - 1887635333;
        int i4 = 1026374844 % 46811558;
        int i5 = this.zza;
        int i6 = ((((((~2105342203) & 2049862401) | 1698333727) + ((2105342203 & (-1643877632)) | (-2049769426))) - 132143960) ^ (1059789835 % 1012707329)) + i5;
        if (i5 == 0) {
            throw null;
        }
        switch (i6) {
            case 0:
            case 1:
            case 5:
                throw new zzao();
            case 2:
                zzr.zzb(zzm(), new zzaq(outputStream, 1), true);
                return;
            case 3:
                byte[] bArr = zzn().zza;
                zzr.zzb(((long) bArr.length) * (j9 ^ j10), new zzaq(outputStream, 0), true);
                outputStream.write(bArr);
                return;
            case 4:
                List listZzo = zzo();
                zzr.zzb(listZzo.size(), new zzaq(outputStream, i3 ^ i4), true);
                Iterator it = listZzo.iterator();
                while (it.hasNext()) {
                    ((zzar) it.next()).zzk(outputStream);
                }
                return;
            case 6:
                double dZzq = zzq();
                zzaq zzaqVar = new zzaq(outputStream, i ^ i2);
                long jDoubleToRawLongBits = Double.doubleToRawLongBits(dZzq);
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate((((((~1514722040) & 82790042) | 437825894) + ((1514722040 & 1441228440) | 1392519490)) - 1911317206) ^ (1238504350 % 1769972));
                byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
                byteBufferAllocate.putLong(jDoubleToRawLongBits);
                for (byte b2 : byteBufferAllocate.array()) {
                    zzaqVar.zza(b2);
                }
                int length = byteBufferAllocate.array().length;
                return;
            default:
                return;
        }
    }

    public final Object zzl() throws zzao {
        int[] iArr = {636453333, 363983104, 1075208227, 2146014080, 1783382730, -364134701, 775056794, 1564003050, 99885196};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        zzs((iArr[7] % 99885196) ^ (i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6)));
        return this.zzb;
    }

    public final long zzm() throws zzao {
        int[] iArr = {30387226, 1173447944, 304523573, 1171344488, 35694692, 2069301473, 854121980, 1541417540, 1245036421};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        zzs((iArr[7] % 1245036421) ^ (i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6)));
        return this.zzc;
    }

    public final zzv zzn() throws zzao {
        int[] iArr = {1281944976, 1463473728, 847256033, 1698424322, 948255187, -1554299396, 419914800, 1727952741, 1091714937};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        zzs((iArr[7] % 1091714937) ^ (i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6)));
        return this.zze;
    }

    public final List zzo() throws zzao {
        int[] iArr = {1654844049, 956749401, 3147556, 1023856765, 1183918756, -1963614606, 352085974, 955798986, 791251530};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        zzs((iArr[7] % 791251530) ^ (i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6)));
        return this.zzf;
    }

    public final zzaj zzp() throws zzao {
        int[] iArr = {138700754, 1311190794, 1098494212, 235277834, 2126148, 2082044642, 778544518, 631340353, 54449299};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        zzs((iArr[7] % 54449299) ^ (i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6)));
        return this.zzg;
    }

    public final double zzq() throws zzao {
        int[] iArr = {1360613073, 10730298, 1998148311, 682535208, 744243906, -1215447656, 441767868, 1566369633, 483689685};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        zzs((iArr[7] % 483689685) ^ (i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6)));
        return this.zzd;
    }
}
