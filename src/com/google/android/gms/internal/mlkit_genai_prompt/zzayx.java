package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.protobuf.UnsafeUtil$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzayx {
    static final boolean zza;
    private static final Unsafe zzb;
    private static final Class zzc;
    private static final boolean zzd;
    private static final zzayw zze;
    private static final boolean zzf;

    static {
        boolean z;
        zzayw zzaywVar;
        Unsafe unsafeZzn = zzn();
        zzb = unsafeZzn;
        int i = zzavq.$r8$clinit;
        zzc = Memory.class;
        Class cls = Long.TYPE;
        boolean zZzo = zzo(cls);
        zzd = zZzo;
        Class cls2 = Integer.TYPE;
        boolean zZzo2 = zzo(cls2);
        zzayw zzayuVar = null;
        if (unsafeZzn != null) {
            if (zZzo) {
                zzayuVar = new zzayv(unsafeZzn);
            } else if (zZzo2) {
                zzayuVar = new zzayu(unsafeZzn);
            }
        }
        zze = zzayuVar;
        if (zzayuVar != null) {
            try {
                Class<?> cls3 = zzayuVar.zza.getClass();
                cls3.getMethod("objectFieldOffset", Field.class);
                cls3.getMethod("getLong", Object.class, cls);
                zzw();
            } catch (Throwable th) {
                zzt(th);
            }
        }
        zzayw zzaywVar2 = zze;
        if (zzaywVar2 == null) {
            z = false;
        } else {
            try {
                Class<?> cls4 = zzaywVar2.zza.getClass();
                cls4.getMethod("objectFieldOffset", Field.class);
                cls4.getMethod("arrayBaseOffset", Class.class);
                cls4.getMethod("arrayIndexScale", Class.class);
                cls4.getMethod("getInt", Object.class, cls);
                cls4.getMethod("putInt", Object.class, cls, cls2);
                cls4.getMethod("getLong", Object.class, cls);
                cls4.getMethod("putLong", Object.class, cls, cls);
                cls4.getMethod("getObject", Object.class, cls);
                cls4.getMethod("putObject", Object.class, cls, Object.class);
                z = true;
            } catch (Throwable th2) {
                zzt(th2);
                z = false;
            }
        }
        zzf = z;
        zzu(byte[].class);
        zzu(boolean[].class);
        zzv(boolean[].class);
        zzu(int[].class);
        zzv(int[].class);
        zzu(long[].class);
        zzv(long[].class);
        zzu(float[].class);
        zzv(float[].class);
        zzu(double[].class);
        zzv(double[].class);
        zzu(Object[].class);
        zzv(Object[].class);
        Field fieldZzw = zzw();
        if (fieldZzw != null && (zzaywVar = zze) != null) {
            zzaywVar.zza.objectFieldOffset(fieldZzw);
        }
        zza = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    public static Object zza(Class cls) {
        try {
            return zzb.allocateInstance(cls);
        } catch (InstantiationException e) {
            UnsafeUtil$$ExternalSyntheticBUOutline0.m507m(e);
            return null;
        }
    }

    public static int zzb(Object obj, long j) {
        return zze.zza.getInt(obj, j);
    }

    public static void zzc(Object obj, long j, int i) {
        zze.zza.putInt(obj, j, i);
    }

    public static long zzd(Object obj, long j) {
        return zze.zza.getLong(obj, j);
    }

    public static void zze(Object obj, long j, long j2) {
        zze.zza.putLong(obj, j, j2);
    }

    public static boolean zzf(Object obj, long j) {
        return zze.zza(obj, j);
    }

    public static void zzg(Object obj, long j, boolean z) {
        zze.zzb(obj, j, z);
    }

    public static float zzh(Object obj, long j) {
        return zze.zzc(obj, j);
    }

    public static void zzi(Object obj, long j, float f) {
        zze.zzd(obj, j, f);
    }

    public static double zzj(Object obj, long j) {
        return zze.zze(obj, j);
    }

    public static void zzk(Object obj, long j, double d) {
        zze.zzf(obj, j, d);
    }

    public static Object zzl(Object obj, long j) {
        return zze.zza.getObject(obj, j);
    }

    public static void zzm(Object obj, long j, Object obj2) {
        zze.zza.putObject(obj, j, obj2);
    }

    public static Unsafe zzn() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new zzayt());
        } catch (Throwable unused) {
            unsafe = null;
        }
        if (unsafe == null) {
            return null;
        }
        try {
            unsafe.arrayBaseOffset(byte[].class);
            return unsafe;
        } catch (Exception unused2) {
            Logger.getLogger(zzayx.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "getUnsafe", "As part of the planned removal, sun.misc.Unsafe is available in the current environment but configured to throw on use. Protobuf will continue without using it, but with slightly reduced performance. --sun-misc-unsafe-memory-access=allow is likely available to opt back in if desired. A later Protobuf version release will stop using sun.misc.Unsafe entirely.");
            return null;
        }
    }

    public static boolean zzo(Class cls) {
        int i = zzavq.$r8$clinit;
        try {
            Class cls2 = zzc;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static /* synthetic */ boolean zzp(Object obj, long j) {
        return ((byte) ((zze.zza.getInt(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3))) & 255)) != 0;
    }

    public static /* synthetic */ boolean zzq(Object obj, long j) {
        return ((byte) ((zze.zza.getInt(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }

    public static /* synthetic */ void zzr(Object obj, long j, boolean z) {
        Unsafe unsafe = zze.zza;
        long j2 = (-4) & j;
        int i = unsafe.getInt(obj, j2);
        int i2 = ((~((int) j)) & 3) << 3;
        unsafe.putInt(obj, j2, ((z ? 1 : 0) << i2) | ((~(255 << i2)) & i));
    }

    public static /* synthetic */ void zzs(Object obj, long j, boolean z) {
        Unsafe unsafe = zze.zza;
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        unsafe.putInt(obj, j2, ((z ? 1 : 0) << i) | ((~(255 << i)) & unsafe.getInt(obj, j2)));
    }

    public static /* synthetic */ void zzt(Throwable th) {
        Logger.getLogger(zzayx.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    private static int zzu(Class cls) {
        if (zzf) {
            return zze.zza.arrayBaseOffset(cls);
        }
        return -1;
    }

    private static int zzv(Class cls) {
        if (zzf) {
            return zze.zza.arrayIndexScale(cls);
        }
        return -1;
    }

    private static Field zzw() {
        int i = zzavq.$r8$clinit;
        Field fieldZzx = zzx(Buffer.class, "effectiveDirectAddress");
        if (fieldZzx != null) {
            return fieldZzx;
        }
        Field fieldZzx2 = zzx(Buffer.class, "address");
        if (fieldZzx2 == null || fieldZzx2.getType() != Long.TYPE) {
            return null;
        }
        return fieldZzx2;
    }

    private static Field zzx(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
