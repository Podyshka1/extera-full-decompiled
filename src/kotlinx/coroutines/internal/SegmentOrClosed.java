package kotlinx.coroutines.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class SegmentOrClosed {
    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static Object m3696constructorimpl(Object obj) {
        return obj;
    }

    /* JADX INFO: renamed from: isClosed-impl, reason: not valid java name */
    public static final boolean m3698isClosedimpl(Object obj) {
        return obj == ConcurrentLinkedListKt.CLOSED;
    }

    /* JADX INFO: renamed from: getSegment-impl, reason: not valid java name */
    public static final Segment m3697getSegmentimpl(Object obj) {
        if (obj == ConcurrentLinkedListKt.CLOSED) {
            throw new IllegalStateException("Does not contain segment");
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type S of kotlinx.coroutines.internal.SegmentOrClosed");
        return (Segment) obj;
    }
}
