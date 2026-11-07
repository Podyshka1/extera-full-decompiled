package kotlin.ranges;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;
import okhttp3.internal.url._UrlKt;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
@SinceKotlin(version = "1.3")
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B!\bF\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\n\u0010\u000b\u001a\u00020\fH\u0096\u0082\u0004J\u0011\u0010\r\u001a\u00020\u0002H\u0096\u0082\u0004¢\u0006\u0004\b\u000e\u0010\u000fR\u0011\u0010\t\u001a\u00020\u0002X\u0082\u0084\b¢\u0006\u0004\n\u0002\u0010\nR\u000f\u0010\u000b\u001a\u00020\fX\u0082\u008e\b¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0002X\u0082\u0084\b¢\u0006\u0004\n\u0002\u0010\nR\u0011\u0010\r\u001a\u00020\u0002X\u0082\u008e\b¢\u0006\u0004\n\u0002\u0010\n¨\u0006\u0010"}, d2 = {"Lkotlin/ranges/ULongProgressionIterator;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/ULong;", "first", "last", "step", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "finalElement", "J", "hasNext", _UrlKt.FRAGMENT_ENCODE_SET, "next", "next-s-VKNKU", "()J", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
final class ULongProgressionIterator implements Iterator<ULong>, KMappedMarker {
    private final long finalElement;
    private boolean hasNext;
    private long next;
    private final long step;

    public /* synthetic */ ULongProgressionIterator(long j, long j2, long j3, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3);
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    private ULongProgressionIterator(long j, long j2, long j3) {
        this.finalElement = j2;
        boolean z = false;
        if (j3 <= 0 ? Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE) >= 0 : Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE) <= 0) {
            z = true;
        }
        this.hasNext = z;
        this.step = ULong.m3261constructorimpl(j3);
        this.next = this.hasNext ? j : j2;
    }

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ ULong next() {
        return ULong.m3255boximpl(m4339nextsVKNKU());
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.hasNext;
    }

    /* JADX INFO: renamed from: next-s-VKNKU, reason: not valid java name */
    public long m4339nextsVKNKU() {
        long j = this.next;
        if (j == this.finalElement) {
            if (!this.hasNext) {
                Utils$$ExternalSyntheticBUOutline0.m1068m();
                return 0L;
            }
            this.hasNext = false;
            return j;
        }
        this.next = ULong.m3261constructorimpl(this.step + j);
        return j;
    }
}
