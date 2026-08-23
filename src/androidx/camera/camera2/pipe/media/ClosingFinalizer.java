package androidx.camera.camera2.pipe.media;

import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;

/* JADX INFO: loaded from: classes3.dex */
public final class ClosingFinalizer implements Finalizer {
    public static final ClosingFinalizer INSTANCE = new ClosingFinalizer();

    private ClosingFinalizer() {
    }

    @Override // androidx.camera.camera2.pipe.media.Finalizer
    public void finalize(AutoCloseable autoCloseable) throws Exception {
        if (autoCloseable != null) {
            UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m22m(autoCloseable);
        }
    }
}
