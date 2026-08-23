package org.telegram.p029ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.View;
import androidx.annotation.Keep;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes3.dex */
public class NumberTextView extends View {
    private boolean addNumber;
    private ObjectAnimator animator;
    private boolean center;
    private int currentNumber;
    private ArrayList letters;
    private ArrayList oldLetters;
    private float oldTextWidth;
    private float progress;
    private TextPaint textPaint;
    private float textWidth;

    /* JADX INFO: loaded from: classes7.dex */
    public interface OnTextWidthProgressChangedListener {
    }

    public void setOnTextWidthProgressChangedListener(OnTextWidthProgressChangedListener onTextWidthProgressChangedListener) {
    }

    public NumberTextView(Context context) {
        super(context);
        this.letters = new ArrayList();
        this.oldLetters = new ArrayList();
        this.textPaint = new TextPaint(1);
        this.progress = 0.0f;
        this.currentNumber = 1;
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

    public void setAddNumber() {
        this.addNumber = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004e A[PHI: r2 r7
  0x004e: PHI (r2v20 java.lang.String) = (r2v7 java.lang.String), (r2v22 java.lang.String) binds: [B:16:0x0072, B:12:0x004c] A[DONT_GENERATE, DONT_INLINE]
  0x004e: PHI (r7v4 java.lang.String) = (r7v1 java.lang.String), (r7v6 java.lang.String) binds: [B:16:0x0072, B:12:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0050 A[PHI: r2 r7
  0x0050: PHI (r2v8 java.lang.String) = (r2v7 java.lang.String), (r2v22 java.lang.String) binds: [B:16:0x0072, B:12:0x004c] A[DONT_GENERATE, DONT_INLINE]
  0x0050: PHI (r7v2 java.lang.String) = (r7v1 java.lang.String), (r7v6 java.lang.String) binds: [B:16:0x0072, B:12:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setNumber(int i, boolean z) {
        String str;
        String str2;
        boolean z2;
        if (this.currentNumber == i && z) {
            return;
        }
        ObjectAnimator objectAnimator = this.animator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.animator = null;
        }
        this.oldLetters.clear();
        this.oldLetters.addAll(this.letters);
        this.letters.clear();
        if (this.addNumber) {
            Locale locale = Locale.US;
            str = String.format(locale, "#%d", Integer.valueOf(this.currentNumber));
            str2 = String.format(locale, "#%d", Integer.valueOf(i));
            z2 = i < this.currentNumber;
        } else {
            Locale locale2 = Locale.US;
            str = String.format(locale2, TimeModel.NUMBER_FORMAT, Integer.valueOf(this.currentNumber));
            str2 = String.format(locale2, TimeModel.NUMBER_FORMAT, Integer.valueOf(i));
            if (i > this.currentNumber) {
            }
        }
        this.textWidth = this.textPaint.measureText(str2);
        float fMeasureText = this.textPaint.measureText(str);
        this.oldTextWidth = fMeasureText;
        boolean z3 = this.center && this.textWidth != fMeasureText;
        this.currentNumber = i;
        this.progress = 0.0f;
        int i2 = 0;
        while (i2 < str2.length()) {
            int i3 = i2 + 1;
            String strSubstring = str2.substring(i2, i3);
            String strSubstring2 = (this.oldLetters.isEmpty() || i2 >= str.length()) ? null : str.substring(i2, i3);
            if (!z3 && strSubstring2 != null && strSubstring2.equals(strSubstring)) {
                this.letters.add((StaticLayout) this.oldLetters.get(i2));
                this.oldLetters.set(i2, null);
            } else {
                if (z3 && strSubstring2 == null) {
                    this.oldLetters.add(new StaticLayout(_UrlKt.FRAGMENT_ENCODE_SET, this.textPaint, 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false));
                }
                this.letters.add(new StaticLayout(strSubstring, this.textPaint, (int) Math.ceil(r13.measureText(strSubstring)), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false));
            }
            i2 = i3;
        }
        if (z && !this.oldLetters.isEmpty()) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "progress", z2 ? -1.0f : 1.0f, 0.0f);
            this.animator = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(this.addNumber ? 180L : 150L);
            this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.NumberTextView.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    NumberTextView.this.animator = null;
                    NumberTextView.this.oldLetters.clear();
                }
            });
            this.animator.start();
        }
        invalidate();
    }

    public void setTextSize(int i) {
        this.textPaint.setTextSize(AndroidUtilities.m1124dp(i));
        this.oldLetters.clear();
        this.letters.clear();
        setNumber(this.currentNumber, false);
    }

    public void setTextColor(int i) {
        this.textPaint.setColor(i);
        invalidate();
    }

    public void setTypeface(Typeface typeface) {
        this.textPaint.setTypeface(typeface);
        this.oldLetters.clear();
        this.letters.clear();
        setNumber(this.currentNumber, false);
    }

    public void setCenterAlign(boolean z) {
        this.center = z;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float measuredWidth;
        float lineWidth;
        if (this.letters.isEmpty()) {
            return;
        }
        float height = ((StaticLayout) this.letters.get(0)).getHeight();
        float fM1124dp = this.addNumber ? AndroidUtilities.m1124dp(4.0f) : height;
        if (this.center) {
            measuredWidth = (getMeasuredWidth() - this.textWidth) / 2.0f;
            lineWidth = ((getMeasuredWidth() - this.oldTextWidth) / 2.0f) - measuredWidth;
        } else {
            measuredWidth = 0.0f;
            lineWidth = 0.0f;
        }
        canvas.save();
        canvas.translate(getPaddingLeft() + measuredWidth, (getMeasuredHeight() - height) / 2.0f);
        int iMax = Math.max(this.letters.size(), this.oldLetters.size());
        int i = 0;
        while (i < iMax) {
            canvas.save();
            StaticLayout staticLayout = i < this.oldLetters.size() ? (StaticLayout) this.oldLetters.get(i) : null;
            StaticLayout staticLayout2 = i < this.letters.size() ? (StaticLayout) this.letters.get(i) : null;
            float f = this.progress;
            if (f > 0.0f) {
                if (staticLayout != null) {
                    this.textPaint.setAlpha((int) (f * 255.0f));
                    canvas.save();
                    canvas.translate(lineWidth, (this.progress - 1.0f) * fM1124dp);
                    staticLayout.draw(canvas);
                    canvas.restore();
                    if (staticLayout2 != null) {
                        this.textPaint.setAlpha((int) ((1.0f - this.progress) * 255.0f));
                        canvas.translate(0.0f, this.progress * fM1124dp);
                    }
                } else {
                    this.textPaint.setAlpha(255);
                }
            } else if (f < 0.0f) {
                if (staticLayout != null) {
                    this.textPaint.setAlpha((int) ((-f) * 255.0f));
                    canvas.save();
                    canvas.translate(lineWidth, (this.progress + 1.0f) * fM1124dp);
                    staticLayout.draw(canvas);
                    canvas.restore();
                }
                if (staticLayout2 != null) {
                    if (i == iMax - 1 || staticLayout != null) {
                        this.textPaint.setAlpha((int) ((this.progress + 1.0f) * 255.0f));
                        canvas.translate(0.0f, this.progress * fM1124dp);
                    } else {
                        this.textPaint.setAlpha(255);
                    }
                }
            } else if (staticLayout2 != null) {
                this.textPaint.setAlpha(255);
            }
            if (staticLayout2 != null) {
                staticLayout2.draw(canvas);
            }
            canvas.restore();
            canvas.translate(staticLayout2 != null ? staticLayout2.getLineWidth(0) : staticLayout.getLineWidth(0) + AndroidUtilities.m1124dp(1.0f), 0.0f);
            if (staticLayout2 != null && staticLayout != null) {
                lineWidth += staticLayout.getLineWidth(0) - staticLayout2.getLineWidth(0);
            }
            i++;
        }
        canvas.restore();
    }

    public float getOldTextWidth() {
        return this.oldTextWidth;
    }

    public float getTextWidth() {
        return this.textWidth;
    }
}
