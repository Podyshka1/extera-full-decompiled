package kotlin.ranges;

import kotlin.Metadata;
import kotlin.collections.IntIterator;
import okhttp3.internal.url._UrlKt;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B!\bF\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\n\u0010\u000b\u001a\u00020\fH\u0096\u0082\u0004J\n\u0010\u000e\u001a\u00020\u0003H\u0096\u0080\u0004R\u0015\u0010\u0005\u001a\u00020\u0003X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000f\u0010\n\u001a\u00020\u0003X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\u000b\u001a\u00020\fX\u0082\u008e\b¢\u0006\u0002\n\u0000R\u000f\u0010\r\u001a\u00020\u0003X\u0082\u008e\b¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lkotlin/ranges/IntProgressionIterator;", "Lkotlin/collections/IntIterator;", "first", _UrlKt.FRAGMENT_ENCODE_SET, "last", "step", "<init>", "(III)V", "getStep", "()I", "finalElement", "hasNext", _UrlKt.FRAGMENT_ENCODE_SET, "next", "nextInt", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
public final class IntProgressionIterator extends IntIterator {
    private final int finalElement;
    private boolean hasNext;
    private int next;
    private final int step;

    public IntProgressionIterator(int i, int i2, int i3) {
        this.step = i3;
        this.finalElement = i2;
        boolean z = false;
        if (i3 <= 0 ? i >= i2 : i <= i2) {
            z = true;
        }
        this.hasNext = z;
        this.next = z ? i : i2;
    }

    public final int getStep() {
        return this.step;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.hasNext;
    }

    @Override // kotlin.collections.IntIterator
    public int nextInt() {
        int i = this.next;
        if (i == this.finalElement) {
            if (!this.hasNext) {
                Utils$$ExternalSyntheticBUOutline0.m1068m();
                return 0;
            }
            this.hasNext = false;
            return i;
        }
        this.next = this.step + i;
        return i;
    }
}
