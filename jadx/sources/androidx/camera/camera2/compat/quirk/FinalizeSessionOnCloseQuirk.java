package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.core.impl.Quirk;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class FinalizeSessionOnCloseQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isEnabled() {
            return true;
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getBehavior-Bm6Tfm4, reason: not valid java name */
        public final int m1410getBehaviorBm6Tfm4() {
            String MODEL = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
            String lowerCase = MODEL.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (StringsKt.startsWith$default(lowerCase, "cph", false, 2, (Object) null)) {
                return CameraGraph.Flags.FinalizeSessionOnCloseBehavior.Companion.m1586getIMMEDIATEBm6Tfm4();
            }
            return CameraGraph.Flags.FinalizeSessionOnCloseBehavior.Companion.m1587getOFFBm6Tfm4();
        }
    }
}
