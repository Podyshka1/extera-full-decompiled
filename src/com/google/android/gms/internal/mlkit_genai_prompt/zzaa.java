package com.google.android.gms.internal.mlkit_genai_prompt;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaa extends AbstractSafeParcelable implements zzv {
    public static final Parcelable.Creator<zzaa> CREATOR = new zzab();
    private final int zza;
    private final String zzb;
    private final Bitmap zzc;
    private final int zzd;
    private final ParcelFileDescriptor zze;
    private final ParcelFileDescriptor zzf;

    public zzaa(int i, String str, Bitmap bitmap, int i2, ParcelFileDescriptor parcelFileDescriptor, ParcelFileDescriptor parcelFileDescriptor2) {
        this.zza = i;
        this.zzb = str;
        this.zzc = bitmap;
        this.zzd = i2;
        this.zze = parcelFileDescriptor;
        this.zzf = parcelFileDescriptor2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzc, i, false);
        SafeParcelWriter.writeInt(parcel, 4, this.zzd);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zze, i, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.zzf, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final ParcelFileDescriptor zza() {
        return this.zze;
    }

    public final ParcelFileDescriptor zzb() {
        return this.zzf;
    }
}
