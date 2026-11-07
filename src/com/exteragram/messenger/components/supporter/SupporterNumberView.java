package com.exteragram.messenger.components.supporter;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.os.Build;
import android.text.TextPaint;
import android.view.View;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.Components.CubicBezierInterpolator;

/* JADX INFO: loaded from: classes4.dex */
public class SupporterNumberView extends View {
    private ValueAnimator animator;
    private int color1;
    private int color2;
    private int digitCount;
    private float digitWidth;
    private int[] digits;
    private int landedCount;
    private Runnable onLanded;
    private final TextPaint paint;
    private int shaderWidth;
    private String text;
    private float time;

    public SupporterNumberView(Context context) {
        super(context);
        TextPaint textPaint = new TextPaint(1);
        this.paint = textPaint;
        this.text = _UrlKt.FRAGMENT_ENCODE_SET;
        this.digits = new int[0];
        this.shaderWidth = -1;
        this.time = -1.0f;
        textPaint.setTypeface(AndroidUtilities.bold());
        textPaint.setTextSize(AndroidUtilities.dp(34.0f));
        textPaint.setTextAlign(Paint.Align.CENTER);
        for (int i = 0; i <= 9; i++) {
            this.digitWidth = Math.max(this.digitWidth, this.paint.measureText(String.valueOf(i)));
        }
    }

    public void setNumber(String str) {
        this.text = str;
        this.digits = new int[str.length()];
        this.digitCount = 0;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            this.digits[i] = Character.isDigit(cCharAt) ? Character.digit(cCharAt, 10) : -1;
            if (this.digits[i] >= 0) {
                this.digitCount++;
            }
        }
        setContentDescription(str);
        invalidate();
    }

    public void setColors(int i, int i2) {
        this.color1 = i;
        this.color2 = i2;
        this.shaderWidth = -1;
        invalidate();
    }

    public void start(Runnable runnable) {
        this.onLanded = runnable;
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        long jMax = (((long) Math.max(0, this.digitCount - 1)) * 140) + 1140;
        if (Build.VERSION.SDK_INT >= 26 && !ValueAnimator.areAnimatorsEnabled()) {
            this.time = jMax;
            this.landedCount = this.digitCount;
            invalidate();
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        this.time = 0.0f;
        this.landedCount = 0;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, jMax);
        this.animator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(jMax);
        this.animator.setInterpolator(null);
        this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.exteragram.messenger.components.supporter.SupporterNumberView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$start$0(valueAnimator2);
            }
        });
        this.animator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$0(ValueAnimator valueAnimator) {
        this.time = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        checkLanded();
        invalidate();
    }

    private void checkLanded() {
        float f = this.time;
        int iMin = f < 900.0f ? 0 : Math.min(this.digitCount, ((int) ((f - 900.0f) / 140.0f)) + 1);
        while (true) {
            int i = this.landedCount;
            if (i >= iMin) {
                return;
            }
            int i2 = i + 1;
            this.landedCount = i2;
            if (i2 < this.digitCount) {
                try {
                    performHapticFeedback(3);
                } catch (Exception unused) {
                }
            } else {
                Runnable runnable = this.onLanded;
                if (runnable != null) {
                    runnable.run();
                }
            }
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.animator = null;
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(50.0f), TLObject.FLAG_30));
    }

    private float charWidth(int i) {
        return this.digits[i] >= 0 ? this.digitWidth : this.paint.measureText(this.text, i, i + 1);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        SupporterNumberView supporterNumberView = this;
        Canvas canvas2 = canvas;
        float f6 = 0.0f;
        if (supporterNumberView.time < 0.0f || supporterNumberView.text.isEmpty()) {
            return;
        }
        float fCharWidth = 0.0f;
        for (int i2 = 0; i2 < supporterNumberView.text.length(); i2++) {
            fCharWidth += supporterNumberView.charWidth(i2);
        }
        int i3 = (int) fCharWidth;
        float f7 = 2.0f;
        if (supporterNumberView.shaderWidth != i3) {
            supporterNumberView.shaderWidth = i3;
            float width = (supporterNumberView.getWidth() - fCharWidth) / 2.0f;
            supporterNumberView.paint.setShader(supporterNumberView.color1 == supporterNumberView.color2 ? null : new LinearGradient(width, 0.0f, width + fCharWidth, 0.0f, supporterNumberView.color1, supporterNumberView.color2, Shader.TileMode.CLAMP));
            supporterNumberView.paint.setColor(supporterNumberView.color1);
        }
        float textSize = supporterNumberView.paint.getTextSize() * 1.1f;
        float height = (supporterNumberView.getHeight() / 2.0f) - ((supporterNumberView.paint.descent() + supporterNumberView.paint.ascent()) / 2.0f);
        float fClamp = Utilities.clamp(supporterNumberView.time / 200.0f, 1.0f, 0.0f);
        canvas2.save();
        float f8 = 0.6f * textSize;
        canvas2.clipRect(0.0f, (supporterNumberView.getHeight() / 2.0f) - f8, supporterNumberView.getWidth(), (supporterNumberView.getHeight() / 2.0f) + f8);
        int i4 = 0;
        float width2 = (supporterNumberView.getWidth() - fCharWidth) / 2.0f;
        int i5 = 0;
        while (i5 < supporterNumberView.text.length()) {
            float fCharWidth2 = supporterNumberView.charWidth(i5);
            float f9 = width2 + (fCharWidth2 / f7);
            if (supporterNumberView.digits[i5] < 0) {
                supporterNumberView.paint.setAlpha((int) (255.0f * fClamp));
                canvas2.drawText(supporterNumberView.text, i5, i5 + 1, f9, height, (Paint) supporterNumberView.paint);
                i = i5;
                f = height;
                f2 = f7;
                f3 = textSize;
                f5 = fClamp;
                f4 = f6;
            } else {
                i = i5;
                f = height;
                float f10 = (supporterNumberView.time - (((long) i4) * 140)) / 900.0f;
                float interpolation = CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(Utilities.clamp(f10, 1.0f, f6)) * (supporterNumberView.digits[i] + 20);
                f2 = f7;
                f3 = textSize;
                int iFloor = (int) Math.floor(interpolation);
                float f11 = interpolation - iFloor;
                f4 = f6;
                float fSin = (((float) Math.sin(((double) Utilities.clamp(((f10 - 1.0f) * 900.0f) / 240.0f, 1.0f, f6)) * 3.141592653589793d)) * 0.14f) + 1.0f;
                canvas2.save();
                canvas2.scale(fSin, fSin, f9, supporterNumberView.getHeight() / f2);
                f5 = fClamp;
                supporterNumberView.drawDigit(canvas2, iFloor % 10, f9, f - (f11 * f3), f11, f5);
                if (f11 > f4) {
                    float f12 = 1.0f - f11;
                    drawDigit(canvas, (iFloor + 1) % 10, f9, f + (f12 * f3), f12, f5);
                }
                canvas.restore();
                i4++;
            }
            width2 += fCharWidth2;
            i5 = i + 1;
            supporterNumberView = this;
            canvas2 = canvas;
            fClamp = f5;
            height = f;
            f6 = f4;
            f7 = f2;
            textSize = f3;
        }
        canvas.restore();
    }

    private void drawDigit(Canvas canvas, int i, float f, float f2, float f3, float f4) {
        this.paint.setAlpha((int) (f4 * 255.0f * (1.0f - f3)));
        canvas.drawText(String.valueOf(i), f, f2, this.paint);
    }
}
