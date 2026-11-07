package com.google.android.gms.internal.mlkit_genai_prompt;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes5.dex */
public final class zzbz extends AbstractSafeParcelable implements zzv {
    public static final Parcelable.Creator<zzbz> CREATOR = new zzca();
    private final int zza;
    private final String zzb;
    private final Bitmap zzc;
    private final int zzd;
    private final ParcelFileDescriptor zze;
    private final boolean zzf;
    private final zzbv zzg;
    private final zzbx zzh;

    public zzbz(int i, String str, Bitmap bitmap, int i2, ParcelFileDescriptor parcelFileDescriptor, boolean z, zzbv zzbvVar, zzbx zzbxVar) {
        this.zza = i;
        this.zzb = str;
        this.zzc = bitmap;
        this.zzd = i2;
        this.zze = parcelFileDescriptor;
        this.zzf = z;
        this.zzg = zzbvVar;
        this.zzh = zzbxVar;
    }

    public static zzbz zzc(int i, Bitmap bitmap, boolean z) {
        return new zzbz(i, null, bitmap, 1, null, false, null, null);
    }

    public static zzbz zzd(int i, String str) {
        return new zzbz(i, str, null, 0, null, false, null, null);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzc, i, false);
        SafeParcelWriter.writeInt(parcel, 4, this.zzd);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zze, i, false);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zzf);
        SafeParcelWriter.writeParcelable(parcel, 7, this.zzg, i, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.zzh, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final ParcelFileDescriptor zza() {
        return this.zze;
    }

    public final zzbv zzb() {
        return this.zzg;
    }
}
