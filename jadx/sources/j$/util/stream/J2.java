package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes2.dex */
public final class J2 extends AbstractC6180a0 {
    @Override // j$.util.stream.AbstractC2179b
    public final InterfaceC6242p2 D0(int i, InterfaceC6242p2 interfaceC6242p2) {
        Objects.requireNonNull(interfaceC6242p2);
        return EnumC6195d3.SORTED.m850k(i) ? interfaceC6242p2 : EnumC6195d3.SIZED.m850k(i) ? new O2(interfaceC6242p2) : new G2(interfaceC6242p2);
    }

    @Override // j$.util.stream.AbstractC2179b
    public final I0 A0(AbstractC6277y1 abstractC6277y1, Spliterator spliterator, IntFunction intFunction) {
        if (EnumC6195d3.SORTED.m850k(((AbstractC2179b) abstractC6277y1).f1066m)) {
            return abstractC6277y1.d0(spliterator, false, intFunction);
        }
        int[] iArr = (int[]) ((E0) abstractC6277y1.d0(spliterator, true, intFunction)).mo783b();
        Arrays.sort(iArr);
        return new C6193d1(iArr);
    }
}
