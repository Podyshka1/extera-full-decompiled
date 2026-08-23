package p022j$.util.function;

import java.util.function.Function;
import p022j$.time.format.C2148a;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.util.function.Function$-CC, reason: invalid class name */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class Function$CC {
    public static Function $default$compose(Function function, Function function2) {
        Objects.requireNonNull(function2);
        return new C2279c(function, function2, 1);
    }

    public static Function $default$andThen(Function function, Function function2) {
        Objects.requireNonNull(function2);
        return new C2279c(function, function2, 0);
    }

    public static <T> Function<T, T> identity() {
        return new C2148a(8);
    }
}
