package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zbo extends com.google.android.gms.internal.p030authapi.zbb implements zbp {
    public zbo() {
        super("com.google.android.gms.auth.api.signin.internal.IRevocationService");
    }

    @Override // com.google.android.gms.internal.p030authapi.zbb
    protected final boolean zba(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zbc();
        } else {
            if (i != 2) {
                return false;
            }
            zbb();
        }
        return true;
    }
}
