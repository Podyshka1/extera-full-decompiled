package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes5.dex */
public final class TransformingSequence implements Sequence {
    private final Sequence sequence;
    private final Function1 transformer;

    public TransformingSequence(Sequence sequence, Function1 transformer) {
        Intrinsics.checkNotNullParameter(sequence, "sequence");
        Intrinsics.checkNotNullParameter(transformer, "transformer");
        this.sequence = sequence;
        this.transformer = transformer;
    }

    /* JADX INFO: renamed from: kotlin.sequences.TransformingSequence$iterator$1 */
    public static final class C26021 implements Iterator, KMappedMarker {
        private final Iterator iterator;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        C26021() {
            this.iterator = TransformingSequence.this.sequence.iterator();
        }

        @Override // java.util.Iterator
        public Object next() {
            return TransformingSequence.this.transformer.invoke(this.iterator.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.iterator.hasNext();
        }
    }

    @Override // kotlin.sequences.Sequence
    public Iterator iterator() {
        return new C26021();
    }
}
