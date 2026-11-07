package org.telegram.ui.Components.inset;

import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes3.dex */
public interface WindowInsetsInAppController {
    void requestInAppKeyboardHeight(int i);

    void resetInAppKeyboardHeight(boolean z);

    void setInAppKeyboardBackProgress(float f);

    default void requestInAppKeyboardHeightIncludeNavbar(int i) {
        if (i > 0) {
            requestInAppKeyboardHeight(i + AndroidUtilities.navigationBarHeight);
        } else {
            resetInAppKeyboardHeight(true);
        }
    }
}
