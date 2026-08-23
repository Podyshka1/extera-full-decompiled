package j$.time.format;

import j$.time.C1969b;
import j$.time.temporal.InterfaceC2063q;
import okhttp3.internal.connection.RealConnection;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: renamed from: j$.time.format.i */
/* JADX INFO: loaded from: classes2.dex */
public class C2017i implements InterfaceC2014f {

    /* JADX INFO: renamed from: f */
    public static final long[] f515f = {0, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000, RealConnection.IDLE_CONNECTION_HEALTHY_NS};

    /* JADX INFO: renamed from: a */
    public final InterfaceC2063q f516a;

    /* JADX INFO: renamed from: b */
    public final int f517b;

    /* JADX INFO: renamed from: c */
    public final int f518c;

    /* JADX INFO: renamed from: d */
    public final EnumC2032x f519d;

    /* JADX INFO: renamed from: e */
    public final int f520e;

    public C2017i(InterfaceC2063q interfaceC2063q, int i, int i2, EnumC2032x enumC2032x) {
        this.f516a = interfaceC2063q;
        this.f517b = i;
        this.f518c = i2;
        this.f519d = enumC2032x;
        this.f520e = 0;
    }

    public C2017i(InterfaceC2063q interfaceC2063q, int i, int i2, EnumC2032x enumC2032x, int i3) {
        this.f516a = interfaceC2063q;
        this.f517b = i;
        this.f518c = i2;
        this.f519d = enumC2032x;
        this.f520e = i3;
    }

    /* JADX INFO: renamed from: a */
    public C2017i mo597a() {
        if (this.f520e == -1) {
            return this;
        }
        return new C2017i(this.f516a, this.f517b, this.f518c, this.f519d, -1);
    }

    /* JADX INFO: renamed from: b */
    public C2017i mo598b(int i) {
        return new C2017i(this.f516a, this.f517b, this.f518c, this.f519d, this.f520e + i);
    }

    @Override // j$.time.format.InterfaceC2014f
    /* JADX INFO: renamed from: h */
    public boolean mo596h(C2026r c2026r, StringBuilder sb) {
        InterfaceC2063q interfaceC2063q = this.f516a;
        Long lM612a = c2026r.m612a(interfaceC2063q);
        if (lM612a == null) {
            return false;
        }
        long jLongValue = lM612a.longValue();
        C2030v c2030v = c2026r.f547b.f504c;
        String string = jLongValue == Long.MIN_VALUE ? "9223372036854775808" : Long.toString(Math.abs(jLongValue));
        int length = string.length();
        int i = this.f518c;
        if (length > i) {
            throw new C1969b("Field " + interfaceC2063q + " cannot be printed as the value " + jLongValue + " exceeds the maximum print width of " + i);
        }
        c2030v.getClass();
        int i2 = this.f517b;
        EnumC2032x enumC2032x = this.f519d;
        if (jLongValue >= 0) {
            int i3 = AbstractC2011c.f510a[enumC2032x.ordinal()];
            if (i3 != 1) {
                if (i3 == 2) {
                    sb.append(SignatureVisitor.EXTENDS);
                }
            } else if (i2 < 19 && jLongValue >= f515f[i2]) {
                sb.append(SignatureVisitor.EXTENDS);
            }
        } else {
            int i4 = AbstractC2011c.f510a[enumC2032x.ordinal()];
            if (i4 == 1 || i4 == 2 || i4 == 3) {
                sb.append(SignatureVisitor.SUPER);
            } else if (i4 == 4) {
                throw new C1969b("Field " + interfaceC2063q + " cannot be printed as the value " + jLongValue + " cannot be negative according to the SignStyle");
            }
        }
        for (int i5 = 0; i5 < i2 - string.length(); i5++) {
            sb.append('0');
        }
        sb.append(string);
        return true;
    }

    public String toString() {
        int i = this.f518c;
        InterfaceC2063q interfaceC2063q = this.f516a;
        EnumC2032x enumC2032x = this.f519d;
        int i2 = this.f517b;
        if (i2 == 1 && i == 19 && enumC2032x == EnumC2032x.NORMAL) {
            return "Value(" + interfaceC2063q + ")";
        }
        if (i2 == i && enumC2032x == EnumC2032x.NOT_NEGATIVE) {
            return "Value(" + interfaceC2063q + "," + i2 + ")";
        }
        return "Value(" + interfaceC2063q + "," + i2 + "," + i + "," + enumC2032x + ")";
    }
}
