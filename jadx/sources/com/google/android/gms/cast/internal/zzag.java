package com.google.android.gms.cast.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.zzbu;
import com.google.android.gms.internal.cast.zzc;

/* JADX INFO: loaded from: classes4.dex */
public final class zzag extends com.google.android.gms.internal.cast.zza implements IInterface {
    zzag(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.internal.ICastDeviceController");
    }

    public final void zze() {
        zzd(17, zza());
    }

    public final void zzf() {
        zzd(1, zza());
    }

    public final void zzg(String str, String str2, zzbu zzbuVar) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzc.zzc(parcelZza, zzbuVar);
        zzd(14, parcelZza);
    }

    public final void zzh(String str, LaunchOptions launchOptions) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzc.zzc(parcelZza, launchOptions);
        zzd(13, parcelZza);
    }

    public final void zzj(zzai zzaiVar) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzaiVar);
        zzd(18, parcelZza);
    }

    public final void zzk(String str) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzd(11, parcelZza);
    }

    public final void zzm(String str, String str2, long j) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        parcelZza.writeLong(j);
        zzd(9, parcelZza);
    }

    public final void zzp(String str) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzd(5, parcelZza);
    }

    public final void zzq() {
        zzd(19, zza());
    }

    public final void zzr(String str) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzd(12, parcelZza);
    }
}
