package org.telegram.messenger.pip.source;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public interface IPipSourceDelegate {
    View pipCreatePictureInPictureView();

    Bitmap pipCreatePictureInPictureViewBitmap();

    Bitmap pipCreatePrimaryWindowViewBitmap();

    void pipHidePrimaryWindowView(Runnable runnable);

    boolean pipIsAvailable();

    void pipRenderBackground(Canvas canvas);

    void pipRenderForeground(Canvas canvas);

    void pipShowPrimaryWindowView(Runnable runnable);

    /* JADX INFO: renamed from: org.telegram.messenger.pip.source.IPipSourceDelegate$-CC, reason: invalid class name */
    /* JADX INFO: loaded from: classes5.dex */
    public abstract /* synthetic */ class CC {
        public static void $default$pipRenderBackground(IPipSourceDelegate iPipSourceDelegate, Canvas canvas) {
        }

        public static void $default$pipRenderForeground(IPipSourceDelegate iPipSourceDelegate, Canvas canvas) {
        }

        public static boolean $default$pipIsAvailable(IPipSourceDelegate iPipSourceDelegate) {
            return true;
        }
    }
}
