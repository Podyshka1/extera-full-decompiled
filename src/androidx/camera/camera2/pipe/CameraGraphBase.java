package androidx.camera.camera2.pipe;

import android.view.Surface;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraGraphBase extends AutoCloseable {
    Object acquireSession(Continuation continuation);

    StreamGraph getStreams();

    void setForeground(boolean z);

    /* JADX INFO: renamed from: setSurface-NYG5g8E, reason: not valid java name */
    void mo1601setSurfaceNYG5g8E(int i, Surface surface);

    void start();
}
