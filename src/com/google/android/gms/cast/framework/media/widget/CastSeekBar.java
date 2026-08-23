package com.google.android.gms.cast.framework.media.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.android.gms.cast.framework.R$attr;
import com.google.android.gms.cast.framework.R$dimen;
import com.google.android.gms.cast.framework.R$style;
import com.google.android.gms.cast.framework.R$styleable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class CastSeekBar extends View {
    public zze zza;
    public List zzc;
    private boolean zze;
    private Integer zzf;
    private final float zzg;
    private final float zzh;
    private final float zzi;
    private final float zzj;
    private final float zzk;
    private final Paint zzl;
    private final int zzm;
    private final int zzn;
    private final int zzo;
    private final int zzp;
    private int[] zzq;
    private Point zzr;
    private Runnable zzs;

    private final int zzf(int i) {
        return (int) ((((double) i) / ((double) ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()))) * ((double) this.zza.zzb));
    }

    private final void zzg(Canvas canvas, int i, int i2, int i3, int i4, int i5) {
        this.zzl.setColor(i5);
        float f = i3;
        float f2 = i2 / f;
        float f3 = i / f;
        float f4 = i4;
        float f5 = this.zzi;
        canvas.drawRect(f3 * f4, -f5, f2 * f4, f5, this.zzl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzh(int i) {
        zze zzeVar = this.zza;
        if (zzeVar.zzf) {
            int i2 = zzeVar.zzd;
            this.zzf = Integer.valueOf(Math.min(Math.max(i, i2), zzeVar.zze));
            Runnable runnable = this.zzs;
            if (runnable == null) {
                this.zzs = new Runnable() { // from class: com.google.android.gms.cast.framework.media.widget.zza
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.sendAccessibilityEvent(4);
                    }
                };
            } else {
                removeCallbacks(runnable);
            }
            postDelayed(this.zzs, 200L);
            postInvalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzi() {
        this.zze = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzj() {
        this.zze = false;
    }

    public int getMaxProgress() {
        return this.zza.zzb;
    }

    public int getProgress() {
        Integer num = this.zzf;
        return num != null ? num.intValue() : this.zza.zza;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        Runnable runnable = this.zzs;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        CastSeekBar castSeekBar;
        Canvas canvas2;
        int i;
        int i2;
        int i3;
        int iSave = canvas.save();
        canvas.translate(getPaddingLeft(), getPaddingTop());
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int progress = getProgress();
        int iSave2 = canvas.save();
        canvas.translate(0.0f, measuredHeight / 2);
        zze zzeVar = this.zza;
        if (zzeVar.zzf) {
            int i4 = zzeVar.zzd;
            if (i4 > 0) {
                castSeekBar = this;
                canvas2 = canvas;
                castSeekBar.zzg(canvas2, 0, i4, zzeVar.zzb, measuredWidth, this.zzo);
            } else {
                castSeekBar = this;
                canvas2 = canvas;
            }
            zze zzeVar2 = castSeekBar.zza;
            int i5 = zzeVar2.zzd;
            if (progress > i5) {
                castSeekBar.zzg(canvas2, i5, progress, zzeVar2.zzb, measuredWidth, castSeekBar.zzm);
                i3 = progress;
            } else {
                i3 = progress;
            }
            zze zzeVar3 = castSeekBar.zza;
            int i6 = zzeVar3.zze;
            if (i6 > i3) {
                castSeekBar.zzg(canvas2, i3, i6, zzeVar3.zzb, measuredWidth, castSeekBar.zzn);
            }
            zze zzeVar4 = castSeekBar.zza;
            int i7 = zzeVar4.zzb;
            int i8 = zzeVar4.zze;
            if (i7 > i8) {
                castSeekBar.zzg(canvas2, i8, i7, i7, measuredWidth, castSeekBar.zzo);
            }
        } else {
            castSeekBar = this;
            canvas2 = canvas;
            int iMax = Math.max(zzeVar.zzc, 0);
            if (iMax > 0) {
                i = iMax;
                castSeekBar.zzg(canvas2, 0, i, castSeekBar.zza.zzb, measuredWidth, castSeekBar.zzo);
            } else {
                i = iMax;
            }
            if (progress > i) {
                castSeekBar.zzg(canvas2, i, progress, castSeekBar.zza.zzb, measuredWidth, castSeekBar.zzm);
                i2 = progress;
            } else {
                i2 = progress;
            }
            int i9 = castSeekBar.zza.zzb;
            if (i9 > i2) {
                castSeekBar.zzg(canvas2, i2, i9, i9, measuredWidth, castSeekBar.zzo);
            }
        }
        canvas2.restoreToCount(iSave2);
        List list = castSeekBar.zzc;
        if (list != null && !list.isEmpty()) {
            castSeekBar.zzl.setColor(castSeekBar.zzp);
            getMeasuredWidth();
            getPaddingLeft();
            getPaddingRight();
            int measuredHeight2 = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
            int iSave3 = canvas2.save();
            canvas2.translate(0.0f, measuredHeight2 / 2);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
            }
            canvas2.restoreToCount(iSave3);
        }
        if (isEnabled() && castSeekBar.zza.zzf) {
            castSeekBar.zzl.setColor(castSeekBar.zzm);
            int measuredWidth2 = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            int measuredHeight3 = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
            double progress2 = getProgress();
            double d = castSeekBar.zza.zzb;
            int iSave4 = canvas2.save();
            canvas2.drawCircle((int) ((progress2 / d) * ((double) measuredWidth2)), measuredHeight3 / 2.0f, castSeekBar.zzj, castSeekBar.zzl);
            canvas2.restoreToCount(iSave4);
        }
        canvas2.restoreToCount(iSave);
    }

    @Override // android.view.View
    protected synchronized void onMeasure(int i, int i2) {
        float paddingLeft = getPaddingLeft();
        setMeasuredDimension(View.resolveSizeAndState((int) (this.zzg + paddingLeft + getPaddingRight()), i, 0), View.resolveSizeAndState((int) (this.zzh + getPaddingTop() + getPaddingBottom()), i2, 0));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled() && this.zza.zzf) {
            if (this.zzr == null) {
                this.zzr = new Point();
            }
            if (this.zzq == null) {
                this.zzq = new int[2];
            }
            getLocationOnScreen(this.zzq);
            this.zzr.set((((int) motionEvent.getRawX()) - this.zzq[0]) - getPaddingLeft(), ((int) motionEvent.getRawY()) - this.zzq[1]);
            int action = motionEvent.getAction();
            if (action == 0) {
                zzi();
                zzh(zzf(this.zzr.x));
                return true;
            }
            if (action == 1) {
                zzh(zzf(this.zzr.x));
                zzj();
                return true;
            }
            if (action == 2) {
                zzh(zzf(this.zzr.x));
                return true;
            }
            if (action == 3) {
                this.zze = false;
                this.zzf = null;
                postInvalidate();
                return true;
            }
        }
        return false;
    }

    public CastSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CastSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zzc = new ArrayList();
        setAccessibilityDelegate(new zzg(this, null));
        Paint paint = new Paint(1);
        this.zzl = paint;
        paint.setStyle(Paint.Style.FILL);
        this.zzg = context.getResources().getDimension(R$dimen.cast_seek_bar_minimum_width);
        this.zzh = context.getResources().getDimension(R$dimen.cast_seek_bar_minimum_height);
        this.zzi = context.getResources().getDimension(R$dimen.cast_seek_bar_progress_height) / 2.0f;
        this.zzj = context.getResources().getDimension(R$dimen.cast_seek_bar_thumb_size) / 2.0f;
        this.zzk = context.getResources().getDimension(R$dimen.cast_seek_bar_ad_break_minimum_width);
        zze zzeVar = new zze();
        this.zza = zzeVar;
        zzeVar.zzb = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R$styleable.CastExpandedController, R$attr.castExpandedControllerStyle, R$style.CastExpandedController);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.CastExpandedController_castSeekBarProgressAndThumbColor, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.CastExpandedController_castSeekBarSecondaryProgressColor, 0);
        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.CastExpandedController_castSeekBarUnseekableProgressColor, 0);
        int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.CastExpandedController_castAdBreakMarkerColor, 0);
        this.zzm = context.getResources().getColor(resourceId);
        this.zzn = context.getResources().getColor(resourceId2);
        this.zzo = context.getResources().getColor(resourceId3);
        this.zzp = context.getResources().getColor(resourceId4);
        typedArrayObtainStyledAttributes.recycle();
    }
}
