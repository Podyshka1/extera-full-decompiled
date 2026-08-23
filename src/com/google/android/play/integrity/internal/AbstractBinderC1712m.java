package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.m */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBinderC1712m extends AbstractBinderC1701b implements InterfaceC1713n {
    /* JADX INFO: renamed from: b */
    public static InterfaceC1713n m433b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.integrity.protocol.IIntegrityService");
        return iInterfaceQueryLocalInterface instanceof InterfaceC1713n ? (InterfaceC1713n) iInterfaceQueryLocalInterface : new C1711l(iBinder);
    }
}
