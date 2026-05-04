package com.google.android.gms.cast.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zzz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzz> CREATOR = new zzaa();
    private final int zza;
    private final boolean zzb;
    private final boolean zzc;

    zzz(int i, boolean z, boolean z2) {
        this.zza = i;
        this.zzb = z;
        this.zzc = z2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzz)) {
            return false;
        }
        zzz zzzVar = (zzz) obj;
        return this.zza == zzzVar.zza && this.zzb == zzzVar.zzb && this.zzc == zzzVar.zzc;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.zza), Boolean.valueOf(this.zzb), Boolean.valueOf(this.zzc));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, i2);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzb);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzc);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
