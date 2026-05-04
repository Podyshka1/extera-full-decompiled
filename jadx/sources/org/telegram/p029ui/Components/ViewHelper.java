package org.telegram.p029ui.Components;

import android.view.View;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ViewHelper {
    public static void setPadding(View view, float f, float f2, float f3, float f4) {
        view.setPadding(AndroidUtilities.m1124dp(f), AndroidUtilities.m1124dp(f2), AndroidUtilities.m1124dp(f3), AndroidUtilities.m1124dp(f4));
    }

    public static void setPaddingRelative(View view, float f, float f2, float f3, float f4) {
        boolean z = LocaleController.isRTL;
        float f5 = z ? f3 : f;
        if (!z) {
            f = f3;
        }
        setPadding(view, f5, f2, f, f4);
    }
}
