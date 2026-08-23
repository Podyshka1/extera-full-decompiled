package kotlin.time;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@SinceKotlin(version = "1.9")
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\u0011\u0010\u0002\u001a\u00020\u0003H¦\u0080\u0004¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0003H\u0096\u0082\u0004¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\n\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0003H\u0096\u0082\u0004¢\u0006\u0004\b\u000b\u0010\tJ\n\u0010\f\u001a\u00020\rH\u0096\u0080\u0004J\n\u0010\u000e\u001a\u00020\rH\u0096\u0080\u0004¨\u0006\u000f"}, d2 = {"Lkotlin/time/TimeMark;", _UrlKt.FRAGMENT_ENCODE_SET, "elapsedNow", "Lkotlin/time/Duration;", "elapsedNow-UwyO8pc", "()J", "plus", "duration", "plus-LRDsOJo", "(J)Lkotlin/time/TimeMark;", "minus", "minus-LRDsOJo", "hasPassedNow", _UrlKt.FRAGMENT_ENCODE_SET, "hasNotPassedNow", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
@WasExperimental(markerClass = {ExperimentalTime.class})
public interface TimeMark {
    /* JADX INFO: renamed from: elapsedNow-UwyO8pc */
    long mo4636elapsedNowUwyO8pc();

    boolean hasNotPassedNow();

    boolean hasPassedNow();

    /* JADX INFO: renamed from: minus-LRDsOJo */
    TimeMark mo4637minusLRDsOJo(long duration);

    /* JADX INFO: renamed from: plus-LRDsOJo */
    TimeMark mo4639plusLRDsOJo(long duration);

    @Metadata(m754k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class DefaultImpls {
        /* JADX INFO: renamed from: plus-LRDsOJo, reason: not valid java name */
        public static TimeMark m4765plusLRDsOJo(TimeMark timeMark, long j) {
            return new AdjustedTimeMark(timeMark, j, null);
        }

        /* JADX INFO: renamed from: minus-LRDsOJo, reason: not valid java name */
        public static TimeMark m4764minusLRDsOJo(TimeMark timeMark, long j) {
            return timeMark.mo4639plusLRDsOJo(Duration.m4692unaryMinusUwyO8pc(j));
        }

        public static boolean hasPassedNow(TimeMark timeMark) {
            return !Duration.m4674isNegativeimpl(timeMark.mo4636elapsedNowUwyO8pc());
        }

        public static boolean hasNotPassedNow(TimeMark timeMark) {
            return Duration.m4674isNegativeimpl(timeMark.mo4636elapsedNowUwyO8pc());
        }
    }
}
