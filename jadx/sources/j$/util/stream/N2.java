package j$.util.stream;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class N2 extends B2 {

    /* JADX INFO: renamed from: c */
    public double[] f968c;

    /* JADX INFO: renamed from: d */
    public int f969d;

    @Override // j$.util.stream.AbstractC6214i2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f968c = new double[(int) j];
    }

    @Override // j$.util.stream.AbstractC6214i2, j$.util.stream.InterfaceC6242p2
    public final void end() {
        int i = 0;
        Arrays.sort(this.f968c, 0, this.f969d);
        long j = this.f969d;
        InterfaceC6242p2 interfaceC6242p2 = this.f1158a;
        interfaceC6242p2.mo744m(j);
        if (!this.f865b) {
            while (i < this.f969d) {
                interfaceC6242p2.accept(this.f968c[i]);
                i++;
            }
        } else {
            while (i < this.f969d && !interfaceC6242p2.mo745p()) {
                interfaceC6242p2.accept(this.f968c[i]);
                i++;
            }
        }
        interfaceC6242p2.end();
        this.f968c = null;
    }

    @Override // j$.util.stream.InterfaceC6230m2, j$.util.stream.InterfaceC6242p2
    public final void accept(double d) {
        double[] dArr = this.f968c;
        int i = this.f969d;
        this.f969d = i + 1;
        dArr[i] = d;
    }
}
