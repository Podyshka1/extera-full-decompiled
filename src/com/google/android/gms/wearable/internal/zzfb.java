package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.wearable.zzc;

/* JADX INFO: loaded from: classes5.dex */
public final class zzfb extends com.google.android.gms.internal.wearable.zza implements IInterface {
    public zzfb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.wearable.internal.IWearableService");
    }

    public final void zzd(zzex zzexVar, zzd zzdVar) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzexVar);
        zzc.zzd(parcelZza, zzdVar);
        zzJ(16, parcelZza);
    }

    public final void zzz(zzex zzexVar, String str, String str2, byte[] bArr) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzexVar);
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        parcelZza.writeByteArray(bArr);
        zzJ(12, parcelZza);
    }
}
