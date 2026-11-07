package org.telegram.ui.Components.blur3.source;

import android.graphics.Canvas;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;

/* JADX INFO: loaded from: classes3.dex */
public interface BlurredBackgroundSource {
    BlurredBackgroundDrawable createDrawable();

    default void dispatchOnDrawablesRelativePositionChange() {
    }

    void draw(Canvas canvas, float f, float f2, float f3, float f4);
}
