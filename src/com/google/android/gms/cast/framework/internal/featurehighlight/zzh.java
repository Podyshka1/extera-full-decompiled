package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.GestureDetectorCompat;
import com.google.android.gms.cast.framework.C1443R;
import com.google.android.gms.internal.cast.zzgp;
import com.google.android.gms.internal.cast.zzgy;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class zzh extends ViewGroup {
    Animator zza;
    private final int[] zzb;
    private final Rect zzc;
    private final Rect zzd;
    private final OuterHighlightDrawable zze;
    private final InnerZoneDrawable zzf;
    private View zzg;
    private final zzi zzh;
    private final GestureDetectorCompat zzi;
    private GestureDetectorCompat zzj;
    private zzg zzk;
    private boolean zzl;
    private HelpTextView zzm;

    public zzh(Context context) {
        super(context);
        this.zzb = new int[2];
        this.zzc = new Rect();
        this.zzd = new Rect();
        setId(C1443R.id.cast_featurehighlight_view);
        setWillNotDraw(false);
        InnerZoneDrawable innerZoneDrawable = new InnerZoneDrawable(context);
        this.zzf = innerZoneDrawable;
        innerZoneDrawable.setCallback(this);
        OuterHighlightDrawable outerHighlightDrawable = new OuterHighlightDrawable(context);
        this.zze = outerHighlightDrawable;
        outerHighlightDrawable.setCallback(this);
        this.zzh = new zzi(this);
        GestureDetectorCompat gestureDetectorCompat = new GestureDetectorCompat(context, new zza(this));
        this.zzi = gestureDetectorCompat;
        gestureDetectorCompat.setIsLongpressEnabled(false);
        setVisibility(8);
    }

    private final void zzo(Animator animator) {
        Animator animator2 = this.zza;
        if (animator2 != null) {
            animator2.cancel();
        }
        this.zza = animator;
        animator.start();
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.save();
        OuterHighlightDrawable outerHighlightDrawable = this.zze;
        outerHighlightDrawable.draw(canvas);
        this.zzf.draw(canvas);
        View view = this.zzg;
        if (view == null) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Neither target view nor drawable was set");
            return;
        }
        if (view.getParent() != null) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.zzg.getWidth(), this.zzg.getHeight(), Bitmap.Config.ARGB_8888);
            this.zzg.draw(new Canvas(bitmapCreateBitmap));
            int iZza = outerHighlightDrawable.zza();
            int iRed = Color.red(iZza);
            int iGreen = Color.green(iZza);
            int iBlue = Color.blue(iZza);
            for (int i = 0; i < bitmapCreateBitmap.getHeight(); i++) {
                for (int i2 = 0; i2 < bitmapCreateBitmap.getWidth(); i2++) {
                    int pixel = bitmapCreateBitmap.getPixel(i2, i);
                    if (Color.alpha(pixel) != 0) {
                        bitmapCreateBitmap.setPixel(i2, i, Color.argb(Color.alpha(pixel), iRed, iGreen, iBlue));
                    }
                }
            }
            Rect rect = this.zzc;
            canvas.drawBitmap(bitmapCreateBitmap, rect.left, rect.top, (Paint) null);
        }
        canvas.restore();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view = this.zzg;
        if (view == null) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Target view must be set before layout");
            return;
        }
        if (view.getParent() != null) {
            int[] iArr = this.zzb;
            View view2 = this.zzg;
            getLocationInWindow(iArr);
            int i5 = iArr[0];
            int i6 = iArr[1];
            view2.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i5;
            iArr[1] = iArr[1] - i6;
        }
        Rect rect = this.zzc;
        int[] iArr2 = this.zzb;
        int i7 = iArr2[0];
        rect.set(i7, iArr2[1], this.zzg.getWidth() + i7, iArr2[1] + this.zzg.getHeight());
        Rect rect2 = this.zzd;
        rect2.set(i, i2, i3, i4);
        this.zze.setBounds(rect2);
        this.zzf.setBounds(rect2);
        this.zzh.zza(rect, rect2);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(View.resolveSize(View.MeasureSpec.getSize(i), i), View.resolveSize(View.MeasureSpec.getSize(i2), i2));
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.zzl = this.zzc.contains((int) motionEvent.getX(), (int) motionEvent.getY());
            actionMasked = 0;
        }
        if (this.zzl) {
            GestureDetectorCompat gestureDetectorCompat = this.zzj;
            if (gestureDetectorCompat != null) {
                gestureDetectorCompat.onTouchEvent(motionEvent);
                if (actionMasked == 1) {
                    motionEvent = MotionEvent.obtain(motionEvent);
                    motionEvent.setAction(3);
                }
            }
            if (this.zzg.getParent() != null) {
                this.zzg.onTouchEvent(motionEvent);
            }
        } else {
            this.zzi.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.zze || drawable == this.zzf || drawable == null;
    }

    public final void zza(View view, View view2, boolean z, zzg zzgVar) {
        this.zzg = view;
        this.zzk = zzgVar;
        GestureDetectorCompat gestureDetectorCompat = new GestureDetectorCompat(getContext(), new zzb(this, view, true, zzgVar));
        this.zzj = gestureDetectorCompat;
        gestureDetectorCompat.setIsLongpressEnabled(false);
        setVisibility(4);
    }

    public final void zzb(Runnable runnable) {
        addOnLayoutChangeListener(new zzc(this, null));
    }

    public final void zzc() {
        if (this.zzg == null) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Target view must be set before animation");
            return;
        }
        setVisibility(0);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.zzm.asView(), "alpha", 0.0f, 1.0f).setDuration(350L);
        duration.setInterpolator(zzgy.zza());
        Rect rect = this.zzc;
        OuterHighlightDrawable outerHighlightDrawable = this.zze;
        float fExactCenterX = rect.exactCenterX() - outerHighlightDrawable.zzd();
        float fExactCenterY = rect.exactCenterY() - outerHighlightDrawable.zze();
        InnerZoneDrawable innerZoneDrawable = this.zzf;
        Animator animatorZzg = outerHighlightDrawable.zzg(fExactCenterX, fExactCenterY);
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(innerZoneDrawable, PropertyValuesHolder.ofFloat("scale", 0.0f, 1.0f), PropertyValuesHolder.ofInt("alpha", 0, 255));
        objectAnimatorOfPropertyValuesHolder.setInterpolator(zzgy.zza());
        Animator duration2 = objectAnimatorOfPropertyValuesHolder.setDuration(350L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(duration, animatorZzg, duration2);
        animatorSet.addListener(new zzd(this));
        zzo(animatorSet);
    }

    public final void zzd(Runnable runnable) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.zzm.asView(), "alpha", 0.0f).setDuration(200L);
        duration.setInterpolator(zzgy.zzb());
        OuterHighlightDrawable outerHighlightDrawable = this.zze;
        Rect rect = this.zzc;
        float fExactCenterX = rect.exactCenterX() - outerHighlightDrawable.zzd();
        float fExactCenterY = rect.exactCenterY() - outerHighlightDrawable.zze();
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(outerHighlightDrawable, PropertyValuesHolder.ofFloat("scale", 0.0f), PropertyValuesHolder.ofFloat("translationX", 0.0f, fExactCenterX), PropertyValuesHolder.ofFloat("translationY", 0.0f, fExactCenterY), PropertyValuesHolder.ofInt("alpha", 0));
        objectAnimatorOfPropertyValuesHolder.setInterpolator(zzgy.zzb());
        Animator duration2 = objectAnimatorOfPropertyValuesHolder.setDuration(200L);
        Animator animatorZzb = this.zzf.zzb();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(duration, duration2, animatorZzb);
        animatorSet.addListener(new zzf(this, runnable));
        zzo(animatorSet);
    }

    public final void zze(Runnable runnable) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.zzm.asView(), "alpha", 0.0f).setDuration(200L);
        duration.setInterpolator(zzgy.zzb());
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.zze, PropertyValuesHolder.ofFloat("scale", 1.125f), PropertyValuesHolder.ofInt("alpha", 0));
        objectAnimatorOfPropertyValuesHolder.setInterpolator(zzgy.zzb());
        Animator duration2 = objectAnimatorOfPropertyValuesHolder.setDuration(200L);
        Animator animatorZzb = this.zzf.zzb();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(duration, duration2, animatorZzb);
        animatorSet.addListener(new zze(this, runnable));
        zzo(animatorSet);
    }

    public final void zzf(int i) {
        this.zze.zzb(i);
    }

    public final View zzg() {
        return this.zzm.asView();
    }

    public final OuterHighlightDrawable zzh() {
        return this.zze;
    }

    public final InnerZoneDrawable zzi() {
        return this.zzf;
    }

    public final /* synthetic */ boolean zzj(float f, float f2) {
        return this.zzd.contains(Math.round(f), Math.round(f2));
    }

    public final /* synthetic */ Animator zzk() {
        AnimatorSet animatorSet = new AnimatorSet();
        InnerZoneDrawable innerZoneDrawable = this.zzf;
        ObjectAnimator duration = ObjectAnimator.ofFloat(innerZoneDrawable, "scale", 1.0f, 1.1f).setDuration(500L);
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(innerZoneDrawable, "scale", 1.1f, 1.0f).setDuration(500L);
        ObjectAnimator duration3 = ObjectAnimator.ofPropertyValuesHolder(innerZoneDrawable, PropertyValuesHolder.ofFloat("pulseScale", 1.1f, 2.0f), PropertyValuesHolder.ofFloat("pulseAlpha", 1.0f, 0.0f)).setDuration(500L);
        animatorSet.play(duration);
        animatorSet.play(duration2).with(duration3).after(duration);
        animatorSet.setInterpolator(zzgy.zzc());
        animatorSet.setStartDelay(500L);
        zzgp.zzb(animatorSet, -1, null);
        return animatorSet;
    }

    public final /* synthetic */ OuterHighlightDrawable zzl() {
        return this.zze;
    }

    public final /* synthetic */ zzg zzm() {
        return this.zzk;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    public final void zzn(HelpTextView helpTextView) {
        helpTextView.getClass();
        this.zzm = helpTextView;
        addView(helpTextView.asView(), 0);
    }
}
