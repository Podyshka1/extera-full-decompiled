package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.o */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBinderC1660o extends AbstractBinderC1647b implements InterfaceC1661p {
    public AbstractBinderC1660o() {
        super("com.google.android.play.core.integrity.protocol.IIntegrityServiceCallback");
    }

    @Override // com.google.android.play.integrity.internal.AbstractBinderC1647b
    /* JADX INFO: renamed from: a */
    protected final boolean mo361a(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 2) {
            return false;
        }
        Bundle bundle = (Bundle) AbstractC1648c.m362a(parcel, Bundle.CREATOR);
        AbstractC1648c.m363b(parcel);
        mo295b(bundle);
        return true;
    }
}
