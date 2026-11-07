package com.google.android.gms.internal.fido;

import java.util.ArrayList;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhg extends zzhp {
    private final zzcc zza;
    private final int zzb;

    public zzhg(zzcc zzccVar) throws zzhf {
        zzccVar.getClass();
        this.zza = zzccVar;
        int i = 0;
        int i2 = 0;
        while (true) {
            zzcc zzccVar2 = this.zza;
            if (i >= zzccVar2.size()) {
                break;
            }
            int iZzb = ((zzhp) zzccVar2.get(i)).zzb();
            if (i2 < iZzb) {
                i2 = iZzb;
            }
            i++;
        }
        int i3 = i2 + 1;
        this.zzb = i3;
        if (i3 > 8) {
            throw new zzhf("Exceeded cutoff limit for max depth of cbor value");
        }
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzhp zzhpVar = (zzhp) obj;
        if (zzhp.zzd(ByteCompanionObject.MIN_VALUE) != zzhpVar.zza()) {
            return zzhp.zzd(ByteCompanionObject.MIN_VALUE) - zzhpVar.zza();
        }
        zzhg zzhgVar = (zzhg) zzhpVar;
        zzcc zzccVar = this.zza;
        int size = zzccVar.size();
        zzcc zzccVar2 = zzhgVar.zza;
        if (size != zzccVar2.size()) {
            return zzccVar.size() - zzccVar2.size();
        }
        int i = 0;
        while (true) {
            zzcc zzccVar3 = this.zza;
            if (i >= zzccVar3.size()) {
                return 0;
            }
            int iCompareTo = ((zzhp) zzccVar3.get(i)).compareTo((zzhp) zzhgVar.zza.get(i));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
            i++;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzhg.class == obj.getClass()) {
            return this.zza.equals(((zzhg) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(zzhp.zzd(ByteCompanionObject.MIN_VALUE)), this.zza});
    }

    public final String toString() {
        if (this.zza.isEmpty()) {
            return _UrlKt.PATH_SEGMENT_ENCODE_SET_URI;
        }
        ArrayList arrayList = new ArrayList();
        zzcc zzccVar = this.zza;
        int size = zzccVar.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(((zzhp) zzccVar.get(i)).toString().replace("\n", "\n  "));
        }
        zzbd zzbdVarZza = zzbd.zza(",\n  ");
        StringBuilder sb = new StringBuilder("[\n  ");
        zzbdVarZza.zzc(sb, arrayList.iterator());
        sb.append("\n]");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    public final int zza() {
        return zzhp.zzd(ByteCompanionObject.MIN_VALUE);
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    public final int zzb() {
        return this.zzb;
    }
}
