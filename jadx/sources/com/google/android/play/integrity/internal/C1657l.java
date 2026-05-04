package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.l */
/* JADX INFO: loaded from: classes5.dex */
public final class C1657l extends AbstractC1646a implements InterfaceC1659n {
    C1657l(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.integrity.protocol.IIntegrityService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.InterfaceC1659n
    /* JADX INFO: renamed from: c */
    public final void mo373c(Bundle bundle, InterfaceC1661p interfaceC1661p) {
        Parcel parcelM329a = m329a();
        AbstractC1648c.m364c(parcelM329a, bundle);
        parcelM329a.writeStrongBinder(interfaceC1661p);
        m330b(2, parcelM329a);
    }
}
