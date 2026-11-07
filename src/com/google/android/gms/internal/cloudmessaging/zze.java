package com.google.android.gms.internal.cloudmessaging;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.cloudmessaging.RegisterRequest;
import com.google.android.gms.common.api.ApiMetadata;

/* JADX INFO: loaded from: classes.dex */
public final class zze extends zza implements IInterface {
    public zze(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cloudmessaging.internal.ICloudMessagingService");
    }

    public final void zzc(zzg zzgVar, RegisterRequest registerRequest, ApiMetadata apiMetadata) {
        Parcel parcelZza = zza();
        zzc.zzc(parcelZza, zzgVar);
        zzc.zzb(parcelZza, registerRequest);
        zzc.zzb(parcelZza, apiMetadata);
        zzb(1, parcelZza);
    }
}
