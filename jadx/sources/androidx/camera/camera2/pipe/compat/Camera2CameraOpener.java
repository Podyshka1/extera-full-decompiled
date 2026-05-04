package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import android.os.Trace;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Threads;
import javax.inject.Provider;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2CameraOpener implements CameraOpener {
    private final Provider cameraManager;
    private final Threads threads;

    public Camera2CameraOpener(Provider cameraManager, Threads threads) {
        Intrinsics.checkNotNullParameter(cameraManager, "cameraManager");
        Intrinsics.checkNotNullParameter(threads, "threads");
        this.cameraManager = cameraManager;
        this.threads = threads;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraOpener
    /* JADX INFO: renamed from: openCamera-RzXb1QE, reason: not valid java name */
    public Object mo1821openCameraRzXb1QE(String str, CameraDevice.StateCallback stateCallback, Continuation continuation) {
        CameraManager cameraManager = (CameraManager) this.cameraManager.get();
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection(((Object) CameraId.m1607toStringimpl(str)) + "#openCamera");
            if (Build.VERSION.SDK_INT < 28) {
                cameraManager.openCamera(str, stateCallback, this.threads.getCamera2Handler());
            } else {
                Intrinsics.checkNotNull(cameraManager);
                Api28Compat.openCamera(cameraManager, str, this.threads.getCamera2Executor(), stateCallback);
            }
            Unit unit = Unit.INSTANCE;
            Trace.endSection();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }
}
