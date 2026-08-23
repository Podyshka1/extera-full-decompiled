package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import androidx.annotation.Keep;

/* JADX INFO: loaded from: classes4.dex */
class InnerZoneDrawable extends Drawable {
    private final Paint zza;
    private final Paint zzb;
    private final int zze;
    private float zzf;
    private float zzg;
    private float zzh;
    private float zzi;
    private float zzj;
    private float zzk;

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        float f = this.zzk;
        if (f > 0.0f) {
            float f2 = this.zzf * this.zzj;
            this.zzb.setAlpha((int) (this.zze * f));
            canvas.drawCircle(this.zzh, this.zzi, f2, this.zzb);
        }
        canvas.drawCircle(this.zzh, this.zzi, this.zzf * this.zzg, this.zza);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.zza.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.zza.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Keep
    public void setPulseAlpha(float f) {
        this.zzk = f;
        invalidateSelf();
    }

    @Keep
    public void setPulseScale(float f) {
        this.zzj = f;
        invalidateSelf();
    }

    @Keep
    public void setScale(float f) {
        this.zzg = f;
        invalidateSelf();
    }
}
