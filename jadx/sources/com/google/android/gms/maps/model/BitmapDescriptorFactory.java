package com.google.android.gms.maps.model;

import android.graphics.Bitmap;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.maps.zzk;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BitmapDescriptorFactory {
    private static zzk zza;

    public static BitmapDescriptor fromBitmap(Bitmap bitmap) {
        Preconditions.checkNotNull(bitmap, "image must not be null");
        try {
            return new BitmapDescriptor(zzb().zzg(bitmap));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static BitmapDescriptor fromResource(int i) {
        try {
            return new BitmapDescriptor(zzb().zzk(i));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static void zza(zzk zzkVar) {
        if (zza != null) {
            return;
        }
        zza = (zzk) Preconditions.checkNotNull(zzkVar, "delegate must not be null");
    }

    private static zzk zzb() {
        return (zzk) Preconditions.checkNotNull(zza, "IBitmapDescriptorFactory is not initialized");
    }
}
