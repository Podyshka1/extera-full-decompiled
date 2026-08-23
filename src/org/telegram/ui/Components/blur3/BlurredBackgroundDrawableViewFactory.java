package org.telegram.ui.Components.blur3;

import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import me.vkryl.core.reference.ReferenceList;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawableRenderNode;
import org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundColorProvider;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSource;
import org.telegram.ui.Components.chat.ViewPositionWatcher;

/* JADX INFO: loaded from: classes3.dex */
public class BlurredBackgroundDrawableViewFactory {
    private boolean isLiquidGlassEffectAllowed;
    private ReferenceList<BlurredBackgroundDrawable> linkedDrawables;
    private ReferenceList<View> linkedViews;
    private ViewGroup parent;
    private final BlurredBackgroundSource source;
    private ViewPositionWatcher viewPositionWatcher;

    public BlurredBackgroundDrawableViewFactory(BlurredBackgroundSource blurredBackgroundSource) {
        this.source = blurredBackgroundSource;
    }

    public BlurredBackgroundDrawableViewFactory(ViewPositionWatcher viewPositionWatcher, ViewGroup viewGroup, BlurredBackgroundSource blurredBackgroundSource) {
        this(blurredBackgroundSource);
        setSourceRootView(viewPositionWatcher, viewGroup);
    }

    public void setSourceRootView(ViewPositionWatcher viewPositionWatcher, ViewGroup viewGroup) {
        this.viewPositionWatcher = viewPositionWatcher;
        this.parent = viewGroup;
    }

    public void setLinkedViewsRef(ReferenceList<View> referenceList) {
        this.linkedViews = referenceList;
    }

    public void setLinkedDrawablesRef(ReferenceList<BlurredBackgroundDrawable> referenceList) {
        this.linkedDrawables = referenceList;
    }

    public void invalidateAllLinkedViews() {
        ReferenceList<View> referenceList = this.linkedViews;
        if (referenceList != null) {
            Iterator<View> it = referenceList.iterator();
            while (it.hasNext()) {
                it.next().invalidate();
            }
        }
    }

    public void setLiquidGlassEffectAllowed(boolean z) {
        this.isLiquidGlassEffectAllowed = z;
    }

    public BlurredBackgroundDrawable create() {
        return create(null);
    }

    public BlurredBackgroundDrawable create(View view) {
        return create(view, (BlurredBackgroundColorProvider) null);
    }

    public BlurredBackgroundDrawable create(View view, boolean z) {
        return create(view, null, z);
    }

    public BlurredBackgroundDrawable create(View view, BlurredBackgroundColorProvider blurredBackgroundColorProvider) {
        return create(view, blurredBackgroundColorProvider, false);
    }

    public BlurredBackgroundDrawable create(View view, BlurredBackgroundColorProvider blurredBackgroundColorProvider, boolean z) {
        BlurredBackgroundDrawable blurredBackgroundDrawableCreateDrawable = this.source.createDrawable();
        if (this.isLiquidGlassEffectAllowed && Build.VERSION.SDK_INT >= 33 && (blurredBackgroundDrawableCreateDrawable instanceof BlurredBackgroundDrawableRenderNode)) {
            ((BlurredBackgroundDrawableRenderNode) blurredBackgroundDrawableCreateDrawable).setLiquidGlassEffectAllowed();
        }
        blurredBackgroundDrawableCreateDrawable.setColorProvider(blurredBackgroundColorProvider);
        ReferenceList<View> referenceList = this.linkedViews;
        if (referenceList != null && view != null) {
            referenceList.add(view);
        }
        if (this.viewPositionWatcher != null && this.parent != null && view != null) {
            final WeakReference weakReference = new WeakReference(blurredBackgroundDrawableCreateDrawable);
            this.viewPositionWatcher.subscribe(view, this.parent, new ViewPositionWatcher.OnChangedListener() { // from class: org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.Components.chat.ViewPositionWatcher.OnChangedListener
                public final void onPositionChanged(View view2, RectF rectF) {
                    BlurredBackgroundDrawableViewFactory.$r8$lambda$zQYw2Ior9IE1MD7jp9GiuMfrb8I(weakReference, view2, rectF);
                }
            }, z);
        }
        ReferenceList<BlurredBackgroundDrawable> referenceList2 = this.linkedDrawables;
        if (referenceList2 != null) {
            referenceList2.add(blurredBackgroundDrawableCreateDrawable);
        }
        return blurredBackgroundDrawableCreateDrawable;
    }

    public static /* synthetic */ void $r8$lambda$zQYw2Ior9IE1MD7jp9GiuMfrb8I(WeakReference weakReference, View view, RectF rectF) {
        BlurredBackgroundDrawable blurredBackgroundDrawable = (BlurredBackgroundDrawable) weakReference.get();
        if (blurredBackgroundDrawable == null) {
            return;
        }
        blurredBackgroundDrawable.setSourceOffset(rectF.left, rectF.top);
        view.invalidate();
    }
}
