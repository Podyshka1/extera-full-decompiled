package org.telegram.p029ui.Cells;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.RenderNode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import org.telegram.messenger.BotFullscreenButtons$$ExternalSyntheticApiModelOutline0;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.SharedConfig;
import org.telegram.p029ui.Components.SizeNotifierFrameLayout;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseCell extends ViewGroup implements SizeNotifierFrameLayout.IViewWithInvalidateCallback {
    private boolean cachingBottom;
    private boolean cachingTop;
    private boolean checkingForLongPress;
    private boolean forceNotCacheNextFrame;
    protected Runnable invalidateCallback;
    private CheckForLongPress pendingCheckForLongPress;
    private CheckForTap pendingCheckForTap;
    private int pressCount;
    private RenderNode renderNode;
    protected boolean updatedContent;

    protected boolean allowCaching() {
        return true;
    }

    public int getBoundsLeft() {
        return 0;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    protected boolean onLongPress() {
        return true;
    }

    private final class CheckForTap implements Runnable {
        private CheckForTap() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BaseCell.this.pendingCheckForLongPress == null) {
                BaseCell baseCell = BaseCell.this;
                baseCell.pendingCheckForLongPress = baseCell.new CheckForLongPress();
            }
            CheckForLongPress checkForLongPress = BaseCell.this.pendingCheckForLongPress;
            BaseCell baseCell2 = BaseCell.this;
            int i = baseCell2.pressCount + 1;
            baseCell2.pressCount = i;
            checkForLongPress.currentPressCount = i;
            BaseCell baseCell3 = BaseCell.this;
            baseCell3.postDelayed(baseCell3.pendingCheckForLongPress, ViewConfiguration.getLongPressTimeout() - ViewConfiguration.getTapTimeout());
        }
    }

    class CheckForLongPress implements Runnable {
        public int currentPressCount;

        CheckForLongPress() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BaseCell.this.checkingForLongPress && BaseCell.this.getParent() != null && this.currentPressCount == BaseCell.this.pressCount) {
                BaseCell.this.checkingForLongPress = false;
                if (BaseCell.this.onLongPress()) {
                    try {
                        BaseCell.this.performHapticFeedback(0, 2);
                    } catch (Exception unused) {
                    }
                    MotionEvent motionEventObtain = MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0);
                    BaseCell.this.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                }
            }
        }
    }

    public BaseCell(Context context) {
        super(context);
        this.checkingForLongPress = false;
        this.pendingCheckForLongPress = null;
        this.pressCount = 0;
        this.pendingCheckForTap = null;
        setWillNotDraw(false);
        setFocusable(true);
        setHapticFeedbackEnabled(true);
    }

    public static void setDrawableBounds(Drawable drawable, int i, int i2) {
        setDrawableBounds(drawable, i, i2, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
    }

    public static void setDrawableBounds(Drawable drawable, float f, float f2) {
        setDrawableBounds(drawable, (int) f, (int) f2, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
    }

    public static float setDrawableBounds(Drawable drawable, float f, float f2, float f3) {
        float intrinsicWidth = (drawable.getIntrinsicWidth() * f3) / drawable.getIntrinsicHeight();
        setDrawableBounds(drawable, (int) f, (int) f2, (int) intrinsicWidth, (int) f3);
        return intrinsicWidth;
    }

    public static void setDrawableBounds(Drawable drawable, int i, int i2, int i3, int i4) {
        if (drawable != null) {
            drawable.setBounds(i, i2, i3 + i, i4 + i2);
        }
    }

    public static void setDrawableBounds(Drawable drawable, float f, float f2, int i, int i2) {
        if (drawable != null) {
            int i3 = (int) f;
            int i4 = (int) f2;
            drawable.setBounds(i3, i4, i + i3, i2 + i4);
        }
    }

    protected void startCheckLongPress() {
        if (this.checkingForLongPress) {
            return;
        }
        this.checkingForLongPress = true;
        if (this.pendingCheckForTap == null) {
            this.pendingCheckForTap = new CheckForTap();
        }
        postDelayed(this.pendingCheckForTap, ViewConfiguration.getTapTimeout());
    }

    protected void cancelCheckLongPress() {
        this.checkingForLongPress = false;
        CheckForLongPress checkForLongPress = this.pendingCheckForLongPress;
        if (checkForLongPress != null) {
            removeCallbacks(checkForLongPress);
        }
        CheckForTap checkForTap = this.pendingCheckForTap;
        if (checkForTap != null) {
            removeCallbacks(checkForTap);
        }
    }

    public int getBoundsRight() {
        return getWidth();
    }

    @Override // org.telegram.ui.Components.SizeNotifierFrameLayout.IViewWithInvalidateCallback
    public void listenInvalidate(Runnable runnable) {
        this.invalidateCallback = runnable;
    }

    public void invalidateLite() {
        super.invalidate();
    }

    @Override // android.view.View
    public void invalidate() {
        Runnable runnable = this.invalidateCallback;
        if (runnable != null) {
            runnable.run();
        }
        super.invalidate();
    }

    public void forceNotCacheNextFrame() {
        this.forceNotCacheNextFrame = true;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z = (this.cachingTop || this.cachingBottom || SharedConfig.useNewBlur) && allowCaching();
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            if (z != (this.renderNode != null)) {
                if (z) {
                    RenderNode renderNodeM1129m = BotFullscreenButtons$$ExternalSyntheticApiModelOutline0.m1129m("basecell");
                    this.renderNode = renderNodeM1129m;
                    renderNodeM1129m.setClipToBounds(false);
                    this.updatedContent = true;
                } else {
                    this.renderNode = null;
                }
            }
        }
        if (i >= 29 && this.renderNode != null && !this.forceNotCacheNextFrame && canvas.isHardwareAccelerated()) {
            this.renderNode.setPosition(0, 0, getWidth(), getHeight());
            super.draw(this.renderNode.beginRecording());
            this.renderNode.endRecording();
            canvas.drawRenderNode(this.renderNode);
        } else {
            super.draw(canvas);
        }
        this.forceNotCacheNextFrame = false;
        this.updatedContent = false;
    }

    public static class RippleDrawableSafe extends RippleDrawable {
        public Drawable mask;

        public RippleDrawableSafe(ColorStateList colorStateList, Drawable drawable, Drawable drawable2) {
            super(colorStateList, drawable, drawable2);
            this.mask = drawable2;
        }

        @Override // android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (getCallback() instanceof BaseCell) {
                ((BaseCell) getCallback()).forceNotCacheNextFrame();
            }
            return super.setState(iArr);
        }

        @Override // android.graphics.drawable.RippleDrawable, android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            int iSave = canvas.save();
            try {
                super.draw(canvas);
            } catch (Exception e) {
                FileLog.m1135e("probably forgot to put setCallback", e);
            } finally {
                canvas.restoreToCount(iSave);
            }
        }
    }
}
