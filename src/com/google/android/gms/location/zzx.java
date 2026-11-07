package com.google.android.gms.location;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.location.zzb;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzx extends zzb implements zzy {
    public static zzy zzb(IBinder iBinder) {
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationListener");
        return iInterfaceQueryLocalInterface instanceof zzy ? (zzy) iInterfaceQueryLocalInterface : new zzw(iBinder);
    }
}
