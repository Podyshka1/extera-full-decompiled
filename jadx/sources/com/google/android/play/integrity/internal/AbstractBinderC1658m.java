package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.m */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBinderC1658m extends AbstractBinderC1647b implements InterfaceC1659n {
    /* JADX INFO: renamed from: b */
    public static InterfaceC1659n m374b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.integrity.protocol.IIntegrityService");
        return iInterfaceQueryLocalInterface instanceof InterfaceC1659n ? (InterfaceC1659n) iInterfaceQueryLocalInterface : new C1657l(iBinder);
    }
}
