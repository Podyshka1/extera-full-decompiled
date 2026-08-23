package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.o */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBinderC1714o extends AbstractBinderC1701b implements InterfaceC1715p {
    public AbstractBinderC1714o() {
        super("com.google.android.play.core.integrity.protocol.IIntegrityServiceCallback");
    }

    @Override // com.google.android.play.integrity.internal.AbstractBinderC1701b
    /* JADX INFO: renamed from: a */
    public final boolean mo420a(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 2) {
            return false;
        }
        Bundle bundle = (Bundle) AbstractC1702c.m421a(parcel, Bundle.CREATOR);
        AbstractC1702c.m422b(parcel);
        mo354b(bundle);
        return true;
    }
}
