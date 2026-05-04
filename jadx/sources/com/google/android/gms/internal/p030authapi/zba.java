package com.google.android.gms.internal.p030authapi;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zba implements IInterface {
    private final IBinder zba;
    private final String zbb;

    protected zba(IBinder iBinder, String str) {
        this.zba = iBinder;
        this.zbb = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.zba;
    }

    protected final Parcel zba() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.zbb);
        return parcelObtain;
    }

    protected final void zbb(int i, Parcel parcel) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            this.zba.transact(i, parcel, parcelObtain, 0);
            parcelObtain.readException();
        } finally {
            parcel.recycle();
            parcelObtain.recycle();
        }
    }
}
