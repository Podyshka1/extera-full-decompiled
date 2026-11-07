package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.a */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC1800a implements IInterface {

    /* JADX INFO: renamed from: a */
    private final IBinder f365a;

    /* JADX INFO: renamed from: b */
    private final String f366b;

    public AbstractC1800a(IBinder iBinder, String str) {
        this.f365a = iBinder;
        this.f366b = str;
    }

    /* JADX INFO: renamed from: a */
    public final Parcel m386a() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f366b);
        return parcelObtain;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f365a;
    }

    /* JADX INFO: renamed from: b */
    public final void m387b(int i, Parcel parcel) {
        try {
            this.f365a.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
