package com.google.android.gms.cast.framework;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.cast.zzb;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzas extends zzb implements zzat {
    public static zzat zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.IReconnectionService");
        return iInterfaceQueryLocalInterface instanceof zzat ? (zzat) iInterfaceQueryLocalInterface : new zzar(iBinder);
    }
}
