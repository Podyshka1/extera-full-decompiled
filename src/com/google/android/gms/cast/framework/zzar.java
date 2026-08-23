package com.google.android.gms.cast.framework;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.cast.zza;
import com.google.android.gms.internal.cast.zzc;

/* JADX INFO: loaded from: classes4.dex */
public final class zzar extends zza implements zzat {
    zzar(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.IReconnectionService");
    }

    @Override // com.google.android.gms.cast.framework.zzat
    public final int zze(Intent intent, int i, int i2) {
        Parcel parcelZza = zza();
        zzc.zzc(parcelZza, intent);
        parcelZza.writeInt(i);
        parcelZza.writeInt(i2);
        Parcel parcelZzb = zzb(2, parcelZza);
        int i3 = parcelZzb.readInt();
        parcelZzb.recycle();
        return i3;
    }

    @Override // com.google.android.gms.cast.framework.zzat
    public final IBinder zzf(Intent intent) {
        Parcel parcelZza = zza();
        zzc.zzc(parcelZza, intent);
        Parcel parcelZzb = zzb(3, parcelZza);
        IBinder strongBinder = parcelZzb.readStrongBinder();
        parcelZzb.recycle();
        return strongBinder;
    }

    @Override // com.google.android.gms.cast.framework.zzat
    public final void zzg() {
        zzc(1, zza());
    }

    @Override // com.google.android.gms.cast.framework.zzat
    public final void zzh() {
        zzc(4, zza());
    }
}
