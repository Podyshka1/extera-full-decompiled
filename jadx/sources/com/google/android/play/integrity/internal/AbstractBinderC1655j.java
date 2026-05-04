package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.j */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBinderC1655j extends AbstractBinderC1647b implements InterfaceC1656k {
    public AbstractBinderC1655j() {
        super("com.google.android.play.core.integrity.protocol.IExpressIntegrityServiceCallback");
    }

    @Override // com.google.android.play.integrity.internal.AbstractBinderC1647b
    /* JADX INFO: renamed from: a */
    protected final boolean mo361a(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 2) {
            Bundle bundle = (Bundle) AbstractC1648c.m362a(parcel, Bundle.CREATOR);
            AbstractC1648c.m363b(parcel);
            mo307e(bundle);
            return true;
        }
        if (i == 3) {
            Bundle bundle2 = (Bundle) AbstractC1648c.m362a(parcel, Bundle.CREATOR);
            AbstractC1648c.m363b(parcel);
            mo305c(bundle2);
            return true;
        }
        if (i == 4) {
            Bundle bundle3 = (Bundle) AbstractC1648c.m362a(parcel, Bundle.CREATOR);
            AbstractC1648c.m363b(parcel);
            mo306d(bundle3);
            return true;
        }
        if (i != 5) {
            return false;
        }
        Bundle bundle4 = (Bundle) AbstractC1648c.m362a(parcel, Bundle.CREATOR);
        AbstractC1648c.m363b(parcel);
        mo304b(bundle4);
        return true;
    }
}
