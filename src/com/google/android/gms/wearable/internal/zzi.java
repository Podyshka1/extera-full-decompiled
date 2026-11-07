package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes5.dex */
public final class zzi extends AbstractSafeParcelable implements com.google.android.gms.wearable.zza {
    public static final Parcelable.Creator<zzi> CREATOR = new zzj();
    private final byte zza;
    private final byte zzb;
    private final String zzc;

    public zzi(byte b2, byte b3, String str) {
        this.zza = b2;
        this.zzb = b3;
        this.zzc = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzi.class != obj.getClass()) {
            return false;
        }
        zzi zziVar = (zzi) obj;
        return this.zza == zziVar.zza && this.zzb == zziVar.zzb && this.zzc.equals(zziVar.zzc);
    }

    public final int hashCode() {
        return ((((this.zza + 31) * 31) + this.zzb) * 31) + this.zzc.hashCode();
    }

    public final String toString() {
        byte b2 = this.zza;
        byte b3 = this.zzb;
        return "AmsEntityUpdateParcelable{, mEntityId=" + ((int) b2) + ", mAttributeId=" + ((int) b3) + ", mValue='" + this.zzc + "'}";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByte(parcel, 2, this.zza);
        SafeParcelWriter.writeByte(parcel, 3, this.zzb);
        SafeParcelWriter.writeString(parcel, 4, this.zzc, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
