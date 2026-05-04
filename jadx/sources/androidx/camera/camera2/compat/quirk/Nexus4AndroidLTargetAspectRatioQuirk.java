package androidx.camera.camera2.compat.quirk;

import androidx.camera.core.impl.Quirk;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
public final class Nexus4AndroidLTargetAspectRatioQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final List DEVICE_MODELS = CollectionsKt.listOf("NEXUS 4");

    public final int getCorrectedAspectRatio() {
        return 2;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            Device.INSTANCE.isGoogleDevice();
            return false;
        }
    }
}
