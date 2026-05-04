package com.google.android.gms.internal.measurement;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzlw {
    private static final zzlw zzd = new zzlw(true);
    final zzoe zza = new zzoa();
    private boolean zzb;
    private boolean zzc;

    private zzlw() {
    }

    static void zzf(zzlm zzlmVar, zzot zzotVar, int i, Object obj) {
        if (zzotVar == zzot.zzj) {
            zznm zznmVar = (zznm) obj;
            zzmp.zzd(zznmVar);
            zzlmVar.zza(i, 3);
            zznmVar.zzcB(zzlmVar);
            zzlmVar.zza(i, 4);
            return;
        }
        zzlmVar.zza(i, zzotVar.zzb());
        zzou zzouVar = zzou.INT;
        switch (zzotVar.ordinal()) {
            case 0:
                zzlmVar.zzu(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                break;
            case 1:
                zzlmVar.zzs(Float.floatToRawIntBits(((Float) obj).floatValue()));
                break;
            case 2:
                zzlmVar.zzt(((Long) obj).longValue());
                break;
            case 3:
                zzlmVar.zzt(((Long) obj).longValue());
                break;
            case 4:
                zzlmVar.zzq(((Integer) obj).intValue());
                break;
            case 5:
                zzlmVar.zzu(((Long) obj).longValue());
                break;
            case 6:
                zzlmVar.zzs(((Integer) obj).intValue());
                break;
            case 7:
                zzlmVar.zzp(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                break;
            case 8:
                if (!(obj instanceof zzlh)) {
                    zzlmVar.zzx((String) obj);
                } else {
                    zzlmVar.zzj((zzlh) obj);
                }
                break;
            case 9:
                ((zznm) obj).zzcB(zzlmVar);
                break;
            case 10:
                zzlmVar.zzo((zznm) obj);
                break;
            case 11:
                if (!(obj instanceof zzlh)) {
                    byte[] bArr = (byte[]) obj;
                    zzlmVar.zzk(bArr, 0, bArr.length);
                } else {
                    zzlmVar.zzj((zzlh) obj);
                }
                break;
            case 12:
                zzlmVar.zzr(((Integer) obj).intValue());
                break;
            case 13:
                if (!(obj instanceof zzmj)) {
                    zzlmVar.zzq(((Integer) obj).intValue());
                } else {
                    zzlmVar.zzq(((zzmj) obj).zza());
                }
                break;
            case 14:
                zzlmVar.zzs(((Integer) obj).intValue());
                break;
            case 15:
                zzlmVar.zzu(((Long) obj).longValue());
                break;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                zzlmVar.zzr((iIntValue >> 31) ^ (iIntValue + iIntValue));
                break;
            case 17:
                long jLongValue = ((Long) obj).longValue();
                zzlmVar.zzt((jLongValue >> 63) ^ (jLongValue + jLongValue));
                break;
        }
    }

    static int zzh(zzot zzotVar, int i, Object obj) {
        int iZzz = zzlm.zzz(i << 3);
        if (zzotVar == zzot.zzj) {
            zzmp.zzd((zznm) obj);
            iZzz += iZzz;
        }
        return iZzz + zzi(zzotVar, obj);
    }

    static int zzi(zzot zzotVar, Object obj) {
        int iZzc;
        int iZzz;
        zzot zzotVar2 = zzot.zza;
        zzou zzouVar = zzou.INT;
        switch (zzotVar.ordinal()) {
            case 0:
                ((Double) obj).getClass();
                int i = zzlm.$r8$clinit;
                return 8;
            case 1:
                ((Float) obj).getClass();
                int i2 = zzlm.$r8$clinit;
                return 4;
            case 2:
                return zzlm.zzA(((Long) obj).longValue());
            case 3:
                return zzlm.zzA(((Long) obj).longValue());
            case 4:
                return zzlm.zzA(((Integer) obj).intValue());
            case 5:
                ((Long) obj).getClass();
                int i3 = zzlm.$r8$clinit;
                return 8;
            case 6:
                ((Integer) obj).getClass();
                int i4 = zzlm.$r8$clinit;
                return 4;
            case 7:
                ((Boolean) obj).getClass();
                int i5 = zzlm.$r8$clinit;
                return 1;
            case 8:
                if (!(obj instanceof zzlh)) {
                    return zzlm.zzB((String) obj);
                }
                int i6 = zzlm.$r8$clinit;
                iZzc = ((zzlh) obj).zzc();
                iZzz = zzlm.zzz(iZzc);
                break;
                break;
            case 9:
                return ((zznm) obj).zzcn();
            case 10:
                return zzlm.zzC((zznm) obj);
            case 11:
                if (!(obj instanceof zzlh)) {
                    int i7 = zzlm.$r8$clinit;
                    iZzc = ((byte[]) obj).length;
                    iZzz = zzlm.zzz(iZzc);
                } else {
                    int i8 = zzlm.$r8$clinit;
                    iZzc = ((zzlh) obj).zzc();
                    iZzz = zzlm.zzz(iZzc);
                }
                break;
            case 12:
                return zzlm.zzz(((Integer) obj).intValue());
            case 13:
                return obj instanceof zzmj ? zzlm.zzA(((zzmj) obj).zza()) : zzlm.zzA(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).getClass();
                int i9 = zzlm.$r8$clinit;
                return 4;
            case 15:
                ((Long) obj).getClass();
                int i10 = zzlm.$r8$clinit;
                return 8;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                return zzlm.zzz((iIntValue >> 31) ^ (iIntValue + iIntValue));
            case 17:
                long jLongValue = ((Long) obj).longValue();
                return zzlm.zzA((jLongValue >> 63) ^ (jLongValue + jLongValue));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return iZzz + iZzc;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0043 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final void zzn(zzlv zzlvVar, Object obj) {
        boolean z;
        zzlvVar.zzb();
        byte[] bArr = zzmp.zzb;
        obj.getClass();
        zzot zzotVar = zzot.zza;
        zzou zzouVar = zzou.INT;
        switch (r0.zza()) {
            case INT:
                z = obj instanceof Integer;
                if (z) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzlvVar.zza()), zzlvVar.zzb().zza(), obj.getClass().getName()));
            case LONG:
                z = obj instanceof Long;
                if (z) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzlvVar.zza()), zzlvVar.zzb().zza(), obj.getClass().getName()));
            case FLOAT:
                z = obj instanceof Float;
                if (z) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzlvVar.zza()), zzlvVar.zzb().zza(), obj.getClass().getName()));
            case DOUBLE:
                z = obj instanceof Double;
                if (z) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzlvVar.zza()), zzlvVar.zzb().zza(), obj.getClass().getName()));
            case BOOLEAN:
                z = obj instanceof Boolean;
                if (z) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzlvVar.zza()), zzlvVar.zzb().zza(), obj.getClass().getName()));
            case STRING:
                z = obj instanceof String;
                if (z) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzlvVar.zza()), zzlvVar.zzb().zza(), obj.getClass().getName()));
            case BYTE_STRING:
                if ((obj instanceof zzlh) || (obj instanceof byte[])) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzlvVar.zza()), zzlvVar.zzb().zza(), obj.getClass().getName()));
            case ENUM:
                if ((obj instanceof Integer) || (obj instanceof zzmj)) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzlvVar.zza()), zzlvVar.zzb().zza(), obj.getClass().getName()));
            case MESSAGE:
                if (obj instanceof zznm) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzlvVar.zza()), zzlvVar.zzb().zza(), obj.getClass().getName()));
            default:
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzlvVar.zza()), zzlvVar.zzb().zza(), obj.getClass().getName()));
        }
    }

    public final /* bridge */ /* synthetic */ Object clone() {
        zzlw zzlwVar = new zzlw();
        zzoe zzoeVar = this.zza;
        int iZzc = zzoeVar.zzc();
        for (int i = 0; i < iZzc; i++) {
            Map.Entry entryZzd = zzoeVar.zzd(i);
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(((zzob) entryZzd).zza());
            zzlwVar.zzd(null, entryZzd.getValue());
        }
        for (Map.Entry entry : zzoeVar.zze()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(entry.getKey());
            zzlwVar.zzd(null, entry.getValue());
        }
        zzlwVar.zzc = this.zzc;
        return zzlwVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzlw) {
            return this.zza.equals(((zzlw) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final void zzb() {
        if (this.zzb) {
            return;
        }
        zzoe zzoeVar = this.zza;
        int iZzc = zzoeVar.zzc();
        for (int i = 0; i < iZzc; i++) {
            Object value = zzoeVar.zzd(i).getValue();
            if (value instanceof zzmf) {
                ((zzmf) value).zzcj();
            }
        }
        Iterator it = zzoeVar.zze().iterator();
        while (it.hasNext()) {
            Object value2 = ((Map.Entry) it.next()).getValue();
            if (value2 instanceof zzmf) {
                ((zzmf) value2).zzcj();
            }
        }
        zzoeVar.zza();
        this.zzb = true;
    }

    public final void zzd(zzlv zzlvVar, Object obj) {
        if (!zzlvVar.zzd()) {
            zzn(zzlvVar, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            List list = (List) obj;
            int size = list.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                Object obj2 = list.get(i);
                zzn(zzlvVar, obj2);
                arrayList.add(obj2);
            }
            obj = arrayList;
        }
        this.zza.put(zzlvVar, obj);
    }

    private zzlw(boolean z) {
        zzb();
        zzb();
    }
}
