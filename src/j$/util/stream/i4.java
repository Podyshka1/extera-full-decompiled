package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
public final class i4 extends j4 implements Consumer {

    /* JADX INFO: renamed from: e */
    public final Predicate f1160e;

    /* JADX INFO: renamed from: f */
    public Object f1161f;

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ int f1162g;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i4(Spliterator spliterator, Predicate predicate, int i) {
        super(spliterator);
        this.f1162g = i;
        this.f1160e = predicate;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i4(Spliterator spliterator, i4 i4Var, int i) {
        super(spliterator, i4Var);
        this.f1162g = i;
        this.f1160e = i4Var.f1160e;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f1169d = (this.f1169d + 1) & 63;
        this.f1161f = obj;
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        boolean zTryAdvance;
        boolean zTest;
        switch (this.f1162g) {
            case 0:
                boolean z = this.f1168c;
                Spliterator spliterator = this.f1166a;
                if (z) {
                    boolean z2 = false;
                    this.f1168c = false;
                    while (true) {
                        zTryAdvance = spliterator.tryAdvance(this);
                        if (zTryAdvance && m860a() && this.f1160e.test(this.f1161f)) {
                            z2 = true;
                        }
                    }
                    if (!zTryAdvance) {
                        return zTryAdvance;
                    }
                    if (z2) {
                        this.f1167b.set(true);
                    }
                    consumer.accept(this.f1161f);
                    return zTryAdvance;
                }
                return spliterator.tryAdvance(consumer);
            default:
                if (this.f1168c && m860a() && this.f1166a.tryAdvance(this)) {
                    zTest = this.f1160e.test(this.f1161f);
                    if (zTest) {
                        consumer.accept(this.f1161f);
                        return true;
                    }
                } else {
                    zTest = true;
                }
                this.f1168c = false;
                if (!zTest) {
                    this.f1167b.set(true);
                }
                return false;
        }
    }

    @Override // j$.util.stream.j4, j$.util.Spliterator
    public Spliterator trySplit() {
        switch (this.f1162g) {
            case 1:
                if (!this.f1167b.get()) {
                    break;
                }
                break;
        }
        return super.trySplit();
    }

    @Override // j$.util.stream.j4
    /* JADX INFO: renamed from: b */
    public final Spliterator mo851b(Spliterator spliterator) {
        switch (this.f1162g) {
            case 0:
                return new i4(spliterator, this, 0);
            default:
                return new i4(spliterator, this, 1);
        }
    }
}
