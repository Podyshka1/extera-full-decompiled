package p022j$.util.stream;

import java.util.Set;
import java.util.function.Supplier;
import p022j$.util.C2308r0;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.a */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2440a implements Supplier {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1291a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f1292b;

    public /* synthetic */ C2440a(int i, Object obj) {
        this.f1291a = i;
        this.f1292b = obj;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        int i = this.f1291a;
        Object obj = this.f1292b;
        switch (i) {
            case 0:
                return ((AbstractC2446b) obj).m976E0(0);
            case 1:
                return (Spliterator) obj;
            default:
                Set set = Collectors.f1108a;
                return new C2308r0((CharSequence) obj);
        }
    }
}
