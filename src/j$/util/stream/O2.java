package j$.util.stream;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class O2 extends C2 {

    /* JADX INFO: renamed from: c */
    public int[] f976c;

    /* JADX INFO: renamed from: d */
    public int f977d;

    @Override // j$.util.stream.AbstractC6218j2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f976c = new int[(int) j];
    }

    @Override // j$.util.stream.AbstractC6218j2, j$.util.stream.InterfaceC6242p2
    public final void end() {
        int i = 0;
        Arrays.sort(this.f976c, 0, this.f977d);
        long j = this.f977d;
        InterfaceC6242p2 interfaceC6242p2 = this.f1164a;
        interfaceC6242p2.mo744m(j);
        if (!this.f871b) {
            while (i < this.f977d) {
                interfaceC6242p2.accept(this.f976c[i]);
                i++;
            }
        } else {
            while (i < this.f977d && !interfaceC6242p2.mo745p()) {
                interfaceC6242p2.accept(this.f976c[i]);
                i++;
            }
        }
        interfaceC6242p2.end();
        this.f976c = null;
    }

    @Override // j$.util.stream.InterfaceC6234n2, j$.util.stream.InterfaceC6242p2
    public final void accept(int i) {
        int[] iArr = this.f976c;
        int i2 = this.f977d;
        this.f977d = i2 + 1;
        iArr[i2] = i;
    }
}
