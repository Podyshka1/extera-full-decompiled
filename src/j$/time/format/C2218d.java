package j$.time.format;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: renamed from: j$.time.format.d */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2218d implements InterfaceC2219e {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2219e[] f738a;

    /* JADX INFO: renamed from: b */
    public final boolean f739b;

    /* JADX WARN: Illegal instructions before constructor call */
    public C2218d(List list, boolean z) {
        ArrayList arrayList = (ArrayList) list;
        this((InterfaceC2219e[]) arrayList.toArray(new InterfaceC2219e[arrayList.size()]), z);
    }

    @Override // j$.time.format.InterfaceC2219e
    /* JADX INFO: renamed from: D */
    public final int mo774D(C2232r c2232r, CharSequence charSequence, int i) {
        boolean z = this.f739b;
        InterfaceC2219e[] interfaceC2219eArr = this.f738a;
        int i2 = 0;
        if (!z) {
            int length = interfaceC2219eArr.length;
            while (i2 < length) {
                i = interfaceC2219eArr[i2].mo774D(c2232r, charSequence, i);
                if (i < 0) {
                    return i;
                }
                i2++;
            }
            return i;
        }
        ArrayList arrayList = c2232r.f781d;
        C2239y c2239yM805c = c2232r.m805c();
        c2239yM805c.getClass();
        C2239y c2239y = new C2239y();
        ((HashMap) c2239y.f795a).putAll(c2239yM805c.f795a);
        c2239y.f796b = c2239yM805c.f796b;
        c2239y.f797c = c2239yM805c.f797c;
        c2239y.f798d = c2239yM805c.f798d;
        arrayList.add(c2239y);
        int length2 = interfaceC2219eArr.length;
        int iMo774D = i;
        while (i2 < length2) {
            iMo774D = interfaceC2219eArr[i2].mo774D(c2232r, charSequence, iMo774D);
            if (iMo774D < 0) {
                c2232r.f781d.remove(r6.size() - 1);
                return i;
            }
            i2++;
        }
        c2232r.f781d.remove(r6.size() - 2);
        return iMo774D;
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
    @Override // j$.time.format.InterfaceC2219e
    /* JADX INFO: renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean mo775s(C2234t c2234t, StringBuilder sb) {
        int length = sb.length();
        boolean z = this.f739b;
        if (z) {
            c2234t.f788c++;
        }
        try {
            for (InterfaceC2219e interfaceC2219e : this.f738a) {
                if (!interfaceC2219e.mo775s(c2234t, sb)) {
                    sb.setLength(length);
                }
            }
        } finally {
            if (z) {
                c2234t.f788c--;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        InterfaceC2219e[] interfaceC2219eArr = this.f738a;
        if (interfaceC2219eArr != null) {
            boolean z = this.f739b;
            sb.append(z ? "[" : "(");
            for (InterfaceC2219e interfaceC2219e : interfaceC2219eArr) {
                sb.append(interfaceC2219e);
            }
            sb.append(z ? "]" : ")");
        }
        return sb.toString();
    }

    public C2218d(InterfaceC2219e[] interfaceC2219eArr, boolean z) {
        this.f738a = interfaceC2219eArr;
        this.f739b = z;
    }
}
