package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.g */
/* JADX INFO: loaded from: classes5.dex */
public final class C1767g extends AbstractC1749a implements InterfaceC1769i {
    C1767g(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.integrity.protocol.IExpressIntegrityService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.InterfaceC1769i
    /* JADX INFO: renamed from: c */
    public final void mo465c(Bundle bundle, InterfaceC1771k interfaceC1771k) {
        Parcel parcelM424a = m424a();
        AbstractC1763c.m459c(parcelM424a, bundle);
        parcelM424a.writeStrongBinder(interfaceC1771k);
        m425b(3, parcelM424a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.InterfaceC1769i
    /* JADX INFO: renamed from: d */
    public final void mo466d(Bundle bundle, InterfaceC1771k interfaceC1771k) {
        Parcel parcelM424a = m424a();
        AbstractC1763c.m459c(parcelM424a, bundle);
        parcelM424a.writeStrongBinder(interfaceC1771k);
        m425b(2, parcelM424a);
    }
}
