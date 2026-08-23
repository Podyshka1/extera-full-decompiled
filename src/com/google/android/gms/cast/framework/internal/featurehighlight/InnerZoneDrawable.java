package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.Keep;
import com.google.android.gms.cast.framework.C1331R;
import com.google.android.gms.internal.cast.zzgy;

/* JADX INFO: loaded from: classes4.dex */
class InnerZoneDrawable extends Drawable {
    private final Paint zza;
    private final Paint zzb;
    private final Rect zzc;
    private final int zzd;
    private final int zze;
    private float zzf;
    private float zzg;
    private float zzh;
    private float zzi;
    private float zzj;
    private float zzk;

    public InnerZoneDrawable(Context context) {
        Paint paint = new Paint();
        this.zza = paint;
        Paint paint2 = new Paint();
        this.zzb = paint2;
        this.zzc = new Rect();
        this.zzg = 1.0f;
        Resources resources = context.getResources();
        this.zzd = resources.getDimensionPixelSize(C1331R.dimen.cast_libraries_material_featurehighlight_inner_radius);
        this.zze = resources.getInteger(C1331R.integer.cast_libraries_material_featurehighlight_pulse_base_alpha);
        paint.setAntiAlias(true);
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint.setColor(-1);
        paint2.setAntiAlias(true);
        paint2.setStyle(style);
        paint2.setColor(-1);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        float f = this.zzk;
        if (f > 0.0f) {
            float f2 = this.zzf * this.zzj;
            Paint paint = this.zzb;
            paint.setAlpha((int) (this.zze * f));
            canvas.drawCircle(this.zzh, this.zzi, f2, paint);
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

    public final void zza(Rect rect) {
        Rect rect2 = this.zzc;
        rect2.set(rect);
        this.zzh = rect2.exactCenterX();
        this.zzi = rect2.exactCenterY();
        this.zzf = Math.max(this.zzd, Math.max(rect2.width() / 2.0f, rect2.height() / 2.0f));
        invalidateSelf();
    }

    public final Animator zzb() {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat("scale", 0.0f), PropertyValuesHolder.ofInt("alpha", 0), PropertyValuesHolder.ofFloat("pulseScale", 0.0f), PropertyValuesHolder.ofFloat("pulseAlpha", 0.0f));
        objectAnimatorOfPropertyValuesHolder.setInterpolator(zzgy.zzb());
        return objectAnimatorOfPropertyValuesHolder.setDuration(200L);
    }
}
