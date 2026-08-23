package org.telegram.p029ui.Components;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.content.ContextCompat;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class ReplaceableIconDrawable extends Drawable implements Animator.AnimatorListener, Drawable.Callback {
    private ValueAnimator animation;
    private ColorFilter colorFilter;
    private Context context;
    private Drawable currentDrawable;
    public boolean exactlyBounds;
    private Drawable outDrawable;
    private int currentResId = 0;
    private float progress = 1.0f;
    ArrayList parentViews = new ArrayList();

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
    }

    public ReplaceableIconDrawable(Context context) {
        this.context = context;
    }

    public void setIcon(int i, boolean z) {
        if (this.currentResId == i) {
            return;
        }
        setIcon(ContextCompat.getDrawable(this.context, i).mutate(), z);
        this.currentResId = i;
    }

    public Drawable getIcon() {
        return this.currentDrawable;
    }

    public void setIcon(Drawable drawable, boolean z) {
        if (drawable == null) {
            Drawable drawable2 = this.currentDrawable;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            this.currentDrawable = null;
            this.outDrawable = null;
            invalidateSelf();
            return;
        }
        if (getBounds() == null || getBounds().isEmpty()) {
            z = false;
        }
        Drawable drawable3 = this.currentDrawable;
        if (drawable == drawable3) {
            drawable3.setColorFilter(this.colorFilter);
            return;
        }
        this.currentResId = 0;
        if (drawable3 != null) {
            drawable3.setCallback(null);
        }
        this.outDrawable = this.currentDrawable;
        this.currentDrawable = drawable;
        drawable.setCallback(this);
        this.currentDrawable.setColorFilter(this.colorFilter);
        updateBounds(this.currentDrawable, getBounds());
        updateBounds(this.outDrawable, getBounds());
        ValueAnimator valueAnimator = this.animation;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.animation.cancel();
        }
        if (!z) {
            this.progress = 1.0f;
            this.outDrawable = null;
            invalidateSelf();
        } else {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.animation = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ReplaceableIconDrawable$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$setIcon$0(valueAnimator2);
                }
            });
            this.animation.addListener(this);
            this.animation.setDuration(150L);
            this.animation.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setIcon$0(ValueAnimator valueAnimator) {
        this.progress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        updateBounds(this.currentDrawable, rect);
        updateBounds(this.outDrawable, rect);
    }

    private void updateBounds(Drawable drawable, Rect rect) {
        int intrinsicHeight;
        int i;
        int intrinsicWidth;
        int i2;
        if (drawable == null) {
            return;
        }
        if (this.exactlyBounds) {
            drawable.setBounds(rect);
            return;
        }
        if (drawable.getIntrinsicHeight() < 0) {
            i = rect.top;
            intrinsicHeight = rect.bottom;
        } else {
            int iHeight = (rect.height() - drawable.getIntrinsicHeight()) / 2;
            int i3 = rect.top;
            int i4 = i3 + iHeight;
            intrinsicHeight = i3 + iHeight + drawable.getIntrinsicHeight();
            i = i4;
        }
        if (drawable.getIntrinsicWidth() < 0) {
            i2 = rect.left;
            intrinsicWidth = rect.right;
        } else {
            int iWidth = (rect.width() - drawable.getIntrinsicWidth()) / 2;
            int i5 = rect.left;
            int i6 = i5 + iWidth;
            intrinsicWidth = i5 + iWidth + drawable.getIntrinsicWidth();
            i2 = i6;
        }
        drawable.setBounds(i2, i, intrinsicWidth, intrinsicHeight);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int iCenterX = getBounds().centerX();
        int iCenterY = getBounds().centerY();
        if (this.progress != 1.0f && this.currentDrawable != null) {
            canvas.save();
            float f = this.progress;
            canvas.scale(f, f, iCenterX, iCenterY);
            this.currentDrawable.setAlpha((int) (this.progress * 255.0f));
            this.currentDrawable.draw(canvas);
            canvas.restore();
        } else {
            Drawable drawable = this.currentDrawable;
            if (drawable != null) {
                drawable.setAlpha(255);
                this.currentDrawable.draw(canvas);
            }
        }
        float f2 = this.progress;
        if (f2 != 1.0f && this.outDrawable != null) {
            float f3 = 1.0f - f2;
            canvas.save();
            canvas.scale(f3, f3, iCenterX, iCenterY);
            this.outDrawable.setAlpha((int) (f3 * 255.0f));
            this.outDrawable.draw(canvas);
            canvas.restore();
            return;
        }
        Drawable drawable2 = this.outDrawable;
        if (drawable2 != null) {
            drawable2.setAlpha(255);
            this.outDrawable.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.currentDrawable;
        if (drawable != null) {
            drawable.setAlpha(i);
        }
        Drawable drawable2 = this.outDrawable;
        if (drawable2 != null) {
            drawable2.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.colorFilter = colorFilter;
        Drawable drawable = this.currentDrawable;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        Drawable drawable2 = this.outDrawable;
        if (drawable2 != null) {
            drawable2.setColorFilter(colorFilter);
        }
        invalidateSelf();
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.outDrawable = null;
        invalidateSelf();
    }

    public void addView(View view) {
        if (this.parentViews.contains(view)) {
            return;
        }
        this.parentViews.add(view);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        super.invalidateSelf();
        if (this.parentViews != null) {
            for (int i = 0; i < this.parentViews.size(); i++) {
                ((View) this.parentViews.get(i)).invalidate();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
