package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ReplacementSpan;
import android.view.MotionEvent;
import android.view.View;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.LinkSpanDrawable;

/* JADX INFO: loaded from: classes7.dex */
public class ButtonSpan extends ReplacementSpan {
    private final Paint backgroundPaint = new Paint(1);
    private ButtonBounce bounce;
    public Integer forcedColor;
    private final Runnable onClickListener;
    private final Theme.ResourcesProvider resourcesProvider;
    private final Text text;

    public ButtonSpan(CharSequence charSequence, Runnable runnable, Theme.ResourcesProvider resourcesProvider) {
        this.resourcesProvider = resourcesProvider;
        this.onClickListener = runnable;
        this.text = new Text(charSequence, 12.0f);
    }

    public static CharSequence make(CharSequence charSequence, Runnable runnable, Theme.ResourcesProvider resourcesProvider) {
        return make(charSequence, runnable, resourcesProvider, null);
    }

    public static CharSequence make(CharSequence charSequence, Runnable runnable, Theme.ResourcesProvider resourcesProvider, Integer num) {
        SpannableString spannableString = new SpannableString("btn");
        ButtonSpan buttonSpan = new ButtonSpan(charSequence, runnable, resourcesProvider);
        spannableString.setSpan(buttonSpan, 0, spannableString.length(), 33);
        buttonSpan.forcedColor = num;
        return spannableString;
    }

    public int getSize() {
        return (int) (this.text.getCurrentWidth() + AndroidUtilities.dp(14.0f));
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        if (fontMetricsInt != null) {
            paint.getFontMetricsInt(fontMetricsInt);
        }
        return getSize();
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        float fDpf2 = AndroidUtilities.dpf2(17.0f);
        float f2 = (i3 + i5) / 2.0f;
        RectF rectF = AndroidUtilities.rectTmp;
        float f3 = fDpf2 / 2.0f;
        rectF.set(f, f2 - f3, getSize() + f, f2 + f3);
        ButtonBounce buttonBounce = this.bounce;
        float scale = buttonBounce == null ? 1.0f : buttonBounce.getScale(0.025f);
        canvas.save();
        canvas.scale(scale, scale, rectF.centerX(), rectF.centerY());
        Integer num = this.forcedColor;
        int iIntValue = num != null ? num.intValue() : Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider);
        this.backgroundPaint.setColor(Theme.multAlpha(iIntValue, 0.15f));
        canvas.drawRoundRect(rectF, f3, f3, this.backgroundPaint);
        this.text.draw(canvas, f + AndroidUtilities.dp(7.0f), f2, iIntValue, 1.0f);
        canvas.restore();
    }

    public void setPressed(View view, boolean z) {
        if (this.bounce == null) {
            this.bounce = new ButtonBounce(view);
        }
        this.bounce.setPressed(z);
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class TextViewButtons extends LinkSpanDrawable.LinksTextView {
        private final RectF buttonBounds;
        private final Path buttonPath;
        ButtonSpan buttonToBeAdded;
        private ButtonSpan pressedSpan;

        public TextViewButtons(Context context) {
            super(context);
            this.buttonPath = new Path();
            this.buttonBounds = new RectF();
        }

        public TextViewButtons(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context, resourcesProvider);
            this.buttonPath = new Path();
            this.buttonBounds = new RectF();
        }

        public ButtonSpan findSpan(float f, int i) {
            Layout layout;
            if ((getText() instanceof Spanned) && (layout = getLayout()) != null && i >= 0 && i < layout.getHeight()) {
                int lineForVertical = layout.getLineForVertical(i);
                Spanned spanned = (Spanned) getText();
                float scrollX = f + getScrollX();
                for (ButtonSpan buttonSpan : (ButtonSpan[]) spanned.getSpans(layout.getLineStart(lineForVertical), layout.getLineEnd(lineForVertical), ButtonSpan.class)) {
                    layout.getSelectionPath(spanned.getSpanStart(buttonSpan), spanned.getSpanEnd(buttonSpan), this.buttonPath);
                    this.buttonPath.computeBounds(this.buttonBounds, true);
                    if (this.buttonBounds.contains(scrollX, i)) {
                        return buttonSpan;
                    }
                }
            }
            return null;
        }

        @Override // org.telegram.ui.Components.LinkSpanDrawable.LinksTextView, android.widget.TextView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            ButtonSpan buttonSpan;
            int action = motionEvent.getAction();
            ButtonSpan buttonSpanFindSpan = findSpan(motionEvent.getX() - getPaddingLeft(), ((int) motionEvent.getY()) - getPaddingTop());
            if (action == 0) {
                this.pressedSpan = buttonSpanFindSpan;
                if (buttonSpanFindSpan != null) {
                    buttonSpanFindSpan.setPressed(this, true);
                    return true;
                }
            } else if (action == 1 || action == 3) {
                ButtonSpan buttonSpan2 = this.pressedSpan;
                if (buttonSpan2 != null) {
                    buttonSpan2.setPressed(this, false);
                    if (action == 1 && this.pressedSpan.onClickListener != null) {
                        this.pressedSpan.onClickListener.run();
                    }
                }
                this.pressedSpan = null;
            } else if (action == 2 && (buttonSpan = this.pressedSpan) != null && buttonSpan != buttonSpanFindSpan) {
                buttonSpan.setPressed(this, false);
                this.pressedSpan = null;
            }
            return this.pressedSpan != null || super.onTouchEvent(motionEvent);
        }

        @Override // org.telegram.ui.Components.LinkSpanDrawable.LinksTextView, android.widget.TextView, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
        }

        @Override // android.widget.TextView, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (this.buttonToBeAdded == null || getMeasuredWidth() <= 0) {
                return;
            }
            SpannableString spannableString = new SpannableString(" btn");
            spannableString.setSpan(this.buttonToBeAdded, 1, spannableString.length(), 33);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(TextUtils.ellipsize(getText(), getPaint(), (((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) - this.buttonToBeAdded.getSize()) - AndroidUtilities.dp(4.0f), TextUtils.TruncateAt.END));
            spannableStringBuilder.append((CharSequence) spannableString);
            setText(spannableStringBuilder);
            this.buttonToBeAdded = null;
        }

        public void addButton(ButtonSpan buttonSpan) {
            this.buttonToBeAdded = buttonSpan;
        }
    }
}
