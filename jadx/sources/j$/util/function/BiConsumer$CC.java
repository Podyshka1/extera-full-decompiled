package j$.util.function;

import j$.util.Objects;
import j$.util.concurrent.C2123s;
import java.util.function.BiConsumer;

/* JADX INFO: renamed from: j$.util.function.BiConsumer$-CC, reason: invalid class name */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class BiConsumer$CC {
    public static BiConsumer $default$andThen(BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(biConsumer2);
        return new C2123s(1, biConsumer, biConsumer2);
    }
}
