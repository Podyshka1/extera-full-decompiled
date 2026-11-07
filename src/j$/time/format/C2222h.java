package j$.time.format;

import com.google.android.gms.cast.framework.media.NotificationOptions;
import j$.time.C2184b;
import j$.time.temporal.InterfaceC2269p;
import java.math.BigInteger;
import okhttp3.internal.connection.RealConnection;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: renamed from: j$.time.format.h */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public class C2222h implements InterfaceC2219e {

    /* JADX INFO: renamed from: f */
    public static final long[] f741f = {0, 10, 100, 1000, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS, 100000, 1000000, 10000000, 100000000, 1000000000, RealConnection.IDLE_CONNECTION_HEALTHY_NS};

    /* JADX INFO: renamed from: a */
    public final InterfaceC2269p f742a;

    /* JADX INFO: renamed from: b */
    public final int f743b;

    /* JADX INFO: renamed from: c */
    public final int f744c;

    /* JADX INFO: renamed from: d */
    public final a0 f745d;

    /* JADX INFO: renamed from: e */
    public final int f746e;

    public C2222h(InterfaceC2269p interfaceC2269p, int i, int i2, a0 a0Var) {
        this.f742a = interfaceC2269p;
        this.f743b = i;
        this.f744c = i2;
        this.f745d = a0Var;
        this.f746e = 0;
    }

    @Override // j$.time.format.InterfaceC2219e
    /* JADX INFO: renamed from: D */
    public int mo774D(C2232r c2232r, CharSequence charSequence, int i) {
        int i2;
        boolean z;
        boolean z2;
        BigInteger bigIntegerAdd;
        boolean z3;
        boolean z4;
        int i3;
        long j;
        long j2;
        int i4;
        int i5;
        DateTimeFormatter dateTimeFormatter;
        boolean z5;
        int length = charSequence.length();
        if (i == length) {
            return ~i;
        }
        char cCharAt = charSequence.charAt(i);
        DateTimeFormatter dateTimeFormatter2 = c2232r.f778a;
        dateTimeFormatter2.f722c.getClass();
        int i6 = this.f744c;
        a0 a0Var = this.f745d;
        int i7 = this.f743b;
        int i8 = 0;
        boolean z6 = true;
        if (cCharAt == '+') {
            boolean z7 = c2232r.f780c;
            boolean z8 = i7 == i6;
            int iOrdinal = a0Var.ordinal();
            if (iOrdinal == 0 ? z7 : !(iOrdinal == 1 || iOrdinal == 4 || (!z7 && !z8))) {
                return ~i;
            }
            i2 = i + 1;
            z = false;
            z2 = true;
        } else {
            dateTimeFormatter2.f722c.getClass();
            if (cCharAt == '-') {
                boolean z9 = c2232r.f780c;
                boolean z10 = i7 == i6;
                int iOrdinal2 = a0Var.ordinal();
                if (iOrdinal2 != 0 && iOrdinal2 != 1 && iOrdinal2 != 4 && (z9 || z10)) {
                    return ~i;
                }
                i2 = i + 1;
                z2 = false;
                z = true;
            } else {
                if (a0Var == a0.ALWAYS && c2232r.f780c) {
                    return ~i;
                }
                i2 = i;
                z = false;
                z2 = false;
            }
        }
        int i9 = (c2232r.f780c || mo776a(c2232r)) ? i7 : 1;
        int i10 = i2 + i9;
        if (i10 > length) {
            return ~i2;
        }
        if (!c2232r.f780c && !mo776a(c2232r)) {
            i6 = 9;
        }
        int i11 = this.f746e;
        int iMax = Math.max(i11, 0) + i6;
        while (true) {
            bigIntegerAdd = null;
            if (i8 >= 2) {
                z3 = z;
                z4 = z2;
                i3 = i2;
                j = 0;
                break;
            }
            int iMin = Math.min(i2 + iMax, length);
            boolean z11 = z6;
            j2 = 0;
            i4 = i2;
            while (true) {
                if (i4 >= iMin) {
                    z3 = z;
                    i5 = length;
                    break;
                }
                int i12 = i4 + 1;
                char cCharAt2 = charSequence.charAt(i4);
                z3 = z;
                dateTimeFormatter2.f722c.getClass();
                int i13 = cCharAt2 - '0';
                i5 = length;
                if (i13 < 0 || i13 > 9) {
                    i13 = -1;
                }
                if (i13 >= 0) {
                    if (i12 - i2 > 18) {
                        if (bigIntegerAdd == null) {
                            bigIntegerAdd = BigInteger.valueOf(j2);
                        }
                        dateTimeFormatter = dateTimeFormatter2;
                        z5 = z2;
                        bigIntegerAdd = bigIntegerAdd.multiply(BigInteger.TEN).add(BigInteger.valueOf(i13));
                    } else {
                        dateTimeFormatter = dateTimeFormatter2;
                        z5 = z2;
                        j2 = (j2 * 10) + ((long) i13);
                    }
                    i4 = i12;
                    length = i5;
                    z = z3;
                    dateTimeFormatter2 = dateTimeFormatter;
                    z2 = z5;
                } else if (i4 < i10) {
                    return ~i2;
                }
            }
            DateTimeFormatter dateTimeFormatter3 = dateTimeFormatter2;
            z4 = z2;
            if (i11 <= 0 || i8 != 0) {
                break;
            }
            int iMax2 = Math.max(i9, (i4 - i2) - i11);
            i8++;
            z6 = z11;
            length = i5;
            dateTimeFormatter2 = dateTimeFormatter3;
            z2 = z4;
            iMax = iMax2;
            z = z3;
        }
        i3 = i4;
        j = j2;
        BigInteger bigIntegerDivide = bigIntegerAdd;
        if (z3) {
            if (bigIntegerDivide != null) {
                if (bigIntegerDivide.equals(BigInteger.ZERO) && c2232r.f780c) {
                    return ~(i2 - 1);
                }
                bigIntegerDivide = bigIntegerDivide.negate();
            } else {
                if (j == 0 && c2232r.f780c) {
                    return ~(i2 - 1);
                }
                j = -j;
            }
        } else if (a0Var == a0.EXCEEDS_PAD && c2232r.f780c) {
            int i14 = i3 - i2;
            if (z4) {
                if (i14 <= i7) {
                    return ~(i2 - 1);
                }
            } else if (i14 > i7) {
                return ~i2;
            }
        }
        if (bigIntegerDivide == null) {
            return c2232r.m808f(this.f742a, j, i2, i3);
        }
        if (bigIntegerDivide.bitLength() > 63) {
            bigIntegerDivide = bigIntegerDivide.divide(BigInteger.TEN);
            i3--;
        }
        return c2232r.m808f(this.f742a, bigIntegerDivide.longValue(), i2, i3);
    }

    /* JADX INFO: renamed from: a */
    public boolean mo776a(C2232r c2232r) {
        int i = this.f746e;
        if (i != -1) {
            return i > 0 && this.f743b == this.f744c && this.f745d == a0.NOT_NEGATIVE;
        }
        return true;
    }

    /* JADX INFO: renamed from: b */
    public C2222h mo777b() {
        if (this.f746e == -1) {
            return this;
        }
        return new C2222h(this.f742a, this.f743b, this.f744c, this.f745d, -1);
    }

    /* JADX INFO: renamed from: c */
    public C2222h mo778c(int i) {
        return new C2222h(this.f742a, this.f743b, this.f744c, this.f745d, this.f746e + i);
    }

    @Override // j$.time.format.InterfaceC2219e
    /* JADX INFO: renamed from: s */
    public boolean mo775s(C2234t c2234t, StringBuilder sb) {
        InterfaceC2269p interfaceC2269p = this.f742a;
        Long lM810a = c2234t.m810a(interfaceC2269p);
        if (lM810a == null) {
            return false;
        }
        long jLongValue = lM810a.longValue();
        C2238x c2238x = c2234t.f787b.f722c;
        String string = jLongValue == Long.MIN_VALUE ? "9223372036854775808" : Long.toString(Math.abs(jLongValue));
        int length = string.length();
        int i = this.f744c;
        if (length > i) {
            throw new C2184b("Field " + interfaceC2269p + " cannot be printed as the value " + jLongValue + " exceeds the maximum print width of " + i);
        }
        c2238x.getClass();
        int i2 = this.f743b;
        a0 a0Var = this.f745d;
        if (jLongValue >= 0) {
            int i3 = AbstractC2216b.f729a[a0Var.ordinal()];
            if (i3 != 1) {
                if (i3 == 2) {
                    sb.append(SignatureVisitor.EXTENDS);
                }
            } else if (i2 < 19 && jLongValue >= f741f[i2]) {
                sb.append(SignatureVisitor.EXTENDS);
            }
        } else {
            int i4 = AbstractC2216b.f729a[a0Var.ordinal()];
            if (i4 == 1 || i4 == 2 || i4 == 3) {
                sb.append(SignatureVisitor.SUPER);
            } else if (i4 == 4) {
                throw new C2184b("Field " + interfaceC2269p + " cannot be printed as the value " + jLongValue + " cannot be negative according to the SignStyle");
            }
        }
        for (int i5 = 0; i5 < i2 - string.length(); i5++) {
            sb.append('0');
        }
        sb.append(string);
        return true;
    }

    public String toString() {
        int i = this.f744c;
        InterfaceC2269p interfaceC2269p = this.f742a;
        a0 a0Var = this.f745d;
        int i2 = this.f743b;
        if (i2 == 1 && i == 19 && a0Var == a0.NORMAL) {
            return "Value(" + interfaceC2269p + ")";
        }
        if (i2 == i && a0Var == a0.NOT_NEGATIVE) {
            return "Value(" + interfaceC2269p + "," + i2 + ")";
        }
        return "Value(" + interfaceC2269p + "," + i2 + "," + i + "," + a0Var + ")";
    }

    public C2222h(InterfaceC2269p interfaceC2269p, int i, int i2, a0 a0Var, int i3) {
        this.f742a = interfaceC2269p;
        this.f743b = i;
        this.f744c = i2;
        this.f745d = a0Var;
        this.f746e = i3;
    }
}
