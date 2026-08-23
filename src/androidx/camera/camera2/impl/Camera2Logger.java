package androidx.camera.camera2.impl;

import android.os.Build;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2Logger {
    public static final Camera2Logger INSTANCE;
    private static final String TRUNCATED_TAG;

    private Camera2Logger() {
    }

    static {
        Camera2Logger camera2Logger = new Camera2Logger();
        INSTANCE = camera2Logger;
        TRUNCATED_TAG = camera2Logger.truncateTag("CXCP");
    }

    private final String truncateTag(String str) {
        if (Build.VERSION.SDK_INT > 25 || 23 >= str.length()) {
            return str;
        }
        String strSubstring = str.substring(0, 23);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }
}
