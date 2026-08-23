package j$.util.function;

import java.util.function.Function;

/* JADX INFO: renamed from: j$.util.function.c */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2134c implements Function {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f793a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Function f794b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Function f795c;

    public /* synthetic */ C2134c(Function function, Function function2, int i) {
        this.f793a = i;
        this.f794b = function;
        this.f795c = function2;
    }

    public final /* synthetic */ Function andThen(Function function) {
        switch (this.f793a) {
        }
        return Function$CC.$default$andThen(this, function);
    }

    public final /* synthetic */ Function compose(Function function) {
        switch (this.f793a) {
        }
        return Function$CC.$default$compose(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f793a) {
            case 0:
                return this.f795c.apply(this.f794b.apply(obj));
            default:
                return this.f794b.apply(this.f795c.apply(obj));
        }
    }
}
