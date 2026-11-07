package com.google.android.gms.maps.model;

import android.graphics.Bitmap;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.maps.zzk;
import com.google.android.gms.maps.zzah$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BitmapDescriptorFactory {
    private static zzk zza;

    public static BitmapDescriptor fromBitmap(Bitmap bitmap) {
        Preconditions.checkNotNull(bitmap, "image must not be null");
        try {
            return new BitmapDescriptor(zzb().zzg(bitmap));
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m336m(e);
            return null;
        }
    }

    public static BitmapDescriptor fromResource(int i) {
        try {
            return new BitmapDescriptor(zzb().zzk(i));
        } catch (RemoteException e) {
            zzah$$ExternalSyntheticBUOutline0.m336m(e);
            return null;
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
