package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes4.dex */
public final class zzq extends Exception implements SafeParcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new zzr();
    private final int zza;
    private final int zzb;
    private final zzcr zzc;
    private final zzbq zzd;

    public zzq(int i, int i2, String str, zzcr zzcrVar, zzbq zzbqVar) {
        super(str);
        this.zza = i;
        this.zzb = i2;
        this.zzc = zzcrVar;
        this.zzd = zzbqVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeInt(parcel, 2, this.zzb);
        SafeParcelWriter.writeString(parcel, 3, getMessage(), false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzc, i, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zzd, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final int zza() {
        return this.zza;
    }

    public final int zzb() {
        return this.zzb;
    }

    public final zzbq zzc() {
        return this.zzd;
    }
}
