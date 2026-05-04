package androidx.camera.core.impl.utils;

import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class UseCaseUtil {
    public static final UseCaseUtil INSTANCE = new UseCaseUtil();

    private UseCaseUtil() {
    }

    public static final boolean containsVideoCapture(Collection collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            UseCase useCase = (UseCase) it.next();
            if (useCase != null && isVideoCapture(useCase)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean isVideoCapture(UseCase useCase) {
        Intrinsics.checkNotNullParameter(useCase, "<this>");
        if (useCase.getCurrentConfig().containsOption(UseCaseConfig.OPTION_CAPTURE_TYPE)) {
            return useCase.getCurrentConfig().getCaptureType() == UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE;
        }
        Logger.m78e("UseCaseUtil", useCase + " UseCase does not have capture type.");
        return false;
    }

    public static /* synthetic */ VideoStabilization getVideoStabilization$default(Collection collection, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = new Function1() { // from class: androidx.camera.core.impl.utils.UseCaseUtil$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return UseCaseUtil.getVideoStabilization$lambda$0((UseCase) obj2);
                }
            };
        }
        return getVideoStabilization(collection, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UseCaseConfig getVideoStabilization$lambda$0(UseCase it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getCurrentConfig();
    }

    public static final VideoStabilization getVideoStabilization(Collection collection, Function1 configProvider) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(configProvider, "configProvider");
        VideoStabilization.Companion companion = VideoStabilization.Companion;
        UseCaseUtil useCaseUtil = INSTANCE;
        return companion.from$camera_core(useCaseUtil.getPreviewStabilizationMode(collection, configProvider), useCaseUtil.getVideoStabilizationMode(collection, configProvider));
    }

    private final int getPreviewStabilizationMode(Collection collection, Function1 function1) {
        Iterator it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            int previewStabilizationMode = ((UseCaseConfig) function1.invoke((UseCase) it.next())).getPreviewStabilizationMode();
            if (previewStabilizationMode != 0) {
                if (i != previewStabilizationMode && i != 0) {
                    Logger.m81w("UseCaseUtil", "Unexpected configurations: Overwriting current previewStabilizationMode(" + i + ") with useCasePreviewStabilization(" + previewStabilizationMode + ")!");
                }
                i = previewStabilizationMode;
            }
        }
        return i;
    }

    private final int getVideoStabilizationMode(Collection collection, Function1 function1) {
        Iterator it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            int videoStabilizationMode = ((UseCaseConfig) function1.invoke((UseCase) it.next())).getVideoStabilizationMode();
            if (videoStabilizationMode != 0) {
                if (i != videoStabilizationMode && i != 0) {
                    Logger.m81w("UseCaseUtil", "Unexpected configurations: Overwriting current videoStabilizationMode(" + i + ") with useCaseVideoStabilization(" + videoStabilizationMode + ")!");
                }
                i = videoStabilizationMode;
            }
        }
        return i;
    }
}
