package com.google.android.gms.internal.cast;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.internal.IStatusCallback;

/* JADX INFO: loaded from: classes4.dex */
public final class zzai extends zza implements IInterface {
    public zzai(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.devicesuggestions.internal.IDeviceSuggestionsService");
    }

    public final void zze(IStatusCallback iStatusCallback, zzah zzahVar) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, iStatusCallback);
        zzc.zze(parcelZza, zzahVar);
        zzc(1, parcelZza);
    }

    public final void zzf(IStatusCallback iStatusCallback, zzah zzahVar) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, iStatusCallback);
        zzc.zze(parcelZza, zzahVar);
        zzc(2, parcelZza);
    }

    public final void zzg(IStatusCallback iStatusCallback) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, iStatusCallback);
        zzc(3, parcelZza);
    }

    public final void zzh(IStatusCallback iStatusCallback) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, iStatusCallback);
        zzc(4, parcelZza);
    }
}
