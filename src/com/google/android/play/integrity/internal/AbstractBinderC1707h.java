package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.h */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBinderC1707h extends AbstractBinderC1701b implements InterfaceC1708i {
    /* JADX INFO: renamed from: b */
    public static InterfaceC1708i m431b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.integrity.protocol.IExpressIntegrityService");
        return iInterfaceQueryLocalInterface instanceof InterfaceC1708i ? (InterfaceC1708i) iInterfaceQueryLocalInterface : new C1706g(iBinder);
    }
}
