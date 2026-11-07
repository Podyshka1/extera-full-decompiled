package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.g */
/* JADX INFO: loaded from: classes5.dex */
public final class C1927g extends AbstractC1921a implements InterfaceC1929i {
    public C1927g(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.integrity.protocol.IExpressIntegrityService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.InterfaceC1929i
    /* JADX INFO: renamed from: d */
    public final void mo469d(Bundle bundle, InterfaceC1931k interfaceC1931k) {
        Parcel parcelM410a = m410a();
        AbstractC1923c.m463c(parcelM410a, bundle);
        parcelM410a.writeStrongBinder(interfaceC1931k);
        m411b(3, parcelM410a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.InterfaceC1929i
    /* JADX INFO: renamed from: e */
    public final void mo470e(Bundle bundle, InterfaceC1931k interfaceC1931k) {
        Parcel parcelM410a = m410a();
        AbstractC1923c.m463c(parcelM410a, bundle);
        parcelM410a.writeStrongBinder(interfaceC1931k);
        m411b(2, parcelM410a);
    }
}
