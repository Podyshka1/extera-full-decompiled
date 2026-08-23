package p022j$.util;

import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.K */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2226K extends InterfaceC2231P {
    @Override // java.util.Iterator, p022j$.util.InterfaceC2587y
    void forEachRemaining(Consumer consumer);

    void forEachRemaining(IntConsumer intConsumer);

    @Override // java.util.Iterator
    Integer next();

    int nextInt();
}
