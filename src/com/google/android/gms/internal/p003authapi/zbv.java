package com.google.android.gms.internal.p003authapi;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.auth.api.identity.GetPhoneNumberHintIntentRequest;
import com.google.android.gms.auth.api.identity.GetSignInIntentRequest;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.internal.IStatusCallback;

/* JADX INFO: loaded from: classes4.dex */
public final class zbv extends zba implements IInterface {
    public zbv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.identity.internal.ISignInService");
    }

    public final void zbc(zbl zblVar, BeginSignInRequest beginSignInRequest, ApiMetadata apiMetadata) {
        Parcel parcelZba = zba();
        zbc.zbc(parcelZba, zblVar);
        zbc.zbb(parcelZba, beginSignInRequest);
        zbc.zbb(parcelZba, apiMetadata);
        zbb(1, parcelZba);
    }

    public final void zbd(IStatusCallback iStatusCallback, String str, ApiMetadata apiMetadata) {
        Parcel parcelZba = zba();
        zbc.zbc(parcelZba, iStatusCallback);
        parcelZba.writeString(str);
        zbc.zbb(parcelZba, apiMetadata);
        zbb(2, parcelZba);
    }

    public final void zbe(zbq zbqVar, GetSignInIntentRequest getSignInIntentRequest, ApiMetadata apiMetadata) {
        Parcel parcelZba = zba();
        zbc.zbc(parcelZba, zbqVar);
        zbc.zbb(parcelZba, getSignInIntentRequest);
        zbc.zbb(parcelZba, apiMetadata);
        zbb(3, parcelZba);
    }

    public final void zbf(zbo zboVar, GetPhoneNumberHintIntentRequest getPhoneNumberHintIntentRequest, String str, ApiMetadata apiMetadata) {
        Parcel parcelZba = zba();
        zbc.zbc(parcelZba, zboVar);
        zbc.zbb(parcelZba, getPhoneNumberHintIntentRequest);
        parcelZba.writeString(str);
        zbc.zbb(parcelZba, apiMetadata);
        zbb(4, parcelZba);
    }
}
