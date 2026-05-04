package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zzav extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzav> CREATOR = new zzaw();
    private final zzat zza;
    private final zzat zzb;

    public zzav(zzat zzatVar, zzat zzatVar2) {
        this.zza = zzatVar;
        this.zzb = zzatVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzav)) {
            return false;
        }
        zzav zzavVar = (zzav) obj;
        return CastUtils.zze(this.zza, zzavVar.zza) && CastUtils.zze(this.zzb, zzavVar.zzb);
    }

    public final int hashCode() {
        return Objects.hashCode(this.zza, this.zzb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zzat zzatVar = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, zzatVar, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzb, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
