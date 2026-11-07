package kotlin.collections;

import java.util.Arrays;
import java.util.Iterator;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import okio.Utf8$$ExternalSyntheticBUOutline0;
import okio.Utf8$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010(\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B!\bF\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bB\u0011\bV\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\n\u0010\rJ\u0017\u0010\u0014\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00020\tH\u0096\u0082\u0004¢\u0006\u0002\u0010\u0016J\n\u0010\u0017\u001a\u00020\u0018H\u0086\u0080\u0004J\u0010\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u001aH\u0096\u0082\u0004J)\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006\"\u0004\b\u0001\u0010\u00012\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006H\u0094\u0080\u0004¢\u0006\u0002\u0010\u001dJ\u0017\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006H\u0094\u0080\u0004¢\u0006\u0002\u0010\u001eJ\u0018\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010 \u001a\u00020\tH\u0086\u0080\u0004J\u0017\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00028\u0000H\u0086\u0080\u0004¢\u0006\u0002\u0010$J\u0012\u0010%\u001a\u00020\"2\u0006\u0010&\u001a\u00020\tH\u0086\u0080\u0004J\u0016\u0010'\u001a\u00020\t*\u00020\t2\u0006\u0010&\u001a\u00020\tH\u0082\u0088\u0004R\u0019\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006X\u0082\u0084\b¢\u0006\u0004\n\u0002\u0010\u000eR\u000f\u0010\f\u001a\u00020\tX\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\u000f\u001a\u00020\tX\u0082\u008e\b¢\u0006\u0002\n\u0000R\u001f\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t@RX\u0096\u008e\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006("}, d2 = {"Lkotlin/collections/RingBuffer;", "T", "Lkotlin/collections/AbstractList;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "buffer", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "filledSize", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "([Ljava/lang/Object;I)V", "capacity", "(I)V", "[Ljava/lang/Object;", "startIndex", "value", "size", "getSize", "()I", "get", "index", "(I)Ljava/lang/Object;", "isFull", _UrlKt.FRAGMENT_ENCODE_SET, "iterator", _UrlKt.FRAGMENT_ENCODE_SET, "toArray", "array", "([Ljava/lang/Object;)[Ljava/lang/Object;", "()[Ljava/lang/Object;", "expanded", "maxCapacity", "add", _UrlKt.FRAGMENT_ENCODE_SET, "element", "(Ljava/lang/Object;)V", "removeFirst", "n", "forward", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,206:1\n204#1:208\n204#1:209\n204#1:210\n1#2:207\n*S KotlinDebug\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n106#1:208\n175#1:209\n188#1:210\n*E\n"})
final class RingBuffer<T> extends AbstractList<T> implements RandomAccess {
    private final Object[] buffer;
    private final int capacity;
    private int size;
    private int startIndex;

    public RingBuffer(Object[] objArr, int i) {
        this.buffer = objArr;
        if (i < 0) {
            Utf8$$ExternalSyntheticBUOutline1.m928m("ring buffer filled size should not be negative but it is ", i);
            throw null;
        }
        if (i > objArr.length) {
            Utf8$$ExternalSyntheticBUOutline0.m927m("ring buffer filled size: ", i, " cannot be larger than the buffer size: ", objArr.length);
            throw null;
        }
        this.capacity = objArr.length;
        this.size = i;
    }

    public RingBuffer(int i) {
        this(new Object[i], 0);
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    public int getSize() {
        return this.size;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public T get(int index) {
        AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(index, size());
        return (T) this.buffer[(this.startIndex + index) % this.capacity];
    }

    public final boolean isFull() {
        return size() == this.capacity;
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        return new AbstractIterator<T>(this) { // from class: kotlin.collections.RingBuffer.iterator.1
            private int count;
            private int index;
            final /* synthetic */ RingBuffer<T> this$0;

            {
                this.this$0 = this;
                this.count = this.size();
                this.index = ((RingBuffer) this).startIndex;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.collections.AbstractIterator
            public void computeNext() {
                if (this.count != 0) {
                    setNext(((RingBuffer) this.this$0).buffer[this.index]);
                    this.index = (this.index + 1) % ((RingBuffer) this.this$0).capacity;
                    this.count--;
                    return;
                }
                done();
            }
        };
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] array) {
        int length = array.length;
        Object[] objArr = array;
        if (length < size()) {
            objArr = (T[]) Arrays.copyOf(array, size());
        }
        int size = size();
        int i = 0;
        int i2 = 0;
        for (int i3 = this.startIndex; i2 < size && i3 < this.capacity; i3++) {
            objArr[i2] = this.buffer[i3];
            i2++;
        }
        while (i2 < size) {
            objArr[i2] = this.buffer[i];
            i2++;
            i++;
        }
        return (T[]) CollectionsKt__CollectionsJVMKt.terminateCollectionToArray(size, objArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RingBuffer<T> expanded(int maxCapacity) {
        int i = this.capacity;
        int iCoerceAtMost = RangesKt.coerceAtMost(i + (i >> 1) + 1, maxCapacity);
        return new RingBuffer<>(this.startIndex == 0 ? Arrays.copyOf(this.buffer, iCoerceAtMost) : toArray(new Object[iCoerceAtMost]), size());
    }

    @Override // java.util.Collection, java.util.List
    public final void add(T element) {
        if (isFull()) {
            Segment$$ExternalSyntheticBUOutline1.m925m("ring buffer is full");
        } else {
            this.buffer[(this.startIndex + size()) % this.capacity] = element;
            this.size = size() + 1;
        }
    }

    public final void removeFirst(int n) {
        if (n < 0) {
            Utf8$$ExternalSyntheticBUOutline1.m928m("n shouldn't be negative but it is ", n);
            return;
        }
        if (n > size()) {
            Utf8$$ExternalSyntheticBUOutline0.m927m("n shouldn't be greater than the buffer size: n = ", n, ", size = ", size());
            return;
        }
        if (n > 0) {
            int i = this.startIndex;
            int i2 = (i + n) % this.capacity;
            Object[] objArr = this.buffer;
            if (i > i2) {
                ArraysKt___ArraysJvmKt.fill(objArr, (Object) null, i, this.capacity);
                ArraysKt___ArraysJvmKt.fill(this.buffer, (Object) null, 0, i2);
            } else {
                ArraysKt___ArraysJvmKt.fill(objArr, (Object) null, i, i2);
            }
            this.startIndex = i2;
            this.size = size() - n;
        }
    }

    private final int forward(int i, int i2) {
        return (i + i2) % this.capacity;
    }
}
