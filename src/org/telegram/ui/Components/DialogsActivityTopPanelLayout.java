package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.MotionEvent;
import me.vkryl.android.animator.ListAnimator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedLinearLayout;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;

/* JADX INFO: loaded from: classes3.dex */
public class DialogsActivityTopPanelLayout extends AnimatedLinearLayout {
    BlurredBackgroundDrawable backgroundDrawable;
    private final Path clipPath;
    private final RectF clipRectF;
    private int defaultRadiusDp;

    public DialogsActivityTopPanelLayout(Context context) {
        super(context);
        this.clipPath = new Path();
        this.clipRectF = new RectF();
        this.defaultRadiusDp = 24;
        setOrientation(1);
        updateColors();
    }

    public void setBlurredBackground(BlurredBackgroundDrawable blurredBackgroundDrawable) {
        this.backgroundDrawable = blurredBackgroundDrawable;
    }

    @Override // org.telegram.ui.Components.AnimatedLinearLayout, android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        checkBoundsAndClipping();
    }

    @Override // org.telegram.ui.Components.AnimatedLinearLayout
    public void onItemsChanged() {
        super.onItemsChanged();
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
        float fMin = Math.min(AndroidUtilities.dp(this.defaultRadiusDp), Math.min(this.clipRectF.width(), this.clipRectF.height()) / 2.0f);
        this.clipPath.rewind();
        this.clipPath.addRoundRect(this.clipRectF, fMin, fMin, Path.Direction.CW);
        BlurredBackgroundDrawable blurredBackgroundDrawable = this.backgroundDrawable;
        if (blurredBackgroundDrawable != null) {
            blurredBackgroundDrawable.setAlpha((int) (totalVisibility * 255.0f));
            this.backgroundDrawable.setBounds(AndroidUtilities.dp(4.0f), AndroidUtilities.dp(14.0f), getMeasuredWidth() - AndroidUtilities.dp(4.0f), ((getPaddingTop() + getPaddingBottom()) + ((int) totalHeight)) - AndroidUtilities.dp(14.0f));
            this.backgroundDrawable.setRadius(Math.min(AndroidUtilities.dp(this.defaultRadiusDp), totalHeight / 2.0f));
        }
    }

    public void setDefaultRadiusDp(int i) {
        this.defaultRadiusDp = i;
    }

    public void updateColors() {
        BlurredBackgroundDrawable blurredBackgroundDrawable = this.backgroundDrawable;
        if (blurredBackgroundDrawable != null) {
            blurredBackgroundDrawable.updateColors();
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Canvas canvas2;
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
            ListAnimator.Entry<AnimatedLinearLayout.Holder> entry = getEntry(i);
            float paddingTop = getPaddingTop() + entry.getRectF().top;
            float visibility = entry.getVisibility() * Math.min(1.0f, entry.getPosition());
            if (visibility <= 0.0f) {
                canvas2 = canvas;
            } else {
                int alpha = Theme.forcedDividerPaint.getAlpha();
                Theme.forcedDividerPaint.setAlpha((int) (alpha * visibility));
                float f = 1.0f - visibility;
                canvas2 = canvas;
                canvas2.drawLine(getPaddingLeft() + (AndroidUtilities.dp(16.0f) * f), paddingTop, getWidth() - (getPaddingRight() + (AndroidUtilities.dp(16.0f) * f)), paddingTop, Theme.forcedDividerPaint);
                Theme.forcedDividerPaint.setAlpha(alpha);
            }
            i++;
            canvas = canvas2;
        }
        Canvas canvas3 = canvas;
        super.dispatchDraw(canvas3);
        canvas3.restore();
    }
}
