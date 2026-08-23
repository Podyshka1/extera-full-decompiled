package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.a */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC1646a implements IInterface {

    /* JADX INFO: renamed from: a */
    private final IBinder f334a;

    /* JADX INFO: renamed from: b */
    private final String f335b;

    protected AbstractC1646a(IBinder iBinder, String str) {
        this.f334a = iBinder;
        this.f335b = str;
    }

    /* JADX INFO: renamed from: a */
    protected final Parcel m329a() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f335b);
        return parcelObtain;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f334a;
    }

    /* JADX INFO: renamed from: b */
    protected final void m330b(int i, Parcel parcel) {
        try {
            this.f334a.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
