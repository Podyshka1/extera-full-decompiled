package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import android.util.Size;
import androidx.camera.core.impl.Quirk;
import java.util.Locale;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class SmallDisplaySizeQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final Map MODEL_TO_DISPLAY_SIZE_MAP = MapsKt.mapOf(TuplesKt.m1081to("REDMI NOTE 8", new Size(1080, 2340)), TuplesKt.m1081to("REDMI NOTE 7", new Size(1080, 2340)), TuplesKt.m1081to("SM-A207M", new Size(720, 1560)), TuplesKt.m1081to("REDMI NOTE 7S", new Size(1080, 2340)), TuplesKt.m1081to("SM-A127F", new Size(720, 1600)), TuplesKt.m1081to("SM-A536E", new Size(1080, 2400)), TuplesKt.m1081to("220233L2I", new Size(720, 1600)), TuplesKt.m1081to("V2149", new Size(720, 1600)), TuplesKt.m1081to("VIVO 1920", new Size(1080, 2340)), TuplesKt.m1081to("CPH2223", new Size(1080, 2400)), TuplesKt.m1081to("V2029", new Size(720, 1600)), TuplesKt.m1081to("CPH1901", new Size(720, 1520)), TuplesKt.m1081to("REDMI Y3", new Size(720, 1520)), TuplesKt.m1081to("SM-A045M", new Size(720, 1600)), TuplesKt.m1081to("SM-A146U", new Size(1080, 2408)), TuplesKt.m1081to("CPH1909", new Size(720, 1520)), TuplesKt.m1081to("NOKIA 4.2", new Size(720, 1520)), TuplesKt.m1081to("SM-G960U1", new Size(1440, 2960)), TuplesKt.m1081to("SM-A137F", new Size(1080, 2408)), TuplesKt.m1081to("VIVO 1816", new Size(720, 1520)), TuplesKt.m1081to("INFINIX X6817", new Size(720, 1612)), TuplesKt.m1081to("SM-A037F", new Size(720, 1600)), TuplesKt.m1081to("NOKIA 2.4", new Size(720, 1600)), TuplesKt.m1081to("SM-A125M", new Size(720, 1600)), TuplesKt.m1081to("INFINIX X670", new Size(1080, 2400)));

    public final Size getDisplaySize() {
        Map map = MODEL_TO_DISPLAY_SIZE_MAP;
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        String upperCase = MODEL.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        Object obj = map.get(upperCase);
        Intrinsics.checkNotNull(obj);
        return (Size) obj;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean load() {
            Map map = SmallDisplaySizeQuirk.MODEL_TO_DISPLAY_SIZE_MAP;
            String MODEL = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            String upperCase = MODEL.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            return map.containsKey(upperCase);
        }
    }
}
