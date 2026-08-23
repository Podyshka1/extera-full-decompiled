package io.noties.markwon.core.spans;

import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes5.dex */
abstract class ObjectsPool {
    private static final Rect RECT = new Rect();
    private static final RectF RECT_F = new RectF();
    private static final Paint PAINT = new Paint(1);

    public static Rect rect() {
        return RECT;
    }

    public static RectF rectF() {
        return RECT_F;
    }

    public static Paint paint() {
        return PAINT;
    }
}
