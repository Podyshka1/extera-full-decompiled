package kotlin;

import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import kotlin.internal.InlineOnly;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\u0007\n\u0002\u0010\u0006\n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u008a\u0004\u001a\u0016\u0010\u0003\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u008a\u0004\u001a\u0016\u0010\u0004\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u008a\u0004\u001a\u0016\u0010\u0005\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u008a\u0004\u001a\u0016\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u008a\u0004\u001a\u000e\u0010\u0007\u001a\u00020\u0001*\u00020\u0001H\u0087\u008a\u0004\u001a\u000e\u0010\b\u001a\u00020\u0001*\u00020\u0001H\u0087\u008a\u0004\u001a\u000e\u0010\t\u001a\u00020\u0001*\u00020\u0001H\u0087\u008a\u0004\u001a\u000e\u0010\n\u001a\u00020\u0001*\u00020\u000bH\u0087\u0088\u0004\u001a\u0016\u0010\n\u001a\u00020\u0001*\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0087\u0088\u0004\u001a\u000e\u0010\n\u001a\u00020\u0001*\u00020\u000eH\u0087\u0088\u0004\u001a\u0016\u0010\n\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\f\u001a\u00020\rH\u0087\u0088\u0004\u001a\u000e\u0010\n\u001a\u00020\u0001*\u00020\u000fH\u0087\u0088\u0004\u001a\u0016\u0010\n\u001a\u00020\u0001*\u00020\u000f2\u0006\u0010\f\u001a\u00020\rH\u0087\u0088\u0004\u001a\u000e\u0010\n\u001a\u00020\u0001*\u00020\u0010H\u0087\u0088\u0004\u001a\u0016\u0010\n\u001a\u00020\u0001*\u00020\u00102\u0006\u0010\f\u001a\u00020\rH\u0087\u0088\u0004¨\u0006\u0011"}, d2 = {"plus", "Ljava/math/BigDecimal;", "other", "minus", "times", "div", "rem", "unaryMinus", "inc", "dec", "toBigDecimal", _UrlKt.FRAGMENT_ENCODE_SET, "mathContext", "Ljava/math/MathContext;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, m862k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/NumbersKt")
class NumbersKt__BigDecimalsKt {
    @InlineOnly
    private static final BigDecimal plus(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        return bigDecimal.add(bigDecimal2);
    }

    @InlineOnly
    private static final BigDecimal minus(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        return bigDecimal.subtract(bigDecimal2);
    }

    @InlineOnly
    private static final BigDecimal times(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        return bigDecimal.multiply(bigDecimal2);
    }

    @InlineOnly
    private static final BigDecimal div(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        return bigDecimal.divide(bigDecimal2, RoundingMode.HALF_EVEN);
    }

    @InlineOnly
    private static final BigDecimal rem(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        return bigDecimal.remainder(bigDecimal2);
    }

    @InlineOnly
    private static final BigDecimal unaryMinus(BigDecimal bigDecimal) {
        return bigDecimal.negate();
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal inc(BigDecimal bigDecimal) {
        return bigDecimal.add(BigDecimal.ONE);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal dec(BigDecimal bigDecimal) {
        return bigDecimal.subtract(BigDecimal.ONE);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(int i) {
        return BigDecimal.valueOf(i);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(int i, MathContext mathContext) {
        return new BigDecimal(i, mathContext);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(long j) {
        return BigDecimal.valueOf(j);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(long j, MathContext mathContext) {
        return new BigDecimal(j, mathContext);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(float f) {
        return new BigDecimal(String.valueOf(f));
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(float f, MathContext mathContext) {
        return new BigDecimal(String.valueOf(f), mathContext);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(double d) {
        return new BigDecimal(String.valueOf(d));
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(double d, MathContext mathContext) {
        return new BigDecimal(String.valueOf(d), mathContext);
    }
}
