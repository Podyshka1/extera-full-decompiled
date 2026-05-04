package p022j$.util.stream;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.function.Supplier;
import p022j$.util.C2585w;
import p022j$.util.C2586x;
import p022j$.util.C2588z;

/* JADX INFO: renamed from: j$.util.stream.j */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2494j implements Supplier {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1399a;

    public /* synthetic */ C2494j(int i) {
        this.f1399a = i;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f1399a) {
            case 0:
                return new C2585w();
            case 1:
                return new ArrayList();
            case 2:
                return new C2586x();
            case 3:
                return new HashSet();
            case 4:
                return new C2588z();
            case 5:
                return new StringBuilder();
            case 6:
                return new LinkedHashSet();
            case 7:
                return new double[4];
            case 8:
                return new double[3];
            case 9:
                return new C2341G();
            case 10:
                return new C2346H();
            case 11:
                return new C2351I();
            case 12:
                return new C2356J();
            case 13:
                return new long[2];
            default:
                return new long[2];
        }
    }
}
