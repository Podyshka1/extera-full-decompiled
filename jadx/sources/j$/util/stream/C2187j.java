package j$.util.stream;

import j$.util.C2207w;
import j$.util.C2208x;
import j$.util.C2210z;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.function.Supplier;

/* JADX INFO: renamed from: j$.util.stream.j */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2187j implements Supplier {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1163a;

    public /* synthetic */ C2187j(int i) {
        this.f1163a = i;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f1163a) {
            case 0:
                return new C2207w();
            case 1:
                return new ArrayList();
            case 2:
                return new C2208x();
            case 3:
                return new HashSet();
            case 4:
                return new C2210z();
            case 5:
                return new StringBuilder();
            case 6:
                return new LinkedHashSet();
            case 7:
                return new double[4];
            case 8:
                return new double[3];
            case 9:
                return new C2159G();
            case 10:
                return new C2160H();
            case 11:
                return new C2161I();
            case 12:
                return new C2162J();
            case 13:
                return new long[2];
            default:
                return new long[2];
        }
    }
}
