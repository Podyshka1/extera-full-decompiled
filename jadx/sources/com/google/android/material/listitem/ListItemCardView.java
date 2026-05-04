package com.google.android.material.listitem;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.C1349R;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes5.dex */
public class ListItemCardView extends MaterialCardView implements SwipeableListItem {
    private static final int[] SWIPED_STATE_SET = {C1349R.attr.state_swiped};
    private boolean isSwiped;
    private final LinkedHashSet<SwipeCallback> swipeCallbacks;
    private boolean swipeEnabled;
    private final int swipeMaxOvershoot;

    public static abstract class SwipeCallback {
        public abstract void onSwipe(int i);

        public abstract <T extends View & RevealableListItem> void onSwipeStateChanged(int i, T t, int i2);
    }

    public ListItemCardView(Context context) {
        this(context, null);
    }

    public ListItemCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1349R.attr.listItemCardViewStyle);
    }

    public ListItemCardView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, C1349R.style.Widget_Material3_ListItemCardView);
    }

    public ListItemCardView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2), attributeSet, i);
        this.isSwiped = false;
        this.swipeCallbacks = new LinkedHashSet<>();
        Context context2 = getContext();
        this.swipeMaxOvershoot = getResources().getDimensionPixelSize(C1349R.dimen.m3_list_max_swipe_overshoot);
        TintTypedArray tintTypedArrayObtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, C1349R.styleable.ListItemCardView, i, i2, new int[0]);
        this.swipeEnabled = tintTypedArrayObtainTintedStyledAttributes.getBoolean(C1349R.styleable.ListItemCardView_swipeEnabled, true);
        tintTypedArrayObtainTintedStyledAttributes.recycle();
    }

    @Override // com.google.android.material.listitem.SwipeableListItem
    public int getSwipeMaxOvershoot() {
        return this.swipeMaxOvershoot;
    }

    @Override // com.google.android.material.listitem.SwipeableListItem
    public void setSwipeEnabled(boolean z) {
        this.swipeEnabled = z;
    }

    @Override // com.google.android.material.listitem.SwipeableListItem
    public boolean isSwipeEnabled() {
        return this.swipeEnabled;
    }

    @Override // com.google.android.material.card.MaterialCardView, android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.isSwiped) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, SWIPED_STATE_SET);
        }
        return iArrOnCreateDrawableState;
    }

    public void addSwipeCallback(SwipeCallback swipeCallback) {
        this.swipeCallbacks.add(swipeCallback);
    }

    public void removeSwipeCallback(SwipeCallback swipeCallback) {
        this.swipeCallbacks.remove(swipeCallback);
    }

    @Override // com.google.android.material.listitem.SwipeableListItem
    public void onSwipe(int i) {
        Iterator<SwipeCallback> it = this.swipeCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onSwipe(i);
        }
    }

    @Override // com.google.android.material.listitem.SwipeableListItem
    public <T extends View & RevealableListItem> void onSwipeStateChanged(int i, T t, int i2) {
        this.isSwiped = i != 3;
        refreshDrawableState();
        Iterator<SwipeCallback> it = this.swipeCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onSwipeStateChanged(i, t, i2);
        }
    }
}
