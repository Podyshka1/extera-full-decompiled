package com.google.android.gms.internal.mlkit_vision_label;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new zzk();
    public int zza;
    public int zzb;
    public float zzc;
    public int zzd;

    public zzj(int i, int i2, float f, int i3) {
        if (i != 1) {
            f$$ExternalSyntheticBUOutline1.m178m("Unknown language.");
            throw null;
        }
        this.zza = 1;
        this.zzb = i2;
        this.zzc = f;
        this.zzd = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zza);
        SafeParcelWriter.writeInt(parcel, 3, this.zzb);
        SafeParcelWriter.writeFloat(parcel, 4, this.zzc);
        SafeParcelWriter.writeInt(parcel, 5, this.zzd);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
