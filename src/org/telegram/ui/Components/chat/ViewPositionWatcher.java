package org.telegram.ui.Components.chat;

import android.graphics.PointF;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
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
    private final WeakHashMap<View, MultiwindowHook> multiwindowHooks = new WeakHashMap<>();
    private final RectF tmpRect = new RectF();

    public interface OnChangedListener {
        void onPositionChanged(View view, RectF rectF);
    }

    public static final class Tracked {
        boolean everAttached;
        boolean hasLast;
        MultiwindowHook hook;
        final RectF last = new RectF();
        final OnChangedListener listener;
        boolean multiwindow;
        final ViewGroup parent;
        boolean trackReattach;

        public Tracked(ViewGroup viewGroup, OnChangedListener onChangedListener) {
            this.parent = viewGroup;
            this.listener = onChangedListener;
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static final class MultiwindowHook implements ViewTreeObserver.OnPreDrawListener {
        private boolean detached;
        private ViewTreeObserver registeredOn;
        private final WeakReference<View> viewRef;
        private final WeakReference<ViewPositionWatcher> watcherRef;

        public MultiwindowHook(ViewPositionWatcher viewPositionWatcher, View view) {
            this.watcherRef = new WeakReference<>(viewPositionWatcher);
            this.viewRef = new WeakReference<>(view);
        }

        public void ensureRegistered() {
            ViewTreeObserver viewTreeObserver;
            ViewTreeObserver viewTreeObserver2;
            View view = this.viewRef.get();
            if (view == null || (viewTreeObserver = view.getViewTreeObserver()) == null || !viewTreeObserver.isAlive() || viewTreeObserver == (viewTreeObserver2 = this.registeredOn)) {
                return;
            }
            if (viewTreeObserver2 != null && viewTreeObserver2.isAlive()) {
                this.registeredOn.removeOnPreDrawListener(this);
            }
            viewTreeObserver.removeOnPreDrawListener(this);
            viewTreeObserver.addOnPreDrawListener(this);
            this.registeredOn = viewTreeObserver;
            this.detached = false;
        }

        public void detach() {
            ViewTreeObserver viewTreeObserver;
            this.detached = true;
            ViewTreeObserver viewTreeObserver2 = this.registeredOn;
            this.registeredOn = null;
            if (viewTreeObserver2 != null && viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnPreDrawListener(this);
            }
            View view = this.viewRef.get();
            if (view == null || !view.isAttachedToWindow() || (viewTreeObserver = view.getViewTreeObserver()) == null || viewTreeObserver == viewTreeObserver2 || !viewTreeObserver.isAlive()) {
                return;
            }
            viewTreeObserver.removeOnPreDrawListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            ViewPositionWatcher viewPositionWatcher = this.detached ? null : this.watcherRef.get();
            if (viewPositionWatcher == null) {
                detach();
                return true;
            }
            return viewPositionWatcher.onPreDraw();
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
        subscribe(view, viewGroup, onChangedListener, z, false);
    }

    public void subscribe(View view, ViewGroup viewGroup, OnChangedListener onChangedListener, boolean z, boolean z2) {
        Tracked tracked = new Tracked(viewGroup, onChangedListener);
        tracked.multiwindow = z;
        tracked.trackReattach = z2;
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
            MultiwindowHook multiwindowHook = this.multiwindowHooks.get(view);
            if (multiwindowHook == null) {
                multiwindowHook = new MultiwindowHook(this, view);
                this.multiwindowHooks.put(view, multiwindowHook);
            }
            tracked.hook = multiwindowHook;
            multiwindowHook.ensureRegistered();
        }
    }

    public void shutdown() {
        detachIfListening();
        this.anchorView.removeOnAttachStateChangeListener(this);
        this.tracked.clear();
        detachAllMultiwindowHooks();
    }

    private void detachMultiwindowHook(View view) {
        MultiwindowHook multiwindowHookRemove;
        if (view == null || (multiwindowHookRemove = this.multiwindowHooks.remove(view)) == null) {
            return;
        }
        multiwindowHookRemove.detach();
    }

    private void detachAllMultiwindowHooks() {
        if (this.multiwindowHooks.isEmpty()) {
            return;
        }
        Iterator<MultiwindowHook> it = this.multiwindowHooks.values().iterator();
        while (it.hasNext()) {
            it.next().detach();
        }
        this.multiwindowHooks.clear();
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
            detachAllMultiwindowHooks();
            return true;
        }
        Iterator<Map.Entry<View, List<Tracked>>> it = this.tracked.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<View, List<Tracked>> next = it.next();
            View key = next.getKey();
            List<Tracked> value = next.getValue();
            if (key == null || value == null || value.isEmpty()) {
                it.remove();
                detachMultiwindowHook(key);
            } else if (!key.isAttachedToWindow()) {
                for (int size = value.size() - 1; size >= 0; size--) {
                    Tracked tracked = value.get(size);
                    if (tracked.everAttached && !tracked.trackReattach) {
                        value.remove(size);
                    }
                }
                if (value.isEmpty()) {
                    it.remove();
                    detachMultiwindowHook(key);
                }
            } else {
                for (int size2 = value.size() - 1; size2 >= 0; size2--) {
                    Tracked tracked2 = value.get(size2);
                    tracked2.everAttached = true;
                    if (tracked2.multiwindow) {
                        MultiwindowHook multiwindowHook = tracked2.hook;
                        if (multiwindowHook != null) {
                            multiwindowHook.ensureRegistered();
                        }
                        int[] iArr = tmpCords;
                        key.getLocationOnScreen(iArr);
                        this.tmpRect.set(iArr[0], iArr[1], r9 + key.getWidth(), iArr[1] + key.getHeight());
                        tracked2.parent.getLocationOnScreen(iArr);
                        this.tmpRect.offset(-iArr[0], -iArr[1]);
                    } else {
                        if (!tracked2.parent.isAttachedToWindow() || !computeRectInParent(key, tracked2.parent, this.tmpRect)) {
                            value.remove(size2);
                        }
                    }
                    if (!tracked2.hasLast || !this.tmpRect.equals(tracked2.last)) {
                        tracked2.last.set(this.tmpRect);
                        tracked2.hasLast = true;
                        try {
                            tracked2.listener.onPositionChanged(key, new RectF(this.tmpRect));
                        } catch (Throwable unused) {
                        }
                    }
                }
                if (value.isEmpty()) {
                    it.remove();
                    detachMultiwindowHook(key);
                }
            }
        }
        if (this.tracked.isEmpty()) {
            detachIfListening();
            detachAllMultiwindowHooks();
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
