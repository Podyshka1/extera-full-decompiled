package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.Predicate;
import p022j$.util.Spliterator;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: renamed from: j$.util.stream.i4 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2493i4 extends AbstractC2499j4 implements Consumer {

    /* JADX INFO: renamed from: e */
    public final Predicate f1396e;

    /* JADX INFO: renamed from: f */
    public Object f1397f;

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ int f1398g;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2493i4(Spliterator spliterator, Predicate predicate, int i) {
        super(spliterator);
        this.f1398g = i;
        this.f1396e = predicate;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2493i4(Spliterator spliterator, C2493i4 c2493i4, int i) {
        super(spliterator, c2493i4);
        this.f1398g = i;
        this.f1396e = c2493i4.f1396e;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f1405d = (this.f1405d + 1) & 63;
        this.f1397f = obj;
    }

    @Override // p022j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        boolean zTryAdvance;
        boolean zTest;
        switch (this.f1398g) {
            case 0:
                boolean z = this.f1404c;
                Spliterator spliterator = this.f1402a;
                if (z) {
                    boolean z2 = false;
                    this.f1404c = false;
                    while (true) {
                        zTryAdvance = spliterator.tryAdvance(this);
                        if (zTryAdvance && m1011a() && this.f1396e.test(this.f1397f)) {
                            z2 = true;
                        }
                    }
                    if (!zTryAdvance) {
                        return zTryAdvance;
                    }
                    if (z2) {
                        this.f1403b.set(true);
                    }
                    consumer.accept(this.f1397f);
                    return zTryAdvance;
                }
                return spliterator.tryAdvance(consumer);
            default:
                if (this.f1404c && m1011a() && this.f1402a.tryAdvance(this)) {
                    zTest = this.f1396e.test(this.f1397f);
                    if (zTest) {
                        consumer.accept(this.f1397f);
                        return true;
                    }
                } else {
                    zTest = true;
                }
                this.f1404c = false;
                if (!zTest) {
                    this.f1403b.set(true);
                }
                return false;
        }
    }

    @Override // p022j$.util.stream.AbstractC2499j4, p022j$.util.Spliterator
    public Spliterator trySplit() {
        switch (this.f1398g) {
            case 1:
                if (!this.f1403b.get()) {
                    break;
                }
                break;
        }
        return super.trySplit();
    }

    @Override // p022j$.util.stream.AbstractC2499j4
    /* JADX INFO: renamed from: b */
    public final Spliterator mo1002b(Spliterator spliterator) {
        switch (this.f1398g) {
            case 0:
                return new C2493i4(spliterator, this, 0);
            default:
                return new C2493i4(spliterator, this, 1);
        }
    }
}
