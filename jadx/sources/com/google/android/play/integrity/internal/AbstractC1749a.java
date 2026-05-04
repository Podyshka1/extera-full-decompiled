package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.a */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC1749a implements IInterface {

    /* JADX INFO: renamed from: a */
    private final IBinder f540a;

    /* JADX INFO: renamed from: b */
    private final String f541b;

    protected AbstractC1749a(IBinder iBinder, String str) {
        this.f540a = iBinder;
        this.f541b = str;
    }

    /* JADX INFO: renamed from: a */
    protected final Parcel m424a() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f541b);
        return parcelObtain;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f540a;
    }

    /* JADX INFO: renamed from: b */
    protected final void m425b(int i, Parcel parcel) {
        try {
            this.f540a.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
