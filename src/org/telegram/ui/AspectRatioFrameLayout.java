package org.telegram.ui;

import android.content.Context;
import android.graphics.Matrix;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes6.dex */
public class AspectRatioFrameLayout extends FrameLayout {
    private final AspectRatioUpdateDispatcher aspectRatioUpdateDispatcher;
    private boolean drawingReady;
    private Matrix matrix;
    private int resizeMode;
    private int rotation;
    private float videoAspectRatio;

    public interface AspectRatioListener {
    }

    /* JADX INFO: renamed from: -$$Nest$fgetaspectRatioListener, reason: not valid java name */
    public static /* bridge */ /* synthetic */ AspectRatioListener m7830$$Nest$fgetaspectRatioListener(AspectRatioFrameLayout aspectRatioFrameLayout) {
        aspectRatioFrameLayout.getClass();
        return null;
    }

    public void setAspectRatioListener(AspectRatioListener aspectRatioListener) {
    }

    public AspectRatioFrameLayout(Context context) {
        super(context);
        this.matrix = new Matrix();
        this.resizeMode = 0;
        this.aspectRatioUpdateDispatcher = new AspectRatioUpdateDispatcher();
    }

    public void setAspectRatio(float f, int i) {
        if (this.videoAspectRatio != f) {
            this.videoAspectRatio = f;
            this.rotation = i;
            requestLayout();
        }
    }

    public int getResizeMode() {
        return this.resizeMode;
    }

    public void setResizeMode(int i) {
        if (this.resizeMode != i) {
            this.resizeMode = i;
            requestLayout();
        }
    }

    public void setDrawingReady(boolean z) {
        if (this.drawingReady == z) {
            return;
        }
        this.drawingReady = z;
    }

    public float getAspectRatio() {
        return this.videoAspectRatio;
    }

    public int getVideoRotation() {
        return this.rotation;
    }

    public boolean isDrawingReady() {
        return this.drawingReady;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0047, code lost:
    
        if (r4 > 0.0f) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0049, code lost:
    
        r2 = r2 * r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004c, code lost:
    
        r1 = r1 / r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0053, code lost:
    
        if (r4 <= 0.0f) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0062, code lost:
    
        if (r4 > 0.0f) goto L22;
     */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i, int i2) {
        float f;
        super.onMeasure(i, i2);
        if (this.videoAspectRatio <= 0.0f) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f2 = measuredWidth;
        float f3 = measuredHeight;
        float f4 = f2 / f3;
        float f5 = (this.videoAspectRatio / f4) - 1.0f;
        if (Math.abs(f5) <= 0.01f) {
            this.aspectRatioUpdateDispatcher.scheduleUpdate(this.videoAspectRatio, f4, false);
            return;
        }
        int i3 = this.resizeMode;
        if (i3 == 0) {
            f = this.videoAspectRatio;
        } else if (i3 == 1) {
            float f6 = f2 / this.videoAspectRatio;
            measuredHeight = (int) f6;
        } else if (i3 == 2) {
            float f7 = f3 * this.videoAspectRatio;
            measuredWidth = (int) f7;
        } else if (i3 == 3) {
            f = this.videoAspectRatio;
        } else if (i3 == 4) {
            f = this.videoAspectRatio;
        }
        this.aspectRatioUpdateDispatcher.scheduleUpdate(this.videoAspectRatio, f4, true);
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(measuredHeight, TLObject.FLAG_30));
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt instanceof TextureView) {
                this.matrix.reset();
                float width = getWidth() / 2;
                float height = getHeight() / 2;
                this.matrix.postRotate(this.rotation, width, height);
                int i5 = this.rotation;
                if (i5 == 90 || i5 == 270) {
                    float height2 = getHeight() / getWidth();
                    this.matrix.postScale(1.0f / height2, height2, width, height);
                }
                ((TextureView) childAt).setTransform(this.matrix);
                return;
            }
        }
    }

    public final class AspectRatioUpdateDispatcher implements Runnable {
        private boolean aspectRatioMismatch;
        private boolean isScheduled;
        private float naturalAspectRatio;
        private float targetAspectRatio;

        private AspectRatioUpdateDispatcher() {
        }

        public void scheduleUpdate(float f, float f2, boolean z) {
            this.targetAspectRatio = f;
            this.naturalAspectRatio = f2;
            this.aspectRatioMismatch = z;
            if (this.isScheduled) {
                return;
            }
            this.isScheduled = true;
            AspectRatioFrameLayout.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.isScheduled = false;
            AspectRatioFrameLayout.m7830$$Nest$fgetaspectRatioListener(AspectRatioFrameLayout.this);
        }
    }
}
