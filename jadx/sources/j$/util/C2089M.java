package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.M */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2089M implements InterfaceC2091O, InterfaceC2209y {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ PrimitiveIterator.OfLong f674a;

    public /* synthetic */ C2089M(PrimitiveIterator.OfLong ofLong) {
        this.f674a = ofLong;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfLong ofLong = this.f674a;
        if (obj instanceof C2089M) {
            obj = ((C2089M) obj).f674a;
        }
        return ofLong.equals(obj);
    }

    @Override // j$.util.InterfaceC2092P
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f674a.forEachRemaining(obj);
    }

    @Override // j$.util.InterfaceC2091O, java.util.Iterator, j$.util.InterfaceC2209y
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f674a.forEachRemaining((Consumer<? super Long>) consumer);
    }

    @Override // j$.util.InterfaceC2091O
    public final /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f674a.forEachRemaining(longConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f674a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f674a.hashCode();
    }

    @Override // j$.util.InterfaceC2091O, java.util.Iterator
    public final /* synthetic */ Long next() {
        return this.f674a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f674a.next();
    }

    @Override // j$.util.InterfaceC2091O
    public final /* synthetic */ long nextLong() {
        return this.f674a.nextLong();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f674a.remove();
    }
}
