package p022j$.time.format;

import okhttp3.internal.connection.RealConnection;
import org.mvel2.asm.signature.SignatureVisitor;
import p022j$.time.C2108b;
import p022j$.time.temporal.InterfaceC2202q;

/* JADX INFO: renamed from: j$.time.format.i */
/* JADX INFO: loaded from: classes2.dex */
public class C2156i implements InterfaceC2153f {

    /* JADX INFO: renamed from: f */
    public static final long[] f750f = {0, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000, RealConnection.IDLE_CONNECTION_HEALTHY_NS};

    /* JADX INFO: renamed from: a */
    public final InterfaceC2202q f751a;

    /* JADX INFO: renamed from: b */
    public final int f752b;

    /* JADX INFO: renamed from: c */
    public final int f753c;

    /* JADX INFO: renamed from: d */
    public final EnumC2171x f754d;

    /* JADX INFO: renamed from: e */
    public final int f755e;

    public C2156i(InterfaceC2202q interfaceC2202q, int i, int i2, EnumC2171x enumC2171x) {
        this.f751a = interfaceC2202q;
        this.f752b = i;
        this.f753c = i2;
        this.f754d = enumC2171x;
        this.f755e = 0;
    }

    public C2156i(InterfaceC2202q interfaceC2202q, int i, int i2, EnumC2171x enumC2171x, int i3) {
        this.f751a = interfaceC2202q;
        this.f752b = i;
        this.f753c = i2;
        this.f754d = enumC2171x;
        this.f755e = i3;
    }

    /* JADX INFO: renamed from: a */
    public C2156i mo720a() {
        if (this.f755e == -1) {
            return this;
        }
        return new C2156i(this.f751a, this.f752b, this.f753c, this.f754d, -1);
    }

    /* JADX INFO: renamed from: b */
    public C2156i mo721b(int i) {
        return new C2156i(this.f751a, this.f752b, this.f753c, this.f754d, this.f755e + i);
    }

    @Override // p022j$.time.format.InterfaceC2153f
    /* JADX INFO: renamed from: h */
    public boolean mo719h(C2165r c2165r, StringBuilder sb) {
        InterfaceC2202q interfaceC2202q = this.f751a;
        Long lM735a = c2165r.m735a(interfaceC2202q);
        if (lM735a == null) {
            return false;
        }
        long jLongValue = lM735a.longValue();
        C2169v c2169v = c2165r.f782b.f739c;
        String string = jLongValue == Long.MIN_VALUE ? "9223372036854775808" : Long.toString(Math.abs(jLongValue));
        int length = string.length();
        int i = this.f753c;
        if (length > i) {
            throw new C2108b("Field " + interfaceC2202q + " cannot be printed as the value " + jLongValue + " exceeds the maximum print width of " + i);
        }
        c2169v.getClass();
        int i2 = this.f752b;
        EnumC2171x enumC2171x = this.f754d;
        if (jLongValue >= 0) {
            int i3 = AbstractC2150c.f745a[enumC2171x.ordinal()];
            if (i3 != 1) {
                if (i3 == 2) {
                    sb.append(SignatureVisitor.EXTENDS);
                }
            } else if (i2 < 19 && jLongValue >= f750f[i2]) {
                sb.append(SignatureVisitor.EXTENDS);
            }
        } else {
            int i4 = AbstractC2150c.f745a[enumC2171x.ordinal()];
            if (i4 == 1 || i4 == 2 || i4 == 3) {
                sb.append(SignatureVisitor.SUPER);
            } else if (i4 == 4) {
                throw new C2108b("Field " + interfaceC2202q + " cannot be printed as the value " + jLongValue + " cannot be negative according to the SignStyle");
            }
        }
        for (int i5 = 0; i5 < i2 - string.length(); i5++) {
            sb.append('0');
        }
        sb.append(string);
        return true;
    }

    public String toString() {
        int i = this.f753c;
        InterfaceC2202q interfaceC2202q = this.f751a;
        EnumC2171x enumC2171x = this.f754d;
        int i2 = this.f752b;
        if (i2 == 1 && i == 19 && enumC2171x == EnumC2171x.NORMAL) {
            return "Value(" + interfaceC2202q + ")";
        }
        if (i2 == i && enumC2171x == EnumC2171x.NOT_NEGATIVE) {
            return "Value(" + interfaceC2202q + "," + i2 + ")";
        }
        return "Value(" + interfaceC2202q + "," + i2 + "," + i + "," + enumC2171x + ")";
    }
}
