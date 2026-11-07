package com.google.android.gms.internal.ads_identifier;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public final class zzd extends zza implements zzf {
    public zzd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
    }

    @Override // com.google.android.gms.internal.ads_identifier.zzf
    public final String zzc() {
        Parcel parcelZzb = zzb(1, zza());
        String string = parcelZzb.readString();
        parcelZzb.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads_identifier.zzf
    public final boolean zze(boolean z) {
        Parcel parcelZza = zza();
        zzc.zza(parcelZza, true);
        Parcel parcelZzb = zzb(2, parcelZza);
        boolean zZzb = zzc.zzb(parcelZzb);
        parcelZzb.recycle();
        return zZzb;
    }
}
