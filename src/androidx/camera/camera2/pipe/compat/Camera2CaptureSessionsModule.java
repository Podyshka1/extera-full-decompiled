package androidx.camera.camera2.pipe.compat;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraGraph;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JV\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00072\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0007¨\u0006\u0013"}, d2 = {"Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "provideSessionFactory", "Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;", "androidMProvider", "Ljavax/inject/Provider;", "Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;", "androidMHighSpeedProvider", "Landroidx/camera/camera2/pipe/compat/AndroidMHighSpeedSessionFactory;", "androidNProvider", "Landroidx/camera/camera2/pipe/compat/AndroidNSessionFactory;", "androidPProvider", "Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;", "androidExtensionProvider", "Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;", "graphConfig", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCaptureSessionFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaptureSessionFactory.kt\nandroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,588:1\n1#2:589\n*E\n"})
public final class Camera2CaptureSessionsModule {
    public static final Camera2CaptureSessionsModule INSTANCE = new Camera2CaptureSessionsModule();

    private Camera2CaptureSessionsModule() {
    }

    @SuppressLint({"ObsoleteSdkInt"})
    public final CaptureSessionFactory provideSessionFactory(Provider<AndroidMSessionFactory> androidMProvider, Provider<AndroidMHighSpeedSessionFactory> androidMHighSpeedProvider, Provider<AndroidNSessionFactory> androidNProvider, Provider<AndroidPSessionFactory> androidPProvider, Provider<AndroidExtensionSessionFactory> androidExtensionProvider, CameraGraph.Config graphConfig) {
        int sessionMode = graphConfig.getSessionMode();
        CameraGraph.OperatingMode.Companion companion = CameraGraph.OperatingMode.INSTANCE;
        if (CameraGraph.OperatingMode.m1340equalsimpl0(sessionMode, companion.m1344getEXTENSION2uNL3no())) {
            if (Build.VERSION.SDK_INT < 31) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Cannot use Extension sessions below Android S");
                return null;
            }
            return androidExtensionProvider.get();
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return androidPProvider.get();
        }
        if (CameraGraph.OperatingMode.m1340equalsimpl0(graphConfig.getSessionMode(), companion.m1345getHIGH_SPEED2uNL3no())) {
            return androidMHighSpeedProvider.get();
        }
        return androidNProvider.get();
    }
}
