package j$.util.function;

import j$.time.C2045s;
import j$.util.Objects;
import java.util.function.Predicate;

/* JADX INFO: renamed from: j$.util.function.Predicate$-CC, reason: invalid class name */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class Predicate$CC {
    public static Predicate $default$and(Predicate predicate, Predicate predicate2) {
        Objects.requireNonNull(predicate2);
        return new C2139h(predicate, predicate2, 0);
    }

    public static Predicate $default$negate(Predicate predicate) {
        return new C2045s(3, predicate);
    }

    public static Predicate $default$or(Predicate predicate, Predicate predicate2) {
        Objects.requireNonNull(predicate2);
        return new C2139h(predicate, predicate2, 1);
    }
}
