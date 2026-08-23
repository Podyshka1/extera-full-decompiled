package androidx.camera.camera2.pipe.compat;

import android.annotation.SuppressLint;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import android.os.Trace;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Threads;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u001f\b\u0007\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0097@¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Landroidx/camera/camera2/pipe/compat/Camera2CameraOpener;", "Landroidx/camera/camera2/pipe/compat/CameraOpener;", "cameraManager", "Ljavax/inject/Provider;", "Landroid/hardware/camera2/CameraManager;", "threads", "Landroidx/camera/camera2/pipe/core/Threads;", "<init>", "(Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/core/Threads;)V", "openCamera", _UrlKt.FRAGMENT_ENCODE_SET, "cameraId", "Landroidx/camera/camera2/pipe/CameraId;", "stateCallback", "Landroid/hardware/camera2/CameraDevice$StateCallback;", "openCamera-RzXb1QE", "(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRetryingCameraStateOpener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetryingCameraStateOpener.kt\nandroidx/camera/camera2/pipe/compat/Camera2CameraOpener\n+ 2 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n*L\n1#1,665:1\n48#2,2:666\n71#2,4:668\n50#2,3:672\n78#2,4:675\n*S KotlinDebug\n*F\n+ 1 RetryingCameraStateOpener.kt\nandroidx/camera/camera2/pipe/compat/Camera2CameraOpener\n*L\n116#1:666,2\n116#1:668,4\n116#1:672,3\n116#1:675,4\n*E\n"})
public final class Camera2CameraOpener implements CameraOpener {
    private final Provider<CameraManager> cameraManager;
    private final Threads threads;

    public Camera2CameraOpener(Provider<CameraManager> provider, Threads threads) {
        this.cameraManager = provider;
        this.threads = threads;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraOpener
    @SuppressLint({"MissingPermission"})
    /* JADX INFO: renamed from: openCamera-RzXb1QE, reason: not valid java name */
    public Object mo1417openCameraRzXb1QE(String str, CameraDevice.StateCallback stateCallback, Continuation<? super Unit> continuation) {
        CameraManager cameraManager = this.cameraManager.get();
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection(((Object) CameraId.m1213toStringimpl(str)) + "#openCamera");
            if (Build.VERSION.SDK_INT < 28) {
                cameraManager.openCamera(str, stateCallback, this.threads.getCamera2Handler());
            } else {
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
