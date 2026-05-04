package j$.util.function;

import java.util.function.IntPredicate;

/* JADX INFO: renamed from: j$.util.function.e */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2136e implements IntPredicate {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f798a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ IntPredicate f799b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ IntPredicate f800c;

    public /* synthetic */ C2136e(IntPredicate intPredicate, IntPredicate intPredicate2, int i) {
        this.f798a = i;
        this.f799b = intPredicate;
        this.f800c = intPredicate2;
    }

    public final /* synthetic */ IntPredicate and(IntPredicate intPredicate) {
        switch (this.f798a) {
        }
        return IntPredicate$CC.$default$and(this, intPredicate);
    }

    public final /* synthetic */ IntPredicate negate() {
        switch (this.f798a) {
        }
        return IntPredicate$CC.$default$negate(this);
    }

    public final /* synthetic */ IntPredicate or(IntPredicate intPredicate) {
        switch (this.f798a) {
        }
        return IntPredicate$CC.$default$or(this, intPredicate);
    }

    @Override // java.util.function.IntPredicate
    public final boolean test(int i) {
        switch (this.f798a) {
            case 0:
                return this.f799b.test(i) || this.f800c.test(i);
            default:
                return this.f799b.test(i) && this.f800c.test(i);
        }
    }
}
