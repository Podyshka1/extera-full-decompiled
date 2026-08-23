package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zzm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzm> CREATOR = new zzn();
    private final int zza;

    public zzm(int i) {
        this.zza = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, i2);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
