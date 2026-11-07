package com.google.android.gms.cast.framework;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzau extends com.google.android.gms.internal.cast.zzb implements zzav {
    public static zzav zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.ISession");
        return iInterfaceQueryLocalInterface instanceof zzav ? (zzav) iInterfaceQueryLocalInterface : new zzat(iBinder);
    }
}
