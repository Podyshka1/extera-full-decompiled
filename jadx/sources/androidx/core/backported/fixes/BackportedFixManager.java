package androidx.core.backported.fixes;

import android.os.Build;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class BackportedFixManager {
    private final StatusResolver resolver;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Status.values().length];
            try {
                iArr[Status.Unknown.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Status.Fixed.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Status.NotApplicable.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Status.NotFixed.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public BackportedFixManager(StatusResolver resolver) {
        Intrinsics.checkNotNullParameter(resolver, "resolver");
        this.resolver = resolver;
    }

    public BackportedFixManager() {
        this(new SystemPropertyResolver());
    }

    public final boolean isFixed(KnownIssue ki) {
        Intrinsics.checkNotNullParameter(ki, "ki");
        int i = WhenMappings.$EnumSwitchMapping$0[getStatus(ki).ordinal()];
        if (i == 1) {
            return false;
        }
        if (i == 2 || i == 3) {
            return true;
        }
        if (i == 4) {
            return false;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final Status getStatus(KnownIssue ki) {
        Intrinsics.checkNotNullParameter(ki, "ki");
        if (((Boolean) ki.getPrecondition$core_backported_fixes().invoke()).booleanValue()) {
            if (ki.getManuallyTestedFingerprints$core_backported_fixes().contains(Build.FINGERPRINT)) {
                return Status.Fixed;
            }
            return this.resolver.getStatus(ki);
        }
        return Status.NotApplicable;
    }
}
