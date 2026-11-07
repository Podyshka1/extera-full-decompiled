package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcw> CREATOR = new zzcx();
    public static final zzcw zza = new zzcw(false);
    private final boolean zzb;

    public zzcw(boolean z) {
        this.zzb = z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        boolean z = this.zzb;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, z);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
