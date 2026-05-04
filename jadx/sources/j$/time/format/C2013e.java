package j$.time.format;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: j$.time.format.e */
/* JADX INFO: loaded from: classes2.dex */
public final class C2013e implements InterfaceC2014f {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2014f[] f512a;

    /* JADX INFO: renamed from: b */
    public final boolean f513b;

    /* JADX WARN: Illegal instructions before constructor call */
    public C2013e(List list, boolean z) {
        ArrayList arrayList = (ArrayList) list;
        this((InterfaceC2014f[]) arrayList.toArray(new InterfaceC2014f[arrayList.size()]), z);
    }

    public C2013e(InterfaceC2014f[] interfaceC2014fArr, boolean z) {
        this.f512a = interfaceC2014fArr;
        this.f513b = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0026, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
    
        if (r2 != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002f, code lost:
    
        return true;
     */
    @Override // j$.time.format.InterfaceC2014f
    /* JADX INFO: renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean mo596h(C2026r c2026r, StringBuilder sb) {
        int length = sb.length();
        boolean z = this.f513b;
        if (z) {
            c2026r.f548c++;
        }
        try {
            for (InterfaceC2014f interfaceC2014f : this.f512a) {
                if (!interfaceC2014f.mo596h(c2026r, sb)) {
                    sb.setLength(length);
                }
            }
        } finally {
            if (z) {
                c2026r.f548c--;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        InterfaceC2014f[] interfaceC2014fArr = this.f512a;
        if (interfaceC2014fArr != null) {
            boolean z = this.f513b;
            sb.append(z ? "[" : "(");
            for (InterfaceC2014f interfaceC2014f : interfaceC2014fArr) {
                sb.append(interfaceC2014f);
            }
            sb.append(z ? "]" : ")");
        }
        return sb.toString();
    }
}
