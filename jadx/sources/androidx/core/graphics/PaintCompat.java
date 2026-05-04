package androidx.core.graphics;

import android.graphics.Paint;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PaintCompat {
    private static final ThreadLocal sRectThreadLocal = new ThreadLocal();

    public static boolean hasGlyph(Paint paint, String str) {
        return Api23Impl.hasGlyph(paint, str);
    }

    static class Api23Impl {
        static boolean hasGlyph(Paint paint, String str) {
            return paint.hasGlyph(str);
        }
    }
}
