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
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
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
    public CameraFactory newInstance(final Context context, final CameraThreadConfig threadConfig, CameraSelector cameraSelector, long j, CameraXConfig cameraXConfig, StreamSpecsCalculator streamSpecsCalculator) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(threadConfig, "threadConfig");
        Intrinsics.checkNotNullParameter(streamSpecsCalculator, "streamSpecsCalculator");
        final DurationNs durationNsM1878boximpl = j == -1 ? null : DurationNs.m1878boximpl(DurationNs.m1880constructorimpl(j));
        Lazy lazy = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.CameraFactoryProvider$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CameraFactoryProvider.newInstance$lambda$0(this.f$0, context, threadConfig, durationNsM1878boximpl);
            }
        });
        Context context2 = this.sharedAppContext;
        Context context3 = context2 == null ? context : context2;
        CameraThreadConfig cameraThreadConfig = this.sharedThreadConfig;
        CameraThreadConfig cameraThreadConfig2 = cameraThreadConfig == null ? threadConfig : cameraThreadConfig;
        CameraInteropStateCallbackRepository cameraInteropStateCallbackRepository = this.sharedInteropCallbacks;
        if (cameraXConfig == null) {
            cameraXConfig = new CameraXConfig.Builder().build();
            Intrinsics.checkNotNullExpressionValue(cameraXConfig, "build(...)");
        }
        return new CameraFactoryAdapter(lazy, context3, cameraThreadConfig2, cameraInteropStateCallbackRepository, cameraSelector, streamSpecsCalculator, cameraXConfig);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraPipe newInstance$lambda$0(CameraFactoryProvider cameraFactoryProvider, Context context, CameraThreadConfig cameraThreadConfig, DurationNs durationNs) {
        if (cameraFactoryProvider.sharedCameraPipe != null) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Using shared a " + cameraFactoryProvider.sharedCameraPipe + " instance.");
            }
            return cameraFactoryProvider.sharedCameraPipe;
        }
        return cameraFactoryProvider.m1378createCameraPipeck8WKOA(context, cameraThreadConfig, durationNs);
    }

    /* JADX INFO: renamed from: createCameraPipe-ck8WKOA, reason: not valid java name */
    private final CameraPipe m1378createCameraPipeck8WKOA(Context context, CameraThreadConfig cameraThreadConfig, DurationNs durationNs) {
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection("Create CameraPipe");
            SystemTimeSource systemTimeSource = new SystemTimeSource();
            Timestamps timestamps = Timestamps.INSTANCE;
            long jMo1888nowvQl9yQU = systemTimeSource.mo1888nowvQl9yQU();
            Context persistentApplicationContext = ContextUtil.getPersistentApplicationContext(context);
            Intrinsics.checkNotNullExpressionValue(persistentApplicationContext, "getPersistentApplicationContext(...)");
            CameraPipe CameraPipe = CameraPipeKt.CameraPipe(new CameraPipe.Config(persistentApplicationContext, new CameraPipe.ThreadConfig(null, null, null, CameraXExecutors.newSequentialExecutor(cameraThreadConfig.getCameraExecutor()), null, null, null, 119, null), null, null, new CameraPipe.CameraInteropConfig(this.sharedInteropCallbacks.getDeviceStateCallback(), this.sharedInteropCallbacks.getSessionStateCallback(), durationNs, null), null, null, null, 236, null));
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                String str = Camera2Logger.TRUNCATED_TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("Created CameraPipe in ");
                String str2 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(DurationNs.m1880constructorimpl(systemTimeSource.mo1888nowvQl9yQU() - jMo1888nowvQl9yQU) / 1000000.0d)}, 1));
                Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
                sb.append(str2);
                Log.d(str, sb.toString());
            }
            return CameraPipe;
        } finally {
            Trace.endSection();
        }
    }
}
