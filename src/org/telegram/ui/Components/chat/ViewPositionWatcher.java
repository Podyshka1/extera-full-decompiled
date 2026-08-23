package org.telegram.ui.Components.chat;

import android.graphics.PointF;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class ViewPositionWatcher implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
    private static final int[] tmpCords = new int[2];
    private static RectF tmpRectF2 = new RectF();
    private final View anchorView;
    private boolean listening;
    private ViewTreeObserver vto;
    private final WeakHashMap<View, List<Tracked>> tracked = new WeakHashMap<>();
    private final RectF tmpRect = new RectF();

    public interface OnChangedListener {
        void onPositionChanged(View view, RectF rectF);
    }

    public static final class Tracked {
        boolean everAttached;
        boolean hasLast;
        final RectF last = new RectF();
        final OnChangedListener listener;
        boolean multiwindow;
        final ViewGroup parent;

        public Tracked(ViewGroup viewGroup, OnChangedListener onChangedListener) {
            this.parent = viewGroup;
            this.listener = onChangedListener;
        }
    }

    public ViewPositionWatcher(View view) {
        this.anchorView = view;
        view.addOnAttachStateChangeListener(this);
        attachIfPossible();
    }

    public void subscribe(View view, ViewGroup viewGroup, OnChangedListener onChangedListener) {
        subscribe(view, viewGroup, onChangedListener, false);
    }

    public void subscribe(View view, ViewGroup viewGroup, OnChangedListener onChangedListener, boolean z) {
        Tracked tracked = new Tracked(viewGroup, onChangedListener);
        tracked.multiwindow = z;
        List<Tracked> arrayList = this.tracked.get(view);
        if (arrayList == null) {
            arrayList = new ArrayList<>(1);
            this.tracked.put(view, arrayList);
        }
        arrayList.add(tracked);
        if (computeRectInParent(view, viewGroup, this.tmpRect)) {
            tracked.last.set(this.tmpRect);
            tracked.hasLast = true;
        }
        ensureListening();
        if (z) {
            view.getViewTreeObserver().addOnPreDrawListener(this);
        }
    }

    public void shutdown() {
        detachIfListening();
        this.anchorView.removeOnAttachStateChangeListener(this);
        this.tracked.clear();
    }

    private void attachIfPossible() {
        ViewTreeObserver viewTreeObserver;
        if (this.anchorView.isAttachedToWindow() && (viewTreeObserver = this.anchorView.getViewTreeObserver()) != null && viewTreeObserver.isAlive()) {
            this.vto = viewTreeObserver;
            if (this.listening) {
                return;
            }
            viewTreeObserver.addOnPreDrawListener(this);
            this.listening = true;
        }
    }

    private void ensureListening() {
        if (this.listening) {
            return;
        }
        attachIfPossible();
    }

    private void detachIfListening() {
        ViewTreeObserver viewTreeObserver;
        if (this.listening && (viewTreeObserver = this.vto) != null && viewTreeObserver.isAlive()) {
            this.vto.removeOnPreDrawListener(this);
        }
        this.listening = false;
        this.vto = null;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        attachIfPossible();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        if (view == this.anchorView) {
            detachIfListening();
        }
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        if (this.anchorView.getViewTreeObserver() != this.vto) {
            detachIfListening();
            attachIfPossible();
        }
        if (this.tracked.isEmpty()) {
            detachIfListening();
            return true;
        }
        Iterator<Map.Entry<View, List<Tracked>>> it = this.tracked.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<View, List<Tracked>> next = it.next();
            View key = next.getKey();
            List<Tracked> value = next.getValue();
            if (key == null || value == null || value.isEmpty()) {
                it.remove();
            } else {
                int i = 0;
                if (key.isAttachedToWindow()) {
                    for (int size = value.size() - 1; size >= 0; size--) {
                        Tracked tracked = value.get(size);
                        tracked.everAttached = true;
                        if (tracked.multiwindow) {
                            int[] iArr = tmpCords;
                            key.getLocationOnScreen(iArr);
                            this.tmpRect.set(iArr[0], iArr[1], r9 + key.getWidth(), iArr[1] + key.getHeight());
                            tracked.parent.getLocationOnScreen(iArr);
                            this.tmpRect.offset(-iArr[0], -iArr[1]);
                        } else {
                            if (!tracked.parent.isAttachedToWindow() || !computeRectInParent(key, tracked.parent, this.tmpRect)) {
                                value.remove(size);
                            }
                        }
                        if (!tracked.hasLast || !this.tmpRect.equals(tracked.last)) {
                            tracked.last.set(this.tmpRect);
                            tracked.hasLast = true;
                            try {
                                tracked.listener.onPositionChanged(key, new RectF(this.tmpRect));
                            } catch (Throwable unused) {
                            }
                        }
                    }
                    if (value.isEmpty()) {
                        it.remove();
                    }
                } else {
                    while (true) {
                        if (i >= value.size()) {
                            break;
                        }
                        if (value.get(i).everAttached) {
                            it.remove();
                            break;
                        }
                        i++;
                    }
                }
            }
        }
        if (this.tracked.isEmpty()) {
            detachIfListening();
        }
        return true;
    }

    public static float computeYCoordinateInParent(View view, ViewGroup viewGroup) {
        computeRectInParent(view, viewGroup, tmpRectF2);
        return tmpRectF2.top;
    }

    public static float computeXCoordinateInParent(View view, ViewGroup viewGroup) {
        computeRectInParent(view, viewGroup, tmpRectF2);
        return tmpRectF2.left;
    }

    public static boolean computeCoordinatesInParent(View view, ViewGroup viewGroup, PointF pointF) {
        boolean zComputeRectInParent = computeRectInParent(view, viewGroup, tmpRectF2);
        if (zComputeRectInParent) {
            RectF rectF = tmpRectF2;
            pointF.x = rectF.left;
            pointF.y = rectF.top;
        }
        return zComputeRectInParent;
    }

    public static boolean computeRectInParent(View view, View view2, RectF rectF) {
        float scrollX = 0.0f;
        View view3 = view;
        float scrollY = 0.0f;
        while (view3 != null && view3 != view2) {
            float x = scrollX + view3.getX();
            float y = scrollY + view3.getY();
            Object parent = view3.getParent();
            if (!(parent instanceof View)) {
                return false;
            }
            view3 = (View) parent;
            scrollX = x - view3.getScrollX();
            scrollY = y - view3.getScrollY();
        }
        if (view3 != view2) {
            return false;
        }
        rectF.set(scrollX, scrollY, view.getWidth() + scrollX, view.getHeight() + scrollY);
        return true;
    }
}
