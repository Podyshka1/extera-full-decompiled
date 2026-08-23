package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\b\u0087@\u0018\u0000  *\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002:\u0003!\" B\u0013\b\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0006\u0010\u0005J\r\u0010\t\u001a\u00028\u0000¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\r\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0013\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0002HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0000X\u0081\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0019\u0012\u0004\b\u001a\u0010\u001bR\u0011\u0010\u001d\u001a\u00020\u00168F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0018R\u0011\u0010\u001f\u001a\u00020\u00168F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u0018\u0088\u0001\u0003\u0092\u0001\u0004\u0018\u00010\u0002¨\u0006#"}, d2 = {"Lkotlinx/coroutines/channels/ChannelResult;", "T", _UrlKt.FRAGMENT_ENCODE_SET, "holder", "constructor-impl", "(Ljava/lang/Object;)Ljava/lang/Object;", "getOrNull-impl", "getOrNull", "getOrThrow-impl", "getOrThrow", _UrlKt.FRAGMENT_ENCODE_SET, "exceptionOrNull-impl", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "exceptionOrNull", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(Ljava/lang/Object;)Ljava/lang/String;", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/Object;", "getHolder$annotations", "()V", "isSuccess-impl", "isSuccess", "isClosed-impl", "isClosed", "Companion", "Failed", "Closed", "kotlinx-coroutines-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
@SourceDebugExtension({"SMAP\nChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channel.kt\nkotlinx/coroutines/channels/ChannelResult\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1485:1\n1#2:1486\n*E\n"})
public final class ChannelResult<T> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Failed failed = new Failed();
    private final Object holder;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ChannelResult m4810boximpl(Object obj) {
        return new ChannelResult(obj);
    }

    @PublishedApi
    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static <T> Object m4811constructorimpl(Object obj) {
        return obj;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m4812equalsimpl(Object obj, Object obj2) {
        return (obj2 instanceof ChannelResult) && Intrinsics.areEqual(obj, ((ChannelResult) obj2).getHolder());
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m4816hashCodeimpl(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public boolean equals(Object other) {
        return m4812equalsimpl(this.holder, other);
    }

    public int hashCode() {
        return m4816hashCodeimpl(this.holder);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ Object getHolder() {
        return this.holder;
    }

    @PublishedApi
    private /* synthetic */ ChannelResult(Object obj) {
        this.holder = obj;
    }

    /* JADX INFO: renamed from: isSuccess-impl, reason: not valid java name */
    public static final boolean m4818isSuccessimpl(Object obj) {
        return !(obj instanceof Failed);
    }

    /* JADX INFO: renamed from: isClosed-impl, reason: not valid java name */
    public static final boolean m4817isClosedimpl(Object obj) {
        return obj instanceof Closed;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getOrNull-impl, reason: not valid java name */
    public static final T m4814getOrNullimpl(Object obj) {
        if (obj instanceof Failed) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getOrThrow-impl, reason: not valid java name */
    public static final T m4815getOrThrowimpl(Object obj) throws Throwable {
        if (!(obj instanceof Failed)) {
            return obj;
        }
        if (obj instanceof Closed) {
            Throwable th = ((Closed) obj).cause;
            if (th != null) {
                throw th;
            }
            Segment$$ExternalSyntheticBUOutline1.m848m("Trying to call 'getOrThrow' on a channel closed without a cause");
            return null;
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("Trying to call 'getOrThrow' on a failed result of a non-closed channel");
        return null;
    }

    /* JADX INFO: renamed from: exceptionOrNull-impl, reason: not valid java name */
    public static final Throwable m4813exceptionOrNullimpl(Object obj) {
        Closed closed = obj instanceof Closed ? (Closed) obj : null;
        if (closed != null) {
            return closed.cause;
        }
        return null;
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0010\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/channels/ChannelResult$Failed;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "kotlinx-coroutines-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static class Failed {
        public String toString() {
            return "Failed";
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0013\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0096\u0002J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0016R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/channels/ChannelResult$Closed;", "Lkotlinx/coroutines/channels/ChannelResult$Failed;", "cause", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/Throwable;)V", "equals", _UrlKt.FRAGMENT_ENCODE_SET, "other", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", _UrlKt.FRAGMENT_ENCODE_SET, "toString", _UrlKt.FRAGMENT_ENCODE_SET, "kotlinx-coroutines-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Closed extends Failed {

        @JvmField
        public final Throwable cause;

        public Closed(Throwable th) {
            this.cause = th;
        }

        public boolean equals(Object other) {
            return (other instanceof Closed) && Intrinsics.areEqual(this.cause, ((Closed) other).cause);
        }

        public int hashCode() {
            Throwable th = this.cause;
            if (th != null) {
                return th.hashCode();
            }
            return 0;
        }

        @Override // kotlinx.coroutines.channels.ChannelResult.Failed
        public String toString() {
            return "Closed(" + this.cause + ')';
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0003\n\u0002\b\u0003\b\u0087\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\b0\u0007\"\u0004\b\u0001\u0010\b2\u0006\u0010\t\u001a\u0002H\bH\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\b0\u0007\"\u0004\b\u0001\u0010\bH\u0007¢\u0006\u0004\b\r\u0010\u000eJ%\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\b0\u0007\"\u0004\b\u0001\u0010\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007¢\u0006\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/channels/ChannelResult$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "failed", "Lkotlinx/coroutines/channels/ChannelResult$Failed;", "success", "Lkotlinx/coroutines/channels/ChannelResult;", "E", "value", "success-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "failure", "failure-PtdJZtk", "()Ljava/lang/Object;", "closed", "cause", _UrlKt.FRAGMENT_ENCODE_SET, "closed-JP2dKIU", "(Ljava/lang/Throwable;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: success-JP2dKIU, reason: not valid java name */
        public final <E> Object m4823successJP2dKIU(E value) {
            return ChannelResult.m4811constructorimpl(value);
        }

        /* JADX INFO: renamed from: failure-PtdJZtk, reason: not valid java name */
        public final <E> Object m4822failurePtdJZtk() {
            return ChannelResult.m4811constructorimpl(ChannelResult.failed);
        }

        /* JADX INFO: renamed from: closed-JP2dKIU, reason: not valid java name */
        public final <E> Object m4821closedJP2dKIU(Throwable cause) {
            return ChannelResult.m4811constructorimpl(new Closed(cause));
        }
    }

    public String toString() {
        return m4819toStringimpl(this.holder);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m4819toStringimpl(Object obj) {
        if (obj instanceof Closed) {
            return ((Closed) obj).toString();
        }
        return "Value(" + obj + ')';
    }
}
