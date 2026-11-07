package com.google.android.gms.cast.framework;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzar extends com.google.android.gms.internal.cast.zzb implements zzas {
    public static zzas zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.IReconnectionService");
        return iInterfaceQueryLocalInterface instanceof zzas ? (zzas) iInterfaceQueryLocalInterface : new zzaq(iBinder);
    }
}
