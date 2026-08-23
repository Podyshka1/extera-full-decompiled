package j$.util;

import j$.util.function.Consumer$CC;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public final class e0 implements Iterator, Consumer {

    /* JADX INFO: renamed from: a */
    public boolean f781a = false;

    /* JADX INFO: renamed from: b */
    public Object f782b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Spliterator f783c;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public e0(Spliterator spliterator) {
        this.f783c = spliterator;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f781a = true;
        this.f782b = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f781a) {
            this.f783c.tryAdvance(this);
        }
        return this.f781a;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f781a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f781a = false;
        return this.f782b;
    }
}
