package j$.util.concurrent;

import j$.util.Spliterator;
import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import j$.util.function.Consumer$CC;
import j$.util.stream.AbstractC2179b;
import j$.util.stream.AbstractC6260u0;
import j$.util.stream.AbstractC6277y1;
import j$.util.stream.C6231m3;
import j$.util.stream.C6268w0;
import j$.util.stream.EnumC6195d3;
import j$.util.stream.EnumC6199e3;
import j$.util.stream.EnumC6264v0;
import j$.util.stream.M3;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;

/* JADX INFO: renamed from: j$.util.concurrent.s */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2123s implements BiConsumer, BiFunction, Consumer, M3 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f761a;

    /* JADX INFO: renamed from: b */
    public final Object f762b;

    /* JADX INFO: renamed from: c */
    public final Object f763c;

    public /* synthetic */ C2123s(int i, Object obj, Object obj2) {
        this.f761a = i;
        this.f762b = obj;
        this.f763c = obj2;
    }

    public /* synthetic */ C2123s(BiFunction biFunction, Function function) {
        this.f761a = 2;
        this.f763c = biFunction;
        this.f762b = function;
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f761a) {
        }
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f761a) {
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        return ((Function) this.f762b).apply(((BiFunction) this.f763c).apply(obj, obj2));
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f761a) {
            case 0:
                ConcurrentMap concurrentMap = (ConcurrentMap) this.f762b;
                BiFunction biFunction = (BiFunction) this.f763c;
                while (!concurrentMap.replace(obj, obj2, biFunction.apply(obj, obj2)) && (obj2 = concurrentMap.get(obj)) != null) {
                }
                break;
            default:
                BiConsumer biConsumer = (BiConsumer) this.f762b;
                BiConsumer biConsumer2 = (BiConsumer) this.f763c;
                biConsumer.accept(obj, obj2);
                biConsumer2.accept(obj, obj2);
                break;
        }
    }

    public C2123s(EnumC6199e3 enumC6199e3, EnumC6264v0 enumC6264v0, Supplier supplier) {
        this.f761a = 5;
        this.f762b = enumC6264v0;
        this.f763c = supplier;
    }

    @Override // j$.util.stream.M3
    /* JADX INFO: renamed from: u */
    public int mo735u() {
        return EnumC6195d3.f1115u | EnumC6195d3.f1112r;
    }

    @Override // j$.util.stream.M3
    /* JADX INFO: renamed from: f */
    public Object mo733f(AbstractC2179b abstractC2179b, Spliterator spliterator) {
        AbstractC6260u0 abstractC6260u0 = (AbstractC6260u0) ((Supplier) this.f763c).get();
        abstractC2179b.s0(spliterator, abstractC6260u0);
        return Boolean.valueOf(abstractC6260u0.f1248b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // j$.util.stream.M3
    /* JADX INFO: renamed from: i */
    public Object mo734i(AbstractC6277y1 abstractC6277y1, Spliterator spliterator) {
        return (Boolean) new C6268w0(this, (AbstractC2179b) abstractC6277y1, spliterator).invoke();
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public void m800v(Object obj) {
        switch (this.f761a) {
            case 3:
                Consumer consumer = (Consumer) this.f762b;
                Consumer consumer2 = (Consumer) this.f763c;
                consumer.m800v(obj);
                consumer2.m800v(obj);
                break;
            case 4:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.f762b;
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f763c;
                if (obj != null) {
                    concurrentHashMap.putIfAbsent(obj, Boolean.TRUE);
                } else {
                    atomicBoolean.set(true);
                }
                break;
            case 5:
            default:
                C6231m3 c6231m3 = (C6231m3) this.f762b;
                Consumer consumer3 = (Consumer) this.f763c;
                if (c6231m3.f1197b.putIfAbsent(obj != null ? obj : C6231m3.f1195d, Boolean.TRUE) == null) {
                    consumer3.m800v(obj);
                }
                break;
            case 6:
                ((BiConsumer) this.f762b).accept(this.f763c, obj);
                break;
        }
    }
}
