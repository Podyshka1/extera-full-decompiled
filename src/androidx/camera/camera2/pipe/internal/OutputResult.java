package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.OutputStatus;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OutputResult {
    public static final Companion Companion = new Companion(null);
    private final Object result;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ OutputResult m1954boximpl(Object obj) {
        return new OutputResult(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static Object m1955constructorimpl(Object obj) {
        return obj;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1956equalsimpl(Object obj, Object obj2) {
        return (obj2 instanceof OutputResult) && Intrinsics.areEqual(obj, ((OutputResult) obj2).m1961unboximpl());
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1959hashCodeimpl(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1960toStringimpl(Object obj) {
        return "OutputResult(result=" + obj + ')';
    }

    public boolean equals(Object obj) {
        return m1956equalsimpl(this.result, obj);
    }

    public int hashCode() {
        return m1959hashCodeimpl(this.result);
    }

    public String toString() {
        return m1960toStringimpl(this.result);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ Object m1961unboximpl() {
        return this.result;
    }

    private /* synthetic */ OutputResult(Object obj) {
        this.result = obj;
    }

    /* JADX INFO: renamed from: getAvailable-impl, reason: not valid java name */
    public static final boolean m1957getAvailableimpl(Object obj) {
        return (m1958getFailureimpl(obj) || obj == null) ? false : true;
    }

    /* JADX INFO: renamed from: getFailure-impl, reason: not valid java name */
    public static final boolean m1958getFailureimpl(Object obj) {
        return obj instanceof OutputStatus;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
