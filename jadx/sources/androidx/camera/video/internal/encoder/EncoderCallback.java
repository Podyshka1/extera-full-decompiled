package androidx.camera.video.internal.encoder;

/* JADX INFO: loaded from: classes4.dex */
public interface EncoderCallback {
    public static final EncoderCallback EMPTY = new EncoderCallback() { // from class: androidx.camera.video.internal.encoder.EncoderCallback.1
        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public void onEncodeError(EncodeException encodeException) {
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public /* synthetic */ void onEncodePaused() {
            CC.$default$onEncodePaused(this);
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public void onEncodeStart() {
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public void onEncodeStop() {
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public void onEncodedData(EncodedData encodedData) {
        }

        @Override // androidx.camera.video.internal.encoder.EncoderCallback
        public void onOutputConfigUpdate(OutputConfig outputConfig) {
        }
    };

    void onEncodeError(EncodeException encodeException);

    void onEncodePaused();

    void onEncodeStart();

    void onEncodeStop();

    void onEncodedData(EncodedData encodedData);

    void onOutputConfigUpdate(OutputConfig outputConfig);

    /* JADX INFO: renamed from: androidx.camera.video.internal.encoder.EncoderCallback$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static void $default$onEncodePaused(EncoderCallback encoderCallback) {
        }
    }
}
