package kotlin.jvm.internal;

import kotlin.Metadata;
import kotlin.UIntArray$Iterator$$ExternalSyntheticBUOutline0;
import kotlin.collections.IntIterator;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0011\bF\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\n\u0010\b\u001a\u00020\tH\u0096\u0082\u0004J\n\u0010\n\u001a\u00020\u0007H\u0096\u0080\u0004R\u000f\u0010\u0002\u001a\u00020\u0003X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\u0006\u001a\u00020\u0007X\u0082\u008e\b¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lkotlin/jvm/internal/ArrayIntIterator;", "Lkotlin/collections/IntIterator;", "array", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "([I)V", "index", _UrlKt.FRAGMENT_ENCODE_SET, "hasNext", _UrlKt.FRAGMENT_ENCODE_SET, "nextInt", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
final class ArrayIntIterator extends IntIterator {
    private final int[] array;
    private int index;

    public ArrayIntIterator(int[] iArr) {
        this.array = iArr;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.array.length;
    }

    @Override // kotlin.collections.IntIterator
    public int nextInt() {
        try {
            int[] iArr = this.array;
            int i = this.index;
            this.index = i + 1;
            return iArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.index--;
            UIntArray$Iterator$$ExternalSyntheticBUOutline0.m761m(e.getMessage());
            return 0;
        }
    }
}
