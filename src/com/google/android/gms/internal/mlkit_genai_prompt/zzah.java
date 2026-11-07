package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class zzah implements SafeParcelable, zzv {
    public static final Parcelable.Creator<zzah> CREATOR = new zzai();
    private final zzml zza;
    private final zzbt zzb;
    private final int zzc;

    public zzah(List list, zzbt zzbtVar, int i) {
        this.zza = zzml.zzq(list);
        this.zzb = zzbtVar;
        this.zzc = i;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zzml zzmlVar = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, zzmlVar, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzb, i, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzc);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final zzml zza() {
        return this.zza;
    }

    public final zzbt zzb() {
        return this.zzb;
    }

    public final int zzc() {
        return this.zzc;
    }
}
