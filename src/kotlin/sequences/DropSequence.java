package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes5.dex */
public final class DropSequence implements Sequence, DropTakeSequence {
    private final int count;
    private final Sequence sequence;

    public DropSequence(Sequence sequence, int i) {
        Intrinsics.checkNotNullParameter(sequence, "sequence");
        this.sequence = sequence;
        this.count = i;
        if (i >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i + '.').toString());
    }

    @Override // kotlin.sequences.DropTakeSequence
    public Sequence drop(int i) {
        int i2 = this.count + i;
        return i2 < 0 ? new DropSequence(this, i) : new DropSequence(this.sequence, i2);
    }

    /* JADX INFO: renamed from: kotlin.sequences.DropSequence$iterator$1 */
    public static final class C25991 implements Iterator, KMappedMarker {
        private final Iterator iterator;
        private int left;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        C25991(DropSequence dropSequence) {
            this.iterator = dropSequence.sequence.iterator();
            this.left = dropSequence.count;
        }

        private final void drop() {
            while (this.left > 0 && this.iterator.hasNext()) {
                this.iterator.next();
                this.left--;
            }
        }

        @Override // java.util.Iterator
        public Object next() {
            drop();
            return this.iterator.next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            drop();
            return this.iterator.hasNext();
        }
    }

    @Override // kotlin.sequences.Sequence
    public Iterator iterator() {
        return new C25991(this);
    }
}
