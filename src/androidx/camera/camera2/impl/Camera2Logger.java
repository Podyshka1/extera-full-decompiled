package androidx.camera.camera2.impl;

import android.os.Build;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/camera/camera2/impl/Camera2Logger;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "tag", "truncateTag", "(Ljava/lang/String;)Ljava/lang/String;", "TRUNCATED_TAG", "Ljava/lang/String;", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
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

    private final String truncateTag(String tag) {
        return (Build.VERSION.SDK_INT > 25 || 23 >= tag.length()) ? tag : tag.substring(0, 23);
    }
}
