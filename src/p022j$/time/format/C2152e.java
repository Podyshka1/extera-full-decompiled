package p022j$.time.format;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: j$.time.format.e */
/* JADX INFO: loaded from: classes2.dex */
public final class C2152e implements InterfaceC2153f {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2153f[] f747a;

    /* JADX INFO: renamed from: b */
    public final boolean f748b;

    /* JADX WARN: Illegal instructions before constructor call */
    public C2152e(List list, boolean z) {
        ArrayList arrayList = (ArrayList) list;
        this((InterfaceC2153f[]) arrayList.toArray(new InterfaceC2153f[arrayList.size()]), z);
    }

    public C2152e(InterfaceC2153f[] interfaceC2153fArr, boolean z) {
        this.f747a = interfaceC2153fArr;
        this.f748b = z;
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
    @Override // p022j$.time.format.InterfaceC2153f
    /* JADX INFO: renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean mo719h(C2165r c2165r, StringBuilder sb) {
        int length = sb.length();
        boolean z = this.f748b;
        if (z) {
            c2165r.f783c++;
        }
        try {
            for (InterfaceC2153f interfaceC2153f : this.f747a) {
                if (!interfaceC2153f.mo719h(c2165r, sb)) {
                    sb.setLength(length);
                }
            }
        } finally {
            if (z) {
                c2165r.f783c--;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        InterfaceC2153f[] interfaceC2153fArr = this.f747a;
        if (interfaceC2153fArr != null) {
            boolean z = this.f748b;
            sb.append(z ? "[" : "(");
            for (InterfaceC2153f interfaceC2153f : interfaceC2153fArr) {
                sb.append(interfaceC2153f);
            }
            sb.append(z ? "]" : ")");
        }
        return sb.toString();
    }
}
