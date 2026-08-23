package com.google.android.gms.cast.framework;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.cast.zzb;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzav extends zzb implements zzaw {
    public static zzaw zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.ISession");
        return iInterfaceQueryLocalInterface instanceof zzaw ? (zzaw) iInterfaceQueryLocalInterface : new zzau(iBinder);
    }
}
