package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.impl.Quirk;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class InvalidVideoProfilesQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final List AFFECTED_PIXEL_MODELS = CollectionsKt.listOf((Object[]) new String[]{"pixel 4", "pixel 4a", "pixel 4a (5g)", "pixel 4 xl", "pixel 5", "pixel 5a", "pixel 6", "pixel 6a", "pixel 6 pro", "pixel 7", "pixel 7 pro"});
    private static final List AFFECTED_ONE_PLUS_MODELS = CollectionsKt.listOf((Object[]) new String[]{"cph2417", "cph2451"});
    private static final List AFFECTED_OPPO_MODELS = CollectionsKt.listOf((Object[]) new String[]{"cph2437", "cph2525", "pht110"});

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            return isAffectedSamsungDevices() || isAffectedPixelDevices() || isAffectedXiaomiDevices() || isAffectedOppoDevices() || isAffectedOnePlusDevices();
        }

        private final boolean isAffectedSamsungDevices() {
            return Device.INSTANCE.isSamsungDevice() && isTp1aBuild();
        }

        private final boolean isAffectedPixelDevices() {
            return isAffectedPixelModel() && isAffectedPixelBuild();
        }

        private final boolean isAffectedXiaomiDevices() {
            Device device = Device.INSTANCE;
            if (device.isXiaomiDevice() || device.isRedmiDevice()) {
                return isTkq1Build() || isTp1aBuild();
            }
            return false;
        }

        private final boolean isAffectedOnePlusDevices() {
            return isAffectedOnePlusModel() && isAPI33();
        }

        private final boolean isAffectedOppoDevices() {
            return isAffectedOppoModel() && isAPI33();
        }

        private final boolean isAffectedPixelModel() {
            List list = InvalidVideoProfilesQuirk.AFFECTED_PIXEL_MODELS;
            String MODEL = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            String lowerCase = MODEL.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            return list.contains(lowerCase);
        }

        private final boolean isAffectedOnePlusModel() {
            List list = InvalidVideoProfilesQuirk.AFFECTED_ONE_PLUS_MODELS;
            String MODEL = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            String lowerCase = MODEL.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            return list.contains(lowerCase);
        }

        private final boolean isAffectedOppoModel() {
            List list = InvalidVideoProfilesQuirk.AFFECTED_OPPO_MODELS;
            String MODEL = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            String lowerCase = MODEL.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            return list.contains(lowerCase);
        }

        private final boolean isAffectedPixelBuild() {
            return isTp1aBuild() || isTd1aBuild();
        }

        private final boolean isTp1aBuild() {
            String ID = Build.ID;
            Intrinsics.checkNotNullExpressionValue(ID, "ID");
            return StringsKt.startsWith(ID, "TP1A", true);
        }

        private final boolean isTd1aBuild() {
            String ID = Build.ID;
            Intrinsics.checkNotNullExpressionValue(ID, "ID");
            return StringsKt.startsWith(ID, "TD1A", true);
        }

        private final boolean isTkq1Build() {
            String ID = Build.ID;
            Intrinsics.checkNotNullExpressionValue(ID, "ID");
            return StringsKt.startsWith(ID, "TKQ1", true);
        }

        private final boolean isAPI33() {
            return Build.VERSION.SDK_INT == 33;
        }
    }
}
