package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.internal.compat.quirk.BackportedFixQuirk;
import androidx.core.backported.fixes.KnownIssue;
import androidx.core.backported.fixes.KnownIssues;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class PixelJpegRSupportedQuirk extends BackportedFixQuirk {
    public static final Companion Companion = new Companion(null);

    @Override // androidx.camera.core.internal.compat.quirk.BackportedFixQuirk
    public KnownIssue getKnownIssue() {
        return KnownIssues.KI_398591036;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            return Build.VERSION.SDK_INT >= 34 && new PixelJpegRSupportedQuirk().hasIssue();
        }
    }
}
