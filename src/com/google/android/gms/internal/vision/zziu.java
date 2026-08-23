package com.google.android.gms.internal.vision;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zziu {
    private static final zziu zzd = new zziu(true);
    final zzlh zza;
    private boolean zzb;
    private boolean zzc;

    private zziu() {
        this.zza = zzlh.zza(16);
    }

    private zziu(boolean z) {
        this(zzlh.zza(0));
        zzb();
    }

    private zziu(zzlh zzlhVar) {
        this.zza = zzlhVar;
        zzb();
    }

    public final void zzb() {
        if (this.zzb) {
            return;
        }
        this.zza.zza();
        this.zzb = true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zziu) {
            return this.zza.equals(((zziu) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final Iterator zzd() {
        if (this.zzc) {
            return new zzjq(this.zza.entrySet().iterator());
        }
        return this.zza.entrySet().iterator();
    }

    final Iterator zze() {
        if (this.zzc) {
            return new zzjq(this.zza.zze().iterator());
        }
        return this.zza.zze().iterator();
    }

    public final void zza(zziw zziwVar, Object obj) {
        if (zziwVar.zzd()) {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                zzd(zziwVar, obj2);
            }
            obj = arrayList;
        } else {
            zzd(zziwVar, obj);
        }
        this.zza.put(zziwVar, obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void zzd(zziw zziwVar, Object obj) {
        boolean z;
        zzml zzmlVarZzb = zziwVar.zzb();
        zzjf.zza(obj);
        switch (zzit.zza[zzmlVarZzb.zza().ordinal()]) {
            case 1:
                z = obj instanceof Integer;
                break;
            case 2:
                z = obj instanceof Long;
                break;
            case 3:
                z = obj instanceof Float;
                break;
            case 4:
                z = obj instanceof Double;
                break;
            case 5:
                z = obj instanceof Boolean;
                break;
            case 6:
                z = obj instanceof String;
                break;
            case 7:
                z = (obj instanceof zzht) || (obj instanceof byte[]);
                break;
            case 8:
                if (!(obj instanceof Integer) && !(obj instanceof zzje)) {
                    z = false;
                    break;
                }
                break;
            case 9:
                if (!(obj instanceof zzkk)) {
                    z = false;
                    break;
                }
                break;
            default:
                z = false;
                break;
        }
        if (!z) {
            throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zziwVar.zza()), zziwVar.zzb().zza(), obj.getClass().getName()));
        }
    }

    public final boolean zzf() {
        for (int i = 0; i < this.zza.zzc(); i++) {
            if (!zza(this.zza.zzb(i))) {
                return false;
            }
        }
        Iterator it = this.zza.zzd().iterator();
        while (it.hasNext()) {
            if (!zza((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    private static boolean zza(Map.Entry entry) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(entry.getKey());
        throw null;
    }

    public final void zza(zziu zziuVar) {
        for (int i = 0; i < zziuVar.zza.zzc(); i++) {
            zzb(zziuVar.zza.zzb(i));
        }
        Iterator it = zziuVar.zza.zzd().iterator();
        while (it.hasNext()) {
            zzb((Map.Entry) it.next());
        }
    }

    private final void zzb(Map.Entry entry) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(entry.getKey());
        entry.getValue();
        throw null;
    }

    public final int zzg() {
        int iZzc = 0;
        for (int i = 0; i < this.zza.zzc(); i++) {
            iZzc += zzc(this.zza.zzb(i));
        }
        Iterator it = this.zza.zzd().iterator();
        while (it.hasNext()) {
            iZzc += zzc((Map.Entry) it.next());
        }
        return iZzc;
    }

    private static int zzc(Map.Entry entry) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(entry.getKey());
        entry.getValue();
        throw null;
    }

    static int zza(zzml zzmlVar, int i, Object obj) {
        int iZze = zzii.zze(i);
        if (zzmlVar == zzml.zzj) {
            zzjf.zza((zzkk) obj);
            iZze <<= 1;
        }
        return iZze + zza(zzmlVar, obj);
    }

    private static int zza(zzml zzmlVar, Object obj) {
        switch (zzit.zzb[zzmlVar.ordinal()]) {
            case 1:
                return zzii.zzb(((Double) obj).doubleValue());
            case 2:
                return zzii.zzb(((Float) obj).floatValue());
            case 3:
                return zzii.zzd(((Long) obj).longValue());
            case 4:
                return zzii.zze(((Long) obj).longValue());
            case 5:
                return zzii.zzf(((Integer) obj).intValue());
            case 6:
                return zzii.zzg(((Long) obj).longValue());
            case 7:
                return zzii.zzi(((Integer) obj).intValue());
            case 8:
                return zzii.zzb(((Boolean) obj).booleanValue());
            case 9:
                return zzii.zzc((zzkk) obj);
            case 10:
                return zzii.zzb((zzkk) obj);
            case 11:
                if (obj instanceof zzht) {
                    return zzii.zzb((zzht) obj);
                }
                return zzii.zzb((String) obj);
            case 12:
                if (obj instanceof zzht) {
                    return zzii.zzb((zzht) obj);
                }
                return zzii.zzb((byte[]) obj);
            case 13:
                return zzii.zzg(((Integer) obj).intValue());
            case 14:
                return zzii.zzj(((Integer) obj).intValue());
            case 15:
                return zzii.zzh(((Long) obj).longValue());
            case 16:
                return zzii.zzh(((Integer) obj).intValue());
            case 17:
                return zzii.zzf(((Long) obj).longValue());
            case 18:
                if (obj instanceof zzje) {
                    return zzii.zzk(((zzje) obj).zza());
                }
                return zzii.zzk(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int zzc(zziw zziwVar, Object obj) {
        zzml zzmlVarZzb = zziwVar.zzb();
        int iZza = zziwVar.zza();
        if (zziwVar.zzd()) {
            int iZza2 = 0;
            if (zziwVar.zze()) {
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    iZza2 += zza(zzmlVarZzb, it.next());
                }
                return zzii.zze(iZza) + iZza2 + zzii.zzl(iZza2);
            }
            Iterator it2 = ((List) obj).iterator();
            while (it2.hasNext()) {
                iZza2 += zza(zzmlVarZzb, iZza, it2.next());
            }
            return iZza2;
        }
        return zza(zzmlVarZzb, iZza, obj);
    }

    public final /* synthetic */ Object clone() {
        zziu zziuVar = new zziu();
        for (int i = 0; i < this.zza.zzc(); i++) {
            Map.Entry entryZzb = this.zza.zzb(i);
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(entryZzb.getKey());
            zziuVar.zza((zziw) null, entryZzb.getValue());
        }
        for (Map.Entry entry : this.zza.zzd()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(entry.getKey());
            zziuVar.zza((zziw) null, entry.getValue());
        }
        zziuVar.zzc = this.zzc;
        return zziuVar;
    }
}
