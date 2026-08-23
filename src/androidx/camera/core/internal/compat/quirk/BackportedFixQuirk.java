package androidx.camera.core.internal.compat.quirk;

import android.annotation.SuppressLint;
import androidx.camera.core.impl.Quirk;
import androidx.core.backported.fixes.BackportedFixManager;
import androidx.core.backported.fixes.KnownIssue;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public abstract class BackportedFixQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final Lazy backportedFixManager$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.core.internal.compat.quirk.BackportedFixQuirk$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return BackportedFixQuirk.backportedFixManager_delegate$lambda$0();
        }
    });

    public abstract KnownIssue getKnownIssue();

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BackportedFixManager getBackportedFixManager() {
            return (BackportedFixManager) BackportedFixQuirk.backportedFixManager$delegate.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BackportedFixManager backportedFixManager_delegate$lambda$0() {
        return new BackportedFixManager();
    }

    public final boolean hasIssue() {
        return !Companion.getBackportedFixManager().isFixed(getKnownIssue());
    }
}
