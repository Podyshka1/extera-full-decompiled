package com.google.android.material.loadingindicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import com.google.android.material.C1349R;
import com.google.android.material.progressindicator.AnimatorDurationScaleProvider;

/* JADX INFO: loaded from: classes.dex */
public final class LoadingIndicatorDrawable extends Drawable implements Drawable.Callback {
    int alpha;
    private LoadingIndicatorAnimatorDelegate animatorDelegate;
    private final Context context;
    private LoadingIndicatorDrawingDelegate drawingDelegate;
    private final LoadingIndicatorSpec specs;
    private Drawable staticDummyDrawable;
    AnimatorDurationScaleProvider animatorDurationScaleProvider = new AnimatorDurationScaleProvider();
    Paint paint = new Paint();

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public static LoadingIndicatorDrawable create(Context context, LoadingIndicatorSpec loadingIndicatorSpec) {
        LoadingIndicatorDrawable loadingIndicatorDrawable = new LoadingIndicatorDrawable(context, loadingIndicatorSpec, new LoadingIndicatorDrawingDelegate(loadingIndicatorSpec), new LoadingIndicatorAnimatorDelegate(loadingIndicatorSpec));
        loadingIndicatorDrawable.setStaticDummyDrawable(VectorDrawableCompat.create(context.getResources(), C1349R.drawable.ic_mtrl_arrow_circle, null));
        return loadingIndicatorDrawable;
    }

    LoadingIndicatorDrawable(Context context, LoadingIndicatorSpec loadingIndicatorSpec, LoadingIndicatorDrawingDelegate loadingIndicatorDrawingDelegate, LoadingIndicatorAnimatorDelegate loadingIndicatorAnimatorDelegate) {
        this.context = context;
        this.specs = loadingIndicatorSpec;
        this.drawingDelegate = loadingIndicatorDrawingDelegate;
        this.animatorDelegate = loadingIndicatorAnimatorDelegate;
        loadingIndicatorAnimatorDelegate.registerDrawable(this);
        setAlpha(255);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.drawingDelegate.getPreferredWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.drawingDelegate.getPreferredHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable;
        Rect rect = new Rect();
        Rect bounds = getBounds();
        if (!bounds.isEmpty() && isVisible() && canvas.getClipBounds(rect)) {
            if (isSystemAnimatorDisabled() && (drawable = this.staticDummyDrawable) != null) {
                drawable.setBounds(bounds);
                this.staticDummyDrawable.setTint(this.specs.indicatorColors[0]);
                this.staticDummyDrawable.draw(canvas);
            } else {
                canvas.save();
                this.drawingDelegate.adjustCanvas(canvas, bounds);
                this.drawingDelegate.drawContainer(canvas, this.paint, this.specs.containerColor, getAlpha());
                this.drawingDelegate.drawIndicator(canvas, this.paint, this.animatorDelegate.indicatorState, getAlpha());
                canvas.restore();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return setVisible(z, z2, z);
    }

    public boolean setVisible(boolean z, boolean z2, boolean z3) {
        boolean visible = super.setVisible(z, z2);
        this.animatorDelegate.cancelAnimatorImmediately();
        if (z && z3 && !isSystemAnimatorDisabled()) {
            this.animatorDelegate.startAnimator();
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.alpha != i) {
            this.alpha = i;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.alpha;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    private boolean isSystemAnimatorDisabled() {
        AnimatorDurationScaleProvider animatorDurationScaleProvider = this.animatorDurationScaleProvider;
        return animatorDurationScaleProvider != null && animatorDurationScaleProvider.getSystemAnimatorDurationScale(this.context.getContentResolver()) == 0.0f;
    }

    public Drawable getStaticDummyDrawable() {
        return this.staticDummyDrawable;
    }

    public void setStaticDummyDrawable(Drawable drawable) {
        this.staticDummyDrawable = drawable;
    }

    LoadingIndicatorAnimatorDelegate getAnimatorDelegate() {
        return this.animatorDelegate;
    }

    void setAnimatorDelegate(LoadingIndicatorAnimatorDelegate loadingIndicatorAnimatorDelegate) {
        this.animatorDelegate = loadingIndicatorAnimatorDelegate;
        loadingIndicatorAnimatorDelegate.registerDrawable(this);
    }

    LoadingIndicatorDrawingDelegate getDrawingDelegate() {
        return this.drawingDelegate;
    }

    void setDrawingDelegate(LoadingIndicatorDrawingDelegate loadingIndicatorDrawingDelegate) {
        this.drawingDelegate = loadingIndicatorDrawingDelegate;
    }
}
