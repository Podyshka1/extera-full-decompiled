package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.h */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBinderC1928h extends AbstractBinderC1922b implements InterfaceC1929i {
    /* JADX INFO: renamed from: b */
    public static InterfaceC1929i m471b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.integrity.protocol.IExpressIntegrityService");
        return iInterfaceQueryLocalInterface instanceof InterfaceC1929i ? (InterfaceC1929i) iInterfaceQueryLocalInterface : new C1927g(iBinder);
    }
}
