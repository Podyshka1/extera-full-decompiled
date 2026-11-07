package com.google.android.gms.internal.play_billing;

import com.google.android.gms.internal.play_billing.zzcj;
import com.google.android.gms.internal.play_billing.zzck;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzck<V> extends zzdf implements zzcz<V> {
    static final Object zza = new Object();
    static final zzcy zzb = new zzcy(zzcj.class);
    static final boolean zzc;
    private static final zza zzd;
    volatile zzcj.zzd listenersField;
    volatile Object valueField;
    volatile zze waitersField;

    abstract class zza {
        public /* synthetic */ zza(zzco zzcoVar) {
        }

        public abstract zzcj.zzd zza(zzck zzckVar, zzcj.zzd zzdVar);

        public abstract zze zzb(zzck zzckVar, zze zzeVar);

        public abstract void zzc(zze zzeVar, zze zzeVar2);

        public abstract void zzd(zze zzeVar, Thread thread);

        public abstract boolean zze(zzck zzckVar, zzcj.zzd zzdVar, zzcj.zzd zzdVar2);

        public abstract boolean zzf(zzck zzckVar, Object obj, Object obj2);

        public abstract boolean zzg(zzck zzckVar, zze zzeVar, zze zzeVar2);
    }

    final class zzb extends zza {
        private static final AtomicReferenceFieldUpdater<zze, Thread> zza = AtomicReferenceFieldUpdater.newUpdater(zze.class, Thread.class, "thread");
        private static final AtomicReferenceFieldUpdater<zze, zze> zzb = AtomicReferenceFieldUpdater.newUpdater(zze.class, zze.class, "next");
        private static final AtomicReferenceFieldUpdater<? super zzck<?>, zze> zzc = AtomicReferenceFieldUpdater.newUpdater(zzck.class, zze.class, "waitersField");
        private static final AtomicReferenceFieldUpdater<? super zzck<?>, zzcj.zzd> zzd = AtomicReferenceFieldUpdater.newUpdater(zzck.class, zzcj.zzd.class, "listenersField");
        private static final AtomicReferenceFieldUpdater<? super zzck<?>, Object> zze = AtomicReferenceFieldUpdater.newUpdater(zzck.class, Object.class, "valueField");

        public /* synthetic */ zzb(zzco zzcoVar) {
            super(null);
        }

        @Override // com.google.android.gms.internal.play_billing.zzck.zza
        public final zzcj.zzd zza(zzck zzckVar, zzcj.zzd zzdVar) {
            return zzd.getAndSet(zzckVar, zzdVar);
        }

        @Override // com.google.android.gms.internal.play_billing.zzck.zza
        public final zze zzb(zzck zzckVar, zze zzeVar) {
            return zzc.getAndSet(zzckVar, zzeVar);
        }

        @Override // com.google.android.gms.internal.play_billing.zzck.zza
        public final void zzc(zze zzeVar, zze zzeVar2) {
            zzb.lazySet(zzeVar, zzeVar2);
        }

        @Override // com.google.android.gms.internal.play_billing.zzck.zza
        public final void zzd(zze zzeVar, Thread thread) {
            zza.lazySet(zzeVar, thread);
        }

        @Override // com.google.android.gms.internal.play_billing.zzck.zza
        public final boolean zze(zzck zzckVar, zzcj.zzd zzdVar, zzcj.zzd zzdVar2) {
            return zzcl.zza(zzd, zzckVar, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.play_billing.zzck.zza
        public final boolean zzf(zzck zzckVar, Object obj, Object obj2) {
            return zzcl.zza(zze, zzckVar, obj, obj2);
        }

        @Override // com.google.android.gms.internal.play_billing.zzck.zza
        public final boolean zzg(zzck zzckVar, zze zzeVar, zze zzeVar2) {
            return zzcl.zza(zzc, zzckVar, zzeVar, zzeVar2);
        }
    }

    final class zzc extends zza {
        public /* synthetic */ zzc(zzco zzcoVar) {
            super(null);
        }

        @Override // com.google.android.gms.internal.play_billing.zzck.zza
        public final zzcj.zzd zza(zzck zzckVar, zzcj.zzd zzdVar) {
            zzcj.zzd zzdVar2;
            synchronized (zzckVar) {
                try {
                    zzdVar2 = zzckVar.listenersField;
                    if (zzdVar2 != zzdVar) {
                        zzckVar.listenersField = zzdVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zzdVar2;
        }

        @Override // com.google.android.gms.internal.play_billing.zzck.zza
        public final zze zzb(zzck zzckVar, zze zzeVar) {
            zze zzeVar2;
            synchronized (zzckVar) {
                try {
                    zzeVar2 = zzckVar.waitersField;
                    if (zzeVar2 != zzeVar) {
                        zzckVar.waitersField = zzeVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return zzeVar2;
        }

        @Override // com.google.android.gms.internal.play_billing.zzck.zza
        public final void zzc(zze zzeVar, zze zzeVar2) {
            zzeVar.next = zzeVar2;
        }

        @Override // com.google.android.gms.internal.play_billing.zzck.zza
        public final void zzd(zze zzeVar, Thread thread) {
            zzeVar.thread = thread;
        }

        @Override // com.google.android.gms.internal.play_billing.zzck.zza
        public final boolean zze(zzck zzckVar, zzcj.zzd zzdVar, zzcj.zzd zzdVar2) {
            synchronized (zzckVar) {
                try {
                    if (zzckVar.listenersField != zzdVar) {
                        return false;
                    }
                    zzckVar.listenersField = zzdVar2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.android.gms.internal.play_billing.zzck.zza
        public final boolean zzf(zzck zzckVar, Object obj, Object obj2) {
            synchronized (zzckVar) {
                try {
                    if (zzckVar.valueField != obj) {
                        return false;
                    }
                    zzckVar.valueField = obj2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.android.gms.internal.play_billing.zzck.zza
        public final boolean zzg(zzck zzckVar, zze zzeVar, zze zzeVar2) {
            synchronized (zzckVar) {
                try {
                    if (zzckVar.waitersField != zzeVar) {
                        return false;
                    }
                    zzckVar.waitersField = zzeVar2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    final class zzd extends zza {
        static final Unsafe zza;
        static final long zzb;
        static final long zzc;
        static final long zzd;
        static final long zze;
        static final long zzf;

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (SecurityException unused) {
                    unsafe = (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction() { // from class: com.google.android.gms.internal.play_billing.zzcn
                        @Override // java.security.PrivilegedExceptionAction
                        public final Object run() throws IllegalAccessException {
                            Unsafe unsafe2 = zzck.zzd.zza;
                            for (Field field : Unsafe.class.getDeclaredFields()) {
                                field.setAccessible(true);
                                Object obj = field.get(null);
                                if (Unsafe.class.isInstance(obj)) {
                                    return (Unsafe) Unsafe.class.cast(obj);
                                }
                            }
                            throw new NoSuchFieldError("the Unsafe");
                        }
                    });
                }
                try {
                    zzc = unsafe.objectFieldOffset(zzck.class.getDeclaredField("waitersField"));
                    zzb = unsafe.objectFieldOffset(zzck.class.getDeclaredField("listenersField"));
                    zzd = unsafe.objectFieldOffset(zzck.class.getDeclaredField("valueField"));
                    zze = unsafe.objectFieldOffset(zze.class.getDeclaredField("thread"));
                    zzf = unsafe.objectFieldOffset(zze.class.getDeclaredField("next"));
                    zza = unsafe;
                } catch (NoSuchFieldException e) {
                    HttpUrl$$ExternalSyntheticBUOutline0.m947m(e);
                }
            } catch (PrivilegedActionException e2) {
                Make$Map$$ExternalSyntheticBUOutline0.m1021m("Could not initialize intrinsics", e2.getCause());
            }
        }

        public /* synthetic */ zzd(zzco zzcoVar) {
            super(null);
        }

        @Override // com.google.android.gms.internal.play_billing.zzck.zza
        public final zzcj.zzd zza(zzck zzckVar, zzcj.zzd zzdVar) {
            zzcj.zzd zzdVar2;
            do {
                zzdVar2 = zzckVar.listenersField;
                if (zzdVar == zzdVar2) {
                    break;
                }
            } while (!zze(zzckVar, zzdVar2, zzdVar));
            return zzdVar2;
        }

        @Override // com.google.android.gms.internal.play_billing.zzck.zza
        public final zze zzb(zzck zzckVar, zze zzeVar) {
            zze zzeVar2;
            do {
                zzeVar2 = zzckVar.waitersField;
                if (zzeVar == zzeVar2) {
                    break;
                }
            } while (!zzg(zzckVar, zzeVar2, zzeVar));
            return zzeVar2;
        }

        @Override // com.google.android.gms.internal.play_billing.zzck.zza
        public final void zzc(zze zzeVar, zze zzeVar2) {
            zza.putObject(zzeVar, zzf, zzeVar2);
        }

        @Override // com.google.android.gms.internal.play_billing.zzck.zza
        public final void zzd(zze zzeVar, Thread thread) {
            zza.putObject(zzeVar, zze, thread);
        }

        @Override // com.google.android.gms.internal.play_billing.zzck.zza
        public final boolean zze(zzck zzckVar, zzcj.zzd zzdVar, zzcj.zzd zzdVar2) {
            return zzcm.zza(zza, zzckVar, zzb, zzdVar, zzdVar2);
        }

        @Override // com.google.android.gms.internal.play_billing.zzck.zza
        public final boolean zzf(zzck zzckVar, Object obj, Object obj2) {
            return zzcm.zza(zza, zzckVar, zzd, obj, obj2);
        }

        @Override // com.google.android.gms.internal.play_billing.zzck.zza
        public final boolean zzg(zzck zzckVar, zze zzeVar, zze zzeVar2) {
            return zzcm.zza(zza, zzckVar, zzc, zzeVar, zzeVar2);
        }
    }

    final class zze {
        static final zze zza = new zze(false);
        volatile zze next;
        volatile Thread thread;

        public zze() {
            zzck.zzn(this, Thread.currentThread());
        }

        public zze(boolean z) {
        }
    }

    static {
        boolean z;
        Throwable th;
        Throwable th2;
        zza zzcVar;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z = false;
        }
        zzc = z;
        String property = System.getProperty("java.runtime.name", _UrlKt.FRAGMENT_ENCODE_SET);
        zzco zzcoVar = null;
        if (property == null || property.contains("Android")) {
            try {
                zzcVar = new zzd(zzcoVar);
            } catch (Error | Exception e) {
                try {
                    zzcVar = new zzb(zzcoVar);
                    th = null;
                    th2 = e;
                } catch (Error | Exception e2) {
                    th = e2;
                    th2 = e;
                    zzcVar = new zzc(zzcoVar);
                }
            }
        } else {
            try {
                zzcVar = new zzb(zzcoVar);
            } catch (NoClassDefFoundError unused2) {
                zzcVar = new zzc(zzcoVar);
            }
        }
        th = null;
        th2 = null;
        zzd = zzcVar;
        if (th != null) {
            zzcy zzcyVar = zzb;
            Logger loggerZza = zzcyVar.zza();
            Level level = Level.SEVERE;
            loggerZza.logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            zzcyVar.zza().logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "AtomicReferenceFieldUpdaterAtomicHelper is broken!", th);
        }
    }

    private final void zza(zze zzeVar) {
        zzeVar.thread = null;
        while (true) {
            zze zzeVar2 = this.waitersField;
            if (zzeVar2 != zze.zza) {
                zze zzeVar3 = null;
                while (zzeVar2 != null) {
                    zze zzeVar4 = zzeVar2.next;
                    if (zzeVar2.thread != null) {
                        zzeVar3 = zzeVar2;
                    } else if (zzeVar3 != null) {
                        zzeVar3.next = zzeVar4;
                        if (zzeVar3.thread == null) {
                            break;
                        }
                    } else if (!zzd.zzg(this, zzeVar2, zzeVar4)) {
                        break;
                    }
                    zzeVar2 = zzeVar4;
                }
                return;
            }
            return;
        }
    }

    public static /* synthetic */ void zzn(zze zzeVar, Thread thread) {
        zzd.zzd(zzeVar, thread);
    }

    public static boolean zzq(zzck zzckVar, Object obj, Object obj2) {
        return zzd.zzf(zzckVar, obj, obj2);
    }

    public final zzcj.zzd zzk(zzcj.zzd zzdVar) {
        return zzd.zza(this, zzdVar);
    }

    public final Object zzl() throws InterruptedException {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.valueField;
        if ((obj2 != null) && zzcj.zzh(obj2)) {
            return zzcj.zzc(obj2);
        }
        zze zzeVar = this.waitersField;
        if (zzeVar != zze.zza) {
            zze zzeVar2 = new zze();
            do {
                zza zzaVar = zzd;
                zzaVar.zzc(zzeVar2, zzeVar);
                if (zzaVar.zzg(this, zzeVar, zzeVar2)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            zza(zzeVar2);
                            throw new InterruptedException();
                        }
                        obj = this.valueField;
                    } while (!((obj != null) & zzcj.zzh(obj)));
                    return zzcj.zzc(obj);
                }
                zzeVar = this.waitersField;
            } while (zzeVar != zze.zza);
        }
        Object obj3 = this.valueField;
        Objects.requireNonNull(obj3);
        return zzcj.zzc(obj3);
    }

    public final Object zzm(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.valueField;
        boolean z = true;
        if ((obj != null) && zzcj.zzh(obj)) {
            return zzcj.zzc(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            zze zzeVar = this.waitersField;
            if (zzeVar != zze.zza) {
                zze zzeVar2 = new zze();
                do {
                    zza zzaVar = zzd;
                    zzaVar.zzc(zzeVar2, zzeVar);
                    if (zzaVar.zzg(this, zzeVar, zzeVar2)) {
                        do {
                            LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                            if (Thread.interrupted()) {
                                zza(zzeVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.valueField;
                            if ((obj2 != null) && zzcj.zzh(obj2)) {
                                return zzcj.zzc(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        zza(zzeVar2);
                    } else {
                        zzeVar = this.waitersField;
                    }
                } while (zzeVar != zze.zza);
            }
            Object obj3 = this.valueField;
            Objects.requireNonNull(obj3);
            return zzcj.zzc(obj3);
        }
        while (nanos > 0) {
            Object obj4 = this.valueField;
            if ((obj4 != null) && zzcj.zzh(obj4)) {
                return zzcj.zzc(obj4);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        String strConcat = "Waited " + j + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            String strConcat2 = strConcat.concat(" (plus ");
            long j2 = -nanos;
            long jConvert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
            long nanos2 = j2 - timeUnit.toNanos(jConvert);
            if (jConvert != 0 && nanos2 <= 1000) {
                z = false;
            }
            if (jConvert > 0) {
                String strConcat3 = strConcat2 + jConvert + " " + lowerCase;
                if (z) {
                    strConcat3 = strConcat3.concat(",");
                }
                strConcat2 = strConcat3.concat(" ");
            }
            if (z) {
                strConcat2 = strConcat2 + nanos2 + " nanoseconds ";
            }
            strConcat = strConcat2.concat("delay)");
        }
        if (isDone()) {
            throw new TimeoutException(strConcat.concat(" but future completed as timeout expired"));
        }
        zzo$$ExternalSyntheticBUOutline0.m355m(strConcat, string);
        return null;
    }

    public final void zzo() {
        for (zze zzeVarZzb = zzd.zzb(this, zze.zza); zzeVarZzb != null; zzeVarZzb = zzeVarZzb.next) {
            Thread thread = zzeVarZzb.thread;
            if (thread != null) {
                zzeVarZzb.thread = null;
                LockSupport.unpark(thread);
            }
        }
    }

    public final boolean zzp(zzcj.zzd zzdVar, zzcj.zzd zzdVar2) {
        return zzd.zze(this, zzdVar, zzdVar2);
    }
}
