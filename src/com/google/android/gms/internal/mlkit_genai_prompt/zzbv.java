package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes5.dex */
public final class zzbv extends AbstractSafeParcelable implements zzv {
    public static final Parcelable.Creator<zzbv> CREATOR = new zzbw();
    private final ParcelFileDescriptor zza;
    private final String zzb;

    public zzbv(ParcelFileDescriptor parcelFileDescriptor, String str) {
        this.zza = parcelFileDescriptor;
        this.zzb = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.zza, i, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final ParcelFileDescriptor zza() {
        return this.zza;
    }
}
