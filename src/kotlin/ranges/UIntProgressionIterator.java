package kotlin.ranges;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;
import okhttp3.internal.url._UrlKt;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
@SinceKotlin(version = "1.3")
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B!\bF\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\n\u0010\u000b\u001a\u00020\fH\u0096\u0082\u0004J\u0011\u0010\r\u001a\u00020\u0002H\u0096\u0082\u0004¢\u0006\u0004\b\u000e\u0010\u000fR\u0011\u0010\t\u001a\u00020\u0002X\u0082\u0084\b¢\u0006\u0004\n\u0002\u0010\nR\u000f\u0010\u000b\u001a\u00020\fX\u0082\u008e\b¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0002X\u0082\u0084\b¢\u0006\u0004\n\u0002\u0010\nR\u0011\u0010\r\u001a\u00020\u0002X\u0082\u008e\b¢\u0006\u0004\n\u0002\u0010\n¨\u0006\u0010"}, d2 = {"Lkotlin/ranges/UIntProgressionIterator;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/UInt;", "first", "last", "step", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V", "finalElement", "I", "hasNext", _UrlKt.FRAGMENT_ENCODE_SET, "next", "next-pVg5ArA", "()I", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
final class UIntProgressionIterator implements Iterator<UInt>, KMappedMarker {
    private final int finalElement;
    private boolean hasNext;
    private int next;
    private final int step;

    public /* synthetic */ UIntProgressionIterator(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, i3);
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    private UIntProgressionIterator(int i, int i2, int i3) {
        this.finalElement = i2;
        boolean z = false;
        int iCompare = Integer.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE);
        if (i3 <= 0 ? iCompare >= 0 : iCompare <= 0) {
            z = true;
        }
        this.hasNext = z;
        this.step = UInt.m3182constructorimpl(i3);
        this.next = this.hasNext ? i : i2;
    }

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ UInt next() {
        return UInt.m3176boximpl(m4330nextpVg5ArA());
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.hasNext;
    }

    /* JADX INFO: renamed from: next-pVg5ArA, reason: not valid java name */
    public int m4330nextpVg5ArA() {
        int i = this.next;
        if (i == this.finalElement) {
            if (!this.hasNext) {
                Utils$$ExternalSyntheticBUOutline0.m1068m();
                return 0;
            }
            this.hasNext = false;
            return i;
        }
        this.next = UInt.m3182constructorimpl(this.step + i);
        return i;
    }
}
