package j$.util.function;

import java.util.function.Predicate;

/* JADX INFO: renamed from: j$.util.function.h */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2139h implements Predicate {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f806a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Predicate f807b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Predicate f808c;

    public /* synthetic */ C2139h(Predicate predicate, Predicate predicate2, int i) {
        this.f806a = i;
        this.f807b = predicate;
        this.f808c = predicate2;
    }

    public final /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f806a) {
        }
        return Predicate$CC.$default$and(this, predicate);
    }

    public final /* synthetic */ Predicate negate() {
        switch (this.f806a) {
        }
        return Predicate$CC.$default$negate(this);
    }

    public final /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.f806a) {
        }
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f806a) {
            case 0:
                return this.f807b.test(obj) && this.f808c.test(obj);
            default:
                return this.f807b.test(obj) || this.f808c.test(obj);
        }
    }
}
