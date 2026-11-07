package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzap extends zzl implements zzaq {
    public static zzaq zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.apps.aicore.aidl.IAiCoreServiceProvider");
        return iInterfaceQueryLocalInterface instanceof zzaq ? (zzaq) iInterfaceQueryLocalInterface : new zzao(iBinder);
    }
}
