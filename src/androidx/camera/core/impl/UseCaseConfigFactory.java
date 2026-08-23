package androidx.camera.core.impl;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public interface UseCaseConfigFactory {
    public static final UseCaseConfigFactory EMPTY_INSTANCE = new UseCaseConfigFactory() { // from class: androidx.camera.core.impl.UseCaseConfigFactory.1
        @Override // androidx.camera.core.impl.UseCaseConfigFactory
        public Config getConfig(CaptureType captureType, int i) {
            return null;
        }
    };

    public enum CaptureType {
        IMAGE_CAPTURE,
        PREVIEW,
        IMAGE_ANALYSIS,
        VIDEO_CAPTURE,
        STREAM_SHARING,
        METERING_REPEATING
    }

    public interface Provider {
        UseCaseConfigFactory newInstance(Context context);
    }

    Config getConfig(CaptureType captureType, int i);
}
