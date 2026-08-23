package androidx.camera.camera2.adapter;

import android.content.Context;
import android.os.Trace;
import android.util.Log;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.CameraInteropStateCallbackRepository;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.CameraPipeKt;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.camera2.pipe.core.SystemTimeSource;
import androidx.camera.camera2.pipe.core.Timestamps;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraFactory;
import androidx.camera.core.impl.CameraThreadConfig;
import androidx.camera.core.impl.utils.ContextUtil;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.internal.StreamSpecsCalculator;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B+\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ<\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00072\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J'\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00072\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0002\b\u001bR\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Landroidx/camera/camera2/adapter/CameraFactoryProvider;", "Landroidx/camera/core/impl/CameraFactory$Provider;", "sharedCameraPipe", "Landroidx/camera/camera2/pipe/CameraPipe;", "sharedAppContext", "Landroid/content/Context;", "sharedThreadConfig", "Landroidx/camera/core/impl/CameraThreadConfig;", "<init>", "(Landroidx/camera/camera2/pipe/CameraPipe;Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;)V", "sharedInteropCallbacks", "Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;", "newInstance", "Landroidx/camera/core/impl/CameraFactory;", "context", "threadConfig", "availableCamerasLimiter", "Landroidx/camera/core/CameraSelector;", "cameraOpenRetryMaxTimeoutInMs", _UrlKt.FRAGMENT_ENCODE_SET, "cameraXConfig", "Landroidx/camera/core/CameraXConfig;", "streamSpecsCalculator", "Landroidx/camera/core/internal/StreamSpecsCalculator;", "createCameraPipe", "openRetryMaxTimeout", "Landroidx/camera/camera2/pipe/core/DurationNs;", "createCameraPipe-ck8WKOA", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCameraFactoryProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraFactoryProvider.kt\nandroidx/camera/camera2/adapter/CameraFactoryProvider\n+ 2 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n+ 3 Timestamps.kt\nandroidx/camera/camera2/pipe/core/Timestamps\n+ 4 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 5 Timestamps.kt\nandroidx/camera/camera2/pipe/core/TimestampNs\n*L\n1#1,119:1\n48#2,2:120\n71#2,4:122\n50#2:126\n52#2:136\n78#2,4:137\n70#3:127\n83#3:130\n70#3:131\n74#3,2:133\n85#4,2:128\n88#4:135\n85#4,4:141\n29#5:132\n*S KotlinDebug\n*F\n+ 1 CameraFactoryProvider.kt\nandroidx/camera/camera2/adapter/CameraFactoryProvider\n*L\n87#1:120,2\n87#1:122,4\n87#1:126\n87#1:136\n87#1:137,4\n89#1:127\n114#1:130\n114#1:131\n114#1:133,2\n113#1:128,2\n113#1:135\n64#1:141,4\n114#1:132\n*E\n"})
public final class CameraFactoryProvider implements CameraFactory.Provider {
    private final Context sharedAppContext;
    private final CameraPipe sharedCameraPipe;
    private final CameraInteropStateCallbackRepository sharedInteropCallbacks = new CameraInteropStateCallbackRepository();
    private final CameraThreadConfig sharedThreadConfig;

    public CameraFactoryProvider(CameraPipe cameraPipe, Context context, CameraThreadConfig cameraThreadConfig) {
        this.sharedCameraPipe = cameraPipe;
        this.sharedAppContext = context;
        this.sharedThreadConfig = cameraThreadConfig;
    }

    @Override // androidx.camera.core.impl.CameraFactory.Provider
    public CameraFactory newInstance(final Context context, final CameraThreadConfig threadConfig, CameraSelector availableCamerasLimiter, long cameraOpenRetryMaxTimeoutInMs, CameraXConfig cameraXConfig, StreamSpecsCalculator streamSpecsCalculator) {
        final DurationNs durationNsM1475boximpl = cameraOpenRetryMaxTimeoutInMs == -1 ? null : DurationNs.m1475boximpl(DurationNs.m1477constructorimpl(cameraOpenRetryMaxTimeoutInMs));
        Lazy lazy = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.CameraFactoryProvider$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CameraFactoryProvider.$r8$lambda$ZlHettYjxZNyriDnsgQO8y2N0Rk(this.f$0, context, threadConfig, durationNsM1475boximpl);
            }
        });
        Context context2 = this.sharedAppContext;
        Context context3 = context2 == null ? context : context2;
        CameraThreadConfig cameraThreadConfig = this.sharedThreadConfig;
        CameraThreadConfig cameraThreadConfig2 = cameraThreadConfig == null ? threadConfig : cameraThreadConfig;
        CameraInteropStateCallbackRepository cameraInteropStateCallbackRepository = this.sharedInteropCallbacks;
        if (cameraXConfig == null) {
            cameraXConfig = new CameraXConfig.Builder().build();
        }
        return new CameraFactoryAdapter(lazy, context3, cameraThreadConfig2, cameraInteropStateCallbackRepository, availableCamerasLimiter, streamSpecsCalculator, cameraXConfig);
    }

    public static CameraPipe $r8$lambda$ZlHettYjxZNyriDnsgQO8y2N0Rk(CameraFactoryProvider cameraFactoryProvider, Context context, CameraThreadConfig cameraThreadConfig, DurationNs durationNs) {
        if (cameraFactoryProvider.sharedCameraPipe != null) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Using shared a " + cameraFactoryProvider.sharedCameraPipe + " instance.");
            }
            return cameraFactoryProvider.sharedCameraPipe;
        }
        return cameraFactoryProvider.m985createCameraPipeck8WKOA(context, cameraThreadConfig, durationNs);
    }

    /* JADX INFO: renamed from: createCameraPipe-ck8WKOA, reason: not valid java name */
    private final CameraPipe m985createCameraPipeck8WKOA(Context context, CameraThreadConfig threadConfig, DurationNs openRetryMaxTimeout) {
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection("Create CameraPipe");
            SystemTimeSource systemTimeSource = new SystemTimeSource();
            Timestamps timestamps = Timestamps.INSTANCE;
            long jMo1485nowvQl9yQU = systemTimeSource.mo1485nowvQl9yQU();
            CameraPipe CameraPipe = CameraPipeKt.CameraPipe(new CameraPipe.Config(ContextUtil.getPersistentApplicationContext(context), new CameraPipe.ThreadConfig(null, null, null, CameraXExecutors.newSequentialExecutor(threadConfig.getCameraExecutor()), null, null, null, 119, null), null, null, new CameraPipe.CameraInteropConfig(this.sharedInteropCallbacks.get_deviceStateCallback(), this.sharedInteropCallbacks.getSessionStateCallback(), openRetryMaxTimeout, null), null, null, null, 236, null));
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Created CameraPipe in ".concat(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(DurationNs.m1477constructorimpl(systemTimeSource.mo1485nowvQl9yQU() - jMo1485nowvQl9yQU) / 1000000.0d)}, 1))));
            }
            return CameraPipe;
        } finally {
            Trace.endSection();
        }
    }
}
