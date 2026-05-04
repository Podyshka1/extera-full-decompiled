package p022j$.util.stream;

import java.util.ArrayList;
import p022j$.time.C2184s;
import p022j$.util.Collection;
import p022j$.util.List;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.util.stream.M2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2374M2 extends AbstractC2334E2 {

    /* JADX INFO: renamed from: d */
    public ArrayList f1197d;

    @Override // p022j$.util.stream.AbstractC2509l2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f1197d = j >= 0 ? new ArrayList((int) j) : new ArrayList();
    }

    @Override // p022j$.util.stream.AbstractC2509l2, p022j$.util.stream.InterfaceC2529p2
    public final void end() {
        List.EL.sort(this.f1197d, this.f1122b);
        long size = this.f1197d.size();
        InterfaceC2529p2 interfaceC2529p2 = this.f1423a;
        interfaceC2529p2.mo873m(size);
        if (!this.f1123c) {
            ArrayList arrayList = this.f1197d;
            Objects.requireNonNull(interfaceC2529p2);
            Collection.EL.m807a(arrayList, new C2184s(8, interfaceC2529p2));
        } else {
            ArrayList arrayList2 = this.f1197d;
            int size2 = arrayList2.size();
            int i = 0;
            while (i < size2) {
                Object obj = arrayList2.get(i);
                i++;
                if (interfaceC2529p2.mo874p()) {
                    break;
                } else {
                    interfaceC2529p2.m940v(obj);
                }
            }
        }
        interfaceC2529p2.end();
        this.f1197d = null;
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m940v(Object obj) {
        this.f1197d.add(obj);
    }
}
