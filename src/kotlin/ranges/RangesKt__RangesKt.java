package kotlin.ranges;

import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;
import okhttp3.MediaType$Companion$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u001c\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0004\n\u0000\u001a1\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003*\u0002H\u00022\u0006\u0010\u0004\u001a\u0002H\u0002H\u0086\u0082\u0004¢\u0006\u0002\u0010\u0005\u001a1\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007\"\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003*\u0002H\u00022\u0006\u0010\u0004\u001a\u0002H\u0002H\u0087\u0082\u0004¢\u0006\u0002\u0010\b\u001a\u001c\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\n0\t*\u00020\n2\u0006\u0010\u0004\u001a\u00020\nH\u0087\u0082\u0004\u001a\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\n0\u0007*\u00020\n2\u0006\u0010\u0004\u001a\u00020\nH\u0087\u0082\u0004\u001a\u001c\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u000b0\t*\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u000bH\u0087\u0082\u0004\u001a\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0007*\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u000bH\u0087\u0082\u0004\u001aG\u0010\f\u001a\u00020\r\"\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003\"\u0018\b\u0001\u0010\u000e*\b\u0012\u0004\u0012\u0002H\u00020\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u000f*\u0002H\u000e2\b\u0010\u0010\u001a\u0004\u0018\u0001H\u0002H\u0087\u008a\u0004¢\u0006\u0002\u0010\u0011\u001aA\u0010\f\u001a\u00020\r\"\b\b\u0000\u0010\u0002*\u00020\u0012\"\u0018\b\u0001\u0010\u000e*\b\u0012\u0004\u0012\u0002H\u00020\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u000f*\u0002H\u000e2\b\u0010\u0010\u001a\u0004\u0018\u0001H\u0002H\u0087\u008a\u0004¢\u0006\u0002\u0010\u0013\u001aG\u0010\f\u001a\u00020\r\"\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003\"\u0018\b\u0001\u0010\u000e*\b\u0012\u0004\u0012\u0002H\u00020\u0007*\b\u0012\u0004\u0012\u0002H\u00020\u000f*\u0002H\u000e2\b\u0010\u0010\u001a\u0004\u0018\u0001H\u0002H\u0087\u008a\u0004¢\u0006\u0002\u0010\u0014\u001aA\u0010\f\u001a\u00020\r\"\b\b\u0000\u0010\u0002*\u00020\u0012\"\u0018\b\u0001\u0010\u000e*\b\u0012\u0004\u0012\u0002H\u00020\u0007*\b\u0012\u0004\u0012\u0002H\u00020\u000f*\u0002H\u000e2\b\u0010\u0010\u001a\u0004\u0018\u0001H\u0002H\u0087\u008a\u0004¢\u0006\u0002\u0010\u0015\u001a\u001a\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u001aH\u0080\u0080\u0004¨\u0006\u001b"}, d2 = {"rangeTo", "Lkotlin/ranges/ClosedRange;", "T", _UrlKt.FRAGMENT_ENCODE_SET, "that", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lkotlin/ranges/ClosedRange;", "rangeUntil", "Lkotlin/ranges/OpenEndRange;", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lkotlin/ranges/OpenEndRange;", "Lkotlin/ranges/ClosedFloatingPointRange;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "contains", _UrlKt.FRAGMENT_ENCODE_SET, "R", _UrlKt.FRAGMENT_ENCODE_SET, "element", "(Lkotlin/ranges/ClosedRange;Ljava/lang/Comparable;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "(Lkotlin/ranges/ClosedRange;Ljava/lang/Object;)Z", "(Lkotlin/ranges/OpenEndRange;Ljava/lang/Comparable;)Z", "(Lkotlin/ranges/OpenEndRange;Ljava/lang/Object;)Z", "checkStepIsPositive", _UrlKt.FRAGMENT_ENCODE_SET, "isPositive", "step", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, m754k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/ranges/RangesKt")
class RangesKt__RangesKt {
    public static final <T extends Comparable<? super T>> ClosedRange<T> rangeTo(T t, T t2) {
        return new ComparableRange(t, t2);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final <T extends Comparable<? super T>> OpenEndRange<T> rangeUntil(T t, T t2) {
        return new ComparableOpenEndRange(t, t2);
    }

    @SinceKotlin(version = "1.1")
    public static final ClosedFloatingPointRange<Double> rangeTo(double d, double d2) {
        return new ClosedDoubleRange(d, d2);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final OpenEndRange<Double> rangeUntil(double d, double d2) {
        return new OpenEndDoubleRange(d, d2);
    }

    @SinceKotlin(version = "1.1")
    public static final ClosedFloatingPointRange<Float> rangeTo(float f, float f2) {
        return new ClosedFloatRange(f, f2);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final OpenEndRange<Float> rangeUntil(float f, float f2) {
        return new OpenEndFloatRange(f, f2);
    }

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/lang/Comparable<-TT;>;R::Lkotlin/ranges/ClosedRange<TT;>;:Ljava/lang/Iterable<+TT;>;>(TR;TT;)Z */
    @SinceKotlin(version = MVEL.VERSION)
    @InlineOnly
    private static final boolean contains(ClosedRange closedRange, Comparable comparable) {
        return comparable != null && closedRange.contains(comparable);
    }

    /* JADX WARN: Incorrect types in method signature: <T:Ljava/lang/Object;R::Lkotlin/ranges/ClosedRange<TT;>;:Ljava/lang/Iterable<+TT;>;>(TR;TT;)Z */
    @SinceKotlin(version = "1.3")
    @InlineOnly
    @Deprecated(message = "The signature violates type safety guarantees")
    @DeprecatedSinceKotlin(hiddenSince = MVEL.VERSION)
    private static final /* synthetic */ boolean contains(ClosedRange closedRange, Object obj) {
        return obj != null && closedRange.contains((Comparable) obj);
    }

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/lang/Comparable<-TT;>;R::Lkotlin/ranges/OpenEndRange<TT;>;:Ljava/lang/Iterable<+TT;>;>(TR;TT;)Z */
    @SinceKotlin(version = MVEL.VERSION)
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final boolean contains(OpenEndRange openEndRange, Comparable comparable) {
        return comparable != null && openEndRange.contains(comparable);
    }

    /* JADX WARN: Incorrect types in method signature: <T:Ljava/lang/Object;R::Lkotlin/ranges/OpenEndRange<TT;>;:Ljava/lang/Iterable<+TT;>;>(TR;TT;)Z */
    @SinceKotlin(version = "1.9")
    @InlineOnly
    @Deprecated(message = "The signature violates type safety guarantees")
    @DeprecatedSinceKotlin(hiddenSince = MVEL.VERSION)
    private static final /* synthetic */ boolean contains(OpenEndRange openEndRange, Object obj) {
        return obj != null && openEndRange.contains((Comparable) obj);
    }

    public static final void checkStepIsPositive(boolean z, Number number) {
        if (z) {
            return;
        }
        MediaType$Companion$$ExternalSyntheticBUOutline0.m819m("Step must be positive, was: ", number, 46);
    }
}
