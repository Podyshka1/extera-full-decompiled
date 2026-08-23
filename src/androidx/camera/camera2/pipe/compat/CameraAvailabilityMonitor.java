package androidx.camera.camera2.pipe.compat;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraAvailabilityMonitor {

    public interface Session extends AutoCloseable {
        Object awaitAvailableCamera(long j, Continuation continuation);
    }

    /* JADX INFO: renamed from: startMonitoring-0r8Bogc */
    Object mo1812startMonitoring0r8Bogc(String str, Continuation continuation);
}
