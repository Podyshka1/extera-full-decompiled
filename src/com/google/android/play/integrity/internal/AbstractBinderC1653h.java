package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.h */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBinderC1653h extends AbstractBinderC1647b implements InterfaceC1654i {
    /* JADX INFO: renamed from: b */
    public static InterfaceC1654i m372b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.integrity.protocol.IExpressIntegrityService");
        return iInterfaceQueryLocalInterface instanceof InterfaceC1654i ? (InterfaceC1654i) iInterfaceQueryLocalInterface : new C1652g(iBinder);
    }
}
