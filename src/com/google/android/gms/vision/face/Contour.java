package com.google.android.gms.vision.face;

import android.graphics.PointF;
import androidx.annotation.RecentlyNonNull;

/* JADX INFO: loaded from: classes5.dex */
public final class Contour {
    private final PointF[] zza;
    private final int zzb;

    public Contour(@RecentlyNonNull PointF[] pointFArr, int i) {
        this.zza = pointFArr;
        this.zzb = i;
    }
}
