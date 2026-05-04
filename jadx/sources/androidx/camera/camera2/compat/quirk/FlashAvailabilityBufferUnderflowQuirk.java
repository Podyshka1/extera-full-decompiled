package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.impl.Quirk;
import java.util.Locale;
import java.util.Set;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class FlashAvailabilityBufferUnderflowQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final Set KNOWN_AFFECTED_MODELS;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            Set set = FlashAvailabilityBufferUnderflowQuirk.KNOWN_AFFECTED_MODELS;
            DeviceInfo.Companion companion = DeviceInfo.Companion;
            String MANUFACTURER = Build.MANUFACTURER;
            Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
            String MODEL = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            return set.contains(companion.invoke(MANUFACTURER, MODEL));
        }
    }

    static {
        DeviceInfo.Companion companion = DeviceInfo.Companion;
        KNOWN_AFFECTED_MODELS = SetsKt.setOf((Object[]) new DeviceInfo[]{companion.invoke("sprd", "lemp"), companion.invoke("sprd", "DM20C")});
    }

    public static final class DeviceInfo {
        public static final Companion Companion = new Companion(null);
        private final String manufacturer;
        private final String model;

        public /* synthetic */ DeviceInfo(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DeviceInfo)) {
                return false;
            }
            DeviceInfo deviceInfo = (DeviceInfo) obj;
            return Intrinsics.areEqual(this.manufacturer, deviceInfo.manufacturer) && Intrinsics.areEqual(this.model, deviceInfo.model);
        }

        public int hashCode() {
            return (this.manufacturer.hashCode() * 31) + this.model.hashCode();
        }

        public String toString() {
            return "DeviceInfo(manufacturer=" + this.manufacturer + ", model=" + this.model + ')';
        }

        private DeviceInfo(String str, String str2) {
            this.manufacturer = str;
            this.model = str2;
        }

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final DeviceInfo invoke(String manufacturer, String model) {
                Intrinsics.checkNotNullParameter(manufacturer, "manufacturer");
                Intrinsics.checkNotNullParameter(model, "model");
                Locale US = Locale.US;
                Intrinsics.checkNotNullExpressionValue(US, "US");
                String lowerCase = manufacturer.toLowerCase(US);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                Intrinsics.checkNotNullExpressionValue(US, "US");
                String lowerCase2 = model.toLowerCase(US);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                return new DeviceInfo(lowerCase, lowerCase2, null);
            }
        }
    }
}
