package kotlin.collections;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\t\bF¢\u0006\u0004\b\u0003\u0010\u0004J\n\u0010\t\u001a\u00020\nH\u0096\u0082\u0004J\u000f\u0010\u000b\u001a\u00028\u0000H\u0096\u0082\u0004¢\u0006\u0002\u0010\fJ\n\u0010\r\u001a\u00020\nH\u0082\u0080\u0004J\n\u0010\u000e\u001a\u00020\u000fH¤\u0080\u0004J\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00028\u0000H\u0084\u0080\u0004¢\u0006\u0002\u0010\u0012J\n\u0010\u0013\u001a\u00020\u000fH\u0084\u0080\u0004R\u000f\u0010\u0005\u001a\u00020\u0006X\u0082\u008e\b¢\u0006\u0002\n\u0000R\u0013\u0010\u0007\u001a\u0004\u0018\u00018\u0000X\u0082\u008e\b¢\u0006\u0004\n\u0002\u0010\b¨\u0006\u0014"}, d2 = {"Lkotlin/collections/AbstractIterator;", "T", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "state", _UrlKt.FRAGMENT_ENCODE_SET, "nextValue", "Ljava/lang/Object;", "hasNext", _UrlKt.FRAGMENT_ENCODE_SET, "next", "()Ljava/lang/Object;", "tryToComputeNext", "computeNext", _UrlKt.FRAGMENT_ENCODE_SET, "setNext", "value", "(Ljava/lang/Object;)V", "done", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class AbstractIterator<T> implements Iterator<T>, KMappedMarker {
    private T nextValue;
    private int state;

    public abstract void computeNext();

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        int i = this.state;
        if (i == 0) {
            return tryToComputeNext();
        }
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            return false;
        }
        f$$ExternalSyntheticBUOutline1.m212m("hasNext called when the iterator is in the FAILED state.");
        return false;
    }

    @Override // java.util.Iterator
    public T next() {
        int i = this.state;
        if (i == 1) {
            this.state = 0;
            return this.nextValue;
        }
        if (i == 2 || !tryToComputeNext()) {
            Utils$$ExternalSyntheticBUOutline0.m1068m();
            return null;
        }
        this.state = 0;
        return this.nextValue;
    }

    private final boolean tryToComputeNext() {
        this.state = 3;
        computeNext();
        return this.state == 1;
    }

    public final void setNext(T value) {
        this.nextValue = value;
        this.state = 1;
    }

    public final void done() {
        this.state = 2;
    }
}
