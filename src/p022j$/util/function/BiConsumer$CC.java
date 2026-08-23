package p022j$.util.function;

import java.util.function.BiConsumer;
import p022j$.util.Objects;
import p022j$.util.concurrent.C2265s;

/* JADX INFO: renamed from: j$.util.function.BiConsumer$-CC, reason: invalid class name */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class BiConsumer$CC {
    public static BiConsumer $default$andThen(BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(biConsumer2);
        return new C2265s(1, biConsumer, biConsumer2);
    }
}
