package androidx.camera.core.internal.compat.quirk;

import android.os.Build;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.Quirk;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class ImageCaptureFailedForSpecificCombinationQuirk implements Quirk {
    private static final Set<String> PIXEL_MODELS = new HashSet(Arrays.asList("pixel 4a", "pixel 4a (5g)", "pixel 5", "pixel 5a"));

    public static boolean load() {
        return isOnePlus12() || isPixelProblematicDevice();
    }

    private static boolean isOnePlus12() {
        return "oneplus".equalsIgnoreCase(Build.BRAND) && "cph2583".equalsIgnoreCase(Build.MODEL);
    }

    private static boolean isPixelProblematicDevice() {
        return "google".equalsIgnoreCase(Build.BRAND) && PIXEL_MODELS.contains(Build.MODEL.toLowerCase());
    }

    public boolean shouldForceEnableStreamSharing(String str, Collection<UseCase> collection) {
        if (isOnePlus12()) {
            return shouldForceEnableStreamSharingForOnePlus12(str, collection);
        }
        if (isPixelProblematicDevice()) {
            return shouldForceEnableStreamSharingForPixelDevice(str, collection);
        }
        return false;
    }

    private boolean shouldForceEnableStreamSharingForOnePlus12(String str, Collection<UseCase> collection) {
        return str.equals("1") && isVideoCapturePreviewImageCaptureCombination(collection);
    }

    private boolean shouldForceEnableStreamSharingForPixelDevice(String str, Collection<UseCase> collection) {
        return str.equals("1") && isVideoCapturePreviewImageCaptureCombination(collection);
    }

    private boolean isVideoCapturePreviewImageCaptureCombination(Collection<UseCase> collection) {
        if (collection.size() != 3) {
            return false;
        }
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        for (UseCase useCase : collection) {
            if (useCase instanceof Preview) {
                z = true;
            } else if (useCase instanceof ImageCapture) {
                z3 = true;
            } else if (useCase.getCurrentConfig().containsOption(UseCaseConfig.OPTION_CAPTURE_TYPE)) {
                z2 = useCase.getCurrentConfig().getCaptureType() == UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE;
            }
        }
        return z && z2 && z3;
    }
}
