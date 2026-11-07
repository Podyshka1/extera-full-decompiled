package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzud extends zzb implements zzue {
    public static zzue zza(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.mlkit.vision.segmentation.subject.aidls.ISubjectSegmenterCreator");
        return iInterfaceQueryLocalInterface instanceof zzue ? (zzue) iInterfaceQueryLocalInterface : new zzuc(iBinder);
    }
}
