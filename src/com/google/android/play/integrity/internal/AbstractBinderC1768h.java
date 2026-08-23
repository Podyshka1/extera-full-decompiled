package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.h */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBinderC1768h extends AbstractBinderC1762b implements InterfaceC1769i {
    /* JADX INFO: renamed from: b */
    public static InterfaceC1769i m467b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.integrity.protocol.IExpressIntegrityService");
        return iInterfaceQueryLocalInterface instanceof InterfaceC1769i ? (InterfaceC1769i) iInterfaceQueryLocalInterface : new C1767g(iBinder);
    }
}
