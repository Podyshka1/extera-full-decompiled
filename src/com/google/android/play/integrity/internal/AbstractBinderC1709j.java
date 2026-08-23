package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.j */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBinderC1709j extends AbstractBinderC1701b implements InterfaceC1710k {
    public AbstractBinderC1709j() {
        super("com.google.android.play.core.integrity.protocol.IExpressIntegrityServiceCallback");
    }

    @Override // com.google.android.play.integrity.internal.AbstractBinderC1701b
    /* JADX INFO: renamed from: a */
    public final boolean mo420a(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 2) {
            Bundle bundle = (Bundle) AbstractC1702c.m421a(parcel, Bundle.CREATOR);
            AbstractC1702c.m422b(parcel);
            mo366e(bundle);
            return true;
        }
        if (i == 3) {
            Bundle bundle2 = (Bundle) AbstractC1702c.m421a(parcel, Bundle.CREATOR);
            AbstractC1702c.m422b(parcel);
            mo364c(bundle2);
            return true;
        }
        if (i == 4) {
            Bundle bundle3 = (Bundle) AbstractC1702c.m421a(parcel, Bundle.CREATOR);
            AbstractC1702c.m422b(parcel);
            mo365d(bundle3);
            return true;
        }
        if (i != 5) {
            return false;
        }
        Bundle bundle4 = (Bundle) AbstractC1702c.m421a(parcel, Bundle.CREATOR);
        AbstractC1702c.m422b(parcel);
        mo363b(bundle4);
        return true;
    }
}
