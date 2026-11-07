package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.j */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBinderC1809j extends AbstractBinderC1801b implements InterfaceC1810k {
    public AbstractBinderC1809j() {
        super("com.google.android.play.core.integrity.protocol.IExpressIntegrityServiceCallback");
    }

    @Override // com.google.android.play.integrity.internal.AbstractBinderC1801b
    /* JADX INFO: renamed from: a */
    public final boolean mo435a(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 2) {
            Bundle bundle = (Bundle) AbstractC1802c.m437a(parcel, Bundle.CREATOR);
            AbstractC1802c.m438b(parcel);
            mo368e(bundle);
            return true;
        }
        if (i == 3) {
            Bundle bundle2 = (Bundle) AbstractC1802c.m437a(parcel, Bundle.CREATOR);
            AbstractC1802c.m438b(parcel);
            mo366c(bundle2);
            return true;
        }
        if (i == 4) {
            Bundle bundle3 = (Bundle) AbstractC1802c.m437a(parcel, Bundle.CREATOR);
            AbstractC1802c.m438b(parcel);
            mo367d(bundle3);
            return true;
        }
        if (i != 5) {
            return false;
        }
        Bundle bundle4 = (Bundle) AbstractC1802c.m437a(parcel, Bundle.CREATOR);
        AbstractC1802c.m438b(parcel);
        mo365b(bundle4);
        return true;
    }
}
