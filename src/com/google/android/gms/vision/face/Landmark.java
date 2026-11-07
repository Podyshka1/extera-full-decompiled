package com.google.android.gms.vision.face;

import android.graphics.PointF;
import androidx.annotation.RecentlyNonNull;

/* JADX INFO: loaded from: classes5.dex */
public final class Landmark {
    private final PointF zza;
    private final int zzb;

    @RecentlyNonNull
    public final PointF getPosition() {
        return this.zza;
    }

    public final int getType() {
        return this.zzb;
    }

    public Landmark(@RecentlyNonNull PointF pointF, int i) {
        this.zza = pointF;
        this.zzb = i;
    }
}
