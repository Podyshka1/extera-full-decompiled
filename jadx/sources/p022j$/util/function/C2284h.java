package p022j$.util.function;

import java.util.function.Predicate;

/* JADX INFO: renamed from: j$.util.function.h */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2284h implements Predicate {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1041a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Predicate f1042b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Predicate f1043c;

    public /* synthetic */ C2284h(Predicate predicate, Predicate predicate2, int i) {
        this.f1041a = i;
        this.f1042b = predicate;
        this.f1043c = predicate2;
    }

    public final /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f1041a) {
        }
        return Predicate$CC.$default$and(this, predicate);
    }

    public final /* synthetic */ Predicate negate() {
        switch (this.f1041a) {
        }
        return Predicate$CC.$default$negate(this);
    }

    /* JADX INFO: renamed from: or */
    public final /* synthetic */ Predicate m867or(Predicate predicate) {
        switch (this.f1041a) {
        }
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f1041a) {
            case 0:
                return this.f1042b.test(obj) && this.f1043c.test(obj);
            default:
                return this.f1042b.test(obj) || this.f1043c.test(obj);
        }
    }
}
