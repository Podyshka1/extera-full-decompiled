package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;
import okhttp3.internal.url._UrlKt;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010(\n\u0000\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B/\bF\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0005\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u000bH\u0096\u0082\u0004R\u0017\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0005X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0007X\u0082\u0084\b¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lkotlin/sequences/GeneratorSequence;", "T", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/sequences/Sequence;", "getInitialValue", "Lkotlin/Function0;", "getNextValue", "Lkotlin/Function1;", "<init>", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "iterator", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
final class GeneratorSequence<T> implements Sequence<T> {
    private final Function0<T> getInitialValue;
    private final Function1<T, T> getNextValue;

    /* JADX INFO: renamed from: kotlin.sequences.GeneratorSequence$iterator$1 */
    @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0010(\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\n\u0010\u000e\u001a\u00020\u000fH\u0082\u0080\u0004J\u000f\u0010\u0010\u001a\u00028\u0000H\u0096\u0082\u0004¢\u0006\u0002\u0010\u0004J\n\u0010\u0011\u001a\u00020\u0012H\u0096\u0082\u0004R\u001f\u0010\u0002\u001a\u0004\u0018\u00018\u0000X\u0086\u008e\b¢\u0006\u0010\n\u0002\u0010\u0007\u001a\u0004\b\u0003\u0010\u0004\"\u0004\b\u0005\u0010\u0006R\u001b\u0010\b\u001a\u00020\tX\u0086\u008e\b¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0013"}, d2 = {"kotlin/sequences/GeneratorSequence$iterator$1", _UrlKt.FRAGMENT_ENCODE_SET, "nextItem", "getNextItem", "()Ljava/lang/Object;", "setNextItem", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "nextState", _UrlKt.FRAGMENT_ENCODE_SET, "getNextState", "()I", "setNextState", "(I)V", "calcNext", _UrlKt.FRAGMENT_ENCODE_SET, "next", "hasNext", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class C23381 implements Iterator<T>, KMappedMarker {
        private T nextItem;
        private int nextState = -2;
        final /* synthetic */ GeneratorSequence<T> this$0;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public C23381(GeneratorSequence<T> generatorSequence) {
            this.this$0 = generatorSequence;
        }

        public final T getNextItem() {
            return this.nextItem;
        }

        public final void setNextItem(T t) {
            this.nextItem = t;
        }

        public final int getNextState() {
            return this.nextState;
        }

        public final void setNextState(int i) {
            this.nextState = i;
        }

        private final void calcNext() {
            int i = this.nextState;
            GeneratorSequence<T> generatorSequence = this.this$0;
            T t = i == -2 ? (T) ((GeneratorSequence) generatorSequence).getInitialValue.invoke() : (T) ((GeneratorSequence) generatorSequence).getNextValue.invoke(this.nextItem);
            this.nextItem = t;
            this.nextState = t == null ? 0 : 1;
        }

        @Override // java.util.Iterator
        public T next() {
            if (this.nextState < 0) {
                calcNext();
            }
            if (this.nextState == 0) {
                Utils$$ExternalSyntheticBUOutline0.m1068m();
                return null;
            }
            T t = this.nextItem;
            this.nextState = -1;
            return t;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.nextState < 0) {
                calcNext();
            }
            return this.nextState == 1;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public GeneratorSequence(Function0<? extends T> function0, Function1<? super T, ? extends T> function1) {
        this.getInitialValue = function0;
        this.getNextValue = function1;
    }

    @Override // kotlin.sequences.Sequence
    public Iterator<T> iterator() {
        return new C23381(this);
    }
}
