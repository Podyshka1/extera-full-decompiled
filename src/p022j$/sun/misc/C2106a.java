package p022j$.sun.misc;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import p022j$.util.concurrent.C2257k;
import p022j$.util.concurrent.C2262p;
import sun.misc.Unsafe;

/* JADX INFO: renamed from: j$.sun.misc.a */
/* JADX INFO: loaded from: classes2.dex */
public final class C2106a {

    /* JADX INFO: renamed from: b */
    public static final C2106a f628b;

    /* JADX INFO: renamed from: a */
    public final Unsafe f629a;

    static {
        Field fieldM564g = m564g();
        fieldM564g.setAccessible(true);
        try {
            f628b = new C2106a((Unsafe) fieldM564g.get(null));
        } catch (IllegalAccessException e) {
            throw new AssertionError("Couldn't get the Unsafe", e);
        }
    }

    public C2106a(Unsafe unsafe) {
        this.f629a = unsafe;
    }

    /* JADX INFO: renamed from: g */
    public static Field m564g() {
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
    public final int m569e(C2262p c2262p, long j) {
        while (true) {
            int intVolatile = this.f629a.getIntVolatile(c2262p, j);
            C2262p c2262p2 = c2262p;
            long j2 = j;
            if (this.f629a.compareAndSwapInt(c2262p2, j2, intVolatile, intVolatile - 4)) {
                return intVolatile;
            }
            c2262p = c2262p2;
            j = j2;
        }
    }

    /* JADX INFO: renamed from: i */
    public final long m572i(Field field) {
        return this.f629a.objectFieldOffset(field);
    }

    /* JADX INFO: renamed from: h */
    public final long m571h(Class cls, String str) {
        try {
            return m572i(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e) {
            throw new AssertionError("Cannot find field:", e);
        }
    }

    /* JADX INFO: renamed from: a */
    public final int m565a(Class cls) {
        return this.f629a.arrayBaseOffset(cls);
    }

    /* JADX INFO: renamed from: b */
    public final int m566b(Class cls) {
        return this.f629a.arrayIndexScale(cls);
    }

    /* JADX INFO: renamed from: f */
    public final Object m570f(Object obj, long j) {
        return this.f629a.getObjectVolatile(obj, j);
    }

    /* JADX INFO: renamed from: j */
    public final void m573j(Object obj, long j, C2257k c2257k) {
        this.f629a.putObjectVolatile(obj, j, c2257k);
    }

    /* JADX INFO: renamed from: c */
    public final boolean m567c(Object obj, long j, int i, int i2) {
        return this.f629a.compareAndSwapInt(obj, j, i, i2);
    }

    /* JADX INFO: renamed from: d */
    public final boolean m568d(Object obj, long j, long j2, long j3) {
        return this.f629a.compareAndSwapLong(obj, j, j2, j3);
    }
}
