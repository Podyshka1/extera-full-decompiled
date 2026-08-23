package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.OutputStatus;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0081@\u0018\u0000 \u0019*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002:\u0001\u0019B\u0013\b\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\t\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\r\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0012\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0000X\u0080\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0013R\u0011\u0010\u0016\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0018\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0015\u0088\u0001\u0003\u0092\u0001\u0004\u0018\u00010\u0002¨\u0006\u001a"}, d2 = {"Landroidx/camera/camera2/pipe/internal/OutputResult;", "T", _UrlKt.FRAGMENT_ENCODE_SET, "result", "constructor-impl", "(Ljava/lang/Object;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(Ljava/lang/Object;)Ljava/lang/String;", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode-impl", "(Ljava/lang/Object;)I", "hashCode", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals-impl", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "equals", "Ljava/lang/Object;", "getAvailable-impl", "(Ljava/lang/Object;)Z", "available", "getFailure-impl", "failure", "Companion", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class OutputResult<T> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Object result;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ OutputResult m1551boximpl(Object obj) {
        return new OutputResult(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static <T> Object m1552constructorimpl(Object obj) {
        return obj;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1553equalsimpl(Object obj, Object obj2) {
        return (obj2 instanceof OutputResult) && Intrinsics.areEqual(obj, ((OutputResult) obj2).getResult());
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1556hashCodeimpl(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1557toStringimpl(Object obj) {
        return "OutputResult(result=" + obj + ')';
    }

    public boolean equals(Object obj) {
        return m1553equalsimpl(this.result, obj);
    }

    public int hashCode() {
        return m1556hashCodeimpl(this.result);
    }

    public String toString() {
        return m1557toStringimpl(this.result);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ Object getResult() {
        return this.result;
    }

    private /* synthetic */ OutputResult(Object obj) {
        this.result = obj;
    }

    /* JADX INFO: renamed from: getAvailable-impl, reason: not valid java name */
    public static final boolean m1554getAvailableimpl(Object obj) {
        return (m1555getFailureimpl(obj) || obj == null) ? false : true;
    }

    /* JADX INFO: renamed from: getFailure-impl, reason: not valid java name */
    public static final boolean m1555getFailureimpl(Object obj) {
        return obj instanceof OutputStatus;
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/camera/camera2/pipe/internal/OutputResult$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nOutputResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutputResult.kt\nandroidx/camera/camera2/pipe/internal/OutputResult$Companion\n+ 2 OutputResult.kt\nandroidx/camera/camera2/pipe/internal/OutputResult\n*L\n1#1,110:1\n64#1:111\n68#1:112\n55#2,5:113\n44#2,4:118\n*S KotlinDebug\n*F\n+ 1 OutputResult.kt\nandroidx/camera/camera2/pipe/internal/OutputResult$Companion\n*L\n72#1:111\n79#1:112\n97#1:113,5\n104#1:118,4\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
