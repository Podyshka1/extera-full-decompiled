package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbn> CREATOR = new zzbo();
    private final int zza;

    public zzbn() {
        this.zza = 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof zzbn) && this.zza == ((zzbn) obj).zza;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.zza));
    }

    public final String toString() {
        int i = this.zza;
        return String.format("joinOptions(connectionType=%s)", i != 0 ? i != 2 ? "UNKNOWN" : "INVISIBLE" : "STRONG");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zza);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public zzbn(int i) {
        this.zza = i;
    }
}
