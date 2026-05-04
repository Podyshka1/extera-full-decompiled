package androidx.camera.core.internal.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.Quirk;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class PreviewGreenTintQuirk implements Quirk {
    public static final PreviewGreenTintQuirk INSTANCE = new PreviewGreenTintQuirk();

    private PreviewGreenTintQuirk() {
    }

    private final boolean isMotoE20() {
        return StringsKt.equals("motorola", Build.BRAND, true) && StringsKt.equals("moto e20", Build.MODEL, true);
    }

    public static final boolean load() {
        return INSTANCE.isMotoE20();
    }

    public static final boolean shouldForceEnableStreamSharing(String cameraId, Collection appUseCases) {
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        Intrinsics.checkNotNullParameter(appUseCases, "appUseCases");
        PreviewGreenTintQuirk previewGreenTintQuirk = INSTANCE;
        if (previewGreenTintQuirk.isMotoE20()) {
            return previewGreenTintQuirk.shouldForceEnableStreamSharingForMotoE20(cameraId, appUseCases);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0070 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final boolean shouldForceEnableStreamSharingForMotoE20(String str, Collection collection) {
        boolean z;
        boolean z2;
        if (Intrinsics.areEqual(str, MVEL.VERSION_SUB) && collection.size() == 2) {
            Collection<UseCase> collection2 = collection;
            boolean z3 = collection2 instanceof Collection;
            if (z3 && collection2.isEmpty()) {
                z = false;
                if (z3) {
                    while (r6.hasNext()) {
                    }
                    z2 = false;
                    if (!z) {
                    }
                }
            } else {
                Iterator it = collection2.iterator();
                while (it.hasNext()) {
                    if (((UseCase) it.next()) instanceof Preview) {
                        z = true;
                        break;
                    }
                }
                z = false;
                if (z3 || !collection2.isEmpty()) {
                    for (UseCase useCase : collection2) {
                        if (useCase.getCurrentConfig().containsOption(UseCaseConfig.OPTION_CAPTURE_TYPE) && useCase.getCurrentConfig().getCaptureType() == UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE) {
                            z2 = true;
                            break;
                        }
                    }
                    z2 = false;
                    if (!z && z2) {
                        return true;
                    }
                } else {
                    z2 = false;
                    if (!z) {
                    }
                }
            }
        }
        return false;
    }
}
