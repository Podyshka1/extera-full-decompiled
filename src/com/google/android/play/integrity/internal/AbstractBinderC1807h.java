package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.h */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBinderC1807h extends AbstractBinderC1801b implements InterfaceC1808i {
    /* JADX INFO: renamed from: b */
    public static InterfaceC1808i m447b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.integrity.protocol.IExpressIntegrityService");
        return iInterfaceQueryLocalInterface instanceof InterfaceC1808i ? (InterfaceC1808i) iInterfaceQueryLocalInterface : new C1806g(iBinder);
    }
}
