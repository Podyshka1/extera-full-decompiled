package org.telegram.ui.Components;

import android.view.View;
import org.telegram.messenger.ImageReceiver;

/* JADX INFO: loaded from: classes3.dex */
public interface AttachableDrawable {
    void onAttachedToWindow(ImageReceiver imageReceiver);

    void onDetachedFromWindow(ImageReceiver imageReceiver);

    void setParent(View view);

    /* JADX INFO: renamed from: org.telegram.ui.Components.AttachableDrawable$-CC, reason: invalid class name */
    /* JADX INFO: loaded from: classes7.dex */
    public abstract /* synthetic */ class CC {
        public static void $default$setParent(AttachableDrawable attachableDrawable, View view) {
        }
    }
}
