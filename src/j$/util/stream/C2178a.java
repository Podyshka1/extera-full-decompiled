package j$.util.stream;

import j$.util.Spliterator;
import java.util.Set;
import java.util.function.Supplier;

/* JADX INFO: renamed from: j$.util.stream.a */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2178a implements Supplier {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1056a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f1057b;

    public /* synthetic */ C2178a(int i, Object obj) {
        this.f1056a = i;
        this.f1057b = obj;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        int i = this.f1056a;
        Object obj = this.f1057b;
        switch (i) {
            case 0:
                return ((AbstractC2179b) obj).E0(0);
            case 1:
                return (Spliterator) obj;
            default:
                Set set = Collectors.f873a;
                return new j$.util.r0((CharSequence) obj);
        }
    }
}
