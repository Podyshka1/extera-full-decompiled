package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class zzdt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdt> CREATOR = new zzdu();
    public final int zza;

    @Nullable
    public final ParcelFileDescriptor zzb;

    public zzdt(int i, ParcelFileDescriptor parcelFileDescriptor) {
        this.zza = i;
        this.zzb = parcelFileDescriptor;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zza);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzb, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
