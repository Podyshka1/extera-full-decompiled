package org.telegram.ui.Components.blur3.capture;

import android.graphics.Canvas;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes3.dex */
public interface IBlur3Capture {
    void capture(Canvas canvas, RectF rectF);

    default void captureCalculateHash(IBlur3Hash iBlur3Hash, RectF rectF) {
        iBlur3Hash.unsupported();
    }
}
