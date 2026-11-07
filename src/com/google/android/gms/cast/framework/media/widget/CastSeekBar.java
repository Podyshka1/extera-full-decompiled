package com.google.android.gms.cast.framework.media.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.cast.framework.C1443R;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.Objects;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class CastSeekBar extends View {
    public zze zza;
    public zzb zzb;
    public List zzc;
    public zzd zzd;
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

    public CastSeekBar(Context context) {
        this(context, null);
    }

    private final void zzf(Canvas canvas, int i, int i2, int i3, int i4, int i5) {
        Paint paint = this.zzl;
        paint.setColor(i5);
        float f = i3;
        float f2 = i2 / f;
        float f3 = i / f;
        float f4 = i4;
        float f5 = this.zzi;
        canvas.drawRect(f3 * f4, -f5, f2 * f4, f5, paint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final void zzc(int i) {
        zze zzeVar = this.zza;
        if (zzeVar.zzf) {
            int i2 = zzeVar.zzd;
            int i3 = zzeVar.zze;
            int i4 = CastUtils.zza;
            this.zzf = Integer.valueOf(Math.min(Math.max(i, i2), i3));
            zzd zzdVar = this.zzd;
            if (zzdVar != null) {
                zzdVar.zzc(this, getProgress(), true);
            }
            Runnable runnable = this.zzs;
            if (runnable == null) {
                this.zzs = new Runnable() { // from class: com.google.android.gms.cast.framework.media.widget.zzc
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
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
    /* JADX INFO: renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public final void zzd() {
        this.zze = true;
        zzd zzdVar = this.zzd;
        if (zzdVar != null) {
            zzdVar.zzb(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzi, reason: merged with bridge method [inline-methods] */
    public final void zze() {
        this.zze = false;
        zzd zzdVar = this.zzd;
        if (zzdVar != null) {
            zzdVar.zza(this);
        }
    }

    private final int zzj(int i) {
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        return (int) ((((double) i) / ((double) measuredWidth)) * ((double) this.zza.zzb));
    }

    public int getMaxProgress() {
        return this.zza.zzb;
    }

    public int getProgress() {
        Integer num = this.zzf;
        return num != null ? num.intValue() : this.zza.zza;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        Runnable runnable = this.zzs;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int iSave = canvas.save();
        canvas.translate(getPaddingLeft(), getPaddingTop());
        zzb zzbVar = this.zzb;
        if (zzbVar == null) {
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
            int progress = getProgress();
            int iSave2 = canvas.save();
            canvas.translate(0.0f, measuredHeight / 2);
            zze zzeVar = this.zza;
            if (zzeVar.zzf) {
                int i4 = zzeVar.zzd;
                if (i4 > 0) {
                    zzf(canvas, 0, i4, zzeVar.zzb, measuredWidth, this.zzo);
                }
                zze zzeVar2 = this.zza;
                int i5 = zzeVar2.zzd;
                if (progress > i5) {
                    zzf(canvas, i5, progress, zzeVar2.zzb, measuredWidth, this.zzm);
                    i3 = progress;
                } else {
                    i3 = progress;
                }
                zze zzeVar3 = this.zza;
                int i6 = zzeVar3.zze;
                if (i6 > i3) {
                    zzf(canvas, i3, i6, zzeVar3.zzb, measuredWidth, this.zzn);
                }
                zze zzeVar4 = this.zza;
                int i7 = zzeVar4.zzb;
                int i8 = zzeVar4.zze;
                if (i7 > i8) {
                    zzf(canvas, i8, i7, i7, measuredWidth, this.zzo);
                }
            } else {
                int iMax = Math.max(zzeVar.zzc, 0);
                if (iMax > 0) {
                    i = iMax;
                    zzf(canvas, 0, i, this.zza.zzb, measuredWidth, this.zzo);
                } else {
                    i = iMax;
                }
                if (progress > i) {
                    zzf(canvas, i, progress, this.zza.zzb, measuredWidth, this.zzm);
                    i2 = progress;
                } else {
                    i2 = progress;
                }
                int i9 = this.zza.zzb;
                if (i9 > i2) {
                    zzf(canvas, i2, i9, i9, measuredWidth, this.zzo);
                }
            }
            canvas.restoreToCount(iSave2);
            List<zza> list = this.zzc;
            if (list != null && !list.isEmpty()) {
                Paint paint = this.zzl;
                paint.setColor(this.zzp);
                int measuredWidth2 = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
                int measuredHeight2 = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
                int iSave3 = canvas.save();
                canvas.translate(0.0f, measuredHeight2 / 2);
                for (zza zzaVar : list) {
                    if (zzaVar != null) {
                        int iMin = Math.min(zzaVar.zza, this.zza.zzb);
                        int i10 = (zzaVar.zzc ? zzaVar.zzb : 1) + iMin;
                        float f = measuredWidth2;
                        float f2 = this.zza.zzb;
                        float f3 = this.zzk;
                        float f4 = (i10 * f) / f2;
                        float f5 = (iMin * f) / f2;
                        if (f4 - f5 < f3) {
                            f4 = f5 + f3;
                        }
                        if (f4 <= f) {
                            f = f4;
                        }
                        if (f - f5 < f3) {
                            f5 = f - f3;
                        }
                        float f6 = this.zzi;
                        canvas.drawRect(f5, -f6, f, f6, paint);
                    }
                }
                canvas.restoreToCount(iSave3);
            }
            if (isEnabled() && this.zza.zzf) {
                Paint paint2 = this.zzl;
                paint2.setColor(this.zzm);
                int measuredWidth3 = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
                int measuredHeight3 = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
                double progress2 = getProgress();
                double d = this.zza.zzb;
                int iSave4 = canvas.save();
                canvas.drawCircle((int) ((progress2 / d) * ((double) measuredWidth3)), measuredHeight3 / 2.0f, this.zzj, paint2);
                canvas.restoreToCount(iSave4);
            }
        } else {
            int measuredWidth4 = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            int measuredHeight4 = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
            int iSave5 = canvas.save();
            canvas.translate(0.0f, measuredHeight4 / 2);
            int i11 = this.zzp;
            int i12 = zzbVar.zza;
            int i13 = zzbVar.zzb;
            zzf(canvas, 0, i12, i13, measuredWidth4, i11);
            zzf(canvas, i12, i13, i13, measuredWidth4, this.zzo);
            canvas.restoreToCount(iSave5);
        }
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.View
    public synchronized void onMeasure(int i, int i2) {
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
                zzd();
                zzc(zzj(this.zzr.x));
                return true;
            }
            if (action == 1) {
                zzc(zzj(this.zzr.x));
                zze();
                return true;
            }
            if (action == 2) {
                zzc(zzj(this.zzr.x));
                return true;
            }
            if (action == 3) {
                this.zze = false;
                this.zzf = null;
                zzd zzdVar = this.zzd;
                if (zzdVar != null) {
                    zzdVar.zzc(this, getProgress(), true);
                    this.zzd.zza(this);
                }
                postInvalidate();
                return true;
            }
        }
        return false;
    }

    public final void zza(List list) {
        if (Objects.equal(this.zzc, list)) {
            return;
        }
        this.zzc = list == null ? null : new ArrayList(list);
        postInvalidate();
    }

    public final void zzb(zze zzeVar) {
        if (this.zze) {
            return;
        }
        zze zzeVar2 = new zze();
        zzeVar2.zza = zzeVar.zza;
        zzeVar2.zzb = zzeVar.zzb;
        zzeVar2.zzc = zzeVar.zzc;
        zzeVar2.zzd = zzeVar.zzd;
        zzeVar2.zze = zzeVar.zze;
        zzeVar2.zzf = zzeVar.zzf;
        this.zza = zzeVar2;
        this.zzf = null;
        zzd zzdVar = this.zzd;
        if (zzdVar != null) {
            zzdVar.zzc(this, getProgress(), false);
        }
        postInvalidate();
    }

    public CastSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CastSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zzc = new ArrayList();
        setAccessibilityDelegate(new zzf(this, null));
        Paint paint = new Paint(1);
        this.zzl = paint;
        paint.setStyle(Paint.Style.FILL);
        this.zzg = context.getResources().getDimension(C1443R.dimen.cast_seek_bar_minimum_width);
        this.zzh = context.getResources().getDimension(C1443R.dimen.cast_seek_bar_minimum_height);
        this.zzi = context.getResources().getDimension(C1443R.dimen.cast_seek_bar_progress_height) / 2.0f;
        this.zzj = context.getResources().getDimension(C1443R.dimen.cast_seek_bar_thumb_size) / 2.0f;
        this.zzk = context.getResources().getDimension(C1443R.dimen.cast_seek_bar_ad_break_minimum_width);
        zze zzeVar = new zze();
        this.zza = zzeVar;
        zzeVar.zzb = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, C1443R.styleable.CastExpandedController, C1443R.attr.castExpandedControllerStyle, C1443R.style.CastExpandedController);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(C1443R.styleable.CastExpandedController_castSeekBarProgressAndThumbColor, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(C1443R.styleable.CastExpandedController_castSeekBarSecondaryProgressColor, 0);
        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(C1443R.styleable.CastExpandedController_castSeekBarUnseekableProgressColor, 0);
        int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(C1443R.styleable.CastExpandedController_castAdBreakMarkerColor, 0);
        this.zzm = context.getResources().getColor(resourceId);
        this.zzn = context.getResources().getColor(resourceId2);
        this.zzo = context.getResources().getColor(resourceId3);
        this.zzp = context.getResources().getColor(resourceId4);
        typedArrayObtainStyledAttributes.recycle();
    }
}
