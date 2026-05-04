package com.google.android.gms.cast.framework.media;

import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zze extends com.google.android.gms.internal.cast.zza implements zzg {
    zze(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.media.INotificationActionsProvider");
    }

    @Override // com.google.android.gms.cast.framework.media.zzg
    public final List zzf() {
        Parcel parcelZzb = zzb(3, zza());
        ArrayList arrayListCreateTypedArrayList = parcelZzb.createTypedArrayList(NotificationAction.CREATOR);
        parcelZzb.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // com.google.android.gms.cast.framework.media.zzg
    public final int[] zzg() {
        Parcel parcelZzb = zzb(4, zza());
        int[] iArrCreateIntArray = parcelZzb.createIntArray();
        parcelZzb.recycle();
        return iArrCreateIntArray;
    }
}
