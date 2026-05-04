package p022j$.util;

/* JADX INFO: renamed from: j$.util.c0 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2246c0 extends Spliterator {
    void forEachRemaining(Object obj);

    boolean tryAdvance(Object obj);

    @Override // p022j$.util.Spliterator
    InterfaceC2246c0 trySplit();
}
