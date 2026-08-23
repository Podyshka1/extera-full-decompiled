package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.g */
/* JADX INFO: loaded from: classes5.dex */
public final class C1706g extends AbstractC1700a implements InterfaceC1708i {
    public C1706g(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.integrity.protocol.IExpressIntegrityService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.InterfaceC1708i
    /* JADX INFO: renamed from: c */
    public final void mo429c(Bundle bundle, InterfaceC1710k interfaceC1710k) {
        Parcel parcelM388a = m388a();
        AbstractC1702c.m423c(parcelM388a, bundle);
        parcelM388a.writeStrongBinder(interfaceC1710k);
        m389b(3, parcelM388a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.InterfaceC1708i
    /* JADX INFO: renamed from: d */
    public final void mo430d(Bundle bundle, InterfaceC1710k interfaceC1710k) {
        Parcel parcelM388a = m388a();
        AbstractC1702c.m423c(parcelM388a, bundle);
        parcelM388a.writeStrongBinder(interfaceC1710k);
        m389b(2, parcelM388a);
    }
}
