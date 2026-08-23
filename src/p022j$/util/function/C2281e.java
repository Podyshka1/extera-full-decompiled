package p022j$.util.function;

import java.util.function.IntPredicate;

/* JADX INFO: renamed from: j$.util.function.e */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2281e implements IntPredicate {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1033a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ IntPredicate f1034b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ IntPredicate f1035c;

    public /* synthetic */ C2281e(IntPredicate intPredicate, IntPredicate intPredicate2, int i) {
        this.f1033a = i;
        this.f1034b = intPredicate;
        this.f1035c = intPredicate2;
    }

    public final /* synthetic */ IntPredicate and(IntPredicate intPredicate) {
        switch (this.f1033a) {
        }
        return IntPredicate$CC.$default$and(this, intPredicate);
    }

    public final /* synthetic */ IntPredicate negate() {
        switch (this.f1033a) {
        }
        return IntPredicate$CC.$default$negate(this);
    }

    /* JADX INFO: renamed from: or */
    public final /* synthetic */ IntPredicate m866or(IntPredicate intPredicate) {
        switch (this.f1033a) {
        }
        return IntPredicate$CC.$default$or(this, intPredicate);
    }

    @Override // java.util.function.IntPredicate
    public final boolean test(int i) {
        switch (this.f1033a) {
            case 0:
                return this.f1034b.test(i) || this.f1035c.test(i);
            default:
                return this.f1034b.test(i) && this.f1035c.test(i);
        }
    }
}
