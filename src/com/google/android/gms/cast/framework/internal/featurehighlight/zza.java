package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.view.GestureDetector;
import android.view.MotionEvent;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zza extends GestureDetector.SimpleOnGestureListener {
    final /* synthetic */ zzh zza;

    public zza(zzh zzhVar) {
        Objects.requireNonNull(zzhVar);
        this.zza = zzhVar;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        zzh zzhVar = this.zza;
        zzg zzgVarZzm = zzhVar.zzm();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (zzgVarZzm == null) {
            return true;
        }
        if (zzhVar.zzj(x, y) && zzhVar.zzl().zzf(x, y)) {
            return true;
        }
        zzhVar.zzm().zzb();
        return true;
    }
}
