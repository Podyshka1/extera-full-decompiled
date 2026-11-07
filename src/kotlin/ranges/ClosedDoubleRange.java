package kotlin.ranges;

import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\bF\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001a\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0002H\u0096\u0080\u0004J\u0012\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0002H\u0096\u0082\u0004J\n\u0010\u0012\u001a\u00020\rH\u0096\u0080\u0004J\u0014\u0010\u0013\u001a\u00020\r2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0082\u0004J\n\u0010\u0016\u001a\u00020\u0017H\u0096\u0080\u0004J\n\u0010\u0018\u001a\u00020\u0019H\u0096\u0080\u0004R\u000f\u0010\u0007\u001a\u00020\u0002X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\b\u001a\u00020\u0002X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u0015\u0010\u0003\u001a\u00020\u00028VX\u0096\u0084\b¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0015\u0010\u0004\u001a\u00020\u00028VX\u0096\u0084\b¢\u0006\u0006\u001a\u0004\b\u000b\u0010\n¨\u0006\u001a"}, d2 = {"Lkotlin/ranges/ClosedDoubleRange;", "Lkotlin/ranges/ClosedFloatingPointRange;", _UrlKt.FRAGMENT_ENCODE_SET, "start", "endInclusive", "<init>", "(DD)V", "_start", "_endInclusive", "getStart", "()Ljava/lang/Double;", "getEndInclusive", "lessThanOrEquals", _UrlKt.FRAGMENT_ENCODE_SET, "a", "b", "contains", "value", "isEmpty", "equals", "other", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", _UrlKt.FRAGMENT_ENCODE_SET, "toString", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
final class ClosedDoubleRange implements ClosedFloatingPointRange<Double> {
    private final double _endInclusive;
    private final double _start;

    public boolean lessThanOrEquals(double a2, double b2) {
        return a2 <= b2;
    }

    public ClosedDoubleRange(double d, double d2) {
        this._start = d;
        this._endInclusive = d2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.ranges.ClosedFloatingPointRange, kotlin.ranges.ClosedRange, kotlin.ranges.OpenEndRange
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return contains(((Number) comparable).doubleValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.ranges.ClosedFloatingPointRange
    public /* bridge */ /* synthetic */ boolean lessThanOrEquals(Comparable comparable, Comparable comparable2) {
        return lessThanOrEquals(((Number) comparable).doubleValue(), ((Number) comparable2).doubleValue());
    }

    @Override // kotlin.ranges.ClosedRange, kotlin.ranges.OpenEndRange
    public Double getStart() {
        return Double.valueOf(this._start);
    }

    @Override // kotlin.ranges.ClosedRange
    public Double getEndInclusive() {
        return Double.valueOf(this._endInclusive);
    }

    public boolean contains(double value) {
        return value >= this._start && value <= this._endInclusive;
    }

    @Override // kotlin.ranges.ClosedFloatingPointRange, kotlin.ranges.ClosedRange, kotlin.ranges.OpenEndRange
    public boolean isEmpty() {
        return this._start > this._endInclusive;
    }

    public boolean equals(Object other) {
        if (!(other instanceof ClosedDoubleRange)) {
            return false;
        }
        if (isEmpty() && ((ClosedDoubleRange) other).isEmpty()) {
            return true;
        }
        ClosedDoubleRange closedDoubleRange = (ClosedDoubleRange) other;
        return this._start == closedDoubleRange._start && this._endInclusive == closedDoubleRange._endInclusive;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (Double.hashCode(this._start) * 31) + Double.hashCode(this._endInclusive);
    }

    public String toString() {
        return this._start + ".." + this._endInclusive;
    }
}
