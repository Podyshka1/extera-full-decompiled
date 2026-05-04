package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.m */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBinderC1773m extends AbstractBinderC1762b implements InterfaceC1774n {
    /* JADX INFO: renamed from: b */
    public static InterfaceC1774n m469b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.integrity.protocol.IIntegrityService");
        return iInterfaceQueryLocalInterface instanceof InterfaceC1774n ? (InterfaceC1774n) iInterfaceQueryLocalInterface : new C1772l(iBinder);
    }
}
