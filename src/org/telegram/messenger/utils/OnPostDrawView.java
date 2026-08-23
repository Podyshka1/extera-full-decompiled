package org.telegram.messenger.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import org.telegram.ui.Components.LayoutHelper;

/* JADX INFO: loaded from: classes5.dex */
@SuppressLint({"ViewConstructor"})
public class OnPostDrawView extends View implements ViewTreeObserver.OnPreDrawListener {
    private final InvalidateCallback callback;
    private int invalidateFlags;
    private ViewTreeObserver observer;
    private final boolean onPreDrawMode;

    public interface InvalidateCallback {
        void onPostDraw(int i);
    }

    public void invalidate(int i) {
        if (this.invalidateFlags == 0) {
            invalidate();
        }
        this.invalidateFlags = i | this.invalidateFlags;
    }

    public OnPostDrawView(Context context, boolean z, InvalidateCallback invalidateCallback) {
        super(context);
        this.invalidateFlags = 0;
        this.callback = invalidateCallback;
        this.onPreDrawMode = z;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(LayoutHelper.measureSpecExactly(1), LayoutHelper.measureSpecExactly(1));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.onPreDrawMode) {
            return;
        }
        this.callback.onPostDraw(this.invalidateFlags);
        this.invalidateFlags = 0;
    }

    public void bringToFrontIfNeeded() {
        ViewGroup viewGroup;
        int iIndexOfChild;
        ViewParent parent = getParent();
        if (!(parent instanceof ViewGroup) || (iIndexOfChild = (viewGroup = (ViewGroup) parent).indexOfChild(this)) < 0 || iIndexOfChild == viewGroup.getChildCount() - 1) {
            return;
        }
        viewGroup.bringChildToFront(this);
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.onPreDrawMode) {
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            this.observer = viewTreeObserver;
            viewTreeObserver.addOnPreDrawListener(this);
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewTreeObserver viewTreeObserver = this.observer;
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            this.observer.removeOnPreDrawListener(this);
        }
        this.observer = null;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        int i;
        if (!this.onPreDrawMode || (i = this.invalidateFlags) == 0) {
            return true;
        }
        this.callback.onPostDraw(i);
        this.invalidateFlags = 0;
        return true;
    }
}
