package com.google.android.gms.cast.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.cast.zzc;

/* JADX INFO: loaded from: classes.dex */
public final class zzaj extends com.google.android.gms.internal.cast.zza implements IInterface {
    zzaj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.internal.ICastService");
    }

    public final void zzf(zzaf zzafVar, String[] strArr) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzafVar);
        parcelZza.writeStringArray(strArr);
        zzd(5, parcelZza);
    }

    public final void zzg(zzaf zzafVar, String[] strArr) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzafVar);
        parcelZza.writeStringArray(strArr);
        zzd(7, parcelZza);
    }

    public final void zzh(zzaf zzafVar, String[] strArr) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzafVar);
        parcelZza.writeStringArray(strArr);
        zzd(6, parcelZza);
    }
}
