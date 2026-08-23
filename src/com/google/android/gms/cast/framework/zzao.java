package com.google.android.gms.cast.framework;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public final class zzao extends com.google.android.gms.internal.cast.zza implements zzap {
    public zzao(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.IDiscoveryManager");
    }

    @Override // com.google.android.gms.cast.framework.zzap
    public final IObjectWrapper zze() {
        Parcel parcelZzb = zzb(5, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzb.readStrongBinder());
        parcelZzb.recycle();
        return iObjectWrapperAsInterface;
    }
}
