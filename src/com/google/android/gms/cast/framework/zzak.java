package com.google.android.gms.cast.framework;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzak extends com.google.android.gms.internal.cast.zzb implements zzal {
    public static zzal zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.ICastSession");
        return iInterfaceQueryLocalInterface instanceof zzal ? (zzal) iInterfaceQueryLocalInterface : new zzaj(iBinder);
    }
}
