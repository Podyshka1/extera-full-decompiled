package com.google.android.material.listitem;

import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.GravityCompat;

/* JADX INFO: loaded from: classes5.dex */
class ListItemUtils {
    private ListItemUtils() {
    }

    public static boolean isRightAligned(View view) {
        int i;
        if (!(view.getLayoutParams() instanceof FrameLayout.LayoutParams) || (i = ((FrameLayout.LayoutParams) view.getLayoutParams()).gravity) == -1) {
            i = 8388613;
        }
        return (GravityCompat.getAbsoluteGravity(i, view.getLayoutDirection()) & 7) == 5;
    }
}
