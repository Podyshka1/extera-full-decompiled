package org.telegram.ui.Components.blur3;

import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import me.vkryl.core.reference.ReferenceList;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawableRenderNode;
import org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundColorProvider;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSource;
import org.telegram.ui.Components.chat.ViewPositionWatcher;

/* JADX INFO: loaded from: classes3.dex */
public class BlurredBackgroundDrawableViewFactory {
    private boolean isLiquidGlassEffectAllowed;
    private ReferenceList linkedViews;
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

    public void setLinkedViewsRef(ReferenceList referenceList) {
        this.linkedViews = referenceList;
    }

    public void setLiquidGlassEffectAllowed(boolean z) {
        this.isLiquidGlassEffectAllowed = z;
    }

    public BlurredBackgroundDrawable create(View view) {
        return create(view, null);
    }

    public BlurredBackgroundDrawable create(final View view, BlurredBackgroundColorProvider blurredBackgroundColorProvider) {
        ViewGroup viewGroup;
        final BlurredBackgroundDrawable blurredBackgroundDrawableCreateDrawable = this.source.createDrawable();
        if (this.isLiquidGlassEffectAllowed && Build.VERSION.SDK_INT >= 33 && (blurredBackgroundDrawableCreateDrawable instanceof BlurredBackgroundDrawableRenderNode)) {
            ((BlurredBackgroundDrawableRenderNode) blurredBackgroundDrawableCreateDrawable).setLiquidGlassEffectAllowed();
        }
        blurredBackgroundDrawableCreateDrawable.setColorProvider(blurredBackgroundColorProvider);
        ReferenceList referenceList = this.linkedViews;
        if (referenceList != null && view != null) {
            referenceList.add(view);
        }
        ViewPositionWatcher viewPositionWatcher = this.viewPositionWatcher;
        if (viewPositionWatcher != null && (viewGroup = this.parent) != null && view != null) {
            viewPositionWatcher.subscribe(view, viewGroup, new ViewPositionWatcher.OnChangedListener() { // from class: org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.Components.chat.ViewPositionWatcher.OnChangedListener
                public final void onPositionChanged(View view2, RectF rectF) {
                    BlurredBackgroundDrawableViewFactory.$r8$lambda$KlkDkPNqm1NlPxDBLpOPdS98yZM(blurredBackgroundDrawableCreateDrawable, view, view2, rectF);
                }
            });
        }
        return blurredBackgroundDrawableCreateDrawable;
    }

    public static /* synthetic */ void $r8$lambda$KlkDkPNqm1NlPxDBLpOPdS98yZM(BlurredBackgroundDrawable blurredBackgroundDrawable, View view, View view2, RectF rectF) {
        blurredBackgroundDrawable.setSourceOffset(rectF.left, rectF.top);
        view.invalidate();
    }
}
