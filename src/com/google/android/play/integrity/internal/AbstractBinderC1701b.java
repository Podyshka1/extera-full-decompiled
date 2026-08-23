package com.google.android.play.integrity.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.b */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBinderC1701b extends Binder implements IInterface {
    public AbstractBinderC1701b(String str) {
        attachInterface(this, str);
    }

    /* JADX INFO: renamed from: a */
    public abstract boolean mo420a(int i, Parcel parcel, Parcel parcel2, int i2);

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i <= 16777215) {
            parcel.enforceInterface(getInterfaceDescriptor());
        } else if (super.onTransact(i, parcel, parcel2, i2)) {
            return true;
        }
        return mo420a(i, parcel, parcel2, i2);
    }
}
