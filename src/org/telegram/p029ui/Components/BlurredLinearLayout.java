package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import android.widget.LinearLayout;
import org.telegram.messenger.SharedConfig;

/* JADX INFO: loaded from: classes3.dex */
public class BlurredLinearLayout extends LinearLayout {
    public int backgroundColor;
    public int backgroundPaddingBottom;
    public int backgroundPaddingTop;
    protected Paint backgroundPaint;
    private Rect blurBounds;
    public boolean drawBlur;
    public boolean isTopView;
    private final SizeNotifierFrameLayout sizeNotifierFrameLayout;

    public BlurredLinearLayout(Context context, SizeNotifierFrameLayout sizeNotifierFrameLayout) {
        super(context);
        this.backgroundColor = 0;
        this.isTopView = true;
        this.drawBlur = true;
        this.blurBounds = new Rect();
        this.sizeNotifierFrameLayout = sizeNotifierFrameLayout;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Canvas canvas2;
        SizeNotifierFrameLayout sizeNotifierFrameLayout;
        if (!SharedConfig.chatBlurEnabled() || this.sizeNotifierFrameLayout == null || !this.drawBlur || this.backgroundColor == 0) {
            canvas2 = canvas;
        } else {
            if (this.backgroundPaint == null) {
                this.backgroundPaint = new Paint();
            }
            this.backgroundPaint.setColor(this.backgroundColor);
            this.blurBounds.set(0, this.backgroundPaddingTop, getMeasuredWidth(), getMeasuredHeight() - this.backgroundPaddingBottom);
            float y = 0.0f;
            View view = this;
            while (true) {
                sizeNotifierFrameLayout = this.sizeNotifierFrameLayout;
                if (view == sizeNotifierFrameLayout) {
                    break;
                }
                y += view.getY();
                view = (View) view.getParent();
            }
            canvas2 = canvas;
            sizeNotifierFrameLayout.drawBlurRect(canvas2, y, this.blurBounds, this.backgroundPaint, this.isTopView);
        }
        super.dispatchDraw(canvas2);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (SharedConfig.chatBlurEnabled() && this.sizeNotifierFrameLayout != null) {
            this.backgroundColor = i;
        } else {
            super.setBackgroundColor(i);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        SizeNotifierFrameLayout sizeNotifierFrameLayout;
        if (SharedConfig.chatBlurEnabled() && (sizeNotifierFrameLayout = this.sizeNotifierFrameLayout) != null) {
            sizeNotifierFrameLayout.blurBehindViews.add(this);
        }
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.sizeNotifierFrameLayout;
        if (sizeNotifierFrameLayout != null) {
            sizeNotifierFrameLayout.blurBehindViews.remove(this);
        }
        super.onDetachedFromWindow();
    }
}
