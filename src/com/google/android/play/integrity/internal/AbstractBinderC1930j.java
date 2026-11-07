package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.j */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBinderC1930j extends AbstractBinderC1922b implements InterfaceC1931k {
    public AbstractBinderC1930j() {
        super("com.google.android.play.core.integrity.protocol.IExpressIntegrityServiceCallback");
    }

    @Override // com.google.android.play.integrity.internal.AbstractBinderC1922b
    /* JADX INFO: renamed from: a */
    public final boolean mo459a(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 2) {
            Bundle bundle = (Bundle) AbstractC1923c.m461a(parcel, Bundle.CREATOR);
            AbstractC1923c.m462b(parcel);
            mo392e(bundle);
            return true;
        }
        if (i == 3) {
            Bundle bundle2 = (Bundle) AbstractC1923c.m461a(parcel, Bundle.CREATOR);
            AbstractC1923c.m462b(parcel);
            mo390c(bundle2);
            return true;
        }
        if (i == 4) {
            Bundle bundle3 = (Bundle) AbstractC1923c.m461a(parcel, Bundle.CREATOR);
            AbstractC1923c.m462b(parcel);
            mo391d(bundle3);
            return true;
        }
        if (i != 5) {
            return false;
        }
        Bundle bundle4 = (Bundle) AbstractC1923c.m461a(parcel, Bundle.CREATOR);
        AbstractC1923c.m462b(parcel);
        mo389b(bundle4);
        return true;
    }
}
