package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes5.dex */
public final class FilteringSequence implements Sequence {
    private final Function1 predicate;
    private final boolean sendWhen;
    private final Sequence sequence;

    public FilteringSequence(Sequence sequence, boolean z, Function1 predicate) {
        Intrinsics.checkNotNullParameter(sequence, "sequence");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        this.sequence = sequence;
        this.sendWhen = z;
        this.predicate = predicate;
    }

    /* JADX INFO: renamed from: kotlin.sequences.FilteringSequence$iterator$1 */
    public static final class C26001 implements Iterator, KMappedMarker {
        private final Iterator iterator;
        private Object nextItem;
        private int nextState = -1;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        C26001() {
            this.iterator = FilteringSequence.this.sequence.iterator();
        }

        private final void calcNext() {
            while (this.iterator.hasNext()) {
                Object next = this.iterator.next();
                if (((Boolean) FilteringSequence.this.predicate.invoke(next)).booleanValue() == FilteringSequence.this.sendWhen) {
                    this.nextItem = next;
                    this.nextState = 1;
                    return;
                }
            }
            this.nextState = 0;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (this.nextState == -1) {
                calcNext();
            }
            if (this.nextState == 0) {
                throw new NoSuchElementException();
            }
            Object obj = this.nextItem;
            this.nextItem = null;
            this.nextState = -1;
            return obj;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.nextState == -1) {
                calcNext();
            }
            return this.nextState == 1;
        }
    }

    @Override // kotlin.sequences.Sequence
    public Iterator iterator() {
        return new C26001();
    }
}
