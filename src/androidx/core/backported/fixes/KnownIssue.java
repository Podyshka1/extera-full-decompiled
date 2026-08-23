package androidx.core.backported.fixes;

import androidx.camera.camera2.pipe.CameraTimestamp$$ExternalSyntheticBackport0;
import java.util.Set;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class KnownIssue {
    private final Integer alias;

    /* JADX INFO: renamed from: id */
    private final long f40id;
    private final Set manuallyTestedFingerprints;
    private final Function0 precondition;
    private final String url;

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$0() {
        return true;
    }

    public KnownIssue(long j, Integer num, Set manuallyTestedFingerprints, Function0 precondition) {
        Intrinsics.checkNotNullParameter(manuallyTestedFingerprints, "manuallyTestedFingerprints");
        Intrinsics.checkNotNullParameter(precondition, "precondition");
        this.f40id = j;
        this.alias = num;
        this.manuallyTestedFingerprints = manuallyTestedFingerprints;
        this.precondition = precondition;
        this.url = "https://issuetracker.google.com/issues/" + j;
    }

    public final Integer getAlias$core_backported_fixes() {
        return this.alias;
    }

    public /* synthetic */ KnownIssue(long j, Integer num, Set set, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, num, (i & 4) != 0 ? SetsKt.emptySet() : set, (i & 8) != 0 ? new Function0() { // from class: androidx.core.backported.fixes.KnownIssue$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(KnownIssue._init_$lambda$0());
            }
        } : function0);
    }

    public final Set getManuallyTestedFingerprints$core_backported_fixes() {
        return this.manuallyTestedFingerprints;
    }

    public final Function0 getPrecondition$core_backported_fixes() {
        return this.precondition;
    }

    public boolean equals(Object obj) {
        return (obj instanceof KnownIssue) && this.f40id == ((KnownIssue) obj).f40id;
    }

    public int hashCode() {
        return CameraTimestamp$$ExternalSyntheticBackport0.m47m(this.f40id);
    }

    public String toString() {
        if (this.alias == null) {
            return this.f40id + " without alias";
        }
        return this.f40id + " with alias " + this.alias.intValue();
    }
}
