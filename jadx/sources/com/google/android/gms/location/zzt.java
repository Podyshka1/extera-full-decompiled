package com.google.android.gms.location;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzt extends com.google.android.gms.internal.location.zzb implements zzu {
    public static zzu zzb(IBinder iBinder) {
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationListener");
        return iInterfaceQueryLocalInterface instanceof zzu ? (zzu) iInterfaceQueryLocalInterface : new zzs(iBinder);
    }
}
