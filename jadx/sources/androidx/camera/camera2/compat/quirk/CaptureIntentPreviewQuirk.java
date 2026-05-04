package androidx.camera.camera2.compat.quirk;

import androidx.camera.core.impl.Quirk;
import androidx.camera.core.impl.Quirks;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface CaptureIntentPreviewQuirk extends Quirk {
    public static final Companion Companion = Companion.$$INSTANCE;

    boolean workaroundByCaptureIntentPreview();

    /* JADX INFO: renamed from: androidx.camera.camera2.compat.quirk.CaptureIntentPreviewQuirk$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static boolean $default$workaroundByCaptureIntentPreview(CaptureIntentPreviewQuirk captureIntentPreviewQuirk) {
            return true;
        }
    }

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final boolean workaroundByCaptureIntentPreview(Quirks quirks) {
            Intrinsics.checkNotNullParameter(quirks, "quirks");
            Iterator it = quirks.getAll(CaptureIntentPreviewQuirk.class).iterator();
            while (it.hasNext()) {
                if (((CaptureIntentPreviewQuirk) it.next()).workaroundByCaptureIntentPreview()) {
                    return true;
                }
            }
            return false;
        }
    }
}
