package j$.lang;

import j$.util.Objects;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.lang.Iterable$-EL, reason: invalid class name */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class Iterable$EL {
    public static void forEach(Iterable iterable, Consumer consumer) {
        if (iterable instanceof InterfaceC1966a) {
            ((InterfaceC1966a) iterable).forEach(consumer);
            return;
        }
        if (!(iterable instanceof Collection)) {
            Iterable$CC.$default$forEach(iterable, consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        Iterator it = ((Collection) iterable).iterator();
        while (it.hasNext()) {
            consumer.accept(it.next());
        }
    }
}
