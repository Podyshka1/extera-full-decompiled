package com.google.android.gms.internal.play_billing;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzat extends zzaq implements zzau {
    public static zzau zzc(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideService");
        return iInterfaceQueryLocalInterface instanceof zzau ? (zzau) iInterfaceQueryLocalInterface : new zzas(iBinder);
    }
}
