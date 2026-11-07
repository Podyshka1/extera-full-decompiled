package j$.time.format;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: renamed from: j$.time.format.d */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2358d implements InterfaceC2359e {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2359e[] f742a;

    /* JADX INFO: renamed from: b */
    public final boolean f743b;

    /* JADX WARN: Illegal instructions before constructor call */
    public C2358d(List list, boolean z) {
        ArrayList arrayList = (ArrayList) list;
        this((InterfaceC2359e[]) arrayList.toArray(new InterfaceC2359e[arrayList.size()]), z);
    }

    @Override // j$.time.format.InterfaceC2359e
    /* JADX INFO: renamed from: D */
    public final int mo818D(C2372r c2372r, CharSequence charSequence, int i) {
        boolean z = this.f743b;
        InterfaceC2359e[] interfaceC2359eArr = this.f742a;
        int i2 = 0;
        if (!z) {
            int length = interfaceC2359eArr.length;
            while (i2 < length) {
                i = interfaceC2359eArr[i2].mo818D(c2372r, charSequence, i);
                if (i < 0) {
                    return i;
                }
                i2++;
            }
            return i;
        }
        ArrayList arrayList = c2372r.f785d;
        C2379y c2379yM849c = c2372r.m849c();
        c2379yM849c.getClass();
        C2379y c2379y = new C2379y();
        ((HashMap) c2379y.f799a).putAll(c2379yM849c.f799a);
        c2379y.f800b = c2379yM849c.f800b;
        c2379y.f801c = c2379yM849c.f801c;
        c2379y.f802d = c2379yM849c.f802d;
        arrayList.add(c2379y);
        int length2 = interfaceC2359eArr.length;
        int iMo818D = i;
        while (i2 < length2) {
            iMo818D = interfaceC2359eArr[i2].mo818D(c2372r, charSequence, iMo818D);
            if (iMo818D < 0) {
                c2372r.f785d.remove(r6.size() - 1);
                return i;
            }
            i2++;
        }
        c2372r.f785d.remove(r6.size() - 2);
        return iMo818D;
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
    @Override // j$.time.format.InterfaceC2359e
    /* JADX INFO: renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean mo819s(C2374t c2374t, StringBuilder sb) {
        int length = sb.length();
        boolean z = this.f743b;
        if (z) {
            c2374t.f792c++;
        }
        try {
            for (InterfaceC2359e interfaceC2359e : this.f742a) {
                if (!interfaceC2359e.mo819s(c2374t, sb)) {
                    sb.setLength(length);
                }
            }
        } finally {
            if (z) {
                c2374t.f792c--;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        InterfaceC2359e[] interfaceC2359eArr = this.f742a;
        if (interfaceC2359eArr != null) {
            boolean z = this.f743b;
            sb.append(z ? "[" : "(");
            for (InterfaceC2359e interfaceC2359e : interfaceC2359eArr) {
                sb.append(interfaceC2359e);
            }
            sb.append(z ? "]" : ")");
        }
        return sb.toString();
    }

    public C2358d(InterfaceC2359e[] interfaceC2359eArr, boolean z) {
        this.f742a = interfaceC2359eArr;
        this.f743b = z;
    }
}
