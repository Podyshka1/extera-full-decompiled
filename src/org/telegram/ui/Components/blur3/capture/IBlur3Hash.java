package org.telegram.ui.Components.blur3.capture;

import android.graphics.ColorMatrix;
import android.os.Build;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public interface IBlur3Hash {
    void add(long j);

    void unsupported();

    default void add(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            add(view.getUniqueDrawingId());
        } else {
            unsupported();
        }
    }

    default void addF(float f) {
        add(Float.floatToIntBits(f));
    }

    default void add(boolean z) {
        add(z ? 1L : 0L);
    }

    default void add(ColorMatrix colorMatrix) {
        add(colorMatrix.getArray());
    }

    default void add(float[] fArr) {
        for (float f : fArr) {
            addF(f);
        }
    }
}
