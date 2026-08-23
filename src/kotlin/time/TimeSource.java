package kotlin.time;

import com.sun.jna.Union$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.jvm.JvmInline;
import kotlin.time.ComparableTimeMark;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@SinceKotlin(version = "1.9")
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u0000 \u00062\u00020\u0001:\u0003\u0004\u0005\u0006J\n\u0010\u0002\u001a\u00020\u0003H¦\u0080\u0004¨\u0006\u0007"}, d2 = {"Lkotlin/time/TimeSource;", _UrlKt.FRAGMENT_ENCODE_SET, "markNow", "Lkotlin/time/TimeMark;", "WithComparableMarks", "Monotonic", "Companion", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
@WasExperimental(markerClass = {ExperimentalTime.class})
public interface TimeSource {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    @SinceKotlin(version = "1.9")
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u00020\u0003H¦\u0080\u0004¨\u0006\u0004"}, d2 = {"Lkotlin/time/TimeSource$WithComparableMarks;", "Lkotlin/time/TimeSource;", "markNow", "Lkotlin/time/ComparableTimeMark;", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
    @WasExperimental(markerClass = {ExperimentalTime.class})
    public interface WithComparableMarks extends TimeSource {
        @Override // kotlin.time.TimeSource
        ComparableTimeMark markNow();
    }

    TimeMark markNow();

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\nB\t\bB¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0004\u001a\u00020\u0005H\u0096\u0080\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\n\u0010\b\u001a\u00020\tH\u0096\u0080\u0004¨\u0006\u000b"}, d2 = {"Lkotlin/time/TimeSource$Monotonic;", "Lkotlin/time/TimeSource$WithComparableMarks;", "<init>", "()V", "markNow", "Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;", "markNow-z9LOYto", "()J", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "ValueTimeMark", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Monotonic implements WithComparableMarks {
        public static final Monotonic INSTANCE = new Monotonic();

        private Monotonic() {
        }

        @Override // kotlin.time.TimeSource.WithComparableMarks, kotlin.time.TimeSource
        public /* bridge */ /* synthetic */ ComparableTimeMark markNow() {
            return ValueTimeMark.m4767boximpl(m4766markNowz9LOYto());
        }

        @Override // kotlin.time.TimeSource
        public /* bridge */ /* synthetic */ TimeMark markNow() {
            return ValueTimeMark.m4767boximpl(m4766markNowz9LOYto());
        }

        /* JADX INFO: renamed from: markNow-z9LOYto, reason: not valid java name */
        public long m4766markNowz9LOYto() {
            return MonotonicTimeSource.INSTANCE.m4761markNowz9LOYto();
        }

        public String toString() {
            return MonotonicTimeSource.INSTANCE.toString();
        }

        @SinceKotlin(version = "1.9")
        @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001B\u0015\b@\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\b\u001a\u00020\tH\u0096\u0080\u0004¢\u0006\u0004\b\n\u0010\u0006J\u0019\u0010\u000b\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\tH\u0096\u0082\u0004¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u000f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\tH\u0096\u0082\u0004¢\u0006\u0004\b\u0010\u0010\u000eJ\u0011\u0010\u0011\u001a\u00020\u0012H\u0096\u0080\u0004¢\u0006\u0004\b\u0013\u0010\u0014J\u0011\u0010\u0015\u001a\u00020\u0012H\u0096\u0080\u0004¢\u0006\u0004\b\u0016\u0010\u0014J\u0019\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0001H\u0096\u0082\u0004¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0000H\u0086\u0082\u0004¢\u0006\u0004\b\u001a\u0010\u000eJ\u0019\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u0000H\u0086\u0082\u0004¢\u0006\u0004\b\u001d\u0010\u001eJ\u0014\u0010\u001f\u001a\u00020\u00122\b\u0010\u0017\u001a\u0004\u0018\u00010 HÖ\u0083\u0004J\n\u0010!\u001a\u00020\u001cHÖ\u0081\u0004J\n\u0010\"\u001a\u00020#HÖ\u0081\u0004R\u0015\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004X\u0080\u0084\b¢\u0006\u0004\n\u0002\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00060\u0003j\u0002`\u0004¨\u0006$"}, d2 = {"Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;", "Lkotlin/time/ComparableTimeMark;", "reading", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/time/ValueTimeMarkReading;", "constructor-impl", "(J)J", "J", "elapsedNow", "Lkotlin/time/Duration;", "elapsedNow-UwyO8pc", "plus", "duration", "plus-LRDsOJo", "(JJ)J", "minus", "minus-LRDsOJo", "hasPassedNow", _UrlKt.FRAGMENT_ENCODE_SET, "hasPassedNow-impl", "(J)Z", "hasNotPassedNow", "hasNotPassedNow-impl", "other", "minus-UwyO8pc", "(JLkotlin/time/ComparableTimeMark;)J", "minus-6eNON_k", "compareTo", _UrlKt.FRAGMENT_ENCODE_SET, "compareTo-6eNON_k", "(JJ)I", "equals", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
        @JvmInline
        @WasExperimental(markerClass = {ExperimentalTime.class})
        public static final class ValueTimeMark implements ComparableTimeMark {
            private final long reading;

            /* JADX INFO: renamed from: box-impl, reason: not valid java name */
            public static final /* synthetic */ ValueTimeMark m4767boximpl(long j) {
                return new ValueTimeMark(j);
            }

            /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
            public static long m4770constructorimpl(long j) {
                return j;
            }

            /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
            public static boolean m4772equalsimpl(long j, Object obj) {
                return (obj instanceof ValueTimeMark) && j == ((ValueTimeMark) obj).getReading();
            }

            /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
            public static final boolean m4773equalsimpl0(long j, long j2) {
                return j == j2;
            }

            /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
            public static int m4776hashCodeimpl(long j) {
                return Long.hashCode(j);
            }

            /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
            public static String m4781toStringimpl(long j) {
                return "ValueTimeMark(reading=" + j + ')';
            }

            @Override // kotlin.time.ComparableTimeMark
            public boolean equals(Object other) {
                return m4772equalsimpl(this.reading, other);
            }

            @Override // kotlin.time.ComparableTimeMark
            public int hashCode() {
                return m4776hashCodeimpl(this.reading);
            }

            public String toString() {
                return m4781toStringimpl(this.reading);
            }

            /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
            public final /* synthetic */ long getReading() {
                return this.reading;
            }

            /* JADX INFO: renamed from: compareTo-impl, reason: not valid java name */
            public static int m4769compareToimpl(long j, ComparableTimeMark comparableTimeMark) {
                return m4767boximpl(j).compareTo(comparableTimeMark);
            }

            @Override // java.lang.Comparable
            public /* bridge */ int compareTo(ComparableTimeMark comparableTimeMark) {
                return ComparableTimeMark.DefaultImpls.compareTo(this, comparableTimeMark);
            }

            @Override // kotlin.time.ComparableTimeMark, kotlin.time.TimeMark
            /* JADX INFO: renamed from: minus-LRDsOJo */
            public /* bridge */ /* synthetic */ ComparableTimeMark mo4637minusLRDsOJo(long j) {
                return m4767boximpl(m4782minusLRDsOJo(j));
            }

            @Override // kotlin.time.TimeMark
            /* JADX INFO: renamed from: minus-LRDsOJo */
            public /* bridge */ /* synthetic */ TimeMark mo4637minusLRDsOJo(long j) {
                return m4767boximpl(m4782minusLRDsOJo(j));
            }

            @Override // kotlin.time.ComparableTimeMark, kotlin.time.TimeMark
            /* JADX INFO: renamed from: plus-LRDsOJo */
            public /* bridge */ /* synthetic */ ComparableTimeMark mo4639plusLRDsOJo(long j) {
                return m4767boximpl(m4783plusLRDsOJo(j));
            }

            @Override // kotlin.time.TimeMark
            /* JADX INFO: renamed from: plus-LRDsOJo */
            public /* bridge */ /* synthetic */ TimeMark mo4639plusLRDsOJo(long j) {
                return m4767boximpl(m4783plusLRDsOJo(j));
            }

            private /* synthetic */ ValueTimeMark(long j) {
                this.reading = j;
            }

            /* JADX INFO: renamed from: elapsedNow-UwyO8pc, reason: not valid java name */
            public static long m4771elapsedNowUwyO8pc(long j) {
                return MonotonicTimeSource.INSTANCE.m4760elapsedFrom6eNON_k(j);
            }

            @Override // kotlin.time.TimeMark
            /* JADX INFO: renamed from: elapsedNow-UwyO8pc */
            public long mo4636elapsedNowUwyO8pc() {
                return m4771elapsedNowUwyO8pc(this.reading);
            }

            /* JADX INFO: renamed from: plus-LRDsOJo, reason: not valid java name */
            public static long m4780plusLRDsOJo(long j, long j2) {
                return MonotonicTimeSource.INSTANCE.m4758adjustReading6QKq23U(j, j2);
            }

            /* JADX INFO: renamed from: plus-LRDsOJo, reason: not valid java name */
            public long m4783plusLRDsOJo(long j) {
                return m4780plusLRDsOJo(this.reading, j);
            }

            /* JADX INFO: renamed from: minus-LRDsOJo, reason: not valid java name */
            public static long m4778minusLRDsOJo(long j, long j2) {
                return MonotonicTimeSource.INSTANCE.m4758adjustReading6QKq23U(j, Duration.m4692unaryMinusUwyO8pc(j2));
            }

            /* JADX INFO: renamed from: minus-LRDsOJo, reason: not valid java name */
            public long m4782minusLRDsOJo(long j) {
                return m4778minusLRDsOJo(this.reading, j);
            }

            /* JADX INFO: renamed from: hasPassedNow-impl, reason: not valid java name */
            public static boolean m4775hasPassedNowimpl(long j) {
                return !Duration.m4674isNegativeimpl(m4771elapsedNowUwyO8pc(j));
            }

            @Override // kotlin.time.TimeMark
            public boolean hasPassedNow() {
                return m4775hasPassedNowimpl(this.reading);
            }

            /* JADX INFO: renamed from: hasNotPassedNow-impl, reason: not valid java name */
            public static boolean m4774hasNotPassedNowimpl(long j) {
                return Duration.m4674isNegativeimpl(m4771elapsedNowUwyO8pc(j));
            }

            @Override // kotlin.time.TimeMark
            public boolean hasNotPassedNow() {
                return m4774hasNotPassedNowimpl(this.reading);
            }

            @Override // kotlin.time.ComparableTimeMark
            /* JADX INFO: renamed from: minus-UwyO8pc */
            public long mo4638minusUwyO8pc(ComparableTimeMark comparableTimeMark) {
                return m4779minusUwyO8pc(this.reading, comparableTimeMark);
            }

            /* JADX INFO: renamed from: minus-UwyO8pc, reason: not valid java name */
            public static long m4779minusUwyO8pc(long j, ComparableTimeMark comparableTimeMark) {
                if (!(comparableTimeMark instanceof ValueTimeMark)) {
                    Union$$ExternalSyntheticBUOutline0.m474m("Subtracting or comparing time marks from different time sources is not possible: ", m4781toStringimpl(j), " and ", comparableTimeMark);
                    return 0L;
                }
                return m4777minus6eNON_k(j, ((ValueTimeMark) comparableTimeMark).getReading());
            }

            /* JADX INFO: renamed from: minus-6eNON_k, reason: not valid java name */
            public static final long m4777minus6eNON_k(long j, long j2) {
                return MonotonicTimeSource.INSTANCE.m4759differenceBetweenfRLX17w(j, j2);
            }

            /* JADX INFO: renamed from: compareTo-6eNON_k, reason: not valid java name */
            public static final int m4768compareTo6eNON_k(long j, long j2) {
                return Duration.m4647compareToLRDsOJo(m4777minus6eNON_k(j, j2), Duration.INSTANCE.m4743getZEROUwyO8pc());
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/time/TimeSource$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }
}
