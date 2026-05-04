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
import android.view.animation.OvershootInterpolator;
import androidx.annotation.Keep;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.utils.ui.MonetUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.BaseCell;

/* JADX INFO: loaded from: classes7.dex */
public class Switch extends View {
    private boolean attachedToWindow;
    private boolean bitmapsCreated;
    private ObjectAnimator checkAnimator;
    private int colorSet;
    private int drawIconType;
    private boolean drawRipple;
    private ObjectAnimator iconAnimator;
    private Drawable iconDrawable;
    private float iconProgress;
    private boolean isChecked;
    private int lastIconColor;
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

    protected int processColor(int i) {
        return i;
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
    }

    private int getOverlayPadding() {
        if (ExteraConfig.newSwitchStyle) {
            return AndroidUtilities.dp(5.0f);
        }
        return 0;
    }

    public Switch(Context context) {
        this(context, null);
    }

    public Switch(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
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
        paint.setStyle(Paint.Style.STROKE);
        this.paint2.setStrokeCap(Paint.Cap.ROUND);
        this.paint2.setStrokeWidth(AndroidUtilities.dp(2.0f));
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
            rippleDrawableSafe.setRadius(AndroidUtilities.dp(18.0f));
            this.rippleDrawable.setCallback(this);
        }
        boolean z2 = this.isChecked;
        if ((z2 && this.colorSet != 2) || (!z2 && this.colorSet != 1)) {
            this.rippleDrawable.setColor(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{processColor(Theme.getColor(z2 ? Theme.key_switchTrackBlueSelectorChecked : Theme.key_switchTrackBlueSelector, this.resourcesProvider))}));
            this.colorSet = this.isChecked ? 2 : 1;
        }
        if (Build.VERSION.SDK_INT >= 28 && z) {
            this.rippleDrawable.setHotspot(this.isChecked ? 0.0f : AndroidUtilities.dp(100.0f), AndroidUtilities.dp(18.0f));
        }
        this.rippleDrawable.setState(z ? this.pressedState : StateSet.NOTHING);
        invalidate();
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
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
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "progress", z ? 1.0f : 0.0f);
        this.checkAnimator = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(ExteraConfig.newSwitchStyle ? 150L : 200L);
        this.checkAnimator.setInterpolator(ExteraConfig.newSwitchStyle ? new OvershootInterpolator(1.5f) : CubicBezierInterpolator.EASE_OUT_QUINT);
        this.checkAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Switch.2
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
        this.iconAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Switch.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Switch.this.iconAnimator = null;
            }
        });
        this.iconAnimator.start();
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attachedToWindow = true;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
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
        int measuredWidth = getMeasuredWidth() + (getOverlayPadding() * 4);
        int measuredHeight = getMeasuredHeight() + (getOverlayPadding() * 4);
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

    /* JADX WARN: Removed duplicated region for block: B:165:0x058e  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02af A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x05a1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x030b  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onDraw(Canvas canvas) {
        int measuredWidth;
        float measuredHeight;
        float fClamp01;
        Canvas canvas2;
        int i;
        int i2;
        int i3;
        float f;
        float f2;
        float fClamp012;
        int i4;
        RippleDrawable rippleDrawable;
        Drawable drawable;
        if (getVisibility() != 0) {
            return;
        }
        int i5 = 0;
        if (this.overrideColorProgress != 0) {
            checkBitmaps();
            if (!this.bitmapsCreated) {
                this.overrideColorProgress = 0;
            }
        }
        int iDp = AndroidUtilities.dp(31.0f);
        int iDp2 = AndroidUtilities.dp(26.0f);
        float f3 = 14.0f;
        float f4 = 2.0f;
        int i6 = 2;
        if (ExteraConfig.newSwitchStyle) {
            measuredHeight = (getMeasuredHeight() / 2.0f) - (iDp2 / 2.0f);
            measuredWidth = 0;
        } else {
            measuredWidth = (getMeasuredWidth() - iDp) / 2;
            measuredHeight = (getMeasuredHeight() - AndroidUtilities.dpf2(14.0f)) / 2.0f;
        }
        float f5 = 8.0f;
        int measuredWidth2 = ((getMeasuredWidth() - iDp) / 2) + AndroidUtilities.dp(8.0f) + ((int) (AndroidUtilities.dp(16.0f) * this.progress));
        int measuredHeight2 = getMeasuredHeight() / 2;
        int i7 = 0;
        while (true) {
            float f6 = f3;
            if (i7 >= i6) {
                break;
            }
            float f7 = f4;
            if (i7 == 1 && this.overrideColorProgress == 0) {
                i4 = iDp;
                i3 = i5;
                f = f5;
            } else {
                Canvas canvas3 = i7 == 0 ? canvas : this.overlayCanvas[i5];
                if (i7 == 1) {
                    f = f5;
                    this.overlayBitmap[i5].eraseColor(i5);
                    this.paint.setColor(-16777216);
                    f2 = 1.0f;
                    i3 = i5;
                    this.overlayMaskCanvas.drawRect(getOverlayPadding(), getOverlayPadding(), this.overlayMaskBitmap.getWidth() - getOverlayPadding(), this.overlayMaskBitmap.getHeight() - getOverlayPadding(), this.paint);
                    this.overlayMaskCanvas.drawCircle((this.overlayCx - getX()) + getOverlayPadding(), (this.overlayCy - getY()) + getOverlayPadding(), this.overlayRad, this.overlayEraserPaint);
                } else {
                    i3 = i5;
                    f = f5;
                    f2 = 1.0f;
                }
                int i8 = this.overrideColorProgress;
                if (i8 == 1) {
                    fClamp012 = i7 == 0 ? 0.0f : f2;
                } else if (i8 != 2) {
                    fClamp012 = Utilities.clamp01(this.progress);
                } else if (i7 == 0) {
                }
                int iProcessColor = processColor(Theme.getColor(this.trackColorKey, this.resourcesProvider));
                int iProcessColor2 = processColor(Theme.getColor(this.trackCheckedColorKey, this.resourcesProvider));
                if (i7 != 0 || (drawable = this.iconDrawable) == null) {
                    i4 = iDp;
                    int iRed = Color.red(iProcessColor);
                    int iRed2 = Color.red(iProcessColor2);
                    int iGreen = Color.green(iProcessColor);
                    int iGreen2 = Color.green(iProcessColor2);
                    int iBlue = Color.blue(iProcessColor);
                    int iBlue2 = Color.blue(iProcessColor2);
                    int iAlpha = Color.alpha(iProcessColor);
                    int i9 = (int) (iRed + ((iRed2 - iRed) * fClamp012));
                    int i10 = (int) (iGreen + ((iGreen2 - iGreen) * fClamp012));
                    int i11 = (int) (iBlue + ((iBlue2 - iBlue) * fClamp012));
                    int iAlpha2 = (int) (iAlpha + ((Color.alpha(iProcessColor2) - iAlpha) * fClamp012));
                    if (ExteraConfig.newSwitchStyle) {
                        iAlpha2 = (int) (iAlpha2 * this.overrideAlpha);
                    }
                    int i12 = ((i9 & 255) << 16) | ((iAlpha2 & 255) << 24) | ((i10 & 255) << 8) | (i11 & 255);
                    this.paint.setColor(i12);
                    this.paint2.setColor(i12);
                    if (!ExteraConfig.newSwitchStyle) {
                        if (i7 == 0) {
                            this.rectF.set(measuredWidth - AndroidUtilities.dp(f7), measuredHeight, getMeasuredWidth() + AndroidUtilities.dp(3.0f), (getMeasuredHeight() / f7) + (iDp2 / f7));
                        } else {
                            this.rectF.set((measuredWidth - AndroidUtilities.dp(f7)) + getOverlayPadding(), getOverlayPadding() + measuredHeight, getMeasuredWidth() + AndroidUtilities.dp(3.0f) + getOverlayPadding(), (getMeasuredHeight() / f7) + (iDp2 / f7) + getOverlayPadding());
                        }
                        canvas3.drawRoundRect(this.rectF, AndroidUtilities.dpf2(f6), AndroidUtilities.dpf2(f6), this.paint);
                    } else {
                        this.rectF.set(measuredWidth, measuredHeight, measuredWidth + i4, AndroidUtilities.dpf2(f6) + measuredHeight);
                        canvas3.drawRoundRect(this.rectF, AndroidUtilities.dpf2(7.0f), AndroidUtilities.dpf2(7.0f), this.paint);
                        if (i7 == 0) {
                            canvas3.drawCircle(measuredWidth2, measuredHeight2, AndroidUtilities.dpf2(10.0f), this.paint);
                        } else {
                            canvas3.drawCircle(getOverlayPadding() + measuredWidth2, getOverlayPadding() + measuredHeight2, AndroidUtilities.dpf2(10.0f), this.paint);
                        }
                    }
                    if (i7 != 0 && (rippleDrawable = this.rippleDrawable) != null) {
                        rippleDrawable.setBounds(measuredWidth2 - AndroidUtilities.dp(18.0f), measuredHeight2 - AndroidUtilities.dp(18.0f), AndroidUtilities.dp(18.0f) + measuredWidth2, AndroidUtilities.dp(18.0f) + measuredHeight2);
                        this.rippleDrawable.draw(canvas3);
                    } else if (i7 != 1) {
                        canvas3.drawBitmap(this.overlayMaskBitmap, -getOverlayPadding(), -getOverlayPadding(), this.overlayMaskPaint);
                    }
                } else {
                    if (this.lastIconColor != (this.isChecked ? iProcessColor2 : iProcessColor)) {
                        int i13 = this.isChecked ? iProcessColor2 : iProcessColor;
                        this.lastIconColor = i13;
                        i4 = iDp;
                        drawable.setColorFilter(new PorterDuffColorFilter(i13, PorterDuff.Mode.MULTIPLY));
                    }
                    int iRed3 = Color.red(iProcessColor);
                    int iRed22 = Color.red(iProcessColor2);
                    int iGreen3 = Color.green(iProcessColor);
                    int iGreen22 = Color.green(iProcessColor2);
                    int iBlue3 = Color.blue(iProcessColor);
                    int iBlue22 = Color.blue(iProcessColor2);
                    int iAlpha3 = Color.alpha(iProcessColor);
                    int i92 = (int) (iRed3 + ((iRed22 - iRed3) * fClamp012));
                    int i102 = (int) (iGreen3 + ((iGreen22 - iGreen3) * fClamp012));
                    int i112 = (int) (iBlue3 + ((iBlue22 - iBlue3) * fClamp012));
                    int iAlpha22 = (int) (iAlpha3 + ((Color.alpha(iProcessColor2) - iAlpha3) * fClamp012));
                    if (ExteraConfig.newSwitchStyle) {
                    }
                    int i122 = ((i92 & 255) << 16) | ((iAlpha22 & 255) << 24) | ((i102 & 255) << 8) | (i112 & 255);
                    this.paint.setColor(i122);
                    this.paint2.setColor(i122);
                    if (!ExteraConfig.newSwitchStyle) {
                    }
                    if (i7 != 0) {
                        if (i7 != 1) {
                        }
                    }
                }
            }
            i7++;
            f3 = f6;
            f4 = f7;
            f5 = f;
            iDp = i4;
            i5 = i3;
            i6 = 2;
        }
        int i14 = i5;
        float f8 = f4;
        float f9 = f5;
        if (this.overrideColorProgress != 0) {
            canvas.drawBitmap(this.overlayBitmap[i14], -getOverlayPadding(), -getOverlayPadding(), (Paint) null);
        }
        int i15 = i14;
        int i16 = 2;
        while (i15 < i16) {
            if (i15 == 1 && this.overrideColorProgress == 0) {
                i = 2;
            } else {
                Canvas canvas4 = i15 == 0 ? canvas : this.overlayCanvas[1];
                if (i15 == 1) {
                    this.overlayBitmap[1].eraseColor(i14);
                }
                int i17 = this.overrideColorProgress;
                if (i17 == 1) {
                    fClamp01 = i15 == 0 ? 0.0f : 1.0f;
                } else if (i17 != 2) {
                    fClamp01 = Utilities.clamp01(this.progress);
                } else if (i15 == 0) {
                }
                int iProcessColor3 = processColor(Theme.getColor(this.thumbColorKey, this.resourcesProvider));
                int iProcessColor4 = processColor(Theme.getColor(this.thumbCheckedColorKey, this.resourcesProvider));
                if (Build.VERSION.SDK_INT >= 31 && ExteraConfig.newSwitchStyle && Theme.isCurrentThemeMonet()) {
                    if (Theme.isCurrentThemeDark()) {
                        int iProcessColor5 = processColor(MonetUtils.getColor("n1_800"));
                        int iProcessColor6 = processColor(MonetUtils.getColor("a1_800"));
                        if (iProcessColor5 == iProcessColor3) {
                            iProcessColor3 = iProcessColor5;
                        }
                        if (iProcessColor6 == iProcessColor4) {
                            iProcessColor4 = iProcessColor6;
                        }
                    } else {
                        iProcessColor3 = processColor(-1);
                        iProcessColor4 = iProcessColor3;
                    }
                }
                int iRed4 = Color.red(iProcessColor3);
                int iRed5 = Color.red(iProcessColor4);
                int iGreen4 = Color.green(iProcessColor3);
                int iGreen5 = Color.green(iProcessColor4);
                int iBlue4 = Color.blue(iProcessColor3);
                int iBlue5 = Color.blue(iProcessColor4);
                this.paint.setColor(((((int) (Color.alpha(iProcessColor3) + ((Color.alpha(iProcessColor4) - r6) * fClamp01))) & 255) << 24) | ((((int) (iRed4 + ((iRed5 - iRed4) * fClamp01))) & 255) << 16) | ((((int) (iGreen4 + ((iGreen5 - iGreen4) * fClamp01))) & 255) << 8) | (((int) (iBlue4 + ((iBlue5 - iBlue4) * fClamp01))) & 255));
                if (ExteraConfig.newSwitchStyle) {
                    canvas4.drawCircle(i15 == 0 ? measuredWidth2 : getOverlayPadding() + measuredWidth2, i15 == 0 ? measuredHeight2 : getOverlayPadding() + measuredHeight2, (hasIcon() || (i2 = this.drawIconType) == 1 || i2 == 2 || this.iconAnimator != null) ? AndroidUtilities.dp(9.0f) : (AndroidUtilities.dp(f8) * this.progress) + AndroidUtilities.dp(7.0f), this.paint);
                } else {
                    canvas4.drawCircle(i15 == 0 ? measuredWidth2 : getOverlayPadding() + measuredWidth2, i15 == 0 ? measuredHeight2 : getOverlayPadding() + measuredHeight2, AndroidUtilities.dp(f9), this.paint);
                }
                if (i15 != 0) {
                    canvas2 = canvas4;
                    i = 2;
                    if (i15 != 1) {
                        canvas2.drawBitmap(this.overlayMaskBitmap, -getOverlayPadding(), -getOverlayPadding(), this.overlayMaskPaint);
                    }
                } else {
                    Drawable drawable2 = this.iconDrawable;
                    if (drawable2 != null) {
                        if (ExteraConfig.newSwitchStyle) {
                            drawable2.setAlpha((int) (this.overrideAlpha * 255.0f));
                        }
                        Drawable drawable3 = this.iconDrawable;
                        drawable3.setBounds(measuredWidth2 - (drawable3.getIntrinsicWidth() / 2), measuredHeight2 - (this.iconDrawable.getIntrinsicHeight() / 2), (this.iconDrawable.getIntrinsicWidth() / 2) + measuredWidth2, (this.iconDrawable.getIntrinsicHeight() / 2) + measuredHeight2);
                        this.iconDrawable.draw(canvas4);
                        canvas2 = canvas4;
                        i = 2;
                        if (i15 != 1) {
                        }
                    } else {
                        int i18 = this.drawIconType;
                        if (i18 == 1) {
                            measuredWidth2 = (int) (measuredWidth2 - (AndroidUtilities.dp(10.8f) - (AndroidUtilities.dp(1.3f) * this.progress)));
                            measuredHeight2 = (int) (measuredHeight2 - (AndroidUtilities.dp(8.5f) - (AndroidUtilities.dp(0.5f) * this.progress)));
                            int iDpf2 = ((int) AndroidUtilities.dpf2(4.6f)) + measuredWidth2;
                            int iDpf22 = (int) (AndroidUtilities.dpf2(9.5f) + measuredHeight2);
                            int iDp3 = AndroidUtilities.dp(f8) + iDpf2;
                            int iDp4 = AndroidUtilities.dp(f8) + iDpf22;
                            int iDpf23 = ((int) AndroidUtilities.dpf2(7.5f)) + measuredWidth2;
                            int iDpf24 = ((int) AndroidUtilities.dpf2(5.4f)) + measuredHeight2;
                            int iDp5 = AndroidUtilities.dp(7.0f) + iDpf23;
                            int iDp6 = AndroidUtilities.dp(7.0f) + iDpf24;
                            float f10 = iDpf23;
                            float f11 = iDpf2 - iDpf23;
                            float f12 = this.progress;
                            Canvas canvas5 = canvas4;
                            canvas5.drawLine((int) (f10 + (f11 * f12)), (int) (iDpf24 + ((iDpf22 - iDpf24) * f12)), (int) (iDp5 + ((iDp3 - iDp5) * f12)), (int) (iDp6 + ((iDp4 - iDp6) * f12)), this.paint2);
                            canvas5.drawLine(((int) AndroidUtilities.dpf2(7.5f)) + measuredWidth2, ((int) AndroidUtilities.dpf2(12.5f)) + measuredHeight2, AndroidUtilities.dp(7.0f) + r4, r5 - AndroidUtilities.dp(7.0f), this.paint2);
                            canvas2 = canvas5;
                            i = 2;
                            if (i15 != 1) {
                            }
                        } else {
                            Canvas canvas6 = canvas4;
                            i = 2;
                            if (i18 == 2 || this.iconAnimator != null) {
                                this.paint2.setAlpha((int) ((1.0f - this.iconProgress) * 255.0f * this.overrideAlpha));
                                float f13 = measuredWidth2;
                                float f14 = measuredHeight2;
                                canvas6.drawLine(f13, f14, f13, measuredHeight2 - AndroidUtilities.dp(5.0f), this.paint2);
                                canvas2 = canvas6;
                                canvas2.save();
                                canvas2.rotate(this.iconProgress * (-90.0f), f13, f14);
                                canvas6.drawLine(f13, f14, AndroidUtilities.dp(4.0f) + measuredWidth2, f14, this.paint2);
                                canvas2.restore();
                            } else {
                                canvas2 = canvas6;
                            }
                            if (i15 != 1) {
                            }
                        }
                    }
                }
            }
            i15++;
            i16 = i;
            i14 = 0;
        }
        if (this.overrideColorProgress != 0) {
            canvas.drawBitmap(this.overlayBitmap[1], -getOverlayPadding(), -getOverlayPadding(), (Paint) null);
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
        if (ExteraConfig.newSwitchStyle) {
            this.overrideAlpha = f;
            invalidate();
        } else {
            super.setAlpha(f);
        }
    }
}
