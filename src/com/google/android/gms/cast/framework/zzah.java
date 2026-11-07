package com.google.android.gms.cast.framework;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzah extends com.google.android.gms.internal.cast.zzb implements zzai {
    public static zzai zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.ICastContext");
        return iInterfaceQueryLocalInterface instanceof zzai ? (zzai) iInterfaceQueryLocalInterface : new zzag(iBinder);
    }
}
