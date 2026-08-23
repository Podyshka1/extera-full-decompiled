package com.google.android.gms.cast.framework;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaq extends com.google.android.gms.internal.cast.zza implements zzas {
    public zzaq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.IReconnectionService");
    }

    @Override // com.google.android.gms.cast.framework.zzas
    public final void zze() {
        zzc(1, zza());
    }

    @Override // com.google.android.gms.cast.framework.zzas
    public final int zzf(Intent intent, int i, int i2) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.cast.zzc.zzc(parcelZza, intent);
        parcelZza.writeInt(i);
        parcelZza.writeInt(i2);
        Parcel parcelZzb = zzb(2, parcelZza);
        int i3 = parcelZzb.readInt();
        parcelZzb.recycle();
        return i3;
    }

    @Override // com.google.android.gms.cast.framework.zzas
    public final IBinder zzg(Intent intent) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.cast.zzc.zzc(parcelZza, intent);
        Parcel parcelZzb = zzb(3, parcelZza);
        IBinder strongBinder = parcelZzb.readStrongBinder();
        parcelZzb.recycle();
        return strongBinder;
    }

    @Override // com.google.android.gms.cast.framework.zzas
    public final void zzh() {
        zzc(4, zza());
    }
}
