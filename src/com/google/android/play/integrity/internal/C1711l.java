package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.l */
/* JADX INFO: loaded from: classes5.dex */
public final class C1711l extends AbstractC1700a implements InterfaceC1713n {
    public C1711l(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.integrity.protocol.IIntegrityService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.InterfaceC1713n
    /* JADX INFO: renamed from: c */
    public final void mo432c(Bundle bundle, InterfaceC1715p interfaceC1715p) {
        Parcel parcelM388a = m388a();
        AbstractC1702c.m423c(parcelM388a, bundle);
        parcelM388a.writeStrongBinder(interfaceC1715p);
        m389b(2, parcelM388a);
    }
}
