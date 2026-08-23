package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzop {
    static final long zza;
    static final boolean zzb;
    private static final Unsafe zzc;
    private static final Class zzd;
    private static final boolean zze;
    private static final zzoo zzf;
    private static final boolean zzg;
    private static final boolean zzh;

    /* JADX WARN: Removed duplicated region for block: B:11:0x003e  */
    static {
        boolean z;
        boolean z2;
        zzoo zzooVar;
        Unsafe unsafeZzq = zzq();
        zzc = unsafeZzq;
        int i = zzkv.$r8$clinit;
        zzd = Memory.class;
        Class<?> cls = Long.TYPE;
        boolean zZzr = zzr(cls);
        zze = zZzr;
        Class<?> cls2 = Integer.TYPE;
        boolean zZzr2 = zzr(cls2);
        zzoo zzomVar = null;
        if (unsafeZzq != null) {
            if (zZzr) {
                zzomVar = new zzon(unsafeZzq);
            } else if (zZzr2) {
                zzomVar = new zzom(unsafeZzq);
            }
        }
        zzf = zzomVar;
        if (zzomVar == null) {
            z = false;
        } else {
            try {
                Class<?> cls3 = zzomVar.zza.getClass();
                cls3.getMethod("objectFieldOffset", Field.class);
                cls3.getMethod("getLong", Object.class, cls);
                if (zzB() != null) {
                    z = true;
                }
            } catch (Throwable th) {
                zzy(th);
            }
        }
        zzg = z;
        zzoo zzooVar2 = zzf;
        if (zzooVar2 == null) {
            z2 = false;
        } else {
            try {
                Class<?> cls4 = zzooVar2.zza.getClass();
                cls4.getMethod("objectFieldOffset", Field.class);
                cls4.getMethod("arrayBaseOffset", Class.class);
                cls4.getMethod("arrayIndexScale", Class.class);
                cls4.getMethod("getInt", Object.class, cls);
                cls4.getMethod("putInt", Object.class, cls, cls2);
                cls4.getMethod("getLong", Object.class, cls);
                cls4.getMethod("putLong", Object.class, cls, cls);
                cls4.getMethod("getObject", Object.class, cls);
                cls4.getMethod("putObject", Object.class, cls, Object.class);
                z2 = true;
            } catch (Throwable th2) {
                zzy(th2);
                z2 = false;
            }
        }
        zzh = z2;
        zza = zzz(byte[].class);
        zzz(boolean[].class);
        zzA(boolean[].class);
        zzz(int[].class);
        zzA(int[].class);
        zzz(long[].class);
        zzA(long[].class);
        zzz(float[].class);
        zzA(float[].class);
        zzz(double[].class);
        zzA(double[].class);
        zzz(Object[].class);
        zzA(Object[].class);
        Field fieldZzB = zzB();
        if (fieldZzB != null && (zzooVar = zzf) != null) {
            zzooVar.zza.objectFieldOffset(fieldZzB);
        }
        zzb = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private static int zzA(Class cls) {
        if (zzh) {
            return zzf.zza.arrayIndexScale(cls);
        }
        return -1;
    }

    private static Field zzB() {
        int i = zzkv.$r8$clinit;
        Field fieldZzC = zzC(Buffer.class, "effectiveDirectAddress");
        if (fieldZzC != null) {
            return fieldZzC;
        }
        Field fieldZzC2 = zzC(Buffer.class, "address");
        if (fieldZzC2 == null || fieldZzC2.getType() != Long.TYPE) {
            return null;
        }
        return fieldZzC2;
    }

    private static Field zzC(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzD(Object obj, long j, byte b) {
        Unsafe unsafe = zzf.zza;
        long j2 = (-4) & j;
        int i = unsafe.getInt(obj, j2);
        int i2 = ((~((int) j)) & 3) << 3;
        unsafe.putInt(obj, j2, ((255 & b) << i2) | (i & (~(255 << i2))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzE(Object obj, long j, byte b) {
        Unsafe unsafe = zzf.zza;
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        unsafe.putInt(obj, j2, ((255 & b) << i) | (unsafe.getInt(obj, j2) & (~(255 << i))));
    }

    static boolean zza() {
        return zzh;
    }

    static boolean zzb() {
        return zzg;
    }

    static Object zzc(Class cls) {
        try {
            return zzc.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    static int zzd(Object obj, long j) {
        return zzf.zza.getInt(obj, j);
    }

    static void zze(Object obj, long j, int i) {
        zzf.zza.putInt(obj, j, i);
    }

    static long zzf(Object obj, long j) {
        return zzf.zza.getLong(obj, j);
    }

    static void zzg(Object obj, long j, long j2) {
        zzf.zza.putLong(obj, j, j2);
    }

    static boolean zzh(Object obj, long j) {
        return zzf.zzb(obj, j);
    }

    static void zzi(Object obj, long j, boolean z) {
        zzf.zzc(obj, j, z);
    }

    static float zzj(Object obj, long j) {
        return zzf.zzd(obj, j);
    }

    static void zzk(Object obj, long j, float f) {
        zzf.zze(obj, j, f);
    }

    static double zzl(Object obj, long j) {
        return zzf.zzf(obj, j);
    }

    static void zzm(Object obj, long j, double d) {
        zzf.zzg(obj, j, d);
    }

    static Object zzn(Object obj, long j) {
        return zzf.zza.getObject(obj, j);
    }

    static void zzo(Object obj, long j, Object obj2) {
        zzf.zza.putObject(obj, j, obj2);
    }

    static void zzp(byte[] bArr, long j, byte b) {
        zzf.zza(bArr, zza + j, b);
    }

    static Unsafe zzq() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzol());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static boolean zzr(Class cls) {
        int i = zzkv.$r8$clinit;
        try {
            Class cls2 = zzd;
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

    static /* synthetic */ boolean zzu(Object obj, long j) {
        return ((byte) ((zzf.zza.getInt(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3))) & 255)) != 0;
    }

    static /* synthetic */ boolean zzv(Object obj, long j) {
        return ((byte) ((zzf.zza.getInt(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }

    static /* synthetic */ void zzy(Throwable th) {
        Logger.getLogger(zzop.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    private static int zzz(Class cls) {
        if (zzh) {
            return zzf.zza.arrayBaseOffset(cls);
        }
        return -1;
    }
}
