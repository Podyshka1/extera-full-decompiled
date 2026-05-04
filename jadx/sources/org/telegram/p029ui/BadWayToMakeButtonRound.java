package org.telegram.p029ui;

import android.view.View;
import org.telegram.messenger.utils.ViewOutlineProviderImpl;

/* JADX INFO: loaded from: classes6.dex */
public abstract class BadWayToMakeButtonRound {
    public static void round(View view) {
        view.setOutlineProvider(ViewOutlineProviderImpl.BOUNDS_ROUND_RECT);
        view.setClipToOutline(true);
    }
}
