package androidx.camera.video.internal.encoder;

import android.view.Surface;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public interface Encoder {

    public interface EncoderInput {
    }

    public interface SurfaceInput extends EncoderInput {
        Surface getSurface();
    }

    int getConfiguredBitrate();

    EncoderInfo getEncoderInfo();

    EncoderInput getInput();

    ListenableFuture getReleasedFuture();

    void pause();

    void release();

    void requestKeyFrame();

    void setEncoderCallback(EncoderCallback encoderCallback, Executor executor);

    void start();

    void stop(long j);
}
