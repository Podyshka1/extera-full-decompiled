package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes5.dex */
public abstract class SequencesKt__SequencesKt extends SequencesKt__SequencesJVMKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Object generateSequence$lambda$1$SequencesKt__SequencesKt(Object obj) {
        return obj;
    }

    public static Sequence asSequence(final Iterator it) {
        Intrinsics.checkNotNullParameter(it, "<this>");
        return constrainOnce(new Sequence() { // from class: kotlin.sequences.SequencesKt__SequencesKt$asSequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            public Iterator iterator() {
                return it;
            }
        });
    }

    public static Sequence emptySequence() {
        return EmptySequence.INSTANCE;
    }

    public static Sequence constrainOnce(Sequence sequence) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        return sequence instanceof ConstrainedOnceSequence ? sequence : new ConstrainedOnceSequence(sequence);
    }

    public static Sequence generateSequence(final Object obj, Function1 nextFunction) {
        Intrinsics.checkNotNullParameter(nextFunction, "nextFunction");
        if (obj == null) {
            return EmptySequence.INSTANCE;
        }
        return new GeneratorSequence(new Function0() { // from class: kotlin.sequences.SequencesKt__SequencesKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SequencesKt__SequencesKt.generateSequence$lambda$1$SequencesKt__SequencesKt(obj);
            }
        }, nextFunction);
    }

    public static Sequence generateSequence(Function0 seedFunction, Function1 nextFunction) {
        Intrinsics.checkNotNullParameter(seedFunction, "seedFunction");
        Intrinsics.checkNotNullParameter(nextFunction, "nextFunction");
        return new GeneratorSequence(seedFunction, nextFunction);
    }
}
