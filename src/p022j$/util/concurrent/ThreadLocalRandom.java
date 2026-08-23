package p022j$.util.concurrent;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.security.AccessController;
import java.security.SecureRandom;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import p022j$.util.C2310s0;
import p022j$.util.stream.AbstractC2355I3;
import p022j$.util.stream.C2326D;
import p022j$.util.stream.C2489i0;
import p022j$.util.stream.C2517n0;
import p022j$.util.stream.C2571y;
import p022j$.util.stream.EnumC2462d3;
import p022j$.util.stream.IntStream;

/* JADX INFO: loaded from: classes2.dex */
public class ThreadLocalRandom extends Random {
    private static final long serialVersionUID = -5851777807851030925L;

    /* JADX INFO: renamed from: a */
    public long f955a;

    /* JADX INFO: renamed from: b */
    public int f956b;

    /* JADX INFO: renamed from: c */
    public final boolean f957c;
    private static final ObjectStreamField[] serialPersistentFields = {new ObjectStreamField("rnd", Long.TYPE), new ObjectStreamField("initialized", Boolean.TYPE)};

    /* JADX INFO: renamed from: d */
    public static final ThreadLocal f951d = new ThreadLocal();

    /* JADX INFO: renamed from: e */
    public static final AtomicInteger f952e = new AtomicInteger();

    /* JADX INFO: renamed from: f */
    public static final C2267u f953f = new C2267u();

    /* JADX INFO: renamed from: g */
    public static final AtomicLong f954g = new AtomicLong(m843f(System.currentTimeMillis()) ^ m843f(System.nanoTime()));

    public /* synthetic */ ThreadLocalRandom(int i) {
        this();
    }

    /* JADX INFO: renamed from: e */
    public static int m842e(long j) {
        long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
        return (int) (((j2 ^ (j2 >>> 33)) * (-4265267296055464877L)) >>> 32);
    }

    /* JADX INFO: renamed from: f */
    public static long m843f(long j) {
        long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
        long j3 = (j2 ^ (j2 >>> 33)) * (-4265267296055464877L);
        return j3 ^ (j3 >>> 33);
    }

    private ThreadLocalRandom() {
        this.f957c = true;
    }

    /* JADX INFO: renamed from: d */
    public static final void m841d() {
        int iAddAndGet = f952e.addAndGet(-1640531527);
        if (iAddAndGet == 0) {
            iAddAndGet = 1;
        }
        long jM843f = m843f(f954g.getAndAdd(-4942790177534073029L));
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f953f.get();
        threadLocalRandom.f955a = jM843f;
        threadLocalRandom.f956b = iAddAndGet;
    }

    public static ThreadLocalRandom current() {
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f953f.get();
        if (threadLocalRandom.f956b == 0) {
            m841d();
        }
        return threadLocalRandom;
    }

    @Override // java.util.Random
    public final void setSeed(long j) {
        if (this.f957c) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: renamed from: g */
    public final long m847g() {
        long j = this.f955a - 7046029254386353131L;
        this.f955a = j;
        return j;
    }

    @Override // java.util.Random
    public final int next(int i) {
        return nextInt() >>> (32 - i);
    }

    /* JADX INFO: renamed from: c */
    public final long m846c(long j, long j2) {
        long jM843f = m843f(m847g());
        if (j >= j2) {
            return jM843f;
        }
        long j3 = j2 - j;
        long j4 = j3 - 1;
        if ((j3 & j4) == 0) {
            return (jM843f & j4) + j;
        }
        if (j3 > 0) {
            while (true) {
                long j5 = jM843f >>> 1;
                long j6 = j5 + j4;
                long j7 = j5 % j3;
                if (j6 - j7 >= 0) {
                    return j7 + j;
                }
                jM843f = m843f(m847g());
            }
        } else {
            while (true) {
                if (jM843f >= j && jM843f < j2) {
                    return jM843f;
                }
                jM843f = m843f(m847g());
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public final int m845b(int i, int i2) {
        int iM842e = m842e(m847g());
        if (i >= i2) {
            return iM842e;
        }
        int i3 = i2 - i;
        int i4 = i3 - 1;
        if ((i3 & i4) == 0) {
            return (iM842e & i4) + i;
        }
        if (i3 > 0) {
            int iM842e2 = iM842e >>> 1;
            while (true) {
                int i5 = iM842e2 + i4;
                int i6 = iM842e2 % i3;
                if (i5 - i6 >= 0) {
                    return i6 + i;
                }
                iM842e2 = m842e(m847g()) >>> 1;
            }
        } else {
            while (true) {
                if (iM842e >= i && iM842e < i2) {
                    return iM842e;
                }
                iM842e = m842e(m847g());
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final double m844a(double d, double d2) {
        double dNextLong = (nextLong() >>> 11) * 1.1102230246251565E-16d;
        if (d >= d2) {
            return dNextLong;
        }
        double d3 = ((d2 - d) * dNextLong) + d;
        return d3 >= d2 ? Double.longBitsToDouble(Double.doubleToLongBits(d2) - 1) : d3;
    }

    @Override // java.util.Random
    public final int nextInt() {
        return m842e(m847g());
    }

    @Override // java.util.Random
    public final int nextInt(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("bound must be positive");
        }
        int iM842e = m842e(m847g());
        int i2 = i - 1;
        if ((i & i2) == 0) {
            return iM842e & i2;
        }
        while (true) {
            int i3 = iM842e >>> 1;
            int i4 = i3 + i2;
            int i5 = i3 % i;
            if (i4 - i5 >= 0) {
                return i5;
            }
            iM842e = m842e(m847g());
        }
    }

    public final int nextInt(int i, int i2) {
        if (i >= i2) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        return m845b(i, i2);
    }

    @Override // java.util.Random
    public final long nextLong() {
        return m843f(m847g());
    }

    public final long nextLong(long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("bound must be positive");
        }
        long jM843f = m843f(m847g());
        long j2 = j - 1;
        if ((j & j2) == 0) {
            return jM843f & j2;
        }
        while (true) {
            long j3 = jM843f >>> 1;
            long j4 = j3 + j2;
            long j5 = j3 % j;
            if (j4 - j5 >= 0) {
                return j5;
            }
            jM843f = m843f(m847g());
        }
    }

    public long nextLong(long j, long j2) {
        if (j >= j2) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        return m846c(j, j2);
    }

    @Override // java.util.Random
    public final double nextDouble() {
        return (m843f(m847g()) >>> 11) * 1.1102230246251565E-16d;
    }

    public final double nextDouble(double d) {
        if (d <= 0.0d) {
            throw new IllegalArgumentException("bound must be positive");
        }
        double dM843f = (m843f(m847g()) >>> 11) * 1.1102230246251565E-16d * d;
        return dM843f < d ? dM843f : Double.longBitsToDouble(Double.doubleToLongBits(d) - 1);
    }

    public final double nextDouble(double d, double d2) {
        if (d >= d2) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        return m844a(d, d2);
    }

    @Override // java.util.Random
    public final boolean nextBoolean() {
        return m842e(m847g()) < 0;
    }

    @Override // java.util.Random
    public final float nextFloat() {
        return (m842e(m847g()) >>> 8) * 5.9604645E-8f;
    }

    @Override // java.util.Random
    public final double nextGaussian() {
        ThreadLocal threadLocal = f951d;
        Double d = (Double) threadLocal.get();
        if (d != null) {
            threadLocal.set(null);
            return d.doubleValue();
        }
        while (true) {
            double dNextDouble = (nextDouble() * 2.0d) - 1.0d;
            double dNextDouble2 = (nextDouble() * 2.0d) - 1.0d;
            double d2 = (dNextDouble2 * dNextDouble2) + (dNextDouble * dNextDouble);
            if (d2 < 1.0d && d2 != 0.0d) {
                double dSqrt = StrictMath.sqrt((StrictMath.log(d2) * (-2.0d)) / d2);
                f951d.set(Double.valueOf(dNextDouble2 * dSqrt));
                return dNextDouble * dSqrt;
            }
        }
    }

    @Override // java.util.Random
    public final IntStream ints(long j) {
        if (j >= 0) {
            return IntStream.Wrapper.convert(AbstractC2355I3.m933a(new C2269w(0L, j, Integer.MAX_VALUE, 0)));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public final java.util.stream.IntStream ints() {
        return IntStream.Wrapper.convert(AbstractC2355I3.m933a(new C2269w(0L, Long.MAX_VALUE, Integer.MAX_VALUE, 0)));
    }

    @Override // java.util.Random
    public final java.util.stream.IntStream ints(long j, int i, int i2) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        if (i < i2) {
            return IntStream.Wrapper.convert(AbstractC2355I3.m933a(new C2269w(0L, j, i, i2)));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public final java.util.stream.IntStream ints(int i, int i2) {
        if (i < i2) {
            return IntStream.Wrapper.convert(AbstractC2355I3.m933a(new C2269w(0L, Long.MAX_VALUE, i, i2)));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public final LongStream longs(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        C2270x c2270x = new C2270x(0L, j, Long.MAX_VALUE, 0L);
        return C2517n0.m1017f(new C2489i0(c2270x, EnumC2462d3.m999j(c2270x), false));
    }

    @Override // java.util.Random
    public final LongStream longs() {
        C2270x c2270x = new C2270x(0L, Long.MAX_VALUE, Long.MAX_VALUE, 0L);
        return C2517n0.m1017f(new C2489i0(c2270x, EnumC2462d3.m999j(c2270x), false));
    }

    @Override // java.util.Random
    public final LongStream longs(long j, long j2, long j3) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        if (j2 >= j3) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        C2270x c2270x = new C2270x(0L, j, j2, j3);
        return C2517n0.m1017f(new C2489i0(c2270x, EnumC2462d3.m999j(c2270x), false));
    }

    @Override // java.util.Random
    public final LongStream longs(long j, long j2) {
        if (j >= j2) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        C2270x c2270x = new C2270x(0L, Long.MAX_VALUE, j, j2);
        return C2517n0.m1017f(new C2489i0(c2270x, EnumC2462d3.m999j(c2270x), false));
    }

    @Override // java.util.Random
    public final DoubleStream doubles(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        C2268v c2268v = new C2268v(0L, j, Double.MAX_VALUE, 0.0d);
        return C2326D.m910f(new C2571y(c2268v, EnumC2462d3.m999j(c2268v), false));
    }

    @Override // java.util.Random
    public final DoubleStream doubles() {
        C2268v c2268v = new C2268v(0L, Long.MAX_VALUE, Double.MAX_VALUE, 0.0d);
        return C2326D.m910f(new C2571y(c2268v, EnumC2462d3.m999j(c2268v), false));
    }

    @Override // java.util.Random
    public final DoubleStream doubles(long j, double d, double d2) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        if (d >= d2) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        C2268v c2268v = new C2268v(0L, j, d, d2);
        return C2326D.m910f(new C2571y(c2268v, EnumC2462d3.m999j(c2268v), false));
    }

    @Override // java.util.Random
    public final DoubleStream doubles(double d, double d2) {
        if (d >= d2) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        C2268v c2268v = new C2268v(0L, Long.MAX_VALUE, d, d2);
        return C2326D.m910f(new C2571y(c2268v, EnumC2462d3.m999j(c2268v), false));
    }

    static {
        if (((Boolean) AccessController.doPrivileged(new C2310s0(1))).booleanValue()) {
            byte[] seed = SecureRandom.getSeed(8);
            long j = ((long) seed[0]) & 255;
            for (int i = 1; i < 8; i++) {
                j = (j << 8) | (((long) seed[i]) & 255);
            }
            f954g.set(j);
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        ObjectOutputStream.PutField putFieldPutFields = objectOutputStream.putFields();
        putFieldPutFields.put("rnd", this.f955a);
        putFieldPutFields.put("initialized", true);
        objectOutputStream.writeFields();
    }

    private Object readResolve() {
        return current();
    }
}
