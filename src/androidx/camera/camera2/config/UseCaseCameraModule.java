package androidx.camera.camera2.config;

import androidx.camera.camera2.compat.workaround.CapturePipelineTorchCorrection;
import androidx.camera.camera2.impl.CapturePipeline;
import javax.inject.Provider;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class UseCaseCameraModule {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CapturePipeline provideCapturePipeline(Provider capturePipelineImplProvider, Provider capturePipelineTorchCorrectionProvider) {
            Intrinsics.checkNotNullParameter(capturePipelineImplProvider, "capturePipelineImplProvider");
            Intrinsics.checkNotNullParameter(capturePipelineTorchCorrectionProvider, "capturePipelineTorchCorrectionProvider");
            if (CapturePipelineTorchCorrection.Companion.isEnabled()) {
                Object obj = capturePipelineTorchCorrectionProvider.get();
                Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
                return (CapturePipeline) obj;
            }
            Object obj2 = capturePipelineImplProvider.get();
            Intrinsics.checkNotNullExpressionValue(obj2, "get(...)");
            return (CapturePipeline) obj2;
        }
    }
}
