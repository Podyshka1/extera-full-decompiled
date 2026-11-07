package org.telegram.ui.Components;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.StateSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import androidx.annotation.Keep;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import com.exteragram.messenger.utils.ui.SwitchUiHelper;
import me.vkryl.android.animator.BoolAnimator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.BaseCell;

/* JADX INFO: loaded from: classes7.dex */
public class Switch extends View {
    private static final FloatPropertyCompat<Switch> PROGRESS_PROPERTY = new FloatPropertyCompat<Switch>("progress") { // from class: org.telegram.ui.Components.Switch.1
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(Switch r1) {
            return r1.getProgress();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(Switch r1, float f) {
            r1.setProgress(f);
        }
    };
    private final BoolAnimator animatorIconVisibility;
    private final BoolAnimator animatorPressed;
    private boolean attachedToWindow;
    private boolean bitmapsCreated;
    private ObjectAnimator checkAnimator;
    private SpringAnimation checkSpringAnimator;
    private int colorSet;
    private int drawIconType;
    private boolean drawRipple;
    private ObjectAnimator iconAnimator;
    private Drawable iconDrawable;
    private final float[] iconLines;
    private float iconProgress;
    private boolean isChecked;
    private int lastIconColor;
    private Paint outlinePaint;
    private Bitmap[] overlayBitmap;
    private Canvas[] overlayCanvas;
    private float overlayCx;
    private float overlayCy;
    private Paint overlayEraserPaint;
    private Bitmap overlayMaskBitmap;
    private Canvas overlayMaskCanvas;
    private Paint overlayMaskPaint;
    private float overlayRad;
    private float overrideAlpha;
    private int overrideColorProgress;
    private Paint paint;
    private Paint paint2;
    private int[] pressedState;
    private float progress;
    private RectF rectF;
    private Theme.ResourcesProvider resourcesProvider;
    private RippleDrawable rippleDrawable;
    private Paint ripplePaint;
    private int thumbCheckedColorKey;
    private int thumbColorKey;
    private int trackCheckedColorKey;
    private int trackColorKey;

    public interface OnCheckedChangeListener {
    }

    public int processColor(int i) {
        return i;
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
    }

    public Switch(Context context) {
        this(context, null);
    }

    public Switch(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.animatorIconVisibility = new BoolAnimator((View) this, (Interpolator) CubicBezierInterpolator.EASE_OUT_QUINT, 380L, true);
        this.animatorPressed = SwitchUiHelper.createThumbPressedAnimator(this);
        this.iconLines = new float[8];
        this.iconProgress = 1.0f;
        this.trackColorKey = Theme.key_fill_RedNormal;
        this.trackCheckedColorKey = Theme.key_switch2TrackChecked;
        int i = Theme.key_windowBackgroundWhite;
        this.thumbColorKey = i;
        this.thumbCheckedColorKey = i;
        this.pressedState = new int[]{R.attr.state_enabled, R.attr.state_pressed};
        this.overrideAlpha = 1.0f;
        this.resourcesProvider = resourcesProvider;
        this.rectF = new RectF();
        this.paint = new Paint(1);
        Paint paint = new Paint(1);
        this.paint2 = paint;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        this.paint2.setStrokeCap(Paint.Cap.ROUND);
        this.paint2.setStrokeWidth(AndroidUtilities.dp(2.0f));
        Paint paint2 = new Paint(1);
        this.outlinePaint = paint2;
        paint2.setStyle(style);
        setHapticFeedbackEnabled(true);
    }

    @Keep
    public void setProgress(float f) {
        if (this.progress == f) {
            return;
        }
        this.progress = f;
        invalidate();
    }

    @Keep
    public float getProgress() {
        return this.progress;
    }

    @Keep
    public void setIconProgress(float f) {
        if (this.iconProgress == f) {
            return;
        }
        this.iconProgress = f;
        invalidate();
    }

    @Keep
    public float getIconProgress() {
        return this.iconProgress;
    }

    private void cancelCheckAnimator() {
        ObjectAnimator objectAnimator = this.checkAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.checkAnimator = null;
        }
        SpringAnimation springAnimation = this.checkSpringAnimator;
        if (springAnimation != null) {
            springAnimation.cancel();
            this.checkSpringAnimator = null;
        }
    }

    private void cancelIconAnimator() {
        ObjectAnimator objectAnimator = this.iconAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.iconAnimator = null;
        }
    }

    public void setDrawIconType(int i) {
        this.drawIconType = i;
    }

    public void setDrawRipple(boolean z) {
        if (z == this.drawRipple) {
            return;
        }
        this.drawRipple = z;
        if (this.rippleDrawable == null) {
            Paint paint = new Paint(1);
            this.ripplePaint = paint;
            paint.setColor(-1);
            BaseCell.RippleDrawableSafe rippleDrawableSafe = new BaseCell.RippleDrawableSafe(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{0}), null, null);
            this.rippleDrawable = rippleDrawableSafe;
            rippleDrawableSafe.setCallback(this);
        }
        this.rippleDrawable.setRadius(SwitchUiHelper.getStateLayerRadius());
        boolean z2 = this.isChecked;
        if ((z2 && this.colorSet != 2) || (!z2 && this.colorSet != 1)) {
            this.rippleDrawable.setColor(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{processColor(Theme.getColor(z2 ? Theme.key_switchTrackBlueSelectorChecked : Theme.key_switchTrackBlueSelector, this.resourcesProvider))}));
            this.colorSet = this.isChecked ? 2 : 1;
        }
        if (Build.VERSION.SDK_INT >= 28 && z) {
            this.rippleDrawable.setHotspot(this.isChecked ? 0.0f : AndroidUtilities.dp(100.0f), AndroidUtilities.dp(18.0f));
        }
        this.rippleDrawable.setState(z ? this.pressedState : StateSet.NOTHING);
        this.animatorPressed.setValue(z, this.attachedToWindow);
        invalidate();
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        if (super.verifyDrawable(drawable)) {
            return true;
        }
        RippleDrawable rippleDrawable = this.rippleDrawable;
        return rippleDrawable != null && drawable == rippleDrawable;
    }

    public void setColors(int i, int i2, int i3, int i4) {
        this.trackColorKey = i;
        this.trackCheckedColorKey = i2;
        this.thumbColorKey = i3;
        this.thumbCheckedColorKey = i4;
    }

    private void animateToCheckedState(boolean z) {
        if (SwitchUiHelper.isMaterial3SwitchStyle()) {
            ObjectAnimator objectAnimator = this.checkAnimator;
            if (objectAnimator != null) {
                objectAnimator.cancel();
                this.checkAnimator = null;
            }
            if (this.checkSpringAnimator == null) {
                this.checkSpringAnimator = SwitchUiHelper.createThumbSpring(this, PROGRESS_PROPERTY);
            }
            this.checkSpringAnimator.animateToFinalPosition(z ? 1.0f : 0.0f);
            return;
        }
        cancelCheckAnimator();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "progress", z ? 1.0f : 0.0f);
        this.checkAnimator = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(200L);
        this.checkAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.checkAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Switch.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Switch.this.checkAnimator = null;
            }
        });
        this.checkAnimator.start();
    }

    private void animateIcon(boolean z) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "iconProgress", z ? 1.0f : 0.0f);
        this.iconAnimator = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(200L);
        this.iconAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Switch.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Switch.this.iconAnimator = null;
            }
        });
        this.iconAnimator.start();
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attachedToWindow = true;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attachedToWindow = false;
        destroyBitmaps();
    }

    public void setChecked(boolean z, boolean z2) {
        setChecked(z, this.drawIconType, z2);
    }

    public void setChecked(boolean z, int i, boolean z2) {
        if (z != this.isChecked) {
            this.isChecked = z;
            if (this.attachedToWindow && z2) {
                animateToCheckedState(z);
            } else {
                cancelCheckAnimator();
                setProgress(z ? 1.0f : 0.0f);
            }
        }
        setDrawIconType(i, z2);
    }

    public void setIcon(int i) {
        if (i != 0) {
            Drawable drawableMutate = getResources().getDrawable(i).mutate();
            this.iconDrawable = drawableMutate;
            if (drawableMutate != null) {
                int color = Theme.getColor(this.isChecked ? this.trackCheckedColorKey : this.trackColorKey, this.resourcesProvider);
                this.lastIconColor = color;
                drawableMutate.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.MULTIPLY));
            }
        } else {
            this.iconDrawable = null;
        }
        invalidate();
    }

    public void setIconVisible(boolean z, boolean z2) {
        this.animatorIconVisibility.setValue(z, z2);
    }

    public void setDrawIconType(int i, boolean z) {
        if (this.drawIconType != i) {
            this.drawIconType = i;
            if (this.attachedToWindow && z) {
                animateIcon(i == 0);
            } else {
                cancelIconAnimator();
                setIconProgress(i == 0 ? 1.0f : 0.0f);
            }
        }
    }

    public boolean hasIcon() {
        return this.iconDrawable != null;
    }

    public boolean isChecked() {
        return this.isChecked;
    }

    public void setOverrideColor(int i) {
        if (this.overrideColorProgress == i) {
            return;
        }
        this.overrideColorProgress = i;
        this.overlayCx = 0.0f;
        this.overlayCy = 0.0f;
        this.overlayRad = 0.0f;
        invalidate();
    }

    public void setOverrideColorProgress(float f, float f2, float f3) {
        this.overlayCx = f;
        this.overlayCy = f2;
        this.overlayRad = f3;
        invalidate();
    }

    private void checkBitmaps() {
        Bitmap[] bitmapArr;
        Bitmap bitmap;
        if (this.overrideColorProgress == 0) {
            return;
        }
        int overlayPadding = SwitchUiHelper.getOverlayPadding() * 4;
        int measuredWidth = getMeasuredWidth() + overlayPadding;
        int measuredHeight = getMeasuredHeight() + overlayPadding;
        if (this.bitmapsCreated && (bitmapArr = this.overlayBitmap) != null && (bitmap = bitmapArr[0]) != null && (bitmap.getWidth() != measuredWidth || this.overlayBitmap[0].getHeight() != measuredHeight)) {
            destroyBitmaps();
        }
        if (this.bitmapsCreated || measuredWidth <= 0 || measuredHeight <= 0) {
            return;
        }
        try {
            this.overlayBitmap = new Bitmap[2];
            this.overlayCanvas = new Canvas[2];
            for (int i = 0; i < 2; i++) {
                this.overlayBitmap[i] = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
                this.overlayCanvas[i] = new Canvas(this.overlayBitmap[i]);
            }
            this.overlayMaskBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
            this.overlayMaskCanvas = new Canvas(this.overlayMaskBitmap);
            Paint paint = new Paint(1);
            this.overlayEraserPaint = paint;
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            Paint paint2 = new Paint(1);
            this.overlayMaskPaint = paint2;
            paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
            this.bitmapsCreated = true;
        } catch (Throwable unused) {
        }
    }

    private void destroyBitmaps() {
        if (this.bitmapsCreated) {
            if (this.overlayBitmap != null) {
                int i = 0;
                while (true) {
                    Bitmap[] bitmapArr = this.overlayBitmap;
                    if (i >= bitmapArr.length) {
                        break;
                    }
                    Bitmap bitmap = bitmapArr[i];
                    if (bitmap != null) {
                        bitmap.recycle();
                        this.overlayBitmap[i] = null;
                    }
                    i++;
                }
                this.overlayBitmap = null;
            }
            Bitmap bitmap2 = this.overlayMaskBitmap;
            if (bitmap2 != null) {
                bitmap2.recycle();
                this.overlayMaskBitmap = null;
            }
        }
        this.overlayCanvas = null;
        this.overlayMaskCanvas = null;
        this.bitmapsCreated = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0329  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x05d3  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x05dc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0190  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onDraw(Canvas canvas) {
        Canvas canvas2;
        float f;
        float f2;
        float f3;
        float f4;
        float measuredHeight;
        int i;
        float thumbCenterX;
        float f5;
        int i2;
        float fClamp01;
        int i3;
        float f6;
        Canvas canvas3;
        float f7;
        int i4;
        int i5;
        int i6;
        int i7;
        float floatValue;
        int i8;
        boolean z;
        int i9;
        boolean z2;
        int i10;
        int i11;
        float fClamp012;
        RippleDrawable rippleDrawable;
        Drawable drawable;
        if (getVisibility() != 0) {
            return;
        }
        if (this.overrideColorProgress != 0) {
            checkBitmaps();
            if (!this.bitmapsCreated) {
                this.overrideColorProgress = 0;
            }
        }
        boolean zIsMaterial3SwitchStyle = SwitchUiHelper.isMaterial3SwitchStyle();
        int overlayPadding = SwitchUiHelper.getOverlayPadding();
        int stateLayerRadius = SwitchUiHelper.getStateLayerRadius();
        boolean z3 = zIsMaterial3SwitchStyle && this.overrideAlpha < 1.0f;
        if (z3) {
            float f8 = -stateLayerRadius;
            canvas2 = canvas;
            canvas2.saveLayerAlpha(f8, f8, getMeasuredWidth() + stateLayerRadius, getMeasuredHeight() + stateLayerRadius, (int) (this.overrideAlpha * 255.0f));
        } else {
            canvas2 = canvas;
        }
        int iDp = AndroidUtilities.dp(31.0f);
        if (zIsMaterial3SwitchStyle) {
            f = 8.0f;
            f2 = 14.0f;
            thumbCenterX = SwitchUiHelper.getThumbCenterX(getMeasuredWidth(), this.progress);
            f4 = 1.0f;
            f5 = 0.0f;
            f3 = 0.0f;
            measuredHeight = getMeasuredHeight() / 2.0f;
            i = 0;
        } else {
            f = 8.0f;
            f2 = 14.0f;
            int measuredWidth = (getMeasuredWidth() - iDp) / 2;
            float measuredHeight2 = (getMeasuredHeight() - AndroidUtilities.dpf2(14.0f)) / 2.0f;
            f3 = 0.0f;
            f4 = 1.0f;
            float fDp = measuredWidth + AndroidUtilities.dp(8.0f) + ((int) (AndroidUtilities.dp(16.0f) * this.progress));
            measuredHeight = getMeasuredHeight() / 2;
            i = measuredWidth;
            thumbCenterX = fDp;
            f5 = measuredHeight2;
        }
        int i12 = (int) thumbCenterX;
        int i13 = (int) measuredHeight;
        int i14 = 0;
        int iProcessColor = processColor(SwitchUiHelper.getUnselectedTrackColor(this.trackColorKey, this.resourcesProvider));
        int iProcessColor2 = processColor(Theme.getColor(this.trackCheckedColorKey, this.resourcesProvider));
        int iProcessColor3 = processColor(SwitchUiHelper.getUnselectedThumbColor(this.trackColorKey, this.thumbColorKey, this.resourcesProvider));
        int iProcessColor4 = processColor(SwitchUiHelper.getSelectedThumbColor(this.thumbCheckedColorKey, this.resourcesProvider));
        int i15 = 0;
        while (true) {
            i2 = iProcessColor4;
            if (i15 >= 2) {
                break;
            }
            if (i15 == 1 && this.overrideColorProgress == 0) {
                i8 = iProcessColor;
                z = zIsMaterial3SwitchStyle;
                i9 = stateLayerRadius;
                z2 = z3;
                i10 = i12;
                i11 = i13;
            } else {
                Canvas canvas4 = i15 == 0 ? canvas2 : this.overlayCanvas[i14];
                i8 = iProcessColor;
                int i16 = i15 == 0 ? i14 : overlayPadding;
                z = zIsMaterial3SwitchStyle;
                if (i15 == 1) {
                    i9 = stateLayerRadius;
                    this.overlayBitmap[i14].eraseColor(i14);
                    this.paint.setColor(-16777216);
                    float f9 = overlayPadding;
                    this.overlayMaskCanvas.drawRect(f9, f9, this.overlayMaskBitmap.getWidth() - overlayPadding, this.overlayMaskBitmap.getHeight() - overlayPadding, this.paint);
                    z2 = z3;
                    i11 = i13;
                    i10 = i12;
                    this.overlayMaskCanvas.drawCircle((this.overlayCx - getX()) + f9, (this.overlayCy - getY()) + f9, this.overlayRad, this.overlayEraserPaint);
                } else {
                    i9 = stateLayerRadius;
                    z2 = z3;
                    i10 = i12;
                    i11 = i13;
                }
                int i17 = this.overrideColorProgress;
                if (i17 == 1) {
                    fClamp012 = i15 == 0 ? f3 : f4;
                } else if (i17 != 2) {
                    fClamp012 = Utilities.clamp01(this.progress);
                } else if (i15 == 0) {
                }
                if (i15 == 0 && (drawable = this.iconDrawable) != null) {
                    if (this.lastIconColor != (this.isChecked ? iProcessColor2 : i8)) {
                        int i18 = this.isChecked ? iProcessColor2 : i8;
                        this.lastIconColor = i18;
                        drawable.setColorFilter(new PorterDuffColorFilter(i18, PorterDuff.Mode.MULTIPLY));
                    }
                }
                int iRed = Color.red(i8);
                int iRed2 = Color.red(iProcessColor2);
                int iGreen = Color.green(i8);
                int iGreen2 = Color.green(iProcessColor2);
                float f10 = fClamp012;
                int iBlue = Color.blue(i8);
                int iBlue2 = Color.blue(iProcessColor2);
                int iAlpha = (((int) (iBlue + ((iBlue2 - iBlue) * f10))) & 255) | ((((int) (iRed + ((iRed2 - iRed) * f10))) & 255) << 16) | ((((int) (Color.alpha(i8) + ((Color.alpha(iProcessColor2) - r13) * f10))) & 255) << 24) | ((((int) (iGreen + ((iGreen2 - iGreen) * f10))) & 255) << 8);
                this.paint.setColor(iAlpha);
                this.paint2.setColor(iAlpha);
                RectF rectF = this.rectF;
                if (z) {
                    SwitchUiHelper.setTrackBounds(rectF, getMeasuredWidth(), getMeasuredHeight());
                    float f11 = i16;
                    this.rectF.offset(f11, f11);
                    float fHeight = this.rectF.height() / 2.0f;
                    canvas4.drawRoundRect(this.rectF, fHeight, fHeight, this.paint);
                    float f12 = f4 - f10;
                    if (f12 > f3) {
                        float trackOutlineWidth = SwitchUiHelper.getTrackOutlineWidth();
                        this.outlinePaint.setColor(Theme.multAlpha(iProcessColor3, f12));
                        this.outlinePaint.setStrokeWidth(trackOutlineWidth);
                        float f13 = trackOutlineWidth / 2.0f;
                        this.rectF.inset(f13, f13);
                        float f14 = fHeight - f13;
                        canvas4.drawRoundRect(this.rectF, f14, f14, this.outlinePaint);
                    }
                } else {
                    rectF.set(i, f5, i + iDp, AndroidUtilities.dpf2(f2) + f5);
                    canvas4.drawRoundRect(this.rectF, AndroidUtilities.dpf2(7.0f), AndroidUtilities.dpf2(7.0f), this.paint);
                    canvas4.drawCircle(i10 + i16, i11 + i16, AndroidUtilities.dpf2(10.0f), this.paint);
                }
                if (i15 == 0 && (rippleDrawable = this.rippleDrawable) != null) {
                    rippleDrawable.setBounds(i10 - i9, i11 - i9, i10 + i9, i11 + i9);
                    this.rippleDrawable.draw(canvas4);
                } else if (i15 == 1) {
                    float f15 = -overlayPadding;
                    canvas4.drawBitmap(this.overlayMaskBitmap, f15, f15, this.overlayMaskPaint);
                }
            }
            i15++;
            iProcessColor = i8;
            stateLayerRadius = i9;
            iProcessColor4 = i2;
            zIsMaterial3SwitchStyle = z;
            z3 = z2;
            i13 = i11;
            i12 = i10;
            i14 = 0;
        }
        boolean z4 = zIsMaterial3SwitchStyle;
        boolean z5 = z3;
        int i19 = i12;
        int i20 = i13;
        if (this.overrideColorProgress != 0) {
            float f16 = -overlayPadding;
            canvas2.drawBitmap(this.overlayBitmap[0], f16, f16, (Paint) null);
        }
        int i21 = 2;
        int i22 = 0;
        while (i22 < i21) {
            if (i22 == 1 && this.overrideColorProgress == 0) {
                i3 = iProcessColor3;
                f6 = thumbCenterX;
                f7 = measuredHeight;
                i4 = i20;
                i5 = i19;
                i6 = 2;
            } else {
                Canvas canvas5 = i22 == 0 ? canvas2 : this.overlayCanvas[1];
                int i23 = i22 == 0 ? 0 : overlayPadding;
                if (i22 == 1) {
                    this.overlayBitmap[1].eraseColor(0);
                }
                int i24 = this.overrideColorProgress;
                if (i24 == 1) {
                    fClamp01 = i22 == 0 ? f3 : f4;
                } else if (i24 != 2) {
                    fClamp01 = Utilities.clamp01(this.progress);
                } else if (i22 == 0) {
                }
                int iRed3 = Color.red(iProcessColor3);
                int iRed4 = Color.red(i2);
                int iGreen3 = Color.green(iProcessColor3);
                int iGreen4 = Color.green(i2);
                int iBlue3 = Color.blue(iProcessColor3);
                int iBlue4 = Color.blue(i2);
                i3 = iProcessColor3;
                this.paint.setColor(((((int) (iRed3 + ((iRed4 - iRed3) * fClamp01))) & 255) << 16) | ((((int) (Color.alpha(iProcessColor3) + ((Color.alpha(i2) - r5) * fClamp01))) & 255) << 24) | ((((int) (iGreen3 + ((iGreen4 - iGreen3) * fClamp01))) & 255) << 8) | (((int) (iBlue3 + ((iBlue4 - iBlue3) * fClamp01))) & 255));
                if (z4) {
                    int i25 = this.drawIconType;
                    if (i25 == 1 || i25 == 2 || this.iconAnimator != null) {
                        floatValue = f4;
                    } else {
                        floatValue = this.iconDrawable != null ? this.animatorIconVisibility.getFloatValue() : f3;
                    }
                    float f17 = i23;
                    SwitchUiHelper.setThumbBounds(this.rectF, thumbCenterX + f17, measuredHeight + f17, this.progress, this.isChecked, floatValue, this.animatorPressed.getFloatValue());
                    float fHeight2 = this.rectF.height() / 2.0f;
                    canvas5.drawRoundRect(this.rectF, fHeight2, fHeight2, this.paint);
                } else {
                    canvas5.drawCircle(i19 + i23, i20 + i23, AndroidUtilities.dp(f), this.paint);
                }
                if (i22 == 0) {
                    if (this.iconDrawable != null) {
                        float floatValue2 = this.animatorIconVisibility.getFloatValue();
                        if (floatValue2 > f3) {
                            int intrinsicWidth = this.iconDrawable.getIntrinsicWidth();
                            int intrinsicHeight = this.iconDrawable.getIntrinsicHeight();
                            if (z4) {
                                floatValue2 *= SwitchUiHelper.getThumbIconScale(intrinsicWidth, intrinsicHeight);
                            }
                            canvas2.save();
                            float f18 = intrinsicWidth / 2.0f;
                            float f19 = intrinsicHeight / 2.0f;
                            canvas2.translate(thumbCenterX - f18, measuredHeight - f19);
                            canvas2.scale(floatValue2, floatValue2, f18, f19);
                            this.iconDrawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
                            this.iconDrawable.draw(canvas2);
                            canvas2.restore();
                        }
                    } else {
                        int i26 = this.drawIconType;
                        int i27 = 1;
                        if (i26 == 1) {
                            if (z4) {
                                this.paint2.setStrokeWidth(SwitchUiHelper.getIconStrokeWidth());
                                SwitchUiHelper.setCheckIconLines(this.iconLines, thumbCenterX, measuredHeight, this.progress);
                                canvas5.drawLines(this.iconLines, this.paint2);
                            } else {
                                i27 = 1;
                            }
                        }
                        if (i26 == i27) {
                            this.paint2.setStrokeWidth(AndroidUtilities.dp(2.0f));
                            int i28 = i19;
                            int iDp2 = (int) (i28 - (AndroidUtilities.dp(10.8f) - (AndroidUtilities.dp(1.3f) * this.progress)));
                            i4 = i20;
                            int iDp3 = (int) (i4 - (AndroidUtilities.dp(8.5f) - (AndroidUtilities.dp(0.5f) * this.progress)));
                            int iDpf2 = ((int) AndroidUtilities.dpf2(4.6f)) + iDp2;
                            int iDpf22 = (int) (AndroidUtilities.dpf2(9.5f) + iDp3);
                            int iDp4 = AndroidUtilities.dp(2.0f) + iDpf2;
                            int iDp5 = AndroidUtilities.dp(2.0f) + iDpf22;
                            int iDpf23 = ((int) AndroidUtilities.dpf2(7.5f)) + iDp2;
                            int iDpf24 = ((int) AndroidUtilities.dpf2(5.4f)) + iDp3;
                            float f20 = thumbCenterX;
                            int iDp6 = iDpf23 + AndroidUtilities.dp(7.0f);
                            Canvas canvas6 = canvas5;
                            int iDp7 = iDpf24 + AndroidUtilities.dp(7.0f);
                            i5 = i28;
                            float f21 = iDpf23;
                            float f22 = iDpf2 - iDpf23;
                            float f23 = this.progress;
                            canvas6.drawLine((int) (f21 + (f22 * f23)), (int) (iDpf24 + ((iDpf22 - iDpf24) * f23)), (int) (iDp6 + ((iDp4 - iDp6) * f23)), (int) (iDp7 + ((iDp5 - iDp7) * f23)), this.paint2);
                            canvas6.drawLine(((int) AndroidUtilities.dpf2(7.5f)) + iDp2, ((int) AndroidUtilities.dpf2(12.5f)) + iDp3, AndroidUtilities.dp(7.0f) + r2, r3 - AndroidUtilities.dp(7.0f), this.paint2);
                            f7 = measuredHeight;
                            canvas3 = canvas6;
                            f6 = f20;
                            i6 = 2;
                            i7 = 1;
                            if (i22 != i7) {
                                float f24 = -overlayPadding;
                                canvas3.drawBitmap(this.overlayMaskBitmap, f24, f24, this.overlayMaskPaint);
                            }
                        } else {
                            Canvas canvas7 = canvas5;
                            i4 = i20;
                            i5 = i19;
                            i6 = 2;
                            float f25 = thumbCenterX;
                            if (i26 == 2 || this.iconAnimator != null) {
                                this.paint2.setAlpha((int) ((f4 - this.iconProgress) * 255.0f));
                                this.paint2.setStrokeWidth(z4 ? SwitchUiHelper.getIconStrokeWidth() : AndroidUtilities.dp(2.0f));
                                float f26 = measuredHeight;
                                canvas7.drawLine(f25, f26, f25, measuredHeight - (z4 ? SwitchUiHelper.getClockHandLength(true) : AndroidUtilities.dp(5.0f)), this.paint2);
                                canvas3 = canvas7;
                                canvas3.save();
                                canvas3.rotate(this.iconProgress * (-90.0f), f25, f26);
                                f6 = f25;
                                f7 = f26;
                                canvas3.drawLine(f6, f7, f25 + (z4 ? SwitchUiHelper.getClockHandLength(false) : AndroidUtilities.dp(4.0f)), f26, this.paint2);
                                canvas3.restore();
                            } else {
                                f7 = measuredHeight;
                                canvas3 = canvas7;
                                f6 = f25;
                                i7 = 1;
                                if (i22 != i7) {
                                }
                            }
                        }
                    }
                    f6 = thumbCenterX;
                    canvas3 = canvas5;
                    f7 = measuredHeight;
                    i4 = i20;
                    i5 = i19;
                    i6 = 2;
                    i7 = 1;
                    if (i22 != i7) {
                    }
                } else {
                    f6 = thumbCenterX;
                    canvas3 = canvas5;
                    f7 = measuredHeight;
                    i4 = i20;
                    i5 = i19;
                    i6 = 2;
                }
                i7 = 1;
                if (i22 != i7) {
                }
            }
            i22++;
            i21 = i6;
            i20 = i4;
            thumbCenterX = f6;
            measuredHeight = f7;
            iProcessColor3 = i3;
            i19 = i5;
        }
        if (this.overrideColorProgress != 0) {
            float f27 = -overlayPadding;
            canvas2.drawBitmap(this.overlayBitmap[1], f27, f27, (Paint) null);
        }
        if (z5) {
            canvas2.restore();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(this.isChecked);
    }

    @Override // android.view.View
    public void setAlpha(float f) {
        if (SwitchUiHelper.isMaterial3SwitchStyle()) {
            this.overrideAlpha = f;
            super.setAlpha(1.0f);
            invalidate();
        } else {
            this.overrideAlpha = 1.0f;
            super.setAlpha(f);
        }
    }
}
