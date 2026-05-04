package androidx.camera.camera2.pipe.compat;

import android.media.ImageWriter;
import android.view.Surface;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Api29Compat {
    public static final Api29Compat INSTANCE = new Api29Compat();

    private Api29Compat() {
    }

    public static final ImageWriter imageWriterNewInstance(Surface surface, int i, int i2) {
        Intrinsics.checkNotNullParameter(surface, "surface");
        ImageWriter imageWriterNewInstance = ImageWriter.newInstance(surface, i, i2);
        Intrinsics.checkNotNullExpressionValue(imageWriterNewInstance, "newInstance(...)");
        return imageWriterNewInstance;
    }
}
