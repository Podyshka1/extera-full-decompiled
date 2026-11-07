package kotlin.concurrent.atomics;

import androidx.media3.exoplayer.mediacodec.AbstractC0748xa830b2f;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\u001a\u0013\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0003\u001a\u0013\u0010\u0004\u001a\u00020\u0002*\u00020\u0001H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0003\u001a\u0013\u0010\u0000\u001a\u00020\u0005*\u00020\u0006H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0007\u001a\u0013\u0010\u0004\u001a\u00020\u0006*\u00020\u0005H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0007\u001a\u0013\u0010\u0000\u001a\u00020\b*\u00020\tH\u0087\u0080\u0004¢\u0006\u0002\u0010\n\u001a\u0013\u0010\u0004\u001a\u00020\t*\u00020\bH\u0087\u0080\u0004¢\u0006\u0002\u0010\n\u001a%\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\f0\u000b\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\rH\u0087\u0080\u0004¢\u0006\u0002\u0010\u000e\u001a%\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\f0\r\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\u000bH\u0087\u0080\u0004¢\u0006\u0002\u0010\u000e\u001a7\u0010\u000f\u001a\u00020\u0010*\u00020\u00022\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u0012H\u0087\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0002¢\u0006\u0002\u0010\u0014\u001a7\u0010\u0015\u001a\u00020\u0013*\u00020\u00022\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u0012H\u0087\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0002¢\u0006\u0002\u0010\u0016\u001a7\u0010\u0017\u001a\u00020\u0013*\u00020\u00022\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u0012H\u0087\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0002¢\u0006\u0002\u0010\u0016\u001a7\u0010\u000f\u001a\u00020\u0010*\u00020\u00062\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00180\u0012H\u0087\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0002¢\u0006\u0002\u0010\u0019\u001a7\u0010\u0015\u001a\u00020\u0018*\u00020\u00062\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00180\u0012H\u0087\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0002¢\u0006\u0002\u0010\u001a\u001a7\u0010\u0017\u001a\u00020\u0018*\u00020\u00062\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00180\u0012H\u0087\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0002¢\u0006\u0002\u0010\u001a\u001aC\u0010\u000f\u001a\u00020\u0010\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\r2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u0002H\f\u0012\u0004\u0012\u0002H\f0\u0012H\u0087\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0002¢\u0006\u0002\u0010\u001b\u001aC\u0010\u0015\u001a\u0002H\f\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\r2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u0002H\f\u0012\u0004\u0012\u0002H\f0\u0012H\u0087\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0002¢\u0006\u0002\u0010\u001c\u001aC\u0010\u0017\u001a\u0002H\f\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u0002H\f0\r2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u0002H\f\u0012\u0004\u0012\u0002H\f0\u0012H\u0087\u0088\u0004ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0002¢\u0006\u0002\u0010\u001c\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001d"}, d2 = {"asJavaAtomic", "Ljava/util/concurrent/atomic/AtomicInteger;", "Lkotlin/concurrent/atomics/AtomicInt;", "(Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/concurrent/atomic/AtomicInteger;", "asKotlinAtomic", "Ljava/util/concurrent/atomic/AtomicLong;", "Lkotlin/concurrent/atomics/AtomicLong;", "(Ljava/util/concurrent/atomic/AtomicLong;)Ljava/util/concurrent/atomic/AtomicLong;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Lkotlin/concurrent/atomics/AtomicBoolean;", "(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/concurrent/atomic/AtomicBoolean;", "Ljava/util/concurrent/atomic/AtomicReference;", "T", "Lkotlin/concurrent/atomics/AtomicReference;", "(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/util/concurrent/atomic/AtomicReference;", PluginsConstants.UPDATE, _UrlKt.FRAGMENT_ENCODE_SET, "transform", "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/jvm/functions/Function1;)V", "fetchAndUpdate", "(Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/jvm/functions/Function1;)I", "updateAndFetch", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/util/concurrent/atomic/AtomicLong;Lkotlin/jvm/functions/Function1;)V", "(Ljava/util/concurrent/atomic/AtomicLong;Lkotlin/jvm/functions/Function1;)J", "(Ljava/util/concurrent/atomic/AtomicReference;Lkotlin/jvm/functions/Function1;)V", "(Ljava/util/concurrent/atomic/AtomicReference;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "kotlin-stdlib"}, m862k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/concurrent/atomics/AtomicsKt")
class AtomicsKt__Atomics_jvmKt extends AtomicsKt__Atomics_commonKt {
    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final AtomicBoolean asJavaAtomic(AtomicBoolean atomicBoolean) {
        return atomicBoolean;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final AtomicInteger asJavaAtomic(AtomicInteger atomicInteger) {
        return atomicInteger;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final AtomicLong asJavaAtomic(AtomicLong atomicLong) {
        return atomicLong;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final <T> AtomicReference<T> asJavaAtomic(AtomicReference<T> atomicReference) {
        return atomicReference;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final AtomicBoolean asKotlinAtomic(AtomicBoolean atomicBoolean) {
        return atomicBoolean;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final AtomicInteger asKotlinAtomic(AtomicInteger atomicInteger) {
        return atomicInteger;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final AtomicLong asKotlinAtomic(AtomicLong atomicLong) {
        return atomicLong;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final <T> AtomicReference<T> asKotlinAtomic(AtomicReference<T> atomicReference) {
        return atomicReference;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.2")
    @InlineOnly
    private static final void update(AtomicInteger atomicInteger, Function1<? super Integer, Integer> function1) {
        int i;
        do {
            i = atomicInteger.get();
        } while (!atomicInteger.compareAndSet(i, function1.invoke(Integer.valueOf(i)).intValue()));
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.2")
    @InlineOnly
    private static final int fetchAndUpdate(AtomicInteger atomicInteger, Function1<? super Integer, Integer> function1) {
        int i;
        do {
            i = atomicInteger.get();
        } while (!atomicInteger.compareAndSet(i, function1.invoke(Integer.valueOf(i)).intValue()));
        return i;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.2")
    @InlineOnly
    private static final int updateAndFetch(AtomicInteger atomicInteger, Function1<? super Integer, Integer> function1) {
        int i;
        int iIntValue;
        do {
            i = atomicInteger.get();
            iIntValue = function1.invoke(Integer.valueOf(i)).intValue();
        } while (!atomicInteger.compareAndSet(i, iIntValue));
        return iIntValue;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.2")
    @InlineOnly
    private static final void update(AtomicLong atomicLong, Function1<? super Long, Long> function1) {
        long j;
        do {
            j = atomicLong.get();
        } while (!atomicLong.compareAndSet(j, function1.invoke(Long.valueOf(j)).longValue()));
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.2")
    @InlineOnly
    private static final long fetchAndUpdate(AtomicLong atomicLong, Function1<? super Long, Long> function1) {
        long j;
        do {
            j = atomicLong.get();
        } while (!atomicLong.compareAndSet(j, function1.invoke(Long.valueOf(j)).longValue()));
        return j;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.2")
    @InlineOnly
    private static final long updateAndFetch(AtomicLong atomicLong, Function1<? super Long, Long> function1) {
        long j;
        long jLongValue;
        do {
            j = atomicLong.get();
            jLongValue = function1.invoke(Long.valueOf(j)).longValue();
        } while (!atomicLong.compareAndSet(j, jLongValue));
        return jLongValue;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.2")
    @InlineOnly
    private static final <T> void update(AtomicReference<T> atomicReference, Function1<? super T, ? extends T> function1) {
        T t;
        do {
            t = atomicReference.get();
        } while (!AbstractC0748xa830b2f.m184m(atomicReference, t, function1.invoke(t)));
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.2")
    @InlineOnly
    private static final <T> T fetchAndUpdate(AtomicReference<T> atomicReference, Function1<? super T, ? extends T> function1) {
        T t;
        do {
            t = atomicReference.get();
        } while (!AbstractC0748xa830b2f.m184m(atomicReference, t, function1.invoke(t)));
        return t;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.2")
    @InlineOnly
    private static final <T> T updateAndFetch(AtomicReference<T> atomicReference, Function1<? super T, ? extends T> function1) {
        T t;
        T tInvoke;
        do {
            t = atomicReference.get();
            tInvoke = function1.invoke(t);
        } while (!AbstractC0748xa830b2f.m184m(atomicReference, t, tInvoke));
        return tInvoke;
    }
}
