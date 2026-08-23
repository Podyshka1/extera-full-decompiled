package kotlin.ranges;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.ULong;
import kotlin.internal.UProgressionUtilKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@SinceKotlin(version = "1.5")
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010(\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0017\u0018\u0000 \u001b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001bB!\b@\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u0011H\u0086\u0082\u0004J\n\u0010\u0012\u001a\u00020\u0013H\u0096\u0080\u0004J\u0014\u0010\u0014\u001a\u00020\u00132\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0082\u0004J\n\u0010\u0017\u001a\u00020\u0018H\u0096\u0080\u0004J\n\u0010\u0019\u001a\u00020\u001aH\u0096\u0080\u0004R\u0017\u0010\t\u001a\u00020\u0002X\u0086\u0084\b¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\r\u001a\u00020\u0002X\u0086\u0084\b¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\u000e\u0010\u000bR\u0015\u0010\u0005\u001a\u00020\u0006X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001c"}, d2 = {"Lkotlin/ranges/ULongProgression;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/ULong;", "start", "endInclusive", "step", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "first", "getFirst-s-VKNKU", "()J", "J", "last", "getLast-s-VKNKU", "getStep", "iterator", _UrlKt.FRAGMENT_ENCODE_SET, "isEmpty", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "other", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", _UrlKt.FRAGMENT_ENCODE_SET, "toString", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
public class ULongProgression implements Iterable<ULong>, KMappedMarker {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final long first;
    private final long last;
    private final long step;

    public /* synthetic */ ULongProgression(long j, long j2, long j3, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3);
    }

    private ULongProgression(long j, long j2, long j3) {
        if (j3 == 0) {
            f$$ExternalSyntheticBUOutline1.m178m("Step must be non-zero.");
            throw null;
        }
        if (j3 == Long.MIN_VALUE) {
            f$$ExternalSyntheticBUOutline1.m178m("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
            throw null;
        }
        this.first = j;
        this.last = UProgressionUtilKt.m4512getProgressionLastElement7ftBX0g(j, j2, j3);
        this.step = j3;
    }

    /* JADX INFO: renamed from: getFirst-s-VKNKU, reason: not valid java name and from getter */
    public final long getFirst() {
        return this.first;
    }

    /* JADX INFO: renamed from: getLast-s-VKNKU, reason: not valid java name and from getter */
    public final long getLast() {
        return this.last;
    }

    public final long getStep() {
        return this.step;
    }

    @Override // java.lang.Iterable
    public final Iterator<ULong> iterator() {
        return new ULongProgressionIterator(this.first, this.last, this.step, null);
    }

    public boolean isEmpty() {
        long j = this.step;
        int iCompare = Long.compare(this.first ^ Long.MIN_VALUE, this.last ^ Long.MIN_VALUE);
        return j > 0 ? iCompare > 0 : iCompare < 0;
    }

    public boolean equals(Object other) {
        if (!(other instanceof ULongProgression)) {
            return false;
        }
        if (isEmpty() && ((ULongProgression) other).isEmpty()) {
            return true;
        }
        ULongProgression uLongProgression = (ULongProgression) other;
        return this.first == uLongProgression.first && this.last == uLongProgression.last && this.step == uLongProgression.step;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        long j = this.first;
        int iM3465constructorimpl = ((int) ULong.m3465constructorimpl(j ^ ULong.m3465constructorimpl(j >>> 32))) * 31;
        long j2 = this.last;
        int iM3465constructorimpl2 = (iM3465constructorimpl + ((int) ULong.m3465constructorimpl(j2 ^ ULong.m3465constructorimpl(j2 >>> 32)))) * 31;
        long j3 = this.step;
        return iM3465constructorimpl2 + ((int) ((j3 >>> 32) ^ j3));
    }

    public String toString() {
        StringBuilder sb;
        long j;
        long j2 = this.step;
        long j3 = this.first;
        if (j2 > 0) {
            sb = new StringBuilder();
            sb.append((Object) ULong.m3511toStringimpl(j3));
            sb.append("..");
            sb.append((Object) ULong.m3511toStringimpl(this.last));
            sb.append(" step ");
            j = this.step;
        } else {
            sb = new StringBuilder();
            sb.append((Object) ULong.m3511toStringimpl(j3));
            sb.append(" downTo ");
            sb.append((Object) ULong.m3511toStringimpl(this.last));
            sb.append(" step ");
            j = -this.step;
        }
        sb.append(j);
        return sb.toString();
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH\u0086\u0080\u0004¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lkotlin/ranges/ULongProgression$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "fromClosedRange", "Lkotlin/ranges/ULongProgression;", "rangeStart", "Lkotlin/ULong;", "rangeEnd", "step", _UrlKt.FRAGMENT_ENCODE_SET, "fromClosedRange-7ftBX0g", "(JJJ)Lkotlin/ranges/ULongProgression;", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: fromClosedRange-7ftBX0g, reason: not valid java name */
        public final ULongProgression m4542fromClosedRange7ftBX0g(long rangeStart, long rangeEnd, long step) {
            return new ULongProgression(rangeStart, rangeEnd, step, null);
        }
    }
}
