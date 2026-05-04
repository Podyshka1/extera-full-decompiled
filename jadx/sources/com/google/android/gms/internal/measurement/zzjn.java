package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.common.base.Supplier;

/* JADX INFO: loaded from: classes4.dex */
final class zzjn extends zzkh {
    private final Context zza;
    private final Supplier zzb;

    zzjn(Context context, Supplier supplier) {
        this.zza = context;
        this.zzb = supplier;
    }

    public final boolean equals(Object obj) {
        Supplier supplier;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzkh) {
            zzkh zzkhVar = (zzkh) obj;
            if (this.zza.equals(zzkhVar.zza()) && ((supplier = this.zzb) != null ? supplier.equals(zzkhVar.zzb()) : zzkhVar.zzb() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.zza.hashCode() ^ 1000003;
        Supplier supplier = this.zzb;
        return (iHashCode * 1000003) ^ (supplier == null ? 0 : supplier.hashCode());
    }

    public final String toString() {
        String string = this.zza.toString();
        int length = string.length();
        String strValueOf = String.valueOf(this.zzb);
        StringBuilder sb = new StringBuilder(length + 45 + strValueOf.length() + 1);
        sb.append("FlagsContext{context=");
        sb.append(string);
        sb.append(", hermeticFileOverrides=");
        sb.append(strValueOf);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzkh
    final Context zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzkh
    final Supplier zzb() {
        return this.zzb;
    }
}
