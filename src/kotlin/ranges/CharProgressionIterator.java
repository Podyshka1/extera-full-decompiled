package kotlin.ranges;

import kotlin.Metadata;
import kotlin.collections.CharIterator;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B!\bF\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\n\u0010\f\u001a\u00020\rH\u0096\u0082\u0004J\n\u0010\u000f\u001a\u00020\u0003H\u0096\u0080\u0004R\u0015\u0010\u0005\u001a\u00020\u0006X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u000f\u0010\u000b\u001a\u00020\u0006X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\f\u001a\u00020\rX\u0082\u008e\b¢\u0006\u0002\n\u0000R\u000f\u0010\u000e\u001a\u00020\u0006X\u0082\u008e\b¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lkotlin/ranges/CharProgressionIterator;", "Lkotlin/collections/CharIterator;", "first", _UrlKt.FRAGMENT_ENCODE_SET, "last", "step", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(CCI)V", "getStep", "()I", "finalElement", "hasNext", _UrlKt.FRAGMENT_ENCODE_SET, "next", "nextChar", "kotlin-stdlib"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
public final class CharProgressionIterator extends CharIterator {
    private final int finalElement;
    private boolean hasNext;
    private int next;
    private final int step;

    public CharProgressionIterator(char c2, char c3, int i) {
        this.step = i;
        this.finalElement = c3;
        boolean z = false;
        if (i <= 0 ? Intrinsics.compare((int) c2, (int) c3) >= 0 : Intrinsics.compare((int) c2, (int) c3) <= 0) {
            z = true;
        }
        this.hasNext = z;
        this.next = z ? c2 : c3;
    }

    public final int getStep() {
        return this.step;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.hasNext;
    }

    @Override // kotlin.collections.CharIterator
    public char nextChar() {
        int i = this.next;
        if (i == this.finalElement) {
            if (!this.hasNext) {
                Utils$$ExternalSyntheticBUOutline0.m1121m();
                return (char) 0;
            }
            this.hasNext = false;
        } else {
            this.next = this.step + i;
        }
        return (char) i;
    }
}
