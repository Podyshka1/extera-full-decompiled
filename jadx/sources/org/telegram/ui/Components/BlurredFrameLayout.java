package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import android.widget.FrameLayout;
import org.telegram.messenger.SharedConfig;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BlurredFrameLayout extends FrameLayout {
    public int backgroundColor;
    public int backgroundPaddingBottom;
    public int backgroundPaddingTop;
    protected Paint backgroundPaint;
    private android.graphics.Rect blurBounds;
    public boolean drawBlur;
    public boolean isTopView;
    protected final SizeNotifierFrameLayout sizeNotifierFrameLayout;

    public BlurredFrameLayout(Context context, SizeNotifierFrameLayout sizeNotifierFrameLayout) {
        super(context);
        this.backgroundColor = 0;
        this.isTopView = true;
        this.drawBlur = true;
        this.blurBounds = new android.graphics.Rect();
        this.sizeNotifierFrameLayout = sizeNotifierFrameLayout;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Canvas canvas2;
        if (SharedConfig.chatBlurEnabled() && this.sizeNotifierFrameLayout != null && this.drawBlur && this.backgroundColor != 0) {
            if (this.backgroundPaint == null) {
                this.backgroundPaint = new Paint();
            }
            this.backgroundPaint.setColor(this.backgroundColor);
            this.blurBounds.set(0, this.backgroundPaddingTop, getMeasuredWidth(), getMeasuredHeight() - this.backgroundPaddingBottom);
            float y = 0.0f;
            View view = this;
            while (true) {
                SizeNotifierFrameLayout sizeNotifierFrameLayout = this.sizeNotifierFrameLayout;
                if (view != sizeNotifierFrameLayout) {
                    y += view.getY();
                    Object parent = view.getParent();
                    if (parent instanceof View) {
                        view = (View) parent;
                    } else {
                        super.dispatchDraw(canvas);
                        return;
                    }
                } else {
                    canvas2 = canvas;
                    sizeNotifierFrameLayout.drawBlurRect(canvas2, y, this.blurBounds, this.backgroundPaint, this.isTopView);
                    break;
                }
            }
        } else {
            canvas2 = canvas;
        }
        super.dispatchDraw(canvas2);
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        if (SharedConfig.chatBlurEnabled() && f != getTranslationY()) {
            invalidate();
        }
        super.setTranslationY(f);
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
