package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.a */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC1921a implements IInterface {

    /* JADX INFO: renamed from: a */
    private final IBinder f366a;

    /* JADX INFO: renamed from: b */
    private final String f367b;

    public AbstractC1921a(IBinder iBinder, String str) {
        this.f366a = iBinder;
        this.f367b = str;
    }

    /* JADX INFO: renamed from: a */
    public final Parcel m410a() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f367b);
        return parcelObtain;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f366a;
    }

    /* JADX INFO: renamed from: b */
    public final void m411b(int i, Parcel parcel) {
        try {
            this.f366a.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
