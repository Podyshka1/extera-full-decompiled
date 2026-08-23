package p022j$.util.function;

import java.util.function.Predicate;
import p022j$.time.C2184s;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.util.function.Predicate$-CC, reason: invalid class name */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class Predicate$CC {
    public static Predicate $default$and(Predicate predicate, Predicate predicate2) {
        Objects.requireNonNull(predicate2);
        return new C2284h(predicate, predicate2, 0);
    }

    public static Predicate $default$negate(Predicate predicate) {
        return new C2184s(3, predicate);
    }

    public static Predicate $default$or(Predicate predicate, Predicate predicate2) {
        Objects.requireNonNull(predicate2);
        return new C2284h(predicate, predicate2, 1);
    }
}
