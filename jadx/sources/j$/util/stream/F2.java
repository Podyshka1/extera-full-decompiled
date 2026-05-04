package j$.util.stream;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class F2 extends B2 {

    /* JADX INFO: renamed from: c */
    public T2 f896c;

    @Override // j$.util.stream.AbstractC6214i2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        T2 t2;
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        if (j <= 0) {
            t2 = new T2();
        } else {
            t2 = new T2((int) j);
        }
        this.f896c = t2;
    }

    @Override // j$.util.stream.AbstractC6214i2, j$.util.stream.InterfaceC6242p2
    public final void end() {
        double[] dArr = (double[]) this.f896c.mo783b();
        Arrays.sort(dArr);
        long length = dArr.length;
        InterfaceC6242p2 interfaceC6242p2 = this.f1158a;
        interfaceC6242p2.mo744m(length);
        int i = 0;
        if (!this.f865b) {
            int length2 = dArr.length;
            while (i < length2) {
                interfaceC6242p2.accept(dArr[i]);
                i++;
            }
        } else {
            int length3 = dArr.length;
            while (i < length3) {
                double d = dArr[i];
                if (interfaceC6242p2.mo745p()) {
                    break;
                }
                interfaceC6242p2.accept(d);
                i++;
            }
        }
        interfaceC6242p2.end();
    }

    @Override // j$.util.stream.InterfaceC6230m2, j$.util.stream.InterfaceC6242p2
    public final void accept(double d) {
        this.f896c.accept(d);
    }
}
