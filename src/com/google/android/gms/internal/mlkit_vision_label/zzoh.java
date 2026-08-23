package com.google.android.gms.internal.mlkit_vision_label;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzoh extends zzb implements zzoi {
    public static zzoi zza(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.mlkit.vision.label.aidls.IImageLabelerCreator");
        return iInterfaceQueryLocalInterface instanceof zzoi ? (zzoi) iInterfaceQueryLocalInterface : new zzog(iBinder);
    }
}
