package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import okhttp3.internal.url._UrlKt;
import okio.Utf8$$ExternalSyntheticBUOutline0;
import okio.Utf8$$ExternalSyntheticBUOutline1;
import org.telegram.messenger.NotificationBadge;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010(\n\u0000\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B'\bF\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u000e\u001a\u00020\u0006H\u0096\u0080\u0004J\u0018\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u000e\u001a\u00020\u0006H\u0096\u0080\u0004J\u0010\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0096\u0082\u0004R\u0015\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\u0005\u001a\u00020\u0006X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\u0007\u001a\u00020\u0006X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u0015\u0010\n\u001a\u00020\u00068BX\u0082\u0084\b¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0012"}, d2 = {"Lkotlin/sequences/SubSequence;", "T", "Lkotlin/sequences/Sequence;", "Lkotlin/sequences/DropTakeSequence;", "sequence", "startIndex", _UrlKt.FRAGMENT_ENCODE_SET, "endIndex", "<init>", "(Lkotlin/sequences/Sequence;II)V", NotificationBadge.NewHtcHomeBadger.COUNT, "getCount", "()I", "drop", "n", "take", "iterator", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SubSequence\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,730:1\n1#2:731\n*E\n"})
public final class SubSequence<T> implements Sequence<T>, DropTakeSequence<T> {
    private final int endIndex;
    private final Sequence<T> sequence;
    private final int startIndex;

    /* JADX WARN: Multi-variable type inference failed */
    public SubSequence(Sequence<? extends T> sequence, int i, int i2) {
        this.sequence = sequence;
        this.startIndex = i;
        this.endIndex = i2;
        if (i < 0) {
            Utf8$$ExternalSyntheticBUOutline1.m928m("startIndex should be non-negative, but is ", i);
            throw null;
        }
        if (i2 < 0) {
            Utf8$$ExternalSyntheticBUOutline1.m928m("endIndex should be non-negative, but is ", i2);
            throw null;
        }
        if (i2 >= i) {
            return;
        }
        Utf8$$ExternalSyntheticBUOutline0.m927m("endIndex should be not less than startIndex, but was ", i2, " < ", i);
        throw null;
    }

    private final int getCount() {
        return this.endIndex - this.startIndex;
    }

    @Override // kotlin.sequences.DropTakeSequence
    public Sequence<T> drop(int n) {
        return n >= getCount() ? SequencesKt__SequencesKt.emptySequence() : new SubSequence(this.sequence, this.startIndex + n, this.endIndex);
    }

    @Override // kotlin.sequences.DropTakeSequence
    public Sequence<T> take(int n) {
        if (n >= getCount()) {
            return this;
        }
        Sequence<T> sequence = this.sequence;
        int i = this.startIndex;
        return new SubSequence(sequence, i, n + i);
    }

    /* JADX INFO: renamed from: kotlin.sequences.SubSequence$iterator$1 */
    @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0010(\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\n\u0010\u000b\u001a\u00020\fH\u0082\u0080\u0004J\n\u0010\r\u001a\u00020\u000eH\u0096\u0082\u0004J\u000f\u0010\u000f\u001a\u00028\u0000H\u0096\u0082\u0004¢\u0006\u0002\u0010\u0010R\u001b\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001X\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0004R\u001b\u0010\u0005\u001a\u00020\u0006X\u0086\u008e\b¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0011"}, d2 = {"kotlin/sequences/SubSequence$iterator$1", _UrlKt.FRAGMENT_ENCODE_SET, "iterator", "getIterator", "()Ljava/util/Iterator;", "position", _UrlKt.FRAGMENT_ENCODE_SET, "getPosition", "()I", "setPosition", "(I)V", "drop", _UrlKt.FRAGMENT_ENCODE_SET, "hasNext", _UrlKt.FRAGMENT_ENCODE_SET, "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class C23601 implements Iterator<T>, KMappedMarker {
        private final Iterator<T> iterator;
        private int position;
        final /* synthetic */ SubSequence<T> this$0;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public C23601(SubSequence<T> subSequence) {
            this.this$0 = subSequence;
            this.iterator = ((SubSequence) subSequence).sequence.iterator();
        }

        public final Iterator<T> getIterator() {
            return this.iterator;
        }

        public final int getPosition() {
            return this.position;
        }

        public final void setPosition(int i) {
            this.position = i;
        }

        private final void drop() {
            while (this.position < ((SubSequence) this.this$0).startIndex && this.iterator.hasNext()) {
                this.iterator.next();
                this.position++;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            drop();
            return this.position < ((SubSequence) this.this$0).endIndex && this.iterator.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            drop();
            if (this.position >= ((SubSequence) this.this$0).endIndex) {
                Utils$$ExternalSyntheticBUOutline0.m1068m();
                return null;
            }
            this.position++;
            return this.iterator.next();
        }
    }

    @Override // kotlin.sequences.Sequence
    public Iterator<T> iterator() {
        return new C23601(this);
    }
}
