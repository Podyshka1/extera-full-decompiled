package com.exteragram.messenger.utils.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.exteragram.messenger.ExteraConfig;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.CubicBezierInterpolator;

/* JADX INFO: loaded from: classes4.dex */
public final class TabletSplitUiHelper {
    private final Callback callback;
    private final ViewGroup container;
    private int contentWidth;
    private int defaultWidth;
    private int dragWidth;
    private boolean dragging;
    private final HandleView handleView;
    private int insetLeft;
    private int leftWidth;
    private int rawWidth;
    private PointerIcon resizeIcon;
    private ValueAnimator snapAnimator;
    private float snapProgress;
    private boolean snapped;
    private int startWidth;
    private float startX;
    private float startY;
    private final int touchSlop;
    private boolean tracking;

    public interface Callback {
        boolean canResize();

        void onResized();
    }

    public static int getRightPaneStart(int i, int i2, int i3) {
        return i2 + getLeftWidth((i - i2) - i3, ExteraConfig.getTabletLeftFraction()) + AndroidUtilities.dp(12.0f);
    }

    private static int getLeftWidth(int i, float f) {
        int iDp = AndroidUtilities.dp(320.0f);
        float f2 = i;
        return Utilities.clamp(Math.round(f2 * f), Math.max(iDp, Math.min((int) (0.6f * f2), (i - AndroidUtilities.dp(12.0f)) - AndroidUtilities.dp(360.0f))), iDp);
    }

    public TabletSplitUiHelper(ViewGroup viewGroup, Callback callback) {
        this.container = viewGroup;
        this.callback = callback;
        this.handleView = new HandleView(viewGroup.getContext());
        this.touchSlop = ViewConfiguration.get(viewGroup.getContext()).getScaledTouchSlop();
    }

    public View getHandleView() {
        return this.handleView;
    }

    public void update(int i, int i2, int i3) {
        this.insetLeft = i2;
        int i4 = (i - i2) - i3;
        this.contentWidth = i4;
        this.leftWidth = i2 + (this.dragging ? this.dragWidth : getLeftWidth(i4, ExteraConfig.getTabletLeftFraction()));
    }

    public int getLeftPaneWidth() {
        return this.leftWidth;
    }

    public int getRightPaneStart() {
        return this.leftWidth + AndroidUtilities.dp(12.0f);
    }

    public void measureHandle(int i) {
        this.handleView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(12.0f) + (AndroidUtilities.dp(16.0f) * 2), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(i, TLObject.FLAG_30));
    }

    public void layoutHandle() {
        int iDp = this.leftWidth - AndroidUtilities.dp(16.0f);
        HandleView handleView = this.handleView;
        handleView.layout(iDp, 0, handleView.getMeasuredWidth() + iDp, this.handleView.getMeasuredHeight());
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return handleTouch(motionEvent, true);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return handleTouch(motionEvent, false);
    }

    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent) {
        if (!this.dragging && !isOverHandle(motionEvent.getX())) {
            return null;
        }
        if (this.resizeIcon == null) {
            this.resizeIcon = PointerIcon.getSystemIcon(this.container.getContext(), 1014);
        }
        return this.resizeIcon;
    }

    private boolean isOverHandle(float f) {
        return this.handleView.getVisibility() == 0 && this.contentWidth > 0 && Math.abs((f - ((float) this.leftWidth)) - (((float) AndroidUtilities.dp(12.0f)) / 2.0f)) <= ((float) AndroidUtilities.dp(14.0f)) && this.callback.canResize();
    }

    private boolean handleTouch(MotionEvent motionEvent, boolean z) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.dragging = false;
            this.tracking = isOverHandle(motionEvent.getX());
            this.startX = motionEvent.getX();
            this.startY = motionEvent.getY();
            return this.tracking && !z;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                if (!this.tracking) {
                    return false;
                }
                if (!this.dragging) {
                    float x = motionEvent.getX() - this.startX;
                    float y = motionEvent.getY() - this.startY;
                    if (Math.abs(y) > this.touchSlop && Math.abs(y) > Math.abs(x)) {
                        this.tracking = false;
                        return false;
                    }
                    if (Math.abs(x) <= this.touchSlop) {
                        return !z;
                    }
                    startDrag(motionEvent.getX());
                }
                updateDrag(motionEvent.getX());
                return true;
            }
            if (actionMasked != 3) {
                return false;
            }
        }
        boolean z2 = this.dragging;
        this.tracking = false;
        if (z2) {
            finishDrag();
        }
        return z2;
    }

    private void startDrag(float f) {
        this.dragging = true;
        this.startX = f;
        int i = this.leftWidth - this.insetLeft;
        this.startWidth = i;
        this.rawWidth = i;
        this.dragWidth = i;
        int leftWidth = getLeftWidth(this.contentWidth, 0.35f);
        this.defaultWidth = leftWidth;
        boolean z = this.startWidth == leftWidth;
        this.snapped = z;
        this.snapProgress = z ? 1.0f : 0.0f;
        ViewParent parent = this.container.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        this.handleView.invalidate();
    }

    private void updateDrag(float f) {
        int i = this.contentWidth;
        int leftWidth = getLeftWidth(i, ((this.startWidth + f) - this.startX) / i);
        this.rawWidth = leftWidth;
        int iAbs = Math.abs(leftWidth - this.defaultWidth);
        boolean z = false;
        if (!this.snapped ? iAbs < AndroidUtilities.dp(12.0f) : iAbs < AndroidUtilities.dp(32.0f)) {
            z = true;
        }
        if (z != this.snapped) {
            this.snapped = z;
            if (z) {
                AndroidUtilities.vibrateCursor(this.handleView);
            }
            animateSnap(z);
        }
        applyDragWidth();
    }

    private void animateSnap(boolean z) {
        ValueAnimator valueAnimator = this.snapAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.snapProgress, z ? 1.0f : 0.0f);
        this.snapAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.exteragram.messenger.utils.ui.TabletSplitUiHelper$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$animateSnap$0(valueAnimator2);
            }
        });
        this.snapAnimator.setDuration(220L);
        this.snapAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.snapAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateSnap$0(ValueAnimator valueAnimator) {
        this.snapProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        applyDragWidth();
    }

    private void applyDragWidth() {
        int iLerp;
        if (this.dragging && (iLerp = AndroidUtilities.lerp(this.rawWidth, this.defaultWidth, this.snapProgress)) != this.dragWidth) {
            this.dragWidth = iLerp;
            this.container.requestLayout();
        }
    }

    private void finishDrag() {
        ValueAnimator valueAnimator = this.snapAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.snapAnimator = null;
        }
        boolean z = this.snapped;
        if (z) {
            this.dragWidth = this.defaultWidth;
        }
        this.dragging = false;
        int i = this.dragWidth;
        boolean z2 = i != this.startWidth;
        if (z2) {
            ExteraConfig.setTabletLeftFraction(z ? 0.35f : i / this.contentWidth);
        }
        this.container.requestLayout();
        this.handleView.invalidate();
        if (z2) {
            this.callback.onResized();
        }
    }

    public final class HandleView extends View {
        private final AnimatedFloat activeProgress;
        private final Path circlePath;
        private final Path cornerPath;
        private final Path gutterPath;
        private final Paint paint;

        public HandleView(Context context) {
            super(context);
            this.paint = new Paint(1);
            this.gutterPath = new Path();
            this.cornerPath = new Path();
            this.circlePath = new Path();
            this.activeProgress = new AnimatedFloat(this, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
        }

        @Override // android.view.View
        public void onSizeChanged(int i, int i2, int i3, int i4) {
            super.onSizeChanged(i, i2, i3, i4);
            float fDp = AndroidUtilities.dp(16.0f);
            float f = i - fDp;
            this.gutterPath.rewind();
            float f2 = i2;
            this.gutterPath.addRect(fDp, 0.0f, f, f2, Path.Direction.CW);
            float f3 = fDp - fDp;
            addCorner(fDp, 0.0f, f3, fDp);
            float f4 = f2 - fDp;
            addCorner(fDp, f2, f3, f4);
            float f5 = f + fDp;
            addCorner(f, 0.0f, f5, fDp);
            addCorner(f, f2, f5, f4);
        }

        private void addCorner(float f, float f2, float f3, float f4) {
            float fDp = AndroidUtilities.dp(16.0f);
            this.cornerPath.rewind();
            Path path = this.cornerPath;
            float fMin = Math.min(f, f3);
            float fMin2 = Math.min(f2, f4);
            float fMax = Math.max(f, f3);
            float fMax2 = Math.max(f2, f4);
            Path.Direction direction = Path.Direction.CW;
            path.addRect(fMin, fMin2, fMax, fMax2, direction);
            this.circlePath.rewind();
            this.circlePath.addCircle(f3, f4, fDp, direction);
            this.cornerPath.op(this.circlePath, Path.Op.DIFFERENCE);
            this.gutterPath.op(this.cornerPath, Path.Op.UNION);
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            float f = this.activeProgress.set(TabletSplitUiHelper.this.dragging);
            float fLerp = AndroidUtilities.lerp(AndroidUtilities.dpf2(4.0f), AndroidUtilities.dpf2(6.0f), f);
            float fLerp2 = AndroidUtilities.lerp(AndroidUtilities.dpf2(36.0f), AndroidUtilities.dpf2(72.0f), f);
            float width = getWidth() / 2.0f;
            float height = getHeight() / 2.0f;
            this.paint.setColor(Theme.getColor(Theme.key_windowBackgroundGray));
            canvas.drawPath(this.gutterPath, this.paint);
            this.paint.setColor(Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), AndroidUtilities.lerp(0.5f, 1.0f, f)));
            RectF rectF = AndroidUtilities.rectTmp;
            float f2 = fLerp / 2.0f;
            float f3 = fLerp2 / 2.0f;
            rectF.set(width - f2, height - f3, width + f2, height + f3);
            canvas.drawRoundRect(rectF, f2, f2, this.paint);
        }
    }
}
