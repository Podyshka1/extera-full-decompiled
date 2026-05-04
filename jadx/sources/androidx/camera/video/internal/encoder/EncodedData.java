package androidx.camera.video.internal.encoder;

/* JADX INFO: loaded from: classes4.dex */
public interface EncodedData extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    long getPresentationTimeUs();

    boolean isKeyFrame();

    long size();
}
