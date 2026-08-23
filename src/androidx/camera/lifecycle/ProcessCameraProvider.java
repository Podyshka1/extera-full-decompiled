package androidx.camera.lifecycle;

import android.content.Context;
import androidx.arch.core.util.Function;
import androidx.camera.core.Camera;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraProvider;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.ConcurrentCamera;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.core.util.Preconditions;
import androidx.lifecycle.LifecycleOwner;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Arrays;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class ProcessCameraProvider implements CameraProvider {
    public static final Companion Companion = new Companion(null);
    private static final ProcessCameraProvider sAppInstance = new ProcessCameraProvider(new LifecycleCameraProviderImpl());
    private final LifecycleCameraProviderImpl lifecycleCameraProvider;

    public static final ListenableFuture getInstance(Context context) {
        return Companion.getInstance(context);
    }

    private ProcessCameraProvider(LifecycleCameraProviderImpl lifecycleCameraProviderImpl) {
        this.lifecycleCameraProvider = lifecycleCameraProviderImpl;
    }

    public final void unbindAll() {
        this.lifecycleCameraProvider.unbindAll();
    }

    public final Camera bindToLifecycle(LifecycleOwner lifecycleOwner, CameraSelector cameraSelector, UseCase... useCases) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(cameraSelector, "cameraSelector");
        Intrinsics.checkNotNullParameter(useCases, "useCases");
        return this.lifecycleCameraProvider.bindToLifecycle(lifecycleOwner, cameraSelector, (UseCase[]) Arrays.copyOf(useCases, useCases.length));
    }

    public final ConcurrentCamera bindToLifecycle(List singleCameraConfigs) {
        Intrinsics.checkNotNullParameter(singleCameraConfigs, "singleCameraConfigs");
        return this.lifecycleCameraProvider.bindToLifecycle(singleCameraConfigs);
    }

    public List getAvailableCameraInfos() {
        return this.lifecycleCameraProvider.getAvailableCameraInfos();
    }

    public List getAvailableConcurrentCameraInfos() {
        return this.lifecycleCameraProvider.getAvailableConcurrentCameraInfos();
    }

    public boolean hasCamera(CameraSelector cameraSelector) {
        Intrinsics.checkNotNullParameter(cameraSelector, "cameraSelector");
        return this.lifecycleCameraProvider.hasCamera(cameraSelector);
    }

    public CameraInfo getCameraInfo(CameraSelector cameraSelector) {
        Intrinsics.checkNotNullParameter(cameraSelector, "cameraSelector");
        return this.lifecycleCameraProvider.getCameraInfo(cameraSelector);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ListenableFuture initAsync(Context context) {
        return this.lifecycleCameraProvider.initAsync$camera_lifecycle(context, null);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ListenableFuture getInstance(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            Preconditions.checkNotNull(context);
            ListenableFuture listenableFutureInitAsync = ProcessCameraProvider.sAppInstance.initAsync(context);
            final Function1 function1 = new Function1() { // from class: androidx.camera.lifecycle.ProcessCameraProvider$Companion$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ProcessCameraProvider.Companion.getInstance$lambda$0((Void) obj);
                }
            };
            ListenableFuture listenableFutureTransform = Futures.transform(listenableFutureInitAsync, new Function() { // from class: androidx.camera.lifecycle.ProcessCameraProvider$Companion$$ExternalSyntheticLambda1
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return ProcessCameraProvider.Companion.getInstance$lambda$1(function1, obj);
                }
            }, CameraXExecutors.directExecutor());
            Intrinsics.checkNotNullExpressionValue(listenableFutureTransform, "transform(...)");
            return listenableFutureTransform;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final ProcessCameraProvider getInstance$lambda$0(Void r0) {
            return ProcessCameraProvider.sAppInstance;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final ProcessCameraProvider getInstance$lambda$1(Function1 function1, Object obj) {
            return (ProcessCameraProvider) function1.invoke(obj);
        }
    }
}
