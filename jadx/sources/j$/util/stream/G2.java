package j$.util.stream;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class G2 extends C2 {

    /* JADX INFO: renamed from: c */
    public V2 f907c;

    @Override // j$.util.stream.AbstractC6218j2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        V2 v2;
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        if (j <= 0) {
            v2 = new V2();
        } else {
            v2 = new V2((int) j);
        }
        this.f907c = v2;
    }

    @Override // j$.util.stream.AbstractC6218j2, j$.util.stream.InterfaceC6242p2
    public final void end() {
        int[] iArr = (int[]) this.f907c.mo783b();
        Arrays.sort(iArr);
        long length = iArr.length;
        InterfaceC6242p2 interfaceC6242p2 = this.f1164a;
        interfaceC6242p2.mo744m(length);
        int i = 0;
        if (!this.f871b) {
            int length2 = iArr.length;
            while (i < length2) {
                interfaceC6242p2.accept(iArr[i]);
                i++;
            }
        } else {
            int length3 = iArr.length;
            while (i < length3) {
                int i2 = iArr[i];
                if (interfaceC6242p2.mo745p()) {
                    break;
                }
                interfaceC6242p2.accept(i2);
                i++;
            }
        }
        interfaceC6242p2.end();
    }

    @Override // j$.util.stream.InterfaceC6234n2, j$.util.stream.InterfaceC6242p2
    public final void accept(int i) {
        this.f907c.accept(i);
    }
}
