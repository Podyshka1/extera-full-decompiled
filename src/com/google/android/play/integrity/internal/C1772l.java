package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.l */
/* JADX INFO: loaded from: classes5.dex */
public final class C1772l extends AbstractC1749a implements InterfaceC1774n {
    C1772l(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.integrity.protocol.IIntegrityService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.InterfaceC1774n
    /* JADX INFO: renamed from: c */
    public final void mo468c(Bundle bundle, InterfaceC1776p interfaceC1776p) {
        Parcel parcelM424a = m424a();
        AbstractC1763c.m459c(parcelM424a, bundle);
        parcelM424a.writeStrongBinder(interfaceC1776p);
        m425b(2, parcelM424a);
    }
}
