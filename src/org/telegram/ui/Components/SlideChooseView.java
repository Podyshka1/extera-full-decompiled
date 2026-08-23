package org.telegram.ui.Components;

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
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.utils.ui.MaterialSliderUiHelper;
import com.google.android.material.slider.Slider;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes7.dex */
public class SlideChooseView extends FrameLayout {
    private final SeekBarAccessibilityDelegate accessibilityDelegate;
    private boolean allowSlide;
    private Callback callback;
    private int circleSize;
    private final View contentView;
    private int dashedFrom;
    private int gapSize;
    private int lastDash;
    private Drawable[] leftDrawables;
    private Paint linePaint;
    private int lineSize;
    private Slider materialSlider;
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

    public interface Callback {
        void onOptionSelected(int i);

        default void onTouchEnd() {
        }
    }

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
        paint.setStrokeWidth(AndroidUtilities.dp(2.0f));
        this.linePaint.setStrokeCap(Paint.Cap.ROUND);
        this.textPaint.setTextSize(AndroidUtilities.dp(13.0f));
        this.accessibilityDelegate = new IntSeekBarAccessibilityDelegate() { // from class: org.telegram.ui.Components.SlideChooseView.1
            @Override // org.telegram.ui.Components.IntSeekBarAccessibilityDelegate
            public int getProgress() {
                return SlideChooseView.this.selectedIndex;
            }

            @Override // org.telegram.ui.Components.IntSeekBarAccessibilityDelegate
            public void setProgress(int i) {
                SlideChooseView.this.setOption(i);
            }

            @Override // org.telegram.ui.Components.IntSeekBarAccessibilityDelegate
            public int getMaxValue() {
                return SlideChooseView.this.optionsStr.length - 1;
            }

            @Override // org.telegram.ui.Components.SeekBarAccessibilityDelegate
            public CharSequence getContentDescription(View view) {
                if (SlideChooseView.this.selectedIndex < SlideChooseView.this.optionsStr.length) {
                    return SlideChooseView.this.optionsStr[SlideChooseView.this.selectedIndex];
                }
                return null;
            }
        };
        View view = new View(context) { // from class: org.telegram.ui.Components.SlideChooseView.2
            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                SlideChooseView.this.drawContent(canvas);
            }
        };
        this.contentView = view;
        view.setImportantForAccessibility(2);
        addView(view, LayoutHelper.createFrame(-1, -1.0f));
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
        if (strArr.length <= 0) {
            i = 0;
        }
        this.selectedIndex = i;
        this.optionsSizes = new int[strArr.length];
        int i2 = 0;
        while (true) {
            if (i2 >= this.optionsStr.length) {
                break;
            }
            this.optionsSizes[i2] = (int) Math.ceil(this.textPaint.measureText(r6[i2]));
            i2++;
        }
        Drawable[] drawableArr2 = this.leftDrawables;
        if (drawableArr2 != null) {
            for (Drawable drawable : drawableArr2) {
                drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            }
        }
        updateMaterialSliderState();
        requestLayout();
        invalidate();
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
            updateMaterialSliderState();
            invalidate();
        }
    }

    public void setDashedFrom(int i) {
        this.dashedFrom = i;
        updateMaterialSliderState();
        invalidate();
    }

    public void setNeedDivider(boolean z) {
        this.needDivider = z;
        invalidate();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        updateMaterialSliderState();
        return isUsingMaterialSlider() || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        updateMaterialSliderState();
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
        String[] strArr = this.optionsStr;
        if (strArr == null || strArr.length == 0) {
            return;
        }
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

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        updateMaterialSliderState();
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(74.0f), TLObject.FLAG_30));
        this.circleSize = AndroidUtilities.dp(6.0f);
        this.gapSize = AndroidUtilities.dp(2.0f);
        this.sideSide = AndroidUtilities.dp(22.0f);
        int measuredWidth = getMeasuredWidth();
        int i3 = this.circleSize;
        String[] strArr = this.optionsStr;
        this.lineSize = (((measuredWidth - (i3 * strArr.length)) - ((this.gapSize * 2) * (strArr.length - 1))) - (this.sideSide * 2)) / Math.max(1, strArr.length - 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x018c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawContent(Canvas canvas) {
        int i;
        float f;
        float f2;
        float f3;
        Canvas canvas2 = canvas;
        updateMaterialSliderState();
        boolean zIsUsingMaterialSlider = isUsingMaterialSlider();
        float f4 = this.selectedIndexAnimatedHolder.set(this.selectedIndex);
        if (zIsUsingMaterialSlider) {
            updateMaterialSliderValue(f4);
        }
        float fDp = 0.0f;
        float f5 = 1.0f;
        float f6 = this.movingAnimatedHolder.set(this.moving ? 1.0f : 0.0f);
        int i2 = 2;
        int measuredHeight = (getMeasuredHeight() / 2) + AndroidUtilities.dp(11.0f);
        int i3 = 0;
        while (true) {
            if (i3 >= this.optionsStr.length) {
                break;
            }
            int i4 = this.sideSide;
            int i5 = this.lineSize + (this.gapSize * i2);
            int i6 = this.circleSize;
            int i7 = i4 + ((i5 + i6) * i3) + (i6 / i2);
            float f7 = i3;
            float f8 = f7 - f4;
            float fMax = Math.max(fDp, f5 - Math.abs(f8));
            float fClamp = MathUtils.clamp((f4 - f7) + f5, fDp, f5);
            int themedColor = getThemedColor(Theme.key_switchTrack);
            float f9 = f5;
            int themedColor2 = getThemedColor(Theme.key_switchTrackChecked);
            int i8 = this.minIndex;
            int i9 = i2;
            int iBlendARGB = ColorUtils.blendARGB(themedColor, Theme.multAlpha(themedColor2, (i8 == Integer.MIN_VALUE || i3 > i8) ? f9 : 0.5f), fClamp);
            if (!this.allowSlide) {
                iBlendARGB = AndroidUtilities.getTransparentColor(iBlendARGB, 0.5f);
            }
            if (!zIsUsingMaterialSlider) {
                this.paint.setColor(iBlendARGB);
                this.linePaint.setColor(iBlendARGB);
                float f10 = measuredHeight;
                canvas2.drawCircle(i7, f10, AndroidUtilities.lerp(this.circleSize / 2.0f, AndroidUtilities.dpf2(6.0f), fMax), this.paint);
                if (i3 != 0) {
                    int i10 = (i7 - (this.circleSize / 2)) - this.gapSize;
                    int i11 = this.lineSize;
                    int i12 = i10 - i11;
                    int i13 = this.dashedFrom;
                    if (i13 != -1 && i3 - 1 >= i13) {
                        int iDpf2 = (int) (i12 + AndroidUtilities.dpf2(3.0f));
                        float fDpf2 = (int) (i11 - AndroidUtilities.dpf2(3.0f));
                        float fDpf22 = fDpf2 / AndroidUtilities.dpf2(13.0f);
                        if (this.lastDash != fDpf22) {
                            float fDpf23 = (fDpf2 - (AndroidUtilities.dpf2(8.0f) * fDpf22)) / (fDpf22 - f9);
                            Paint paint = this.linePaint;
                            f2 = 3.0f;
                            i = i7;
                            float[] fArr = new float[i9];
                            fArr[0] = AndroidUtilities.dpf2(6.0f);
                            fArr[1] = fDpf23;
                            paint.setPathEffect(new DashPathEffect(fArr, 0.0f));
                            this.lastDash = (int) fDpf22;
                        } else {
                            i = i7;
                            f2 = 3.0f;
                        }
                        canvas2 = canvas;
                        f3 = fMax;
                        f = 0.5f;
                        canvas2.drawLine(AndroidUtilities.dpf2(f9) + iDpf2, f10, (iDpf2 + r5) - AndroidUtilities.dpf2(f9), f10, this.linePaint);
                    } else {
                        i = i7;
                        f2 = 3.0f;
                        f = 0.5f;
                        f3 = fMax;
                        float f11 = f8 - f9;
                        float fClamp2 = MathUtils.clamp(f9 - Math.abs(f11), 0.0f, f9);
                        int iDpf22 = (int) (i11 - (AndroidUtilities.dpf2(3.0f) * MathUtils.clamp(f9 - Math.min(Math.abs(f8), Math.abs(f11)), 0.0f, f9)));
                        f9 = 1.0f;
                        canvas2 = canvas;
                        canvas2.drawRect((int) (i12 + (AndroidUtilities.dpf2(3.0f) * fClamp2)), f10 - AndroidUtilities.dpf2(1.0f), iDpf22 + r2, f10 + AndroidUtilities.dpf2(1.0f), this.paint);
                    }
                } else {
                    i = i7;
                    f = 0.5f;
                    f2 = 3.0f;
                    f3 = fMax;
                }
            }
            int i14 = this.optionsSizes[i3];
            String str = this.optionsStr[i3];
            this.textPaint.setColor(AndroidUtilities.getTransparentColor(ColorUtils.blendARGB(getThemedColor(Theme.key_windowBackgroundWhiteGrayText), getThemedColor(Theme.key_windowBackgroundWhiteBlueText), f3), this.allowSlide ? f9 : f));
            if (this.leftDrawables != null) {
                canvas2.save();
                if (i3 == 0) {
                    canvas2.translate(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(15.5f));
                } else if (i3 == this.optionsStr.length - 1) {
                    canvas2.translate(((getMeasuredWidth() - i14) - AndroidUtilities.dp(22.0f)) - AndroidUtilities.dp(10.0f), AndroidUtilities.dp(28.0f) - AndroidUtilities.dp(12.5f));
                } else {
                    canvas2.translate((i - (i14 / 2)) - AndroidUtilities.dp(10.0f), AndroidUtilities.dp(28.0f) - AndroidUtilities.dp(12.5f));
                }
                this.leftDrawables[i3].setColorFilter(this.textPaint.getColor(), PorterDuff.Mode.MULTIPLY);
                this.leftDrawables[i3].draw(canvas2);
                canvas2.restore();
                canvas2.save();
                fDp = 0.0f;
                canvas2.translate((this.leftDrawables[i3].getIntrinsicWidth() / 2.0f) - AndroidUtilities.dp(i3 == 0 ? f2 : 2.0f), 0.0f);
            } else {
                fDp = 0.0f;
            }
            if (i3 == 0) {
                canvas2.drawText(str, AndroidUtilities.dp(22.0f), AndroidUtilities.dp(28.0f), this.textPaint);
            } else if (i3 == this.optionsStr.length - 1) {
                canvas2.drawText(str, (getMeasuredWidth() - i14) - AndroidUtilities.dp(22.0f), AndroidUtilities.dp(28.0f), this.textPaint);
            } else {
                canvas2.drawText(str, i - (i14 / 2), AndroidUtilities.dp(28.0f), this.textPaint);
            }
            if (this.leftDrawables != null) {
                canvas2.restore();
            }
            i3++;
            f5 = f9;
            i2 = 2;
        }
        float f12 = f5;
        if (!zIsUsingMaterialSlider) {
            float f13 = this.sideSide;
            int i15 = this.lineSize + (this.gapSize * 2);
            float f14 = f13 + ((i15 + r4) * f4) + (this.circleSize / 2.0f);
            Paint paint2 = this.paint;
            int i16 = Theme.key_switchTrackChecked;
            paint2.setColor(AndroidUtilities.getTransparentColor(ColorUtils.setAlphaComponent(getThemedColor(i16), 80), this.allowSlide ? f12 : 0.5f));
            float f15 = measuredHeight;
            canvas2.drawCircle(f14, f15, AndroidUtilities.dp(f6 * 12.0f), this.paint);
            this.paint.setColor(AndroidUtilities.getTransparentColor(getThemedColor(i16), this.allowSlide ? f12 : 0.5f));
            canvas2.drawCircle(f14, f15, AndroidUtilities.dp(6.0f), this.paint);
        }
        if (this.needDivider) {
            if (!LocaleController.isRTL) {
                fDp = AndroidUtilities.dp(21.0f);
            }
            canvas2.drawLine(fDp, getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.dp(21.0f) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
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

    private void initMaterialSlider(Context context) {
        Slider sliderCreate = MaterialSliderUiHelper.create(context);
        this.materialSlider = sliderCreate;
        sliderCreate.setImportantForAccessibility(2);
        this.materialSlider.setFocusable(false);
        this.materialSlider.setFocusableInTouchMode(false);
        this.materialSlider.setLayoutDirection(0);
        this.materialSlider.setVisibility(8);
        addView(this.materialSlider, 0, LayoutHelper.createFrame(-1, 48.0f, 48, 6.0f, 24.0f, 6.0f, 0.0f));
    }

    private boolean canUseMaterialSlider() {
        String[] strArr;
        return ExteraConfig.getNewSliderStyle() && (strArr = this.optionsStr) != null && strArr.length > 1 && this.dashedFrom < 0 && this.minIndex <= 0;
    }

    private boolean isUsingMaterialSlider() {
        Slider slider = this.materialSlider;
        return slider != null && slider.getVisibility() == 0;
    }

    private void updateMaterialSliderState() {
        boolean zCanUseMaterialSlider = canUseMaterialSlider();
        if (zCanUseMaterialSlider && this.materialSlider == null) {
            initMaterialSlider(getContext());
        }
        Slider slider = this.materialSlider;
        if (slider == null) {
            return;
        }
        boolean z = false;
        int i = zCanUseMaterialSlider ? 0 : 8;
        if (slider.getVisibility() != i) {
            this.materialSlider.setVisibility(i);
            View view = this.contentView;
            if (view != null) {
                view.invalidate();
            }
        }
        if (zCanUseMaterialSlider) {
            if (isEnabled() && this.allowSlide) {
                z = true;
            }
            if (this.materialSlider.isEnabled() != z) {
                this.materialSlider.setEnabled(z);
            }
            float length = this.optionsStr.length - 1;
            if (this.materialSlider.getValue() > length) {
                updateMaterialSliderValue(length);
            }
            if (this.materialSlider.getValueFrom() != 0.0f) {
                this.materialSlider.setValueFrom(0.0f);
            }
            if (this.materialSlider.getValueTo() != length) {
                this.materialSlider.setValueTo(length);
            }
            if (this.materialSlider.getStepSize() != 0.0f) {
                this.materialSlider.setStepSize(0.0f);
            }
            MaterialSliderUiHelper.applyDiscreteStyle(this.materialSlider, this.optionsStr.length);
            updateMaterialSliderColors();
        }
    }

    private void updateMaterialSliderColors() {
        int i = this.allowSlide ? 255 : 128;
        MaterialSliderUiHelper.applyDiscreteColors(this.materialSlider, ColorUtils.setAlphaComponent(getThemedColor(Theme.key_switchTrackChecked), i), ColorUtils.setAlphaComponent(getThemedColor(Theme.key_switchTrack), i), ColorUtils.setAlphaComponent(getThemedColor(Theme.key_windowBackgroundWhite), i));
    }

    private void updateMaterialSliderValue(float f) {
        String[] strArr;
        if (this.materialSlider == null || (strArr = this.optionsStr) == null || strArr.length < 2) {
            return;
        }
        float fClamp = MathUtils.clamp(f, 0.0f, strArr.length - 1);
        if (Math.abs(this.materialSlider.getValue() - fClamp) > 1.0E-4f) {
            this.materialSlider.setValue(fClamp);
        }
    }

    public void setAllowSlide(boolean z) {
        this.allowSlide = z;
        Slider slider = this.materialSlider;
        if (slider != null) {
            slider.setEnabled(isEnabled() && z);
            updateMaterialSliderColors();
        }
        invalidate();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        Slider slider = this.materialSlider;
        if (slider != null) {
            slider.setEnabled(z && this.allowSlide);
        }
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        View view = this.contentView;
        if (view != null) {
            view.invalidate();
        }
    }
}
