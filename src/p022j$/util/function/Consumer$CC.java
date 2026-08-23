package p022j$.util.function;

import java.util.function.Consumer;
import p022j$.util.Objects;
import p022j$.util.concurrent.C2265s;

/* JADX INFO: renamed from: j$.util.function.Consumer$-CC, reason: invalid class name */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class Consumer$CC {
    public static Consumer $default$andThen(Consumer consumer, Consumer consumer2) {
        Objects.requireNonNull(consumer2);
        return new C2265s(3, consumer, consumer2);
    }
}
