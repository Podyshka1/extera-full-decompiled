package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextPaint;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public class SlideChooseView extends View {
    private final SeekBarAccessibilityDelegate accessibilityDelegate;
    private boolean allowSlide;
    private Callback callback;
    private int circleSize;
    private int dashedFrom;
    private int gapSize;
    private int lastDash;
    private Drawable[] leftDrawables;
    private Paint linePaint;
    private int lineSize;
    private int minIndex;
    private boolean moving;
    private AnimatedFloat movingAnimatedHolder;
    private boolean needDivider;
    private int[] optionsSizes;
    private String[] optionsStr;
    private Paint paint;
    private final Theme.ResourcesProvider resourcesProvider;
    private int selectedIndex;
    private AnimatedFloat selectedIndexAnimatedHolder;
    private float selectedIndexTouch;
    private int sideSide;
    private boolean startMoving;
    private int startMovingPreset;
    private TextPaint textPaint;
    private boolean touchWasClose;
    private float xTouchDown;
    private float yTouchDown;

    public SlideChooseView(Context context) {
        this(context, null);
    }

    public SlideChooseView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.dashedFrom = -1;
        this.needDivider = false;
        this.minIndex = Integer.MIN_VALUE;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
        this.selectedIndexAnimatedHolder = new AnimatedFloat(this, 120L, cubicBezierInterpolator);
        this.movingAnimatedHolder = new AnimatedFloat(this, 150L, cubicBezierInterpolator);
        this.touchWasClose = false;
        this.allowSlide = true;
        this.resourcesProvider = resourcesProvider;
        this.paint = new Paint(1);
        this.textPaint = new TextPaint(1);
        Paint paint = new Paint(1);
        this.linePaint = paint;
        paint.setStrokeWidth(AndroidUtilities.m1124dp(2.0f));
        this.linePaint.setStrokeCap(Paint.Cap.ROUND);
        this.textPaint.setTextSize(AndroidUtilities.m1124dp(13.0f));
        this.accessibilityDelegate = new IntSeekBarAccessibilityDelegate() { // from class: org.telegram.ui.Components.SlideChooseView.1
            @Override // org.telegram.p029ui.Components.IntSeekBarAccessibilityDelegate
            protected int getProgress() {
                return SlideChooseView.this.selectedIndex;
            }

            @Override // org.telegram.p029ui.Components.IntSeekBarAccessibilityDelegate
            protected void setProgress(int i) {
                SlideChooseView.this.setOption(i);
            }

            @Override // org.telegram.p029ui.Components.IntSeekBarAccessibilityDelegate
            protected int getMaxValue() {
                return SlideChooseView.this.optionsStr.length - 1;
            }

            @Override // org.telegram.p029ui.Components.SeekBarAccessibilityDelegate
            protected CharSequence getContentDescription(View view) {
                if (SlideChooseView.this.selectedIndex < SlideChooseView.this.optionsStr.length) {
                    return SlideChooseView.this.optionsStr[SlideChooseView.this.selectedIndex];
                }
                return null;
            }
        };
    }

    public void setCallback(Callback callback) {
        this.callback = callback;
    }

    public void setOptions(int i, String... strArr) {
        setOptions(i, null, strArr);
    }

    public void setOptions(int i, Drawable[] drawableArr, String... strArr) {
        this.optionsStr = strArr;
        this.leftDrawables = drawableArr;
        this.selectedIndex = i;
        this.optionsSizes = new int[strArr.length];
        int i2 = 0;
        while (true) {
            if (i2 >= this.optionsStr.length) {
                break;
            }
            this.optionsSizes[i2] = (int) Math.ceil(this.textPaint.measureText(r7[i2]));
            i2++;
        }
        Drawable[] drawableArr2 = this.leftDrawables;
        if (drawableArr2 != null) {
            for (Drawable drawable : drawableArr2) {
                drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            }
        }
        requestLayout();
    }

    public void setMinAllowedIndex(int i) {
        String[] strArr;
        if (i != -1 && (strArr = this.optionsStr) != null) {
            i = Math.min(i, strArr.length - 1);
        }
        if (this.minIndex != i) {
            this.minIndex = i;
            if (this.selectedIndex < i) {
                this.selectedIndex = i;
            }
            invalidate();
        }
    }

    public void setDashedFrom(int i) {
        this.dashedFrom = i;
    }

    public void setNeedDivider(boolean z) {
        this.needDivider = z;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.allowSlide) {
            return true;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        float fClamp = MathUtils.clamp(((x - this.sideSide) + (this.circleSize / 2.0f)) / ((this.lineSize + (this.gapSize * 2)) + r4), 0.0f, this.optionsStr.length - 1);
        boolean z = Math.abs(fClamp - ((float) Math.round(fClamp))) < 0.35f;
        if (z) {
            fClamp = Math.round(fClamp);
        }
        int i = this.minIndex;
        if (i != Integer.MIN_VALUE) {
            fClamp = Math.max(fClamp, i);
        }
        if (motionEvent.getAction() == 0) {
            this.xTouchDown = x;
            this.yTouchDown = y;
            this.selectedIndexTouch = fClamp;
            this.startMovingPreset = this.selectedIndex;
            this.startMoving = true;
            invalidate();
        } else if (motionEvent.getAction() == 2) {
            if (!this.moving && Math.abs(this.xTouchDown - x) > Math.abs(this.yTouchDown - y)) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            if (this.startMoving && Math.abs(this.xTouchDown - x) >= AndroidUtilities.touchSlop) {
                this.moving = true;
                this.startMoving = false;
            }
            if (this.moving) {
                this.selectedIndexTouch = fClamp;
                invalidate();
                if (Math.round(this.selectedIndexTouch) != this.selectedIndex && z) {
                    setOption(Math.round(this.selectedIndexTouch));
                }
            }
            invalidate();
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            if (!this.moving) {
                this.selectedIndexTouch = fClamp;
                if (motionEvent.getAction() == 1 && Math.round(this.selectedIndexTouch) != this.selectedIndex) {
                    setOption(Math.round(this.selectedIndexTouch));
                }
            } else {
                int i2 = this.selectedIndex;
                if (i2 != this.startMovingPreset) {
                    setOption(i2);
                }
            }
            Callback callback = this.callback;
            if (callback != null) {
                callback.onTouchEnd();
            }
            this.startMoving = false;
            this.moving = false;
            invalidate();
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOption(int i) {
        if (this.selectedIndex != i) {
            AndroidUtilities.vibrateCursor(this);
        }
        this.selectedIndex = i;
        Callback callback = this.callback;
        if (callback != null) {
            callback.onOptionSelected(i);
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(74.0f), TLObject.FLAG_30));
        this.circleSize = AndroidUtilities.m1124dp(6.0f);
        this.gapSize = AndroidUtilities.m1124dp(2.0f);
        this.sideSide = AndroidUtilities.m1124dp(22.0f);
        int measuredWidth = getMeasuredWidth();
        int i3 = this.circleSize;
        String[] strArr = this.optionsStr;
        this.lineSize = (((measuredWidth - (i3 * strArr.length)) - ((this.gapSize * 2) * (strArr.length - 1))) - (this.sideSide * 2)) / Math.max(1, strArr.length - 1);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        float f;
        float f2;
        float f3;
        float f4;
        Canvas canvas2 = canvas;
        float f5 = this.selectedIndexAnimatedHolder.set(this.selectedIndex);
        float f6 = 0.0f;
        float f7 = 1.0f;
        float f8 = this.movingAnimatedHolder.set(this.moving ? 1.0f : 0.0f);
        int measuredHeight = (getMeasuredHeight() / 2) + AndroidUtilities.m1124dp(11.0f);
        int i2 = 0;
        while (i2 < this.optionsStr.length) {
            int i3 = this.sideSide;
            int i4 = this.lineSize + (this.gapSize * 2);
            int i5 = this.circleSize;
            int i6 = i3 + ((i4 + i5) * i2) + (i5 / 2);
            float f9 = i2;
            float f10 = f9 - f5;
            float fMax = Math.max(f6, f7 - Math.abs(f10));
            float fClamp = MathUtils.clamp((f5 - f9) + f7, f6, f7);
            int themedColor = getThemedColor(Theme.key_switchTrack);
            int themedColor2 = getThemedColor(Theme.key_switchTrackChecked);
            float f11 = f7;
            int i7 = this.minIndex;
            int iBlendARGB = ColorUtils.blendARGB(themedColor, Theme.multAlpha(themedColor2, (i7 == Integer.MIN_VALUE || i2 > i7) ? f11 : 0.5f), fClamp);
            if (!this.allowSlide) {
                iBlendARGB = AndroidUtilities.getTransparentColor(iBlendARGB, 0.5f);
            }
            this.paint.setColor(iBlendARGB);
            this.linePaint.setColor(iBlendARGB);
            float f12 = measuredHeight;
            canvas2.drawCircle(i6, f12, AndroidUtilities.lerp(this.circleSize / 2, AndroidUtilities.dpf2(6.0f), fMax), this.paint);
            if (i2 != 0) {
                int i8 = (i6 - (this.circleSize / 2)) - this.gapSize;
                int i9 = this.lineSize;
                int i10 = i8 - i9;
                int i11 = this.dashedFrom;
                if (i11 != -1 && i2 - 1 >= i11) {
                    int iDpf2 = (int) (i10 + AndroidUtilities.dpf2(3.0f));
                    float fDpf2 = (int) (i9 - AndroidUtilities.dpf2(3.0f));
                    float fDpf22 = fDpf2 / AndroidUtilities.dpf2(13.0f);
                    if (this.lastDash != fDpf22) {
                        f2 = 3.0f;
                        this.linePaint.setPathEffect(new DashPathEffect(new float[]{AndroidUtilities.dpf2(6.0f), (fDpf2 - (AndroidUtilities.dpf2(8.0f) * fDpf22)) / (fDpf22 - f11)}, 0.0f));
                        this.lastDash = (int) fDpf22;
                    } else {
                        f2 = 3.0f;
                    }
                    f3 = fMax;
                    f = 0.5f;
                    i = i6;
                    canvas2 = canvas;
                    canvas2.drawLine(iDpf2 + AndroidUtilities.dpf2(f11), f12, (iDpf2 + r5) - AndroidUtilities.dpf2(f11), f12, this.linePaint);
                } else {
                    f2 = 3.0f;
                    f = 0.5f;
                    f3 = fMax;
                    i = i6;
                    float f13 = f10 - f11;
                    float fClamp2 = MathUtils.clamp(f11 - Math.abs(f13), 0.0f, f11);
                    int iDpf22 = (int) (i9 - (AndroidUtilities.dpf2(3.0f) * MathUtils.clamp(f11 - Math.min(Math.abs(f10), Math.abs(f13)), 0.0f, f11)));
                    f11 = 1.0f;
                    canvas2 = canvas;
                    canvas2.drawRect((int) (i10 + (AndroidUtilities.dpf2(3.0f) * fClamp2)), f12 - AndroidUtilities.dpf2(1.0f), iDpf22 + r2, AndroidUtilities.dpf2(1.0f) + f12, this.paint);
                }
            } else {
                i = i6;
                f = 0.5f;
                f2 = 3.0f;
                f3 = fMax;
            }
            int i12 = this.optionsSizes[i2];
            String str = this.optionsStr[i2];
            this.textPaint.setColor(AndroidUtilities.getTransparentColor(ColorUtils.blendARGB(getThemedColor(Theme.key_windowBackgroundWhiteGrayText), getThemedColor(Theme.key_windowBackgroundWhiteBlueText), f3), this.allowSlide ? f11 : f));
            if (this.leftDrawables != null) {
                canvas2.save();
                if (i2 == 0) {
                    canvas2.translate(AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(15.5f));
                } else if (i2 == this.optionsStr.length - 1) {
                    canvas2.translate(((getMeasuredWidth() - i12) - AndroidUtilities.m1124dp(22.0f)) - AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(28.0f) - AndroidUtilities.m1124dp(12.5f));
                } else {
                    canvas2.translate((i - (i12 / 2)) - AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(28.0f) - AndroidUtilities.m1124dp(12.5f));
                }
                this.leftDrawables[i2].setColorFilter(this.textPaint.getColor(), PorterDuff.Mode.MULTIPLY);
                this.leftDrawables[i2].draw(canvas2);
                canvas2.restore();
                canvas2.save();
                f4 = 0.0f;
                canvas2.translate((this.leftDrawables[i2].getIntrinsicWidth() / 2.0f) - AndroidUtilities.m1124dp(i2 == 0 ? f2 : 2.0f), 0.0f);
            } else {
                f4 = 0.0f;
            }
            if (i2 == 0) {
                canvas2.drawText(str, AndroidUtilities.m1124dp(22.0f), AndroidUtilities.m1124dp(28.0f), this.textPaint);
            } else if (i2 == this.optionsStr.length - 1) {
                canvas2.drawText(str, (getMeasuredWidth() - i12) - AndroidUtilities.m1124dp(22.0f), AndroidUtilities.m1124dp(28.0f), this.textPaint);
            } else {
                canvas2.drawText(str, i - (i12 / 2), AndroidUtilities.m1124dp(28.0f), this.textPaint);
            }
            if (this.leftDrawables != null) {
                canvas2.restore();
            }
            i2++;
            f6 = f4;
            f7 = f11;
        }
        float f14 = f7;
        float f15 = f6;
        float f16 = this.sideSide;
        int i13 = this.lineSize + (this.gapSize * 2);
        int i14 = this.circleSize;
        float f17 = f16 + ((i13 + i14) * f5) + (i14 / 2);
        Paint paint = this.paint;
        int i15 = Theme.key_switchTrackChecked;
        paint.setColor(AndroidUtilities.getTransparentColor(ColorUtils.setAlphaComponent(getThemedColor(i15), 80), this.allowSlide ? f14 : 0.5f));
        float f18 = measuredHeight;
        canvas2.drawCircle(f17, f18, AndroidUtilities.m1124dp(f8 * 12.0f), this.paint);
        this.paint.setColor(AndroidUtilities.getTransparentColor(getThemedColor(i15), this.allowSlide ? f14 : 0.5f));
        canvas2.drawCircle(f17, f18, AndroidUtilities.m1124dp(6.0f), this.paint);
        if (this.needDivider) {
            canvas2.drawLine(LocaleController.isRTL ? f15 : AndroidUtilities.m1124dp(21.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m1124dp(21.0f) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.accessibilityDelegate.onInitializeAccessibilityNodeInfoInternal(this, accessibilityNodeInfo);
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        return super.performAccessibilityAction(i, bundle) || this.accessibilityDelegate.performAccessibilityActionInternal(this, i, bundle);
    }

    public int getSelectedIndex() {
        return this.selectedIndex;
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public interface Callback {
        void onOptionSelected(int i);

        void onTouchEnd();

        /* JADX INFO: renamed from: org.telegram.ui.Components.SlideChooseView$Callback$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$onTouchEnd(Callback callback) {
            }
        }
    }

    public void setAllowSlide(boolean z) {
        this.allowSlide = z;
    }
}
