package com.google.android.gms.internal.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.recaptchabase.ExecuteRequest;
import com.google.android.gms.recaptchabase.InitRequest;

/* JADX INFO: loaded from: classes5.dex */
public final class zzf extends zza implements IInterface {
    public zzf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.recaptchabase.internal.IRecaptchaBaseService");
    }

    public final void zzc(zze zzeVar, ExecuteRequest executeRequest) {
        Parcel parcelZza = zza();
        zzc.zzd(parcelZza, zzeVar);
        zzc.zzc(parcelZza, executeRequest);
        zzb(2, parcelZza);
    }

    public final void zzd(zze zzeVar, InitRequest initRequest) {
        Parcel parcelZza = zza();
        zzc.zzd(parcelZza, zzeVar);
        zzc.zzc(parcelZza, initRequest);
        zzb(1, parcelZza);
    }
}
