package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.g */
/* JADX INFO: loaded from: classes5.dex */
public final class C1652g extends AbstractC1646a implements InterfaceC1654i {
    C1652g(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.integrity.protocol.IExpressIntegrityService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.InterfaceC1654i
    /* JADX INFO: renamed from: c */
    public final void mo370c(Bundle bundle, InterfaceC1656k interfaceC1656k) {
        Parcel parcelM329a = m329a();
        AbstractC1648c.m364c(parcelM329a, bundle);
        parcelM329a.writeStrongBinder(interfaceC1656k);
        m330b(3, parcelM329a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.InterfaceC1654i
    /* JADX INFO: renamed from: d */
    public final void mo371d(Bundle bundle, InterfaceC1656k interfaceC1656k) {
        Parcel parcelM329a = m329a();
        AbstractC1648c.m364c(parcelM329a, bundle);
        parcelM329a.writeStrongBinder(interfaceC1656k);
        m330b(2, parcelM329a);
    }
}
