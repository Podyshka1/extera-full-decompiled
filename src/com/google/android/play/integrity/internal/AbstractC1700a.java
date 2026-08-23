package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.a */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC1700a implements IInterface {

    /* JADX INFO: renamed from: a */
    private final IBinder f393a;

    /* JADX INFO: renamed from: b */
    private final String f394b;

    public AbstractC1700a(IBinder iBinder, String str) {
        this.f393a = iBinder;
        this.f394b = str;
    }

    /* JADX INFO: renamed from: a */
    public final Parcel m388a() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f394b);
        return parcelObtain;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f393a;
    }

    /* JADX INFO: renamed from: b */
    public final void m389b(int i, Parcel parcel) {
        try {
            this.f393a.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
