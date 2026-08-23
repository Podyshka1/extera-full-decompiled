package p022j$.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Consumer;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.e0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2274e0 implements Iterator, Consumer {

    /* JADX INFO: renamed from: a */
    public boolean f1016a = false;

    /* JADX INFO: renamed from: b */
    public Object f1017b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Spliterator f1018c;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public C2274e0(Spliterator spliterator) {
        this.f1018c = spliterator;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f1016a = true;
        this.f1017b = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f1016a) {
            this.f1018c.tryAdvance(this);
        }
        return this.f1016a;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f1016a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f1016a = false;
        return this.f1017b;
    }
}
