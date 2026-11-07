package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.wearable.CapabilityInfo;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class zzao extends AbstractSafeParcelable implements CapabilityInfo {
    public static final Parcelable.Creator<zzao> CREATOR = new zzap();
    private final String zzb;
    private final List zzc;
    private final Object zza = new Object();
    private Set zzd = null;

    public zzao(String str, List list) {
        this.zzb = str;
        this.zzc = list;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzao.class != obj.getClass()) {
            return false;
        }
        zzao zzaoVar = (zzao) obj;
        String str = this.zzb;
        String str2 = zzaoVar.zzb;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        List list = this.zzc;
        List list2 = zzaoVar.zzc;
        return list == null ? list2 == null : list.equals(list2);
    }

    public final int hashCode() {
        String str = this.zzb;
        int iHashCode = ((str != null ? str.hashCode() : 0) + 31) * 31;
        List list = this.zzc;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        return "CapabilityInfo{" + this.zzb + ", " + String.valueOf(this.zzc) + "}";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeTypedList(parcel, 3, this.zzc, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
