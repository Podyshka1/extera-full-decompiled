package p022j$.util.stream;

import java.util.Iterator;
import p022j$.util.Spliterator;
import p022j$.util.stream.BaseStream;

/* JADX INFO: loaded from: classes2.dex */
public interface BaseStream<T, S extends BaseStream<T, S>> extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    boolean isParallel();

    Iterator iterator();

    BaseStream onClose(Runnable runnable);

    BaseStream parallel();

    BaseStream sequential();

    Spliterator spliterator();

    BaseStream unordered();
}
