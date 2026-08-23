package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.impl.Quirk;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class ZslDisablerQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final List AFFECTED_SAMSUNG_MODEL = CollectionsKt.listOf((Object[]) new String[]{"SM-F936", "SM-S901U", "SM-S908U", "SM-S908U1", "SM-F721U1", "SM-S928U1"});
    private static final List AFFECTED_XIAOMI_MODEL = CollectionsKt.listOf("MI 8");

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean load() {
            return isAffectedSamsungDevices() || isAffectedXiaoMiDevices();
        }

        private final boolean isAffectedSamsungDevices() {
            return Device.INSTANCE.isSamsungDevice() && isAffectedModel(ZslDisablerQuirk.AFFECTED_SAMSUNG_MODEL);
        }

        private final boolean isAffectedXiaoMiDevices() {
            return Device.INSTANCE.isXiaomiDevice() && isAffectedModel(ZslDisablerQuirk.AFFECTED_XIAOMI_MODEL);
        }

        private final boolean isAffectedModel(List list) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                String MODEL = Build.MODEL;
                Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
                String upperCase = MODEL.toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                if (StringsKt.startsWith$default(upperCase, str, false, 2, (Object) null)) {
                    return true;
                }
            }
            return false;
        }
    }
}
