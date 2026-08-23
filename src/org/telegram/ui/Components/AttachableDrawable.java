package org.telegram.ui.Components;

import android.view.View;
import org.telegram.messenger.ImageReceiver;

/* JADX INFO: loaded from: classes3.dex */
public interface AttachableDrawable {
    void onAttachedToWindow(ImageReceiver imageReceiver);

    void onDetachedFromWindow(ImageReceiver imageReceiver);

    default void setParent(View view) {
    }
}
