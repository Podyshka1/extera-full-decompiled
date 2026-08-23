package j$.sun.misc;

import j$.util.concurrent.C2115k;
import j$.util.concurrent.C2120p;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import sun.misc.Unsafe;

/* JADX INFO: renamed from: j$.sun.misc.a */
/* JADX INFO: loaded from: classes2.dex */
public final class C1967a {

    /* JADX INFO: renamed from: b */
    public static final C1967a f396b;

    /* JADX INFO: renamed from: a */
    public final Unsafe f397a;

    static {
        Field fieldM444g = m444g();
        fieldM444g.setAccessible(true);
        try {
            f396b = new C1967a((Unsafe) fieldM444g.get(null));
        } catch (IllegalAccessException e) {
            throw new AssertionError("Couldn't get the Unsafe", e);
        }
    }

    public C1967a(Unsafe unsafe) {
        this.f397a = unsafe;
    }

    /* JADX INFO: renamed from: g */
    public static Field m444g() {
        try {
            return Unsafe.class.getDeclaredField("theUnsafe");
        } catch (NoSuchFieldException e) {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                if (Modifier.isStatic(field.getModifiers()) && Unsafe.class.isAssignableFrom(field.getType())) {
                    return field;
                }
            }
            throw new AssertionError("Couldn't find the Unsafe", e);
        }
    }

    /* JADX INFO: renamed from: e */
    public final int m449e(C2120p c2120p, long j) {
        while (true) {
            int intVolatile = this.f397a.getIntVolatile(c2120p, j);
            C2120p c2120p2 = c2120p;
            long j2 = j;
            if (this.f397a.compareAndSwapInt(c2120p2, j2, intVolatile, intVolatile - 4)) {
                return intVolatile;
            }
            c2120p = c2120p2;
            j = j2;
        }
    }

    /* JADX INFO: renamed from: i */
    public final long m452i(Field field) {
        return this.f397a.objectFieldOffset(field);
    }

    /* JADX INFO: renamed from: h */
    public final long m451h(Class cls, String str) {
        try {
            return m452i(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e) {
            throw new AssertionError("Cannot find field:", e);
        }
    }

    /* JADX INFO: renamed from: a */
    public final int m445a(Class cls) {
        return this.f397a.arrayBaseOffset(cls);
    }

    /* JADX INFO: renamed from: b */
    public final int m446b(Class cls) {
        return this.f397a.arrayIndexScale(cls);
    }

    /* JADX INFO: renamed from: f */
    public final Object m450f(Object obj, long j) {
        return this.f397a.getObjectVolatile(obj, j);
    }

    /* JADX INFO: renamed from: j */
    public final void m453j(Object obj, long j, C2115k c2115k) {
        this.f397a.putObjectVolatile(obj, j, c2115k);
    }

    /* JADX INFO: renamed from: c */
    public final boolean m447c(Object obj, long j, int i, int i2) {
        return this.f397a.compareAndSwapInt(obj, j, i, i2);
    }

    /* JADX INFO: renamed from: d */
    public final boolean m448d(Object obj, long j, long j2, long j3) {
        return this.f397a.compareAndSwapLong(obj, j, j2, j3);
    }
}
