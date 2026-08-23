package io.noties.markwon.image;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AsyncDrawable extends Drawable {
    private Drawable.Callback callback;
    private int canvasWidth;
    private final String destination;
    private final ImageSize imageSize;
    private final ImageSizeResolver imageSizeResolver;
    private final AsyncDrawableLoader loader;
    private final Drawable placeholder;
    private Drawable result;
    private float textSize;
    private boolean waitingForDimensions;
    private boolean wasPlayingBefore = false;

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public AsyncDrawable(String str, AsyncDrawableLoader asyncDrawableLoader, ImageSizeResolver imageSizeResolver, ImageSize imageSize) {
        this.destination = str;
        this.loader = asyncDrawableLoader;
        this.imageSizeResolver = imageSizeResolver;
        this.imageSize = imageSize;
        Drawable drawablePlaceholder = asyncDrawableLoader.placeholder(this);
        this.placeholder = drawablePlaceholder;
        if (drawablePlaceholder != null) {
            setPlaceholderResult(drawablePlaceholder);
        }
    }

    public String getDestination() {
        return this.destination;
    }

    public ImageSize getImageSize() {
        return this.imageSize;
    }

    public int getLastKnownCanvasWidth() {
        return this.canvasWidth;
    }

    public float getLastKnowTextSize() {
        return this.textSize;
    }

    public Drawable getResult() {
        return this.result;
    }

    public boolean hasResult() {
        return this.result != null;
    }

    public boolean isAttached() {
        return getCallback() != null;
    }

    public void setCallback2(Drawable.Callback callback) {
        this.callback = callback == null ? null : new WrappedCallback(callback);
        super.setCallback(callback);
        Drawable.Callback callback2 = this.callback;
        Drawable drawable = this.result;
        if (callback2 != null) {
            if (drawable != null && drawable.getCallback() == null) {
                this.result.setCallback(this.callback);
            }
            Drawable drawable2 = this.result;
            boolean z = drawable2 == null || drawable2 == this.placeholder;
            if (drawable2 != null) {
                drawable2.setCallback(this.callback);
                Object obj = this.result;
                if ((obj instanceof Animatable) && this.wasPlayingBefore) {
                    ((Animatable) obj).start();
                }
            }
            if (z) {
                this.loader.load(this);
                return;
            }
            return;
        }
        if (drawable != null) {
            drawable.setCallback(null);
            Object obj2 = this.result;
            if (obj2 instanceof Animatable) {
                Animatable animatable = (Animatable) obj2;
                boolean zIsRunning = animatable.isRunning();
                this.wasPlayingBefore = zIsRunning;
                if (zIsRunning) {
                    animatable.stop();
                }
            }
        }
        this.loader.cancel(this);
    }

    public void setPlaceholderResult(Drawable drawable) {
        Drawable drawable2 = this.result;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        Rect bounds = drawable.getBounds();
        if (bounds.isEmpty()) {
            Rect rectIntrinsicBounds = DrawableUtils.intrinsicBounds(drawable);
            if (rectIntrinsicBounds.isEmpty()) {
                drawable.setBounds(0, 0, 1, 1);
            } else {
                drawable.setBounds(rectIntrinsicBounds);
            }
            setBounds(drawable.getBounds());
            setResult(drawable);
            return;
        }
        this.result = drawable;
        drawable.setCallback(this.callback);
        setBounds(bounds);
        this.waitingForDimensions = false;
    }

    public void setResult(Drawable drawable) {
        this.wasPlayingBefore = false;
        Drawable drawable2 = this.result;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.result = drawable;
        initBounds();
    }

    private void initBounds() {
        if (this.canvasWidth == 0) {
            this.waitingForDimensions = true;
            setBounds(noDimensionsBounds(this.result));
            return;
        }
        this.waitingForDimensions = false;
        Rect rectResolveBounds = resolveBounds();
        this.result.setBounds(rectResolveBounds);
        this.result.setCallback(this.callback);
        setBounds(rectResolveBounds);
        invalidateSelf();
    }

    private static Rect noDimensionsBounds(Drawable drawable) {
        if (drawable != null) {
            Rect bounds = drawable.getBounds();
            if (!bounds.isEmpty()) {
                return bounds;
            }
            Rect rectIntrinsicBounds = DrawableUtils.intrinsicBounds(drawable);
            if (!rectIntrinsicBounds.isEmpty()) {
                return rectIntrinsicBounds;
            }
        }
        return new Rect(0, 0, 1, 1);
    }

    public void initWithKnownDimensions(int i, float f) {
        this.canvasWidth = i;
        this.textSize = f;
        if (this.waitingForDimensions) {
            initBounds();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (hasResult()) {
            this.result.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (hasResult()) {
            return this.result.getOpacity();
        }
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (hasResult()) {
            return this.result.getIntrinsicWidth();
        }
        return 1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (hasResult()) {
            return this.result.getIntrinsicHeight();
        }
        return 1;
    }

    private Rect resolveBounds() {
        return this.imageSizeResolver.resolveImageSize(this);
    }

    public String toString() {
        return "AsyncDrawable{destination='" + this.destination + "', imageSize=" + this.imageSize + ", result=" + this.result + ", canvasWidth=" + this.canvasWidth + ", textSize=" + this.textSize + ", waitingForDimensions=" + this.waitingForDimensions + '}';
    }

    public class WrappedCallback implements Drawable.Callback {
        private final Drawable.Callback callback;

        public WrappedCallback(Drawable.Callback callback) {
            this.callback = callback;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            this.callback.invalidateDrawable(AsyncDrawable.this);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            this.callback.scheduleDrawable(AsyncDrawable.this, runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            this.callback.unscheduleDrawable(AsyncDrawable.this, runnable);
        }
    }
}
