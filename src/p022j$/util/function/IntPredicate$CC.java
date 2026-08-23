package p022j$.util.function;

import java.util.function.IntPredicate;
import p022j$.time.C2184s;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.util.function.IntPredicate$-CC, reason: invalid class name */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class IntPredicate$CC {
    public static IntPredicate $default$and(IntPredicate intPredicate, IntPredicate intPredicate2) {
        Objects.requireNonNull(intPredicate2);
        return new C2281e(intPredicate, intPredicate2, 1);
    }

    public static IntPredicate $default$negate(IntPredicate intPredicate) {
        return new C2184s(2, intPredicate);
    }

    public static IntPredicate $default$or(IntPredicate intPredicate, IntPredicate intPredicate2) {
        Objects.requireNonNull(intPredicate2);
        return new C2281e(intPredicate, intPredicate2, 0);
    }
}
