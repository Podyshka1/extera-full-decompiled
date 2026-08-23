package com.google.android.material.listitem;

import android.view.View;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes5.dex */
public interface SwipeableListItem {
    public static final int STATE_CLOSED = 3;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_OPEN = 4;
    public static final int STATE_SETTLING = 2;
    public static final int STATE_SWIPE_PRIMARY_ACTION = 5;

    @Retention(RetentionPolicy.SOURCE)
    public @interface StableSwipeState {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SwipeState {
    }

    int getSwipeMaxOvershoot();

    boolean isSwipeEnabled();

    void onSwipe(int i);

    <T extends View & RevealableListItem> void onSwipeStateChanged(int i, T t, int i2);

    void setSwipeEnabled(boolean z);
}
