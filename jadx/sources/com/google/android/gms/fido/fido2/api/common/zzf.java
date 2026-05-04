package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.fido.zzgx;

/* JADX INFO: loaded from: classes4.dex */
public final class zzf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzf> CREATOR = new zzg();
    private final zzgx zza;
    private final zzgx zzb;

    public zzf(zzgx zzgxVar, zzgx zzgxVar2) {
        this.zza = zzgxVar;
        this.zzb = zzgxVar2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzf)) {
            return false;
        }
        zzf zzfVar = (zzf) obj;
        return Objects.equal(this.zza, zzfVar.zza) && Objects.equal(this.zzb, zzfVar.zzb);
    }

    public final int hashCode() {
        return Objects.hashCode(this.zza, this.zzb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zzgx zzgxVar = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 1, zzgxVar == null ? null : zzgxVar.zzm(), false);
        zzgx zzgxVar2 = this.zzb;
        SafeParcelWriter.writeByteArray(parcel, 2, zzgxVar2 != null ? zzgxVar2.zzm() : null, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
