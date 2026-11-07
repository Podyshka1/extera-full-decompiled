package org.telegram.ui.Components.ListView;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.view.View;
import org.telegram.ui.Components.RecyclerListView;

/* JADX INFO: loaded from: classes7.dex */
public abstract class RecyclerListViewWithOverlayDraw extends RecyclerListView {
    boolean invalidated;

    public interface OverlayView {
        float getX();

        float getY();

        void preDraw(View view, Canvas canvas);
    }

    public RecyclerListViewWithOverlayDraw(Context context) {
        super(context);
    }

    @Override // org.telegram.ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        this.invalidated = false;
        for (int i = 0; i < getChildCount(); i++) {
            if (getChildAt(i) instanceof OverlayView) {
                OverlayView overlayView = (OverlayView) getChildAt(i);
                canvas.save();
                canvas.translate(overlayView.getX(), overlayView.getY());
                overlayView.preDraw(this, canvas);
                canvas.restore();
            }
        }
        super.dispatchDraw(canvas);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.telegram.ui.Components.RecyclerListView
    public void captureChildren(Canvas canvas, RectF rectF, long j) {
        super.captureChildren(canvas, rectF, j);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof OverlayView) {
                float x = childAt.getX();
                float y = childAt.getY();
                if (rectF.intersects(x, y, childAt.getWidth() + x, childAt.getHeight() + y)) {
                    canvas.save();
                    canvas.translate(x, y);
                    ((OverlayView) childAt).preDraw(this, canvas);
                    canvas.restore();
                }
            }
        }
    }

    @Override // android.view.View
    public void invalidate() {
        if (this.invalidated) {
            return;
        }
        super.invalidate();
        this.invalidated = true;
    }
}
