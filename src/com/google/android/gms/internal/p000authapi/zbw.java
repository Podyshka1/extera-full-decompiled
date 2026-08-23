package com.google.android.gms.internal.p000authapi;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.auth.api.identity.GetSignInIntentRequest;
import com.google.android.gms.common.api.internal.IStatusCallback;

/* JADX INFO: loaded from: classes4.dex */
public final class zbw extends zba implements IInterface {
    zbw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.identity.internal.ISignInService");
    }

    public final void zbc(zbm zbmVar, BeginSignInRequest beginSignInRequest) {
        Parcel parcelZba = zba();
        zbc.zbd(parcelZba, zbmVar);
        zbc.zbc(parcelZba, beginSignInRequest);
        zbb(1, parcelZba);
    }

    public final void zbe(zbr zbrVar, GetSignInIntentRequest getSignInIntentRequest) {
        Parcel parcelZba = zba();
        zbc.zbd(parcelZba, zbrVar);
        zbc.zbc(parcelZba, getSignInIntentRequest);
        zbb(3, parcelZba);
    }

    public final void zbf(IStatusCallback iStatusCallback, String str) {
        Parcel parcelZba = zba();
        zbc.zbd(parcelZba, iStatusCallback);
        parcelZba.writeString(str);
        zbb(2, parcelZba);
    }
}
