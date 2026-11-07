package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class zzci implements SafeParcelable, zzv {
    public static final Parcelable.Creator<zzci> CREATOR = new zzcj();
    private final zzml zza;
    private final zzbt zzb;
    private final zzck zzc;
    private final zzml zzd;

    public zzci(List list, zzbt zzbtVar, zzck zzckVar, List list2) {
        this.zza = zzml.zzq(list);
        this.zzb = zzbtVar;
        this.zzc = zzckVar;
        this.zzd = list2 == null ? zzml.zzk() : zzml.zzq(list2);
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
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzc, i, false);
        SafeParcelWriter.writeTypedList(parcel, 4, this.zzd, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final zzml zza() {
        return this.zza;
    }

    public final zzbt zzb() {
        return this.zzb;
    }

    public final zzck zzc() {
        return this.zzc;
    }

    public final zzml zzd() {
        return this.zzd;
    }
}
