package p022j$.util.function;

import java.util.function.Function;

/* JADX INFO: renamed from: j$.util.function.c */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2279c implements Function {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1028a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Function f1029b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Function f1030c;

    public /* synthetic */ C2279c(Function function, Function function2, int i) {
        this.f1028a = i;
        this.f1029b = function;
        this.f1030c = function2;
    }

    public final /* synthetic */ Function andThen(Function function) {
        switch (this.f1028a) {
        }
        return Function$CC.$default$andThen(this, function);
    }

    public final /* synthetic */ Function compose(Function function) {
        switch (this.f1028a) {
        }
        return Function$CC.$default$compose(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f1028a) {
            case 0:
                return this.f1030c.apply(this.f1029b.apply(obj));
            default:
                return this.f1029b.apply(this.f1030c.apply(obj));
        }
    }
}
