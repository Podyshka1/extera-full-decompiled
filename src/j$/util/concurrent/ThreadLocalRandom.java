package j$.util.concurrent;

import j$.util.s0;
import j$.util.stream.C2156D;
import j$.util.stream.C2202y;
import j$.util.stream.C6212i0;
import j$.util.stream.C6232n0;
import j$.util.stream.EnumC6195d3;
import j$.util.stream.I3;
import j$.util.stream.IntStream;
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

/* JADX INFO: loaded from: classes2.dex */
public class ThreadLocalRandom extends Random {
    private static final long serialVersionUID = -5851777807851030925L;

    /* JADX INFO: renamed from: a */
    public long f720a;

    /* JADX INFO: renamed from: b */
    public int f721b;

    /* JADX INFO: renamed from: c */
    public final boolean f722c;
    private static final ObjectStreamField[] serialPersistentFields = {new ObjectStreamField("rnd", Long.TYPE), new ObjectStreamField("initialized", Boolean.TYPE)};

    /* JADX INFO: renamed from: d */
    public static final ThreadLocal f716d = new ThreadLocal();

    /* JADX INFO: renamed from: e */
    public static final AtomicInteger f717e = new AtomicInteger();

    /* JADX INFO: renamed from: f */
    public static final C2125u f718f = new C2125u();

    /* JADX INFO: renamed from: g */
    public static final AtomicLong f719g = new AtomicLong(m717f(System.currentTimeMillis()) ^ m717f(System.nanoTime()));

    public /* synthetic */ ThreadLocalRandom(int i) {
        this();
    }

    /* JADX INFO: renamed from: e */
    public static int m716e(long j) {
        long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
        return (int) (((j2 ^ (j2 >>> 33)) * (-4265267296055464877L)) >>> 32);
    }

    /* JADX INFO: renamed from: f */
    public static long m717f(long j) {
        long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
        long j3 = (j2 ^ (j2 >>> 33)) * (-4265267296055464877L);
        return j3 ^ (j3 >>> 33);
    }

    private ThreadLocalRandom() {
        this.f722c = true;
    }

    /* JADX INFO: renamed from: d */
    public static final void m715d() {
        int iAddAndGet = f717e.addAndGet(-1640531527);
        if (iAddAndGet == 0) {
            iAddAndGet = 1;
        }
        long jM717f = m717f(f719g.getAndAdd(-4942790177534073029L));
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f718f.get();
        threadLocalRandom.f720a = jM717f;
        threadLocalRandom.f721b = iAddAndGet;
    }

    public static ThreadLocalRandom current() {
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f718f.get();
        if (threadLocalRandom.f721b == 0) {
            m715d();
        }
        return threadLocalRandom;
    }

    @Override // java.util.Random
    public final void setSeed(long j) {
        if (this.f722c) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: renamed from: g */
    public final long m721g() {
        long j = this.f720a - 7046029254386353131L;
        this.f720a = j;
        return j;
    }

    @Override // java.util.Random
    public final int next(int i) {
        return nextInt() >>> (32 - i);
    }

    /* JADX INFO: renamed from: c */
    public final long m720c(long j, long j2) {
        long jM717f = m717f(m721g());
        if (j >= j2) {
            return jM717f;
        }
        long j3 = j2 - j;
        long j4 = j3 - 1;
        if ((j3 & j4) == 0) {
            return (jM717f & j4) + j;
        }
        if (j3 > 0) {
            while (true) {
                long j5 = jM717f >>> 1;
                long j6 = j5 + j4;
                long j7 = j5 % j3;
                if (j6 - j7 >= 0) {
                    return j7 + j;
                }
                jM717f = m717f(m721g());
            }
        } else {
            while (true) {
                if (jM717f >= j && jM717f < j2) {
                    return jM717f;
                }
                jM717f = m717f(m721g());
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public final int m719b(int i, int i2) {
        int iM716e = m716e(m721g());
        if (i >= i2) {
            return iM716e;
        }
        int i3 = i2 - i;
        int i4 = i3 - 1;
        if ((i3 & i4) == 0) {
            return (iM716e & i4) + i;
        }
        if (i3 > 0) {
            int iM716e2 = iM716e >>> 1;
            while (true) {
                int i5 = iM716e2 + i4;
                int i6 = iM716e2 % i3;
                if (i5 - i6 >= 0) {
                    return i6 + i;
                }
                iM716e2 = m716e(m721g()) >>> 1;
            }
        } else {
            while (true) {
                if (iM716e >= i && iM716e < i2) {
                    return iM716e;
                }
                iM716e = m716e(m721g());
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final double m718a(double d, double d2) {
        double dNextLong = (nextLong() >>> 11) * 1.1102230246251565E-16d;
        if (d >= d2) {
            return dNextLong;
        }
        double d3 = ((d2 - d) * dNextLong) + d;
        return d3 >= d2 ? Double.longBitsToDouble(Double.doubleToLongBits(d2) - 1) : d3;
    }

    @Override // java.util.Random
    public final int nextInt() {
        return m716e(m721g());
    }

    @Override // java.util.Random
    public final int nextInt(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("bound must be positive");
        }
        int iM716e = m716e(m721g());
        int i2 = i - 1;
        if ((i & i2) == 0) {
            return iM716e & i2;
        }
        while (true) {
            int i3 = iM716e >>> 1;
            int i4 = i3 + i2;
            int i5 = i3 % i;
            if (i4 - i5 >= 0) {
                return i5;
            }
            iM716e = m716e(m721g());
        }
    }

    public final int nextInt(int i, int i2) {
        if (i >= i2) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        return m719b(i, i2);
    }

    @Override // java.util.Random
    public final long nextLong() {
        return m717f(m721g());
    }

    public final long nextLong(long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("bound must be positive");
        }
        long jM717f = m717f(m721g());
        long j2 = j - 1;
        if ((j & j2) == 0) {
            return jM717f & j2;
        }
        while (true) {
            long j3 = jM717f >>> 1;
            long j4 = j3 + j2;
            long j5 = j3 % j;
            if (j4 - j5 >= 0) {
                return j5;
            }
            jM717f = m717f(m721g());
        }
    }

    public long nextLong(long j, long j2) {
        if (j >= j2) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        return m720c(j, j2);
    }

    @Override // java.util.Random
    public final double nextDouble() {
        return (m717f(m721g()) >>> 11) * 1.1102230246251565E-16d;
    }

    public final double nextDouble(double d) {
        if (d <= 0.0d) {
            throw new IllegalArgumentException("bound must be positive");
        }
        double dM717f = (m717f(m721g()) >>> 11) * 1.1102230246251565E-16d * d;
        return dM717f < d ? dM717f : Double.longBitsToDouble(Double.doubleToLongBits(d) - 1);
    }

    public final double nextDouble(double d, double d2) {
        if (d >= d2) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        return m718a(d, d2);
    }

    @Override // java.util.Random
    public final boolean nextBoolean() {
        return m716e(m721g()) < 0;
    }

    @Override // java.util.Random
    public final float nextFloat() {
        return (m716e(m721g()) >>> 8) * 5.9604645E-8f;
    }

    @Override // java.util.Random
    public final double nextGaussian() {
        ThreadLocal threadLocal = f716d;
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
                f716d.set(Double.valueOf(dNextDouble2 * dSqrt));
                return dNextDouble * dSqrt;
            }
        }
    }

    @Override // java.util.Random
    public final IntStream ints(long j) {
        if (j >= 0) {
            return IntStream.Wrapper.convert(I3.m793a(new C2127w(0L, j, Integer.MAX_VALUE, 0)));
        }
        throw new IllegalArgumentException("size must be non-negative");
    }

    @Override // java.util.Random
    public final java.util.stream.IntStream ints() {
        return IntStream.Wrapper.convert(I3.m793a(new C2127w(0L, Long.MAX_VALUE, Integer.MAX_VALUE, 0)));
    }

    @Override // java.util.Random
    public final java.util.stream.IntStream ints(long j, int i, int i2) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        if (i < i2) {
            return IntStream.Wrapper.convert(I3.m793a(new C2127w(0L, j, i, i2)));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public final java.util.stream.IntStream ints(int i, int i2) {
        if (i < i2) {
            return IntStream.Wrapper.convert(I3.m793a(new C2127w(0L, Long.MAX_VALUE, i, i2)));
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public final LongStream longs(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        C2128x c2128x = new C2128x(0L, j, Long.MAX_VALUE, 0L);
        return C6232n0.m865f(new C6212i0(c2128x, EnumC6195d3.m848j(c2128x), false));
    }

    @Override // java.util.Random
    public final LongStream longs() {
        C2128x c2128x = new C2128x(0L, Long.MAX_VALUE, Long.MAX_VALUE, 0L);
        return C6232n0.m865f(new C6212i0(c2128x, EnumC6195d3.m848j(c2128x), false));
    }

    @Override // java.util.Random
    public final LongStream longs(long j, long j2, long j3) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        if (j2 >= j3) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        C2128x c2128x = new C2128x(0L, j, j2, j3);
        return C6232n0.m865f(new C6212i0(c2128x, EnumC6195d3.m848j(c2128x), false));
    }

    @Override // java.util.Random
    public final LongStream longs(long j, long j2) {
        if (j >= j2) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        C2128x c2128x = new C2128x(0L, Long.MAX_VALUE, j, j2);
        return C6232n0.m865f(new C6212i0(c2128x, EnumC6195d3.m848j(c2128x), false));
    }

    @Override // java.util.Random
    public final DoubleStream doubles(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        C2126v c2126v = new C2126v(0L, j, Double.MAX_VALUE, 0.0d);
        return C2156D.m773f(new C2202y(c2126v, EnumC6195d3.m848j(c2126v), false));
    }

    @Override // java.util.Random
    public final DoubleStream doubles() {
        C2126v c2126v = new C2126v(0L, Long.MAX_VALUE, Double.MAX_VALUE, 0.0d);
        return C2156D.m773f(new C2202y(c2126v, EnumC6195d3.m848j(c2126v), false));
    }

    @Override // java.util.Random
    public final DoubleStream doubles(long j, double d, double d2) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        if (d >= d2) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        C2126v c2126v = new C2126v(0L, j, d, d2);
        return C2156D.m773f(new C2202y(c2126v, EnumC6195d3.m848j(c2126v), false));
    }

    @Override // java.util.Random
    public final DoubleStream doubles(double d, double d2) {
        if (d >= d2) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        C2126v c2126v = new C2126v(0L, Long.MAX_VALUE, d, d2);
        return C2156D.m773f(new C2202y(c2126v, EnumC6195d3.m848j(c2126v), false));
    }

    static {
        if (((Boolean) AccessController.doPrivileged(new s0(1))).booleanValue()) {
            byte[] seed = SecureRandom.getSeed(8);
            long j = ((long) seed[0]) & 255;
            for (int i = 1; i < 8; i++) {
                j = (j << 8) | (((long) seed[i]) & 255);
            }
            f719g.set(j);
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        ObjectOutputStream.PutField putFieldPutFields = objectOutputStream.putFields();
        putFieldPutFields.put("rnd", this.f720a);
        putFieldPutFields.put("initialized", true);
        objectOutputStream.writeFields();
    }

    private Object readResolve() {
        return current();
    }
}
