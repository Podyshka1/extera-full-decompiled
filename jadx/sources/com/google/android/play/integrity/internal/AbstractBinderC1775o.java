package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.o */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBinderC1775o extends AbstractBinderC1762b implements InterfaceC1776p {
    public AbstractBinderC1775o() {
        super("com.google.android.play.core.integrity.protocol.IIntegrityServiceCallback");
    }

    @Override // com.google.android.play.integrity.internal.AbstractBinderC1762b
    /* JADX INFO: renamed from: a */
    protected final boolean mo456a(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 2) {
            return false;
        }
        Bundle bundle = (Bundle) AbstractC1763c.m457a(parcel, Bundle.CREATOR);
        AbstractC1763c.m458b(parcel);
        mo390b(bundle);
        return true;
    }
}
