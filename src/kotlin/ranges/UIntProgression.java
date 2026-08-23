package kotlin.ranges;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.internal.UProgressionUtilKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@SinceKotlin(version = "1.5")
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010(\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0017\u0018\u0000 \u001a2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001aB!\b@\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u0011H\u0086\u0082\u0004J\n\u0010\u0012\u001a\u00020\u0013H\u0096\u0080\u0004J\u0014\u0010\u0014\u001a\u00020\u00132\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0082\u0004J\n\u0010\u0017\u001a\u00020\u0006H\u0096\u0080\u0004J\n\u0010\u0018\u001a\u00020\u0019H\u0096\u0080\u0004R\u0017\u0010\t\u001a\u00020\u0002X\u0086\u0084\b¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\r\u001a\u00020\u0002X\u0086\u0084\b¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\u000e\u0010\u000bR\u0015\u0010\u0005\u001a\u00020\u0006X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001b"}, d2 = {"Lkotlin/ranges/UIntProgression;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/UInt;", "start", "endInclusive", "step", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V", "first", "getFirst-pVg5ArA", "()I", "I", "last", "getLast-pVg5ArA", "getStep", "iterator", _UrlKt.FRAGMENT_ENCODE_SET, "isEmpty", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "other", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
public class UIntProgression implements Iterable<UInt>, KMappedMarker {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final int first;
    private final int last;
    private final int step;

    public /* synthetic */ UIntProgression(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, i3);
    }

    private UIntProgression(int i, int i2, int i3) {
        if (i3 == 0) {
            f$$ExternalSyntheticBUOutline1.m178m("Step must be non-zero.");
            throw null;
        }
        if (i3 == Integer.MIN_VALUE) {
            f$$ExternalSyntheticBUOutline1.m178m("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
            throw null;
        }
        this.first = i;
        this.last = UProgressionUtilKt.m4513getProgressionLastElementNkh28Cs(i, i2, i3);
        this.step = i3;
    }

    /* JADX INFO: renamed from: getFirst-pVg5ArA, reason: not valid java name and from getter */
    public final int getFirst() {
        return this.first;
    }

    /* JADX INFO: renamed from: getLast-pVg5ArA, reason: not valid java name and from getter */
    public final int getLast() {
        return this.last;
    }

    public final int getStep() {
        return this.step;
    }

    @Override // java.lang.Iterable
    public final Iterator<UInt> iterator() {
        return new UIntProgressionIterator(this.first, this.last, this.step, null);
    }

    public boolean isEmpty() {
        int i = this.step;
        int iCompare = Integer.compare(this.first ^ Integer.MIN_VALUE, this.last ^ Integer.MIN_VALUE);
        return i > 0 ? iCompare > 0 : iCompare < 0;
    }

    public boolean equals(Object other) {
        if (!(other instanceof UIntProgression)) {
            return false;
        }
        if (isEmpty() && ((UIntProgression) other).isEmpty()) {
            return true;
        }
        UIntProgression uIntProgression = (UIntProgression) other;
        return this.first == uIntProgression.first && this.last == uIntProgression.last && this.step == uIntProgression.step;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.first * 31) + this.last) * 31) + this.step;
    }

    public String toString() {
        StringBuilder sb;
        int i;
        int i2 = this.step;
        int i3 = this.first;
        if (i2 > 0) {
            sb = new StringBuilder();
            sb.append((Object) UInt.m3432toStringimpl(i3));
            sb.append("..");
            sb.append((Object) UInt.m3432toStringimpl(this.last));
            sb.append(" step ");
            i = this.step;
        } else {
            sb = new StringBuilder();
            sb.append((Object) UInt.m3432toStringimpl(i3));
            sb.append(" downTo ");
            sb.append((Object) UInt.m3432toStringimpl(this.last));
            sb.append(" step ");
            i = -this.step;
        }
        sb.append(i);
        return sb.toString();
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH\u0086\u0080\u0004¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lkotlin/ranges/UIntProgression$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "fromClosedRange", "Lkotlin/ranges/UIntProgression;", "rangeStart", "Lkotlin/UInt;", "rangeEnd", "step", _UrlKt.FRAGMENT_ENCODE_SET, "fromClosedRange-Nkh28Cs", "(III)Lkotlin/ranges/UIntProgression;", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: fromClosedRange-Nkh28Cs, reason: not valid java name */
        public final UIntProgression m4533fromClosedRangeNkh28Cs(int rangeStart, int rangeEnd, int step) {
            return new UIntProgression(rangeStart, rangeEnd, step, null);
        }
    }
}
