package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zzat extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzat> CREATOR = new zzau();
    private final float zza;
    private final float zzb;
    private final float zzc;

    public zzat(float f, float f2, float f3) {
        this.zza = f;
        this.zzb = f2;
        this.zzc = f3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzat)) {
            return false;
        }
        zzat zzatVar = (zzat) obj;
        return this.zza == zzatVar.zza && this.zzb == zzatVar.zzb && this.zzc == zzatVar.zzc;
    }

    public final int hashCode() {
        return Objects.hashCode(Float.valueOf(this.zza), Float.valueOf(this.zzb), Float.valueOf(this.zzc));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        float f = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeFloat(parcel, 2, f);
        SafeParcelWriter.writeFloat(parcel, 3, this.zzb);
        SafeParcelWriter.writeFloat(parcel, 4, this.zzc);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
