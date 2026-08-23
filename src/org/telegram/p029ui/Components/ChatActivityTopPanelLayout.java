package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.MotionEvent;
import me.vkryl.android.animator.ListAnimator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.blur3.drawable.BlurredBackgroundDrawable;

/* JADX INFO: loaded from: classes3.dex */
public class ChatActivityTopPanelLayout extends AnimatedLinearLayout {
    BlurredBackgroundDrawable backgroundDrawable;
    private final Path clipPath;
    private final RectF clipRectF;

    public ChatActivityTopPanelLayout(Context context) {
        super(context);
        this.clipPath = new Path();
        this.clipRectF = new RectF();
        setOrientation(1);
        updateColors();
    }

    public void setBlurredBackground(BlurredBackgroundDrawable blurredBackgroundDrawable) {
        this.backgroundDrawable = blurredBackgroundDrawable;
    }

    @Override // org.telegram.p029ui.Components.AnimatedLinearLayout, android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        checkBoundsAndClipping();
    }

    @Override // org.telegram.p029ui.Components.AnimatedLinearLayout
    protected void onItemsChanged() {
        super.onItemsChanged();
        checkBoundsAndClipping();
        invalidate();
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        checkBoundsAndClipping();
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        BlurredBackgroundDrawable blurredBackgroundDrawable;
        if (super.dispatchTouchEvent(motionEvent)) {
            return true;
        }
        return motionEvent.getAction() == 0 && (blurredBackgroundDrawable = this.backgroundDrawable) != null && blurredBackgroundDrawable.getBounds().contains((int) motionEvent.getX(), (int) motionEvent.getY());
    }

    private void checkBoundsAndClipping() {
        float totalHeight = getMetadata().getTotalHeight();
        float totalVisibility = getMetadata().getTotalVisibility();
        this.clipRectF.set(getPaddingLeft(), getPaddingTop(), getMeasuredWidth() - getPaddingRight(), getPaddingTop() + totalHeight);
        float fMin = Math.min(AndroidUtilities.m1124dp(18.0f), Math.min(this.clipRectF.width(), this.clipRectF.height()) / 2.0f);
        this.clipPath.rewind();
        this.clipPath.addRoundRect(this.clipRectF, fMin, fMin, Path.Direction.CW);
        BlurredBackgroundDrawable blurredBackgroundDrawable = this.backgroundDrawable;
        if (blurredBackgroundDrawable != null) {
            blurredBackgroundDrawable.setAlpha((int) (totalVisibility * 255.0f));
            this.backgroundDrawable.setBounds(getPaddingLeft() - AndroidUtilities.m1124dp(7.0f), 0, (getMeasuredWidth() - getPaddingRight()) + AndroidUtilities.m1124dp(7.0f), getPaddingTop() + getPaddingBottom() + ((int) totalHeight));
            this.backgroundDrawable.setRadius(Math.min(AndroidUtilities.m1124dp(18.0f), totalHeight / 2.0f));
        }
    }

    public void updateColors() {
        BlurredBackgroundDrawable blurredBackgroundDrawable = this.backgroundDrawable;
        if (blurredBackgroundDrawable != null) {
            blurredBackgroundDrawable.updateColors();
        }
        Color.alpha(Theme.getColor(Theme.key_windowBackgroundWhite));
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (getMetadata().getTotalVisibility() == 0.0f) {
            return;
        }
        BlurredBackgroundDrawable blurredBackgroundDrawable = this.backgroundDrawable;
        if (blurredBackgroundDrawable != null) {
            blurredBackgroundDrawable.draw(canvas);
        }
        canvas.save();
        canvas.clipPath(this.clipPath);
        int entriesCount = getEntriesCount();
        int i = 0;
        while (i < entriesCount) {
            ListAnimator.Entry entry = getEntry(i);
            float paddingTop = getPaddingTop() + entry.getRectF().top;
            float visibility = entry.getVisibility() * Math.min(1.0f, entry.getPosition());
            int alpha = Theme.dividerPaint.getAlpha();
            Theme.dividerPaint.setAlpha((int) (alpha * visibility));
            float f = 1.0f - visibility;
            Canvas canvas2 = canvas;
            canvas2.drawLine(getPaddingLeft() + (AndroidUtilities.m1124dp(16.0f) * f), paddingTop, getWidth() - (getPaddingRight() + (AndroidUtilities.m1124dp(16.0f) * f)), paddingTop, Theme.dividerPaint);
            Theme.dividerPaint.setAlpha(alpha);
            i++;
            canvas = canvas2;
        }
        Canvas canvas3 = canvas;
        super.dispatchDraw(canvas3);
        canvas3.restore();
    }
}
