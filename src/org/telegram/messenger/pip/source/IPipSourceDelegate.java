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

    default boolean pipIsAvailable() {
        return true;
    }

    default void pipRenderBackground(Canvas canvas) {
    }

    default void pipRenderForeground(Canvas canvas) {
    }

    void pipShowPrimaryWindowView(Runnable runnable);
}
