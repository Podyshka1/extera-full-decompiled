package org.telegram.p029ui.Components;

import android.graphics.Canvas;
import android.os.Build;
import android.widget.EdgeEffect;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class EdgeEffectTrackerFactory extends RecyclerView.EdgeEffectFactory {
    private final TrackingEdgeEffect[] edgeEffects = new TrackingEdgeEffect[4];
    private final ArrayList listeners = new ArrayList();

    public interface OnEdgeEffectListener {
        void onEdgeEffectVisibilityChange(int i, boolean z);
    }

    public void addEdgeEffectListener(OnEdgeEffectListener onEdgeEffectListener) {
        this.listeners.add(onEdgeEffectListener);
    }

    public boolean hasVisibleEdges() {
        for (TrackingEdgeEffect trackingEdgeEffect : this.edgeEffects) {
            if (trackingEdgeEffect != null && trackingEdgeEffect.isVisible()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.EdgeEffectFactory
    protected EdgeEffect createEdgeEffect(RecyclerView recyclerView, int i) {
        TrackingEdgeEffect trackingEdgeEffect = new TrackingEdgeEffect(recyclerView, i, new OnEdgeEffectListener() { // from class: org.telegram.ui.Components.EdgeEffectTrackerFactory$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.EdgeEffectTrackerFactory.OnEdgeEffectListener
            public final void onEdgeEffectVisibilityChange(int i2, boolean z) {
                this.f$0.onEdgeEffectVisibilityChange(i2, z);
            }
        });
        this.edgeEffects[i] = trackingEdgeEffect;
        return trackingEdgeEffect;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onEdgeEffectVisibilityChange(int i, boolean z) {
        ArrayList arrayList = this.listeners;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ((OnEdgeEffectListener) obj).onEdgeEffectVisibilityChange(i, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class TrackingEdgeEffect extends EdgeEffect {
        private final int direction;
        private boolean lastVisibility;
        private final OnEdgeEffectListener listener;
        private final Runnable mCheckEdgeVisibility;
        private final RecyclerView view;

        TrackingEdgeEffect(RecyclerView recyclerView, int i, OnEdgeEffectListener onEdgeEffectListener) {
            super(recyclerView.getContext());
            this.mCheckEdgeVisibility = new Runnable() { // from class: org.telegram.ui.Components.EdgeEffectTrackerFactory$TrackingEdgeEffect$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.checkEdgeVisibility();
                }
            };
            this.view = recyclerView;
            this.direction = i;
            this.listener = onEdgeEffectListener;
        }

        public boolean isVisible() {
            if (isFinished()) {
                return false;
            }
            return Build.VERSION.SDK_INT < 31 || getDistance() != 0.0f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void checkEdgeVisibility() {
            boolean zIsVisible = isVisible();
            if (this.lastVisibility != zIsVisible) {
                this.lastVisibility = zIsVisible;
                OnEdgeEffectListener onEdgeEffectListener = this.listener;
                if (onEdgeEffectListener != null) {
                    onEdgeEffectListener.onEdgeEffectVisibilityChange(this.direction, zIsVisible);
                }
            }
        }

        @Override // android.widget.EdgeEffect
        public void setSize(int i, int i2) {
            super.setSize(i, i2);
            checkEdgeVisibility();
        }

        @Override // android.widget.EdgeEffect
        public void finish() {
            super.finish();
            checkEdgeVisibility();
        }

        @Override // android.widget.EdgeEffect
        public void onPull(float f) {
            super.onPull(f);
            checkEdgeVisibility();
        }

        @Override // android.widget.EdgeEffect
        public void onPull(float f, float f2) {
            super.onPull(f, f2);
            checkEdgeVisibility();
        }

        @Override // android.widget.EdgeEffect
        public float onPullDistance(float f, float f2) {
            float fOnPullDistance = super.onPullDistance(f, f2);
            checkEdgeVisibility();
            return fOnPullDistance;
        }

        @Override // android.widget.EdgeEffect
        public void onRelease() {
            super.onRelease();
            checkEdgeVisibility();
        }

        @Override // android.widget.EdgeEffect
        public void onAbsorb(int i) {
            super.onAbsorb(i);
            checkEdgeVisibility();
        }

        @Override // android.widget.EdgeEffect
        public boolean draw(Canvas canvas) {
            boolean zDraw = super.draw(canvas);
            this.view.postOnAnimation(this.mCheckEdgeVisibility);
            return zDraw;
        }
    }
}
