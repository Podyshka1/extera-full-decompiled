package p022j$.util.function;

import java.util.function.BiFunction;
import java.util.function.Function;
import p022j$.util.Objects;
import p022j$.util.concurrent.C2265s;

/* JADX INFO: renamed from: j$.util.function.BiFunction$-CC, reason: invalid class name */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class BiFunction$CC {
    public static BiFunction $default$andThen(BiFunction biFunction, Function function) {
        Objects.requireNonNull(function);
        return new C2265s(biFunction, function);
    }
}
