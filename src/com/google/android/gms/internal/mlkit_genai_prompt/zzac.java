package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zzac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzac> CREATOR = new zzad();
    public final int zza;
    private final String zzb;

    @Deprecated
    private final float zzc;
    private final float zzd;

    public zzac(String str, float f, int i, float f2) {
        this.zzb = str;
        this.zzc = f;
        this.zza = i;
        this.zzd = f2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zzb;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, str, false);
        SafeParcelWriter.writeFloat(parcel, 2, this.zzc);
        SafeParcelWriter.writeInt(parcel, 3, this.zza);
        SafeParcelWriter.writeFloat(parcel, 4, this.zzd);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final String zza() {
        return this.zzb;
    }

    public final float zzb() {
        return this.zzd;
    }
}
