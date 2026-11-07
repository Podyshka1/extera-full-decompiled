package com.google.common.util.concurrent;

import androidx.concurrent.futures.AbstractC0328xc40028dd;
import com.google.android.gms.internal.cast.zzwb$zzd$$ExternalSyntheticBackportWithForwarding0;
import com.google.android.gms.internal.play_billing.zzo$$ExternalSyntheticBUOutline0;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.AbstractFutureState;
import com.google.common.util.concurrent.internal.InternalFutureFailureAccess;
import java.lang.reflect.Field;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
abstract class AbstractFutureState<V> extends InternalFutureFailureAccess implements ListenableFuture<V> {
    private static final AtomicHelper ATOMIC_HELPER;
    volatile AbstractFuture.Listener listenersField;
    volatile Object valueField;
    volatile Waiter waitersField;
    static final Object NULL = new Object();
    static final LazyLogger log = new LazyLogger(AbstractFuture.class);
    static final boolean GENERATE_CANCELLATION_CAUSES = computeGenerateCancellationCauses();

    public final boolean casListeners(AbstractFuture.Listener listener, AbstractFuture.Listener listener2) {
        return ATOMIC_HELPER.casListeners(this, listener, listener2);
    }

    public final AbstractFuture.Listener gasListeners(AbstractFuture.Listener listener) {
        return ATOMIC_HELPER.gasListeners(this, listener);
    }

    public static boolean casValue(AbstractFutureState<?> abstractFutureState, Object obj, Object obj2) {
        return ATOMIC_HELPER.casValue(abstractFutureState, obj, obj2);
    }

    public final Object value() {
        return this.valueField;
    }

    public final AbstractFuture.Listener listeners() {
        return this.listenersField;
    }

    public final void releaseWaiters() {
        for (Waiter waiterGasWaiters = gasWaiters(Waiter.TOMBSTONE); waiterGasWaiters != null; waiterGasWaiters = waiterGasWaiters.next) {
            waiterGasWaiters.unpark();
        }
    }

    public final V blockingGet(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.valueField;
        if ((obj != null) & AbstractFuture.notInstanceOfDelegatingToFuture(obj)) {
            return (V) AbstractFuture.getDoneValue(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            Waiter waiter = this.waitersField;
            if (waiter != Waiter.TOMBSTONE) {
                Waiter waiter2 = new Waiter();
                do {
                    waiter2.setNext(waiter);
                    if (casWaiters(waiter, waiter2)) {
                        do {
                            OverflowAvoidingLockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                removeWaiter(waiter2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.valueField;
                            if ((obj2 != null) & AbstractFuture.notInstanceOfDelegatingToFuture(obj2)) {
                                return (V) AbstractFuture.getDoneValue(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        removeWaiter(waiter2);
                    } else {
                        waiter = this.waitersField;
                    }
                } while (waiter != Waiter.TOMBSTONE);
            }
            Object obj3 = this.valueField;
            Objects.requireNonNull(obj3);
            return (V) AbstractFuture.getDoneValue(obj3);
        }
        while (nanos > 0) {
            Object obj4 = this.valueField;
            if ((obj4 != null) & AbstractFuture.notInstanceOfDelegatingToFuture(obj4)) {
                return (V) AbstractFuture.getDoneValue(obj4);
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
            boolean z = jConvert == 0 || nanos2 > 1000;
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
        zzo$$ExternalSyntheticBUOutline0.m331m(strConcat, string);
        return null;
    }

    public final V blockingGet() throws InterruptedException {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.valueField;
        if ((obj2 != null) & AbstractFuture.notInstanceOfDelegatingToFuture(obj2)) {
            return (V) AbstractFuture.getDoneValue(obj2);
        }
        Waiter waiter = this.waitersField;
        if (waiter != Waiter.TOMBSTONE) {
            Waiter waiter2 = new Waiter();
            do {
                waiter2.setNext(waiter);
                if (casWaiters(waiter, waiter2)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            removeWaiter(waiter2);
                            throw new InterruptedException();
                        }
                        obj = this.valueField;
                    } while (!((obj != null) & AbstractFuture.notInstanceOfDelegatingToFuture(obj)));
                    return (V) AbstractFuture.getDoneValue(obj);
                }
                waiter = this.waitersField;
            } while (waiter != Waiter.TOMBSTONE);
        }
        Object obj3 = this.valueField;
        Objects.requireNonNull(obj3);
        return (V) AbstractFuture.getDoneValue(obj3);
    }

    static {
        AtomicHelper atomicReferenceFieldUpdaterAtomicHelper;
        if (mightBeAndroid()) {
            try {
                atomicReferenceFieldUpdaterAtomicHelper = new UnsafeAtomicHelper();
            } catch (Error | Exception unused) {
                atomicReferenceFieldUpdaterAtomicHelper = new AtomicReferenceFieldUpdaterAtomicHelper();
            }
        } else {
            atomicReferenceFieldUpdaterAtomicHelper = new AtomicReferenceFieldUpdaterAtomicHelper();
        }
        ATOMIC_HELPER = atomicReferenceFieldUpdaterAtomicHelper;
    }

    private static boolean computeGenerateCancellationCauses() {
        try {
            return Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            return false;
        }
    }

    public static final class Waiter {
        static final Waiter TOMBSTONE = new Waiter(false);
        volatile Waiter next;
        volatile Thread thread;

        public Waiter(boolean z) {
        }

        public Waiter() {
            AbstractFutureState.putThread(this, Thread.currentThread());
        }

        public void setNext(Waiter waiter) {
            AbstractFutureState.putNext(this, waiter);
        }

        public void unpark() {
            Thread thread = this.thread;
            if (thread != null) {
                this.thread = null;
                LockSupport.unpark(thread);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void putThread(Waiter waiter, Thread thread) {
        ATOMIC_HELPER.putThread(waiter, thread);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void putNext(Waiter waiter, Waiter waiter2) {
        ATOMIC_HELPER.putNext(waiter, waiter2);
    }

    private boolean casWaiters(Waiter waiter, Waiter waiter2) {
        return ATOMIC_HELPER.casWaiters(this, waiter, waiter2);
    }

    private final Waiter gasWaiters(Waiter waiter) {
        return ATOMIC_HELPER.gasWaiters(this, waiter);
    }

    private void removeWaiter(Waiter waiter) {
        waiter.thread = null;
        while (true) {
            Waiter waiter2 = this.waitersField;
            if (waiter2 == Waiter.TOMBSTONE) {
                return;
            }
            Waiter waiter3 = null;
            while (waiter2 != null) {
                Waiter waiter4 = waiter2.next;
                if (waiter2.thread != null) {
                    waiter3 = waiter2;
                } else if (waiter3 != null) {
                    waiter3.next = waiter4;
                    if (waiter3.thread == null) {
                        break;
                    }
                } else if (!casWaiters(waiter2, waiter4)) {
                    break;
                }
                waiter2 = waiter4;
            }
            return;
        }
    }

    public static abstract class AtomicHelper {
        public abstract boolean casListeners(AbstractFutureState<?> abstractFutureState, AbstractFuture.Listener listener, AbstractFuture.Listener listener2);

        public abstract boolean casValue(AbstractFutureState<?> abstractFutureState, Object obj, Object obj2);

        public abstract boolean casWaiters(AbstractFutureState<?> abstractFutureState, Waiter waiter, Waiter waiter2);

        public abstract AbstractFuture.Listener gasListeners(AbstractFutureState<?> abstractFutureState, AbstractFuture.Listener listener);

        public abstract Waiter gasWaiters(AbstractFutureState<?> abstractFutureState, Waiter waiter);

        public abstract void putNext(Waiter waiter, Waiter waiter2);

        public abstract void putThread(Waiter waiter, Thread thread);

        private AtomicHelper() {
        }
    }

    public static final class UnsafeAtomicHelper extends AtomicHelper {
        static final long LISTENERS_OFFSET;
        static final Unsafe UNSAFE;
        static final long VALUE_OFFSET;
        static final long WAITERS_OFFSET;
        static final long WAITER_NEXT_OFFSET;
        static final long WAITER_THREAD_OFFSET;

        private UnsafeAtomicHelper() {
            super();
        }

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (Exception e) {
                    Make$Map$$ExternalSyntheticBUOutline0.m973m("Could not initialize intrinsics", e);
                    return;
                }
            } catch (SecurityException unused) {
                PrivilegedExceptionAction privilegedExceptionAction = new PrivilegedExceptionAction() { // from class: com.google.common.util.concurrent.AbstractFutureState$UnsafeAtomicHelper$$ExternalSyntheticLambda0
                    @Override // java.security.PrivilegedExceptionAction
                    public final Object run() {
                        return AbstractFutureState.UnsafeAtomicHelper.lambda$static$0();
                    }
                };
                try {
                    unsafe = (Unsafe) Class.forName("java.security.AccessController").getMethod("doPrivileged", PrivilegedExceptionAction.class).invoke(null, privilegedExceptionAction);
                } catch (Exception unused2) {
                    unsafe = (Unsafe) privilegedExceptionAction.run();
                }
            }
            try {
                WAITERS_OFFSET = unsafe.objectFieldOffset(AbstractFutureState.class.getDeclaredField("waitersField"));
                LISTENERS_OFFSET = unsafe.objectFieldOffset(AbstractFutureState.class.getDeclaredField("listenersField"));
                VALUE_OFFSET = unsafe.objectFieldOffset(AbstractFutureState.class.getDeclaredField("valueField"));
                WAITER_THREAD_OFFSET = unsafe.objectFieldOffset(Waiter.class.getDeclaredField("thread"));
                WAITER_NEXT_OFFSET = unsafe.objectFieldOffset(Waiter.class.getDeclaredField("next"));
                UNSAFE = unsafe;
            } catch (NoSuchFieldException e2) {
                HttpUrl$$ExternalSyntheticBUOutline0.m899m(e2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Unsafe lambda$static$0() throws IllegalAccessException {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            throw new NoSuchFieldError("the Unsafe");
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public void putThread(Waiter waiter, Thread thread) {
            UNSAFE.putObject(waiter, WAITER_THREAD_OFFSET, thread);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public void putNext(Waiter waiter, Waiter waiter2) {
            UNSAFE.putObject(waiter, WAITER_NEXT_OFFSET, waiter2);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public boolean casWaiters(AbstractFutureState<?> abstractFutureState, Waiter waiter, Waiter waiter2) {
            return zzwb$zzd$$ExternalSyntheticBackportWithForwarding0.m311m(UNSAFE, abstractFutureState, WAITERS_OFFSET, waiter, waiter2);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public boolean casListeners(AbstractFutureState<?> abstractFutureState, AbstractFuture.Listener listener, AbstractFuture.Listener listener2) {
            return zzwb$zzd$$ExternalSyntheticBackportWithForwarding0.m311m(UNSAFE, abstractFutureState, LISTENERS_OFFSET, listener, listener2);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public AbstractFuture.Listener gasListeners(AbstractFutureState<?> abstractFutureState, AbstractFuture.Listener listener) {
            AbstractFuture.Listener listener2;
            do {
                listener2 = abstractFutureState.listenersField;
                if (listener == listener2) {
                    break;
                }
            } while (!casListeners(abstractFutureState, listener2, listener));
            return listener2;
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public Waiter gasWaiters(AbstractFutureState<?> abstractFutureState, Waiter waiter) {
            Waiter waiter2;
            do {
                waiter2 = abstractFutureState.waitersField;
                if (waiter == waiter2) {
                    break;
                }
            } while (!casWaiters(abstractFutureState, waiter2, waiter));
            return waiter2;
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public boolean casValue(AbstractFutureState<?> abstractFutureState, Object obj, Object obj2) {
            return zzwb$zzd$$ExternalSyntheticBackportWithForwarding0.m311m(UNSAFE, abstractFutureState, VALUE_OFFSET, obj, obj2);
        }
    }

    public static final class AtomicReferenceFieldUpdaterAtomicHelper extends AtomicHelper {
        private static final AtomicReferenceFieldUpdater<Waiter, Thread> waiterThreadUpdater = AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Thread.class, "thread");
        private static final AtomicReferenceFieldUpdater<Waiter, Waiter> waiterNextUpdater = AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Waiter.class, "next");
        private static final AtomicReferenceFieldUpdater<? super AbstractFutureState<?>, Waiter> waitersUpdater = AtomicReferenceFieldUpdater.newUpdater(AbstractFutureState.class, Waiter.class, "waitersField");
        private static final AtomicReferenceFieldUpdater<? super AbstractFutureState<?>, AbstractFuture.Listener> listenersUpdater = AtomicReferenceFieldUpdater.newUpdater(AbstractFutureState.class, AbstractFuture.Listener.class, "listenersField");
        private static final AtomicReferenceFieldUpdater<? super AbstractFutureState<?>, Object> valueUpdater = AtomicReferenceFieldUpdater.newUpdater(AbstractFutureState.class, Object.class, "valueField");

        private AtomicReferenceFieldUpdaterAtomicHelper() {
            super();
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public void putThread(Waiter waiter, Thread thread) {
            waiterThreadUpdater.lazySet(waiter, thread);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public void putNext(Waiter waiter, Waiter waiter2) {
            waiterNextUpdater.lazySet(waiter, waiter2);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public boolean casWaiters(AbstractFutureState<?> abstractFutureState, Waiter waiter, Waiter waiter2) {
            return AbstractC0328xc40028dd.m88m(waitersUpdater, abstractFutureState, waiter, waiter2);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public boolean casListeners(AbstractFutureState<?> abstractFutureState, AbstractFuture.Listener listener, AbstractFuture.Listener listener2) {
            return AbstractC0328xc40028dd.m88m(listenersUpdater, abstractFutureState, listener, listener2);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public AbstractFuture.Listener gasListeners(AbstractFutureState<?> abstractFutureState, AbstractFuture.Listener listener) {
            return listenersUpdater.getAndSet(abstractFutureState, listener);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public Waiter gasWaiters(AbstractFutureState<?> abstractFutureState, Waiter waiter) {
            return waitersUpdater.getAndSet(abstractFutureState, waiter);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public boolean casValue(AbstractFutureState<?> abstractFutureState, Object obj, Object obj2) {
            return AbstractC0328xc40028dd.m88m(valueUpdater, abstractFutureState, obj, obj2);
        }
    }

    private static boolean mightBeAndroid() {
        String property = System.getProperty("java.runtime.name", _UrlKt.FRAGMENT_ENCODE_SET);
        return property == null || property.contains("Android");
    }
}
