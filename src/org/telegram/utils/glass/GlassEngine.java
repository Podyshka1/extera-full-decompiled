package org.telegram.utils.glass;

import android.graphics.RectF;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import java.util.ArrayList;
import java.util.Iterator;
import org.telegram.messenger.postdrawcompat.OnPostDrawListener;
import org.telegram.messenger.postdrawcompat.ViewOnPostDrawListener;
import org.telegram.ui.Components.EdgeEffectTrackerFactory;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawableRenderNode;
import org.telegram.ui.Components.chat.ViewPositionWatcher;
import org.telegram.utils.glass.positions.GlassPositionsArray;
import org.telegram.utils.glass.positions.GlassPositionsMerger;

/* JADX INFO: loaded from: classes8.dex */
public class GlassEngine {
    private GlassInvalidationListener glassInvalidationListener;
    private long lastOtherGenerationId;
    private int lastRootHeight;
    private int lastRootWidth;
    private long lastScrollEdgesGenerationId;
    private long lastScrollGenerationId;
    private long otherGenerationId;
    private View rootView;
    private long scrollEdgesGenerationId;
    private long scrollGenerationId;
    private final OnPostDrawListener onPostDrawListener = new OnPostDrawListener() { // from class: org.telegram.utils.glass.GlassEngine$$ExternalSyntheticLambda0
        @Override // org.telegram.messenger.postdrawcompat.OnPostDrawListener
        public final void onPostDraw() {
            this.f$0.onPostDraw();
        }
    };
    private final ArrayList<Object> additionalInvalidationCondition = new ArrayList<>();
    private final ArrayList<ViewPositionState> viewPositionStates = new ArrayList<>();
    private GlassPositionsMerger positionsMerger = GlassPositionsMerger.DEFAULT;
    private final RectF tmpPositionRect = new RectF();
    private final GlassPositionsArray allVisibleDrawablesWithDisplayListPositions = new GlassPositionsArray();
    private final GlassPositionsArray allVisibleDrawablesWithDisplayListPositionsMerged = new GlassPositionsArray();
    private final GlassPositionsArray output = new GlassPositionsArray();
    private final ArrayList<ThemedSourceColorState> themedSourceColorStates = new ArrayList<>();

    public interface GlassInvalidationListener {
        void onGlassInvalidated(int i);
    }

    public interface ThemedColorDelegate {
    }

    public static class ThemedSourceColorState {
        /* JADX INFO: renamed from: -$$Nest$fgetcolorDelegate, reason: not valid java name */
        public static /* bridge */ /* synthetic */ ThemedColorDelegate m24440$$Nest$fgetcolorDelegate(ThemedSourceColorState themedSourceColorState) {
            throw null;
        }
    }

    public void setGlassInvalidationListener(GlassInvalidationListener glassInvalidationListener) {
        this.glassInvalidationListener = glassInvalidationListener;
    }

    public void setPositionsMerger(GlassPositionsMerger glassPositionsMerger) {
        this.positionsMerger = glassPositionsMerger;
    }

    public void registerDrawable(View view, BlurredBackgroundDrawable blurredBackgroundDrawable) {
        this.viewPositionStates.add(new ViewPositionState(view, blurredBackgroundDrawable));
    }

    public void setRoot(View view) {
        View view2 = this.rootView;
        if (view2 != view) {
            if (view2 != null) {
                ViewOnPostDrawListener.removeListener(view2, this.onPostDrawListener);
            }
            if (view != null) {
                ViewOnPostDrawListener.addListener(view, this.onPostDrawListener);
            }
            this.rootView = view;
        }
    }

    public void addScrolledView(ViewPager viewPager) {
        if (viewPager == null) {
            return;
        }
        viewPager.addOnPageChangeListener(new ViewPager.SimpleOnPageChangeListener() { // from class: org.telegram.utils.glass.GlassEngine.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
                GlassEngine.this.scrollGenerationId++;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addScrolledView$0(int i, boolean z) {
        this.scrollEdgesGenerationId++;
    }

    public void addScrolledView(RecyclerListView recyclerListView) {
        if (recyclerListView == null) {
            return;
        }
        recyclerListView.addEdgeEffectListener(new EdgeEffectTrackerFactory.OnEdgeEffectListener() { // from class: org.telegram.utils.glass.GlassEngine$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.EdgeEffectTrackerFactory.OnEdgeEffectListener
            public final void onEdgeEffectVisibilityChange(int i, boolean z) {
                this.f$0.lambda$addScrolledView$0(i, z);
            }
        });
        recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.utils.glass.GlassEngine.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                GlassEngine.this.scrollGenerationId++;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                GlassEngine.this.scrollGenerationId++;
            }
        });
    }

    public void invalidate() {
        this.otherGenerationId++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPostDraw() {
        boolean zCheckDrawablePositionsIfNeeded = checkDrawablePositionsIfNeeded();
        boolean zCheckColorSources = checkColorSources();
        Iterator<Object> it = this.additionalInvalidationCondition.iterator();
        if (it.hasNext()) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
            throw null;
        }
        int i = zCheckDrawablePositionsIfNeeded ? 4 : 0;
        if (zCheckColorSources) {
            i |= 16;
        }
        long j = this.lastOtherGenerationId;
        long j2 = this.otherGenerationId;
        if (j != j2) {
            this.lastOtherGenerationId = j2;
            i |= 8;
        }
        long j3 = this.lastScrollEdgesGenerationId;
        long j4 = this.scrollEdgesGenerationId;
        if (j3 != j4) {
            this.lastScrollEdgesGenerationId = j4;
            i |= 2;
        }
        long j5 = this.lastScrollGenerationId;
        long j6 = this.scrollGenerationId;
        if (j5 != j6) {
            this.lastScrollGenerationId = j6;
            i |= 1;
        }
        if (i != 0) {
            GlassInvalidationListener glassInvalidationListener = this.glassInvalidationListener;
            if (glassInvalidationListener != null) {
                glassInvalidationListener.onGlassInvalidated(i);
            }
            ArrayList<ViewPositionState> arrayList = this.viewPositionStates;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                ViewPositionState viewPositionState = arrayList.get(i2);
                i2++;
                ViewPositionState viewPositionState2 = viewPositionState;
                if (viewPositionState2.visible && viewPositionState2.invalidated) {
                    viewPositionState2.invalidated = false;
                    if (Build.VERSION.SDK_INT >= 29 && (viewPositionState2.drawable instanceof BlurredBackgroundDrawableRenderNode)) {
                        viewPositionState2.drawable.updateDisplayList();
                    } else {
                        viewPositionState2.drawable.invalidateSelf();
                    }
                }
            }
        }
    }

    private boolean checkDrawablePositionsIfNeeded() {
        boolean z;
        int width = this.rootView.getWidth();
        int height = this.rootView.getHeight();
        int i = 0;
        if (this.lastRootWidth == width && this.lastRootHeight == height) {
            z = false;
        } else {
            this.lastRootWidth = width;
            this.lastRootHeight = height;
            z = true;
        }
        ArrayList<ViewPositionState> arrayList = this.viewPositionStates;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            ViewPositionState viewPositionState = arrayList.get(i2);
            i2++;
            ViewPositionState viewPositionState2 = viewPositionState;
            if (ViewPositionWatcher.computeRectInParent(viewPositionState2.view, this.rootView, this.tmpPositionRect)) {
                if (!viewPositionState2.viewPositionRelativeRoot.equals(this.tmpPositionRect)) {
                    viewPositionState2.viewPositionRelativeRoot.set(this.tmpPositionRect);
                    viewPositionState2.invalidated = true;
                    viewPositionState2.drawable.setSourceOffset(viewPositionState2.viewPositionRelativeRoot.left, viewPositionState2.viewPositionRelativeRoot.top);
                    z = true;
                }
                this.tmpPositionRect.set(viewPositionState2.drawable.getBounds());
                if (!viewPositionState2.drawableBoundsRelativeView.equals(this.tmpPositionRect)) {
                    viewPositionState2.drawableBoundsRelativeView.set(this.tmpPositionRect);
                    viewPositionState2.invalidated = true;
                    z = true;
                }
                this.tmpPositionRect.offset(viewPositionState2.viewPositionRelativeRoot.left, viewPositionState2.viewPositionRelativeRoot.top);
                if (!viewPositionState2.drawableBoundsRelativeRoot.equals(this.tmpPositionRect)) {
                    viewPositionState2.drawableBoundsRelativeRoot.set(this.tmpPositionRect);
                    viewPositionState2.invalidated = true;
                    z = true;
                }
                this.tmpPositionRect.set(viewPositionState2.drawableBoundsRelativeRoot);
                this.tmpPositionRect.inset(-viewPositionState2.drawable.getOutsetX(), -viewPositionState2.drawable.getOutsetY());
                if (!viewPositionState2.drawableBoundsRelativeRootWithOutset.equals(this.tmpPositionRect)) {
                    viewPositionState2.drawableBoundsRelativeRootWithOutset.set(this.tmpPositionRect);
                    viewPositionState2.invalidated = true;
                    z = true;
                }
                View view = viewPositionState2.view;
                boolean z2 = !viewPositionState2.drawableBoundsRelativeRoot.isEmpty() && view.isAttachedToWindow() && viewPositionState2.drawableBoundsRelativeRoot.intersects(0.0f, 0.0f, (float) width, (float) height) && viewPositionState2.drawable.getAlpha() > 0 && view.getVisibility() == 0 && view.getAlpha() > 0.0f && view.getScaleX() != 0.0f && view.getScaleY() != 0.0f;
                boolean z3 = z2 && viewPositionState2.drawable.hasDisplayList();
                if (viewPositionState2.visible != z2 || (z2 && !z3)) {
                    viewPositionState2.visible = z2;
                    viewPositionState2.invalidated = true;
                    z = true;
                }
            }
        }
        if (z) {
            this.allVisibleDrawablesWithDisplayListPositions.clear();
            ArrayList<ViewPositionState> arrayList2 = this.viewPositionStates;
            int size2 = arrayList2.size();
            while (i < size2) {
                ViewPositionState viewPositionState3 = arrayList2.get(i);
                i++;
                ViewPositionState viewPositionState4 = viewPositionState3;
                if (viewPositionState4.visible) {
                    this.allVisibleDrawablesWithDisplayListPositions.add(viewPositionState4.drawableBoundsRelativeRootWithOutset);
                }
            }
            this.positionsMerger.merge(this.allVisibleDrawablesWithDisplayListPositions, this.allVisibleDrawablesWithDisplayListPositionsMerged);
        }
        return z;
    }

    public GlassPositionsArray getAllVisibleDrawablesWithDisplayListPositionsMerged() {
        this.output.set(this.allVisibleDrawablesWithDisplayListPositionsMerged);
        return this.output;
    }

    public static class ViewPositionState {
        private final BlurredBackgroundDrawable drawable;
        private final RectF drawableBoundsRelativeRoot;
        private final RectF drawableBoundsRelativeRootWithOutset;
        private final RectF drawableBoundsRelativeView;
        private boolean invalidated;
        private final View view;
        private final RectF viewPositionRelativeRoot;
        private boolean visible;

        private ViewPositionState(View view, BlurredBackgroundDrawable blurredBackgroundDrawable) {
            this.viewPositionRelativeRoot = new RectF();
            this.drawableBoundsRelativeView = new RectF();
            this.drawableBoundsRelativeRoot = new RectF();
            this.drawableBoundsRelativeRootWithOutset = new RectF();
            this.view = view;
            this.drawable = blurredBackgroundDrawable;
        }
    }

    private boolean checkColorSources() {
        if (this.themedSourceColorStates.size() <= 0) {
            return false;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(this.themedSourceColorStates.get(0));
        ThemedSourceColorState.m24440$$Nest$fgetcolorDelegate(null);
        throw null;
    }
}
