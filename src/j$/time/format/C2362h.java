package j$.time.format;

import com.google.android.gms.cast.framework.media.NotificationOptions;
import j$.time.DateTimeException;
import j$.time.temporal.InterfaceC2408p;
import java.math.BigInteger;
import okhttp3.internal.connection.RealConnection;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: renamed from: j$.time.format.h */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public class C2362h implements InterfaceC2359e {

    /* JADX INFO: renamed from: f */
    public static final long[] f745f = {0, 10, 100, 1000, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS, 100000, 1000000, 10000000, 100000000, 1000000000, RealConnection.IDLE_CONNECTION_HEALTHY_NS};

    /* JADX INFO: renamed from: a */
    public final InterfaceC2408p f746a;

    /* JADX INFO: renamed from: b */
    public final int f747b;

    /* JADX INFO: renamed from: c */
    public final int f748c;

    /* JADX INFO: renamed from: d */
    public final a0 f749d;

    /* JADX INFO: renamed from: e */
    public final int f750e;

    public C2362h(InterfaceC2408p interfaceC2408p, int i, int i2, a0 a0Var) {
        this.f746a = interfaceC2408p;
        this.f747b = i;
        this.f748c = i2;
        this.f749d = a0Var;
        this.f750e = 0;
    }

    @Override // j$.time.format.InterfaceC2359e
    /* JADX INFO: renamed from: D */
    public int mo818D(C2372r c2372r, CharSequence charSequence, int i) {
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
        DateTimeFormatter dateTimeFormatter2 = c2372r.f782a;
        dateTimeFormatter2.f726c.getClass();
        int i6 = this.f748c;
        a0 a0Var = this.f749d;
        int i7 = this.f747b;
        int i8 = 0;
        boolean z6 = true;
        if (cCharAt == '+') {
            boolean z7 = c2372r.f784c;
            boolean z8 = i7 == i6;
            int iOrdinal = a0Var.ordinal();
            if (iOrdinal == 0 ? z7 : !(iOrdinal == 1 || iOrdinal == 4 || (!z7 && !z8))) {
                return ~i;
            }
            i2 = i + 1;
            z = false;
            z2 = true;
        } else {
            dateTimeFormatter2.f726c.getClass();
            if (cCharAt == '-') {
                boolean z9 = c2372r.f784c;
                boolean z10 = i7 == i6;
                int iOrdinal2 = a0Var.ordinal();
                if (iOrdinal2 != 0 && iOrdinal2 != 1 && iOrdinal2 != 4 && (z9 || z10)) {
                    return ~i;
                }
                i2 = i + 1;
                z2 = false;
                z = true;
            } else {
                if (a0Var == a0.ALWAYS && c2372r.f784c) {
                    return ~i;
                }
                i2 = i;
                z = false;
                z2 = false;
            }
        }
        int i9 = (c2372r.f784c || mo820a(c2372r)) ? i7 : 1;
        int i10 = i2 + i9;
        if (i10 > length) {
            return ~i2;
        }
        if (!c2372r.f784c && !mo820a(c2372r)) {
            i6 = 9;
        }
        int i11 = this.f750e;
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
                dateTimeFormatter2.f726c.getClass();
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
                if (bigIntegerDivide.equals(BigInteger.ZERO) && c2372r.f784c) {
                    return ~(i2 - 1);
                }
                bigIntegerDivide = bigIntegerDivide.negate();
            } else {
                if (j == 0 && c2372r.f784c) {
                    return ~(i2 - 1);
                }
                j = -j;
            }
        } else if (a0Var == a0.EXCEEDS_PAD && c2372r.f784c) {
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
            return c2372r.m852f(this.f746a, j, i2, i3);
        }
        if (bigIntegerDivide.bitLength() > 63) {
            bigIntegerDivide = bigIntegerDivide.divide(BigInteger.TEN);
            i3--;
        }
        return c2372r.m852f(this.f746a, bigIntegerDivide.longValue(), i2, i3);
    }

    /* JADX INFO: renamed from: a */
    public boolean mo820a(C2372r c2372r) {
        int i = this.f750e;
        if (i != -1) {
            return i > 0 && this.f747b == this.f748c && this.f749d == a0.NOT_NEGATIVE;
        }
        return true;
    }

    /* JADX INFO: renamed from: b */
    public C2362h mo821b() {
        if (this.f750e == -1) {
            return this;
        }
        return new C2362h(this.f746a, this.f747b, this.f748c, this.f749d, -1);
    }

    /* JADX INFO: renamed from: c */
    public C2362h mo822c(int i) {
        return new C2362h(this.f746a, this.f747b, this.f748c, this.f749d, this.f750e + i);
    }

    @Override // j$.time.format.InterfaceC2359e
    /* JADX INFO: renamed from: s */
    public boolean mo819s(C2374t c2374t, StringBuilder sb) {
        InterfaceC2408p interfaceC2408p = this.f746a;
        Long lM854a = c2374t.m854a(interfaceC2408p);
        if (lM854a == null) {
            return false;
        }
        long jLongValue = lM854a.longValue();
        C2378x c2378x = c2374t.f791b.f726c;
        String string = jLongValue == Long.MIN_VALUE ? "9223372036854775808" : Long.toString(Math.abs(jLongValue));
        int length = string.length();
        int i = this.f748c;
        if (length > i) {
            throw new DateTimeException("Field " + interfaceC2408p + " cannot be printed as the value " + jLongValue + " exceeds the maximum print width of " + i);
        }
        c2378x.getClass();
        int i2 = this.f747b;
        a0 a0Var = this.f749d;
        if (jLongValue >= 0) {
            int i3 = AbstractC2356b.f733a[a0Var.ordinal()];
            if (i3 != 1) {
                if (i3 == 2) {
                    sb.append(SignatureVisitor.EXTENDS);
                }
            } else if (i2 < 19 && jLongValue >= f745f[i2]) {
                sb.append(SignatureVisitor.EXTENDS);
            }
        } else {
            int i4 = AbstractC2356b.f733a[a0Var.ordinal()];
            if (i4 == 1 || i4 == 2 || i4 == 3) {
                sb.append(SignatureVisitor.SUPER);
            } else if (i4 == 4) {
                throw new DateTimeException("Field " + interfaceC2408p + " cannot be printed as the value " + jLongValue + " cannot be negative according to the SignStyle");
            }
        }
        for (int i5 = 0; i5 < i2 - string.length(); i5++) {
            sb.append('0');
        }
        sb.append(string);
        return true;
    }

    public String toString() {
        int i = this.f748c;
        InterfaceC2408p interfaceC2408p = this.f746a;
        a0 a0Var = this.f749d;
        int i2 = this.f747b;
        if (i2 == 1 && i == 19 && a0Var == a0.NORMAL) {
            return "Value(" + interfaceC2408p + ")";
        }
        if (i2 == i && a0Var == a0.NOT_NEGATIVE) {
            return "Value(" + interfaceC2408p + "," + i2 + ")";
        }
        return "Value(" + interfaceC2408p + "," + i2 + "," + i + "," + a0Var + ")";
    }

    public C2362h(InterfaceC2408p interfaceC2408p, int i, int i2, a0 a0Var, int i3) {
        this.f746a = interfaceC2408p;
        this.f747b = i;
        this.f748c = i2;
        this.f749d = a0Var;
        this.f750e = i3;
    }
}
