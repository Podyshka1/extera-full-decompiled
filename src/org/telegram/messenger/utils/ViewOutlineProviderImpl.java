package org.telegram.messenger.utils;

import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.view.View;
import android.view.ViewOutlineProvider;
import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes.dex */
public abstract class ViewOutlineProviderImpl {
    public static final ViewOutlineProvider BOUNDS_OVAL = new ViewOutlineProvider() { // from class: org.telegram.messenger.utils.ViewOutlineProviderImpl.1
        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setOval(0, 0, view.getWidth(), view.getHeight());
        }
    };
    public static final ViewOutlineProvider BOUNDS_ROUND_RECT = new ViewOutlineProvider() { // from class: org.telegram.messenger.utils.ViewOutlineProviderImpl.2
        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), Math.min(view.getWidth(), view.getHeight()) / 2.0f);
        }
    };
    private static Outline drawClipOutline;
    private static Path drawClipPath;
    private static Rect drawClipRect;

    public static ViewOutlineProvider fromDrawable(final Drawable drawable) {
        return new ViewOutlineProvider() { // from class: org.telegram.messenger.utils.ViewOutlineProviderImpl.3
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                drawable.getOutline(outline);
            }
        };
    }

    public static ViewOutlineProvider boundsWithRoundRect(float f) {
        return boundsWithPaddingRoundRect(0, f);
    }

    public static ViewOutlineProvider boundsWithPaddingFromViewAndRoundRect(final float f) {
        return new ViewOutlineProvider() { // from class: org.telegram.messenger.utils.ViewOutlineProviderImpl.4
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(view.getPaddingLeft(), view.getPaddingTop(), view.getMeasuredWidth() - view.getPaddingRight(), view.getMeasuredHeight() - view.getPaddingBottom(), f);
            }
        };
    }

    public static ViewOutlineProvider boundsWithPaddingRoundRect(final int i, final float f) {
        return new ViewOutlineProvider() { // from class: org.telegram.messenger.utils.ViewOutlineProviderImpl.5
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                int i2 = i;
                outline.setRoundRect(i2, i2, view.getWidth() - i, view.getHeight() - i, f);
            }
        };
    }

    public static void drawViewWithOutline(Canvas canvas, View view, Utilities.Callback<Canvas> callback) {
        Path path;
        Outline outline;
        Rect rect;
        if (canvas == null || view == null) {
            return;
        }
        ViewOutlineProvider outlineProvider = view.getOutlineProvider();
        if (canvas.isHardwareAccelerated() || !view.getClipToOutline() || outlineProvider == null) {
            callback.run(canvas);
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (drawClipPath == null) {
                drawClipPath = new Path();
                drawClipOutline = new Outline();
                drawClipRect = new Rect();
            }
            path = drawClipPath;
            outline = drawClipOutline;
            rect = drawClipRect;
            outline.setEmpty();
            rect.setEmpty();
        } else {
            path = new Path();
            outline = new Outline();
            rect = new Rect();
        }
        outlineProvider.getOutline(view, outline);
        if (!outlineToPath(outline, rect, path)) {
            callback.run(canvas);
            return;
        }
        int iSave = canvas.save();
        canvas.clipPath(path);
        callback.run(canvas);
        canvas.restoreToCount(iSave);
    }

    private static boolean outlineToPath(Outline outline, Rect rect, Path path) {
        path.rewind();
        if (outline.isEmpty() || !outline.getRect(rect)) {
            return false;
        }
        float radius = outline.getRadius();
        if (radius > 0.0f) {
            path.addRoundRect(rect.left, rect.top, rect.right, rect.bottom, radius, radius, Path.Direction.CW);
            return true;
        }
        path.addRect(rect.left, rect.top, rect.right, rect.bottom, Path.Direction.CW);
        return true;
    }
}
