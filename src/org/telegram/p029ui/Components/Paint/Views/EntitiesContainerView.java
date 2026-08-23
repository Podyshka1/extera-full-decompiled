package org.telegram.p029ui.Components.Paint.Views;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.zxing.common.detector.MathUtils;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes7.dex */
public abstract class EntitiesContainerView extends FrameLayout {
    private boolean cancelled;
    private EntitiesContainerViewDelegate delegate;
    public boolean drawForThumb;
    private boolean hasTransformed;
    private float previousScale;

    /* JADX INFO: renamed from: px */
    private float f1991px;

    /* JADX INFO: renamed from: py */
    private float f1992py;

    public interface EntitiesContainerViewDelegate {
        void onEntityDeselect();

        EntityView onSelectedEntityRequest();
    }

    public EntitiesContainerView(Context context, EntitiesContainerViewDelegate entitiesContainerViewDelegate) {
        super(context);
        this.previousScale = 1.0f;
        this.delegate = entitiesContainerViewDelegate;
    }

    public int entitiesCount() {
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) instanceof EntityView) {
                i++;
            }
        }
        return i;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        EntitiesContainerViewDelegate entitiesContainerViewDelegate;
        EntityView entityViewOnSelectedEntityRequest = this.delegate.onSelectedEntityRequest();
        if (entityViewOnSelectedEntityRequest == null) {
            return false;
        }
        if (motionEvent.getPointerCount() == 1) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.hasTransformed = false;
                entityViewOnSelectedEntityRequest.hasPanned = false;
                entityViewOnSelectedEntityRequest.hasReleased = false;
                this.f1991px = motionEvent.getX();
                this.f1992py = motionEvent.getY();
                this.cancelled = false;
            } else if (!this.cancelled && actionMasked == 2) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (this.hasTransformed || MathUtils.distance(x, y, this.f1991px, this.f1992py) > AndroidUtilities.touchSlop) {
                    this.hasTransformed = true;
                    entityViewOnSelectedEntityRequest.hasPanned = true;
                    entityViewOnSelectedEntityRequest.pan(x - this.f1991px, y - this.f1992py);
                    this.f1991px = x;
                    this.f1992py = y;
                }
            } else if (actionMasked == 1 || actionMasked == 3) {
                entityViewOnSelectedEntityRequest.hasPanned = false;
                entityViewOnSelectedEntityRequest.hasReleased = true;
                if (!this.hasTransformed && (entitiesContainerViewDelegate = this.delegate) != null) {
                    entitiesContainerViewDelegate.onEntityDeselect();
                }
                invalidate();
                return false;
            }
        } else {
            entityViewOnSelectedEntityRequest.hasPanned = false;
            entityViewOnSelectedEntityRequest.hasReleased = true;
            this.hasTransformed = false;
            this.cancelled = true;
            invalidate();
        }
        return true;
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        if (view instanceof TextPaintView) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
        } else {
            super.measureChildWithMargins(view, i, i2, i3, i4);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (this.drawForThumb && (view instanceof ReactionWidgetEntityView)) {
            return true;
        }
        return super.drawChild(canvas, view, j);
    }
}
