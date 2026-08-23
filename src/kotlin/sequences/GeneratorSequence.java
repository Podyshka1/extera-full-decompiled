package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes5.dex */
final class GeneratorSequence implements Sequence {
    private final Function0 getInitialValue;
    private final Function1 getNextValue;

    /* JADX INFO: renamed from: kotlin.sequences.GeneratorSequence$iterator$1 */
    public static final class C26011 implements Iterator, KMappedMarker {
        private Object nextItem;
        private int nextState = -2;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        C26011() {
        }

        private final void calcNext() {
            Object objInvoke;
            if (this.nextState == -2) {
                objInvoke = GeneratorSequence.this.getInitialValue.invoke();
            } else {
                Function1 function1 = GeneratorSequence.this.getNextValue;
                Object obj = this.nextItem;
                Intrinsics.checkNotNull(obj);
                objInvoke = function1.invoke(obj);
            }
            this.nextItem = objInvoke;
            this.nextState = objInvoke == null ? 0 : 1;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (this.nextState < 0) {
                calcNext();
            }
            if (this.nextState == 0) {
                throw new NoSuchElementException();
            }
            Object obj = this.nextItem;
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence");
            this.nextState = -1;
            return obj;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.nextState < 0) {
                calcNext();
            }
            return this.nextState == 1;
        }
    }

    public GeneratorSequence(Function0 getInitialValue, Function1 getNextValue) {
        Intrinsics.checkNotNullParameter(getInitialValue, "getInitialValue");
        Intrinsics.checkNotNullParameter(getNextValue, "getNextValue");
        this.getInitialValue = getInitialValue;
        this.getNextValue = getNextValue;
    }

    @Override // kotlin.sequences.Sequence
    public Iterator iterator() {
        return new C26011();
    }
}
