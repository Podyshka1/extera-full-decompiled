package j$.util.stream;

import j$.time.C2045s;
import j$.util.Collection;
import j$.util.List;
import j$.util.Objects;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class M2 extends E2 {

    /* JADX INFO: renamed from: d */
    public ArrayList f962d;

    @Override // j$.util.stream.AbstractC6226l2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f962d = j >= 0 ? new ArrayList((int) j) : new ArrayList();
    }

    @Override // j$.util.stream.AbstractC6226l2, j$.util.stream.InterfaceC6242p2
    public final void end() {
        List.EL.sort(this.f962d, this.f887b);
        long size = this.f962d.size();
        InterfaceC6242p2 interfaceC6242p2 = this.f1187a;
        interfaceC6242p2.mo744m(size);
        if (!this.f888c) {
            ArrayList arrayList = this.f962d;
            Objects.requireNonNull(interfaceC6242p2);
            Collection.EL.m682a(arrayList, new C2045s(8, interfaceC6242p2));
        } else {
            ArrayList arrayList2 = this.f962d;
            int size2 = arrayList2.size();
            int i = 0;
            while (i < size2) {
                Object obj = arrayList2.get(i);
                i++;
                if (interfaceC6242p2.mo745p()) {
                    break;
                } else {
                    interfaceC6242p2.m800v(obj);
                }
            }
        }
        interfaceC6242p2.end();
        this.f962d = null;
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m800v(Object obj) {
        this.f962d.add(obj);
    }
}
