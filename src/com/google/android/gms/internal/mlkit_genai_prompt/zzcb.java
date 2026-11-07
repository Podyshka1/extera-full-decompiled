package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcb extends AbstractSafeParcelable implements zzv {
    public static final Parcelable.Creator<zzcb> CREATOR = new zzcc();
    private final List zza;
    private final ParcelFileDescriptor zzb;

    public zzcb(List list, ParcelFileDescriptor parcelFileDescriptor) {
        this.zza = list;
        this.zzb = parcelFileDescriptor;
    }

    public static zzcb zzb(List list, ParcelFileDescriptor parcelFileDescriptor) {
        return new zzcb(list, parcelFileDescriptor);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        List list = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, list, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzb, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final ParcelFileDescriptor zza() {
        return this.zzb;
    }
}
