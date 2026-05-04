package org.telegram.p029ui.Components;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes3.dex */
public class UnreadCounterTextView extends View {
    boolean animatedFromBottom;
    private int circleWidth;
    int counterColor;
    private int currentCounter;
    private String currentCounterString;
    private int horizontalPadding;
    private Drawable icon;
    private Drawable iconOut;
    CharSequence lastText;
    private TextPaint layoutPaint;
    private int layoutTextWidth;
    private int maxLines;
    private Paint paint;
    int panelBackgroundColor;
    private RectF rect;
    ValueAnimator replaceAnimator;
    float replaceProgress;
    private int rippleColor;
    Drawable selectableBackground;
    private boolean singleLine;
    int textColor;
    int textColorKey;
    private StaticLayout textLayout;
    private StaticLayout textLayoutOut;
    private TextPaint textPaint;
    private int textWidth;

    protected Theme.ResourcesProvider getResourceProvider() {
        return null;
    }

    protected float getTopOffset() {
        return 0.0f;
    }

    public UnreadCounterTextView(Context context) {
        super(context);
        this.textPaint = new TextPaint(1);
        this.paint = new Paint(1);
        this.rect = new RectF();
        this.layoutPaint = new TextPaint(1);
        this.replaceProgress = 1.0f;
        this.textColorKey = Theme.key_chat_fieldOverlayText;
        this.singleLine = true;
        this.maxLines = 1;
        this.textPaint.setTextSize(AndroidUtilities.m1124dp(13.0f));
        this.textPaint.setTypeface(AndroidUtilities.bold());
        this.layoutPaint.setTextSize(AndroidUtilities.m1124dp(15.0f));
        this.layoutPaint.setTypeface(AndroidUtilities.bold());
    }

    public void setHorizontalPadding(int i) {
        this.horizontalPadding = i;
        invalidate();
    }

    public void setSingleLine(boolean z) {
        this.singleLine = z;
        if (z) {
            this.maxLines = 1;
        }
        requestLayout();
    }

    public void setMaxLines(int i) {
        this.maxLines = i;
        if (i > 1) {
            this.singleLine = false;
        }
        requestLayout();
    }

    public void setText(CharSequence charSequence, boolean z) {
        if (this.lastText == charSequence) {
            return;
        }
        this.lastText = charSequence;
        this.animatedFromBottom = z;
        this.textLayoutOut = this.textLayout;
        this.iconOut = this.icon;
        this.layoutPaint.setTypeface(AndroidUtilities.bold());
        int i = AndroidUtilities.displaySize.x - (this.horizontalPadding * 2);
        if (this.singleLine) {
            this.layoutTextWidth = (int) Math.ceil(this.layoutPaint.measureText(charSequence, 0, charSequence.length()));
        } else {
            this.layoutTextWidth = 0;
            StaticLayout staticLayout = new StaticLayout(charSequence, this.layoutPaint, i, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            for (int i2 = 0; i2 < Math.min(staticLayout.getLineCount(), this.maxLines); i2++) {
                this.layoutTextWidth = Math.max(this.layoutTextWidth, (int) Math.ceil(staticLayout.getLineWidth(i2)));
            }
        }
        this.icon = null;
        TextPaint textPaint = this.layoutPaint;
        int i3 = this.layoutTextWidth;
        this.textLayout = StaticLayoutEx.createStaticLayout(charSequence, textPaint, i3, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false, TextUtils.TruncateAt.END, i3, this.maxLines, false);
        setContentDescription(charSequence);
        invalidate();
        if (this.textLayoutOut == null && this.iconOut == null) {
            return;
        }
        ValueAnimator valueAnimator = this.replaceAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.replaceProgress = 0.0f;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.replaceAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.UnreadCounterTextView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$setText$0(valueAnimator2);
            }
        });
        this.replaceAnimator.setDuration(150L);
        this.replaceAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setText$0(ValueAnimator valueAnimator) {
        this.replaceProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public void setText(CharSequence charSequence) {
        if (this.lastText == charSequence) {
            return;
        }
        this.lastText = charSequence;
        this.layoutPaint.setTypeface(AndroidUtilities.bold());
        int i = AndroidUtilities.displaySize.x - (this.horizontalPadding * 2);
        if (this.singleLine) {
            this.layoutTextWidth = (int) Math.ceil(this.layoutPaint.measureText(charSequence, 0, charSequence.length()));
        } else {
            this.layoutTextWidth = 0;
            StaticLayout staticLayout = new StaticLayout(charSequence, this.layoutPaint, i, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            for (int i2 = 0; i2 < Math.min(staticLayout.getLineCount(), this.maxLines); i2++) {
                this.layoutTextWidth = Math.max(this.layoutTextWidth, (int) Math.ceil(staticLayout.getLineWidth(i2)));
            }
        }
        this.icon = null;
        TextPaint textPaint = this.layoutPaint;
        int i3 = this.layoutTextWidth;
        this.textLayout = StaticLayoutEx.createStaticLayout(charSequence, textPaint, i3, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false, TextUtils.TruncateAt.END, i3, this.maxLines, false);
        setContentDescription(charSequence);
        invalidate();
    }

    public void setTextInfo(CharSequence charSequence) {
        if (this.lastText == charSequence) {
            return;
        }
        this.lastText = charSequence;
        this.layoutPaint.setTypeface(null);
        int i = AndroidUtilities.displaySize.x - (this.horizontalPadding * 2);
        if (this.singleLine) {
            this.layoutTextWidth = (int) Math.ceil(this.layoutPaint.measureText(charSequence, 0, charSequence.length()));
        } else {
            this.layoutTextWidth = 0;
            StaticLayout staticLayout = new StaticLayout(charSequence, this.layoutPaint, i, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            for (int i2 = 0; i2 < Math.min(staticLayout.getLineCount(), this.maxLines); i2++) {
                this.layoutTextWidth = Math.max(this.layoutTextWidth, (int) Math.ceil(staticLayout.getLineWidth(i2)));
            }
        }
        this.icon = null;
        TextPaint textPaint = this.layoutPaint;
        int i3 = this.layoutTextWidth;
        this.textLayout = StaticLayoutEx.createStaticLayout(charSequence, textPaint, i3 + 1, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false, TextUtils.TruncateAt.END, i3 + 1, this.maxLines, false);
        setContentDescription(charSequence);
        invalidate();
    }

    public void setTextInfo(Drawable drawable, CharSequence charSequence) {
        if (this.lastText == charSequence) {
            return;
        }
        this.lastText = charSequence;
        this.layoutPaint.setTypeface(null);
        int i = AndroidUtilities.displaySize.x - (this.horizontalPadding * 2);
        if (this.singleLine) {
            this.layoutTextWidth = (int) Math.ceil(this.layoutPaint.measureText(charSequence, 0, charSequence.length()));
        } else {
            this.layoutTextWidth = 0;
            StaticLayout staticLayout = new StaticLayout(charSequence, this.layoutPaint, i, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            for (int i2 = 0; i2 < Math.min(staticLayout.getLineCount(), this.maxLines); i2++) {
                this.layoutTextWidth = Math.max(this.layoutTextWidth, (int) Math.ceil(staticLayout.getLineWidth(i2)));
            }
        }
        this.icon = drawable;
        TextPaint textPaint = this.layoutPaint;
        int i3 = this.layoutTextWidth;
        this.textLayout = StaticLayoutEx.createStaticLayout(charSequence, textPaint, i3 + 1, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false, TextUtils.TruncateAt.END, i3 + 1, this.maxLines, false);
        setContentDescription(charSequence);
        invalidate();
    }

    public CharSequence getText() {
        return this.lastText;
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.selectableBackground;
        if (drawable != null) {
            drawable.setState(getDrawableState());
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        Drawable drawable2 = this.selectableBackground;
        if (drawable2 != null) {
            return drawable2 == drawable || super.verifyDrawable(drawable);
        }
        return super.verifyDrawable(drawable);
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.selectableBackground;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.selectableBackground;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
    }

    public void setCounter(int i) {
        if (this.currentCounter != i) {
            this.currentCounter = i;
            if (i == 0) {
                this.currentCounterString = null;
                this.circleWidth = 0;
            } else {
                this.currentCounterString = AndroidUtilities.formatWholeNumber(i, 0);
                this.textWidth = (int) Math.ceil(this.textPaint.measureText(r3));
                int iMax = Math.max(AndroidUtilities.m1124dp(20.0f), AndroidUtilities.m1124dp(12.0f) + this.textWidth);
                if (this.circleWidth != iMax) {
                    this.circleWidth = iMax;
                }
            }
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        StaticLayout staticLayout = this.textLayout;
        int color = Theme.getColor(isEnabled() ? this.textColorKey : Theme.key_windowBackgroundWhiteGrayText, getResourceProvider());
        if (this.textColor != color) {
            TextPaint textPaint = this.layoutPaint;
            this.textColor = color;
            textPaint.setColor(color);
        }
        int color2 = Theme.getColor(Theme.key_chat_messagePanelBackground, getResourceProvider());
        if (this.panelBackgroundColor != color2) {
            TextPaint textPaint2 = this.textPaint;
            this.panelBackgroundColor = color2;
            textPaint2.setColor(color2);
        }
        int color3 = Theme.getColor(Theme.key_chat_goDownButtonCounterBackground, getResourceProvider());
        if (this.counterColor != color3) {
            Paint paint = this.paint;
            this.counterColor = color3;
            paint.setColor(color3);
        }
        if (getParent() != null) {
            int measuredWidth = getMeasuredWidth();
            int measuredWidth2 = (getMeasuredWidth() - measuredWidth) / 2;
            if (this.rippleColor != Theme.getColor(this.textColorKey, getResourceProvider()) || this.selectableBackground == null) {
                int iM1124dp = AndroidUtilities.m1124dp(60.0f);
                int color4 = Theme.getColor(this.textColorKey, getResourceProvider());
                this.rippleColor = color4;
                Drawable drawableCreateSimpleSelectorCircleDrawable = Theme.createSimpleSelectorCircleDrawable(iM1124dp, 0, ColorUtils.setAlphaComponent(color4, 26));
                this.selectableBackground = drawableCreateSimpleSelectorCircleDrawable;
                drawableCreateSimpleSelectorCircleDrawable.setCallback(this);
            }
            int iM1124dp2 = getLeft() + measuredWidth2 <= 0 ? measuredWidth2 - AndroidUtilities.m1124dp(20.0f) : measuredWidth2;
            int iM1124dp3 = measuredWidth2 + measuredWidth;
            if (iM1124dp3 > ((View) getParent()).getMeasuredWidth()) {
                iM1124dp3 += AndroidUtilities.m1124dp(20.0f);
            }
            int i = measuredWidth / 2;
            this.selectableBackground.setBounds(iM1124dp2, (getMeasuredHeight() / 2) - i, iM1124dp3, (getMeasuredHeight() / 2) + i);
            this.selectableBackground.draw(canvas);
        }
        if (this.textLayout != null) {
            canvas.save();
            if (this.replaceProgress != 1.0f && this.textLayoutOut != null) {
                int alpha = this.layoutPaint.getAlpha();
                canvas.save();
                canvas.translate(((getMeasuredWidth() - this.textLayoutOut.getWidth()) / 2) - (this.circleWidth / 2), ((getMeasuredHeight() - this.textLayout.getHeight()) / 2) + getTopOffset());
                canvas.translate(this.iconOut != null ? (r6.getIntrinsicWidth() / 2) + AndroidUtilities.m1124dp(3.0f) : 0, (this.animatedFromBottom ? -1.0f : 1.0f) * AndroidUtilities.m1124dp(18.0f) * this.replaceProgress);
                Drawable drawable = this.iconOut;
                if (drawable != null) {
                    drawable.setBounds((-drawable.getIntrinsicWidth()) - AndroidUtilities.m1124dp(6.0f), ((this.textLayout.getHeight() - this.iconOut.getIntrinsicHeight()) / 2) + AndroidUtilities.m1124dp(1.0f), -AndroidUtilities.m1124dp(6.0f), ((this.textLayout.getHeight() + this.iconOut.getIntrinsicHeight()) / 2) + AndroidUtilities.m1124dp(1.0f));
                    this.iconOut.setAlpha((int) (alpha * (1.0f - this.replaceProgress)));
                    this.iconOut.draw(canvas);
                }
                float f = alpha;
                this.layoutPaint.setAlpha((int) ((1.0f - this.replaceProgress) * f));
                this.textLayoutOut.draw(canvas);
                canvas.restore();
                canvas.save();
                canvas.translate(((getMeasuredWidth() - this.layoutTextWidth) / 2) - (this.circleWidth / 2), ((getMeasuredHeight() - this.textLayout.getHeight()) / 2) + getTopOffset());
                canvas.translate(this.icon != null ? (r6.getIntrinsicWidth() / 2) + AndroidUtilities.m1124dp(3.0f) : 0, (this.animatedFromBottom ? 1.0f : -1.0f) * AndroidUtilities.m1124dp(18.0f) * (1.0f - this.replaceProgress));
                Drawable drawable2 = this.icon;
                if (drawable2 != null) {
                    drawable2.setBounds((-drawable2.getIntrinsicWidth()) - AndroidUtilities.m1124dp(6.0f), ((this.textLayout.getHeight() - this.icon.getIntrinsicHeight()) / 2) + AndroidUtilities.m1124dp(1.0f), -AndroidUtilities.m1124dp(6.0f), ((this.textLayout.getHeight() + this.icon.getIntrinsicHeight()) / 2) + AndroidUtilities.m1124dp(1.0f));
                    this.icon.setAlpha((int) (this.replaceProgress * f));
                    this.icon.draw(canvas);
                }
                this.layoutPaint.setAlpha((int) (f * this.replaceProgress));
                this.textLayout.draw(canvas);
                canvas.restore();
                this.layoutPaint.setAlpha(alpha);
            } else {
                int measuredWidth3 = ((getMeasuredWidth() - this.layoutTextWidth) / 2) - (this.circleWidth / 2);
                canvas.translate(measuredWidth3 + (this.icon != null ? (r6.getIntrinsicWidth() / 2) + AndroidUtilities.m1124dp(3.0f) : 0), ((getMeasuredHeight() - this.textLayout.getHeight()) / 2) + getTopOffset());
                Drawable drawable3 = this.icon;
                if (drawable3 != null) {
                    drawable3.setBounds((-drawable3.getIntrinsicWidth()) - AndroidUtilities.m1124dp(6.0f), ((this.textLayout.getHeight() - this.icon.getIntrinsicHeight()) / 2) + AndroidUtilities.m1124dp(1.0f), -AndroidUtilities.m1124dp(6.0f), ((this.textLayout.getHeight() + this.icon.getIntrinsicHeight()) / 2) + AndroidUtilities.m1124dp(1.0f));
                    this.icon.setAlpha(255);
                    this.icon.draw(canvas);
                }
                this.textLayout.draw(canvas);
            }
            canvas.restore();
        }
        if (this.currentCounterString == null || staticLayout == null) {
            return;
        }
        int iCeil = (int) Math.ceil(staticLayout.getLineWidth(0));
        this.rect.set(((((getMeasuredWidth() - iCeil) / 2) + iCeil) - (this.circleWidth / 2)) + AndroidUtilities.m1124dp(6.0f), (getMeasuredHeight() / 2) - AndroidUtilities.m1124dp(10.0f), r1 + this.circleWidth, (getMeasuredHeight() / 2) + AndroidUtilities.m1124dp(10.0f));
        canvas.drawRoundRect(this.rect, AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(10.0f), this.paint);
        canvas.drawText(this.currentCounterString, this.rect.centerX() - (this.textWidth / 2.0f), this.rect.top + AndroidUtilities.m1124dp(14.5f), this.textPaint);
    }

    public void setTextColorKey(int i) {
        this.textColorKey = i;
        invalidate();
    }
}
