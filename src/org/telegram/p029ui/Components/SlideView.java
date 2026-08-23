package org.telegram.p029ui.Components;

import android.content.Context;
import android.os.Bundle;
import android.widget.LinearLayout;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes7.dex */
public abstract class SlideView extends LinearLayout {
    public boolean hasCustomKeyboard() {
        return false;
    }

    public boolean needBackButton() {
        return false;
    }

    public boolean onBackPressed(boolean z) {
        return true;
    }

    public void onCancelPressed() {
    }

    public void onDestroyActivity() {
    }

    public void onHide() {
    }

    public void onNextPressed(String str) {
    }

    public void onResume() {
    }

    public void onShow() {
    }

    public void restoreStateParams(Bundle bundle) {
    }

    public void saveStateParams(Bundle bundle) {
    }

    public void setParams(Bundle bundle, boolean z) {
    }

    public void updateColors() {
    }

    public SlideView(Context context) {
        super(context);
    }

    public String getHeaderName() {
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }
}
