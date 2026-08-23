package kotlin.time;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.jvm.JvmName;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0002\b\u0005¨\u0006\u0006"}, d2 = {"asClock", "Lkotlin/time/Clock;", "Lkotlin/time/TimeSource;", "origin", "Lkotlin/time/Instant;", "fromTimeSource", "kotlin-stdlib"}, m754k = 2, mv = {2, 3, 0}, xi = 48)
public final class ClocksKt {
    @SinceKotlin(version = MVEL.VERSION)
    @WasExperimental(markerClass = {ExperimentalTime.class})
    @JvmName(name = "fromTimeSource")
    public static final Clock fromTimeSource(final TimeSource timeSource, final Instant instant) {
        return new Clock(timeSource, instant) { // from class: kotlin.time.ClocksKt$asClock$1
            final /* synthetic */ Instant $origin;
            private final TimeMark startMark;

            {
                this.$origin = instant;
                this.startMark = timeSource.markNow();
            }

            @Override // kotlin.time.Clock
            public Instant now() {
                return this.$origin.m4753plusLRDsOJo(this.startMark.mo4636elapsedNowUwyO8pc());
            }
        };
    }
}
