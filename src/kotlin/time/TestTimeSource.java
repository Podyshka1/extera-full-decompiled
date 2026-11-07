package kotlin.time;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@SinceKotlin(version = "1.9")
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\t\bF¢\u0006\u0004\b\u0002\u0010\u0003J\n\u0010\u0006\u001a\u00020\u0005H\u0094\u0080\u0004J\u0019\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0086\u0082\u0004¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\r\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0082\u0080\u0004¢\u0006\u0004\b\u000e\u0010\fR\u000f\u0010\u0004\u001a\u00020\u0005X\u0082\u008e\b¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lkotlin/time/TestTimeSource;", "Lkotlin/time/AbstractLongTimeSource;", "<init>", "()V", "reading", _UrlKt.FRAGMENT_ENCODE_SET, "read", "plusAssign", _UrlKt.FRAGMENT_ENCODE_SET, "duration", "Lkotlin/time/Duration;", "plusAssign-LRDsOJo", "(J)V", "overflow", "overflow-LRDsOJo", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
@WasExperimental(markerClass = {ExperimentalTime.class})
@SourceDebugExtension({"SMAP\nTimeSources.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeSources.kt\nkotlin/time/TestTimeSource\n+ 2 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,210:1\n80#2:211\n80#2:212\n*S KotlinDebug\n*F\n+ 1 TimeSources.kt\nkotlin/time/TestTimeSource\n*L\n184#1:211\n191#1:212\n*E\n"})
public final class TestTimeSource extends AbstractLongTimeSource {
    private long reading;

    public TestTimeSource() {
        super(DurationUnit.NANOSECONDS);
        markNow();
    }

    @Override // kotlin.time.AbstractLongTimeSource
    /* JADX INFO: renamed from: read, reason: from getter */
    public long getReading() {
        return this.reading;
    }

    /* JADX INFO: renamed from: plusAssign-LRDsOJo, reason: not valid java name */
    public final void m4559plusAssignLRDsOJo(long duration) {
        long jM4483toLongimpl = Duration.m4483toLongimpl(duration, getUnit());
        if (((jM4483toLongimpl - 1) | 1) != LongCompanionObject.MAX_VALUE) {
            long j = this.reading;
            long j2 = j + jM4483toLongimpl;
            if ((jM4483toLongimpl ^ j) >= 0 && (j ^ j2) < 0) {
                m4558overflowLRDsOJo(duration);
            }
            this.reading = j2;
            return;
        }
        long jM4447divUwyO8pc = Duration.m4447divUwyO8pc(duration, 2);
        if ((1 | (Duration.m4483toLongimpl(jM4447divUwyO8pc, getUnit()) - 1)) != LongCompanionObject.MAX_VALUE) {
            long j3 = this.reading;
            try {
                m4559plusAssignLRDsOJo(jM4447divUwyO8pc);
                m4559plusAssignLRDsOJo(Duration.m4472minusLRDsOJo(duration, jM4447divUwyO8pc));
                return;
            } catch (IllegalStateException e) {
                this.reading = j3;
                throw e;
            }
        }
        m4558overflowLRDsOJo(duration);
    }

    /* JADX INFO: renamed from: overflow-LRDsOJo, reason: not valid java name */
    private final void m4558overflowLRDsOJo(long duration) {
        throw new IllegalStateException("TestTimeSource will overflow if its reading " + this.reading + DurationUnitKt__DurationUnitKt.shortName(getUnit()) + " is advanced by " + ((Object) Duration.m4484toStringimpl(duration)) + '.');
    }
}
