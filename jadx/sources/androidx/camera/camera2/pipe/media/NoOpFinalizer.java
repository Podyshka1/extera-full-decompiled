package androidx.camera.camera2.pipe.media;

/* JADX INFO: loaded from: classes3.dex */
public final class NoOpFinalizer implements Finalizer {
    public static final NoOpFinalizer INSTANCE = new NoOpFinalizer();

    @Override // androidx.camera.camera2.pipe.media.Finalizer
    public void finalize(Object obj) {
    }

    private NoOpFinalizer() {
    }
}
