package org.telegram.p029ui.Components.blur3.source;

import android.graphics.Canvas;
import org.telegram.p029ui.Components.blur3.drawable.BlurredBackgroundDrawable;

/* JADX INFO: loaded from: classes3.dex */
public interface BlurredBackgroundSource {
    BlurredBackgroundDrawable createDrawable();

    void dispatchOnDrawablesRelativePositionChange();

    void draw(Canvas canvas, float f, float f2, float f3, float f4);

    /* JADX INFO: renamed from: org.telegram.ui.Components.blur3.source.BlurredBackgroundSource$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static void $default$dispatchOnDrawablesRelativePositionChange(BlurredBackgroundSource blurredBackgroundSource) {
        }
    }
}
