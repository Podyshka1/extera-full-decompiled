package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.g */
/* JADX INFO: loaded from: classes5.dex */
public final class C1806g extends AbstractC1800a implements InterfaceC1808i {
    public C1806g(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.integrity.protocol.IExpressIntegrityService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.InterfaceC1808i
    /* JADX INFO: renamed from: d */
    public final void mo445d(Bundle bundle, InterfaceC1810k interfaceC1810k) {
        Parcel parcelM386a = m386a();
        AbstractC1802c.m439c(parcelM386a, bundle);
        parcelM386a.writeStrongBinder(interfaceC1810k);
        m387b(3, parcelM386a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.InterfaceC1808i
    /* JADX INFO: renamed from: e */
    public final void mo446e(Bundle bundle, InterfaceC1810k interfaceC1810k) {
        Parcel parcelM386a = m386a();
        AbstractC1802c.m439c(parcelM386a, bundle);
        parcelM386a.writeStrongBinder(interfaceC1810k);
        m387b(2, parcelM386a);
    }
}
