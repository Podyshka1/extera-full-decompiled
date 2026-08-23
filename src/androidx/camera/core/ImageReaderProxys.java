package androidx.camera.core;

import android.media.ImageReader;
import androidx.camera.core.impl.ImageReaderProxy;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ImageReaderProxys {
    public static ImageReaderProxy createIsolatedReader(int i, int i2, int i3, int i4) {
        return new AndroidImageReaderProxy(ImageReader.newInstance(i, i2, i3, i4));
    }
}
