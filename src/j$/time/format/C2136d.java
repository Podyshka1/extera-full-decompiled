package j$.time.format;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: renamed from: j$.time.format.d */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2136d implements InterfaceC2137e {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2137e[] f582a;

    /* JADX INFO: renamed from: b */
    public final boolean f583b;

    /* JADX WARN: Illegal instructions before constructor call */
    public C2136d(List list, boolean z) {
        ArrayList arrayList = (ArrayList) list;
        this((InterfaceC2137e[]) arrayList.toArray(new InterfaceC2137e[arrayList.size()]), z);
    }

    @Override // j$.time.format.InterfaceC2137e
    /* JADX INFO: renamed from: B */
    public final int mo636B(C2150r c2150r, CharSequence charSequence, int i) {
        boolean z = this.f583b;
        InterfaceC2137e[] interfaceC2137eArr = this.f582a;
        int i2 = 0;
        if (!z) {
            int length = interfaceC2137eArr.length;
            while (i2 < length) {
                i = interfaceC2137eArr[i2].mo636B(c2150r, charSequence, i);
                if (i < 0) {
                    return i;
                }
                i2++;
            }
            return i;
        }
        ArrayList arrayList = c2150r.f625d;
        C2157y c2157yM667c = c2150r.m667c();
        c2157yM667c.getClass();
        C2157y c2157y = new C2157y();
        ((HashMap) c2157y.f639a).putAll(c2157yM667c.f639a);
        c2157y.f640b = c2157yM667c.f640b;
        c2157y.f641c = c2157yM667c.f641c;
        c2157y.f642d = c2157yM667c.f642d;
        arrayList.add(c2157y);
        int length2 = interfaceC2137eArr.length;
        int iMo636B = i;
        while (i2 < length2) {
            iMo636B = interfaceC2137eArr[i2].mo636B(c2150r, charSequence, iMo636B);
            if (iMo636B < 0) {
                c2150r.f625d.remove(r6.size() - 1);
                return i;
            }
            i2++;
        }
        c2150r.f625d.remove(r6.size() - 2);
        return iMo636B;
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
    @Override // j$.time.format.InterfaceC2137e
    /* JADX INFO: renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean mo637t(C2152t c2152t, StringBuilder sb) {
        int length = sb.length();
        boolean z = this.f583b;
        if (z) {
            c2152t.f632c++;
        }
        try {
            for (InterfaceC2137e interfaceC2137e : this.f582a) {
                if (!interfaceC2137e.mo637t(c2152t, sb)) {
                    sb.setLength(length);
                }
            }
        } finally {
            if (z) {
                c2152t.f632c--;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        InterfaceC2137e[] interfaceC2137eArr = this.f582a;
        if (interfaceC2137eArr != null) {
            boolean z = this.f583b;
            sb.append(z ? "[" : "(");
            for (InterfaceC2137e interfaceC2137e : interfaceC2137eArr) {
                sb.append(interfaceC2137e);
            }
            sb.append(z ? "]" : ")");
        }
        return sb.toString();
    }

    public C2136d(InterfaceC2137e[] interfaceC2137eArr, boolean z) {
        this.f582a = interfaceC2137eArr;
        this.f583b = z;
    }
}
