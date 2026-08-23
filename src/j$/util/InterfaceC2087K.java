package j$.util;

import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.K */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2087K extends InterfaceC2092P {
    @Override // java.util.Iterator, j$.util.InterfaceC2209y
    void forEachRemaining(Consumer consumer);

    void forEachRemaining(IntConsumer intConsumer);

    @Override // java.util.Iterator
    Integer next();

    int nextInt();
}
