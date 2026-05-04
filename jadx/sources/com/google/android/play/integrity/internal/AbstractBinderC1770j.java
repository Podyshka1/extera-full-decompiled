package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.j */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBinderC1770j extends AbstractBinderC1762b implements InterfaceC1771k {
    public AbstractBinderC1770j() {
        super("com.google.android.play.core.integrity.protocol.IExpressIntegrityServiceCallback");
    }

    @Override // com.google.android.play.integrity.internal.AbstractBinderC1762b
    /* JADX INFO: renamed from: a */
    protected final boolean mo456a(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 2) {
            Bundle bundle = (Bundle) AbstractC1763c.m457a(parcel, Bundle.CREATOR);
            AbstractC1763c.m458b(parcel);
            mo402e(bundle);
            return true;
        }
        if (i == 3) {
            Bundle bundle2 = (Bundle) AbstractC1763c.m457a(parcel, Bundle.CREATOR);
            AbstractC1763c.m458b(parcel);
            mo400c(bundle2);
            return true;
        }
        if (i == 4) {
            Bundle bundle3 = (Bundle) AbstractC1763c.m457a(parcel, Bundle.CREATOR);
            AbstractC1763c.m458b(parcel);
            mo401d(bundle3);
            return true;
        }
        if (i != 5) {
            return false;
        }
        Bundle bundle4 = (Bundle) AbstractC1763c.m457a(parcel, Bundle.CREATOR);
        AbstractC1763c.m458b(parcel);
        mo399b(bundle4);
        return true;
    }
}
