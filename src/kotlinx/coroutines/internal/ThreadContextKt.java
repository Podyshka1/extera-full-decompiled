package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.ThreadContextElement;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fH\u0000\u001a\u001c\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004H\u0000\u001a\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u0000\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u0002\n\u0000\"$\u0010\u0002\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\",\u0010\u0006\u001a \u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00070\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\" \u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"NO_THREAD_ELEMENTS", "Lkotlinx/coroutines/internal/Symbol;", "countAll", "Lkotlin/Function2;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/coroutines/CoroutineContext$Element;", "findOne", "Lkotlinx/coroutines/ThreadContextElement;", "updateState", "Lkotlinx/coroutines/internal/ThreadState;", "threadContextElements", "context", "Lkotlin/coroutines/CoroutineContext;", "updateThreadContext", "countOrElement", "restoreThreadContext", _UrlKt.FRAGMENT_ENCODE_SET, "oldState", "kotlinx-coroutines-core"}, m754k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ThreadContextKt {

    @JvmField
    public static final Symbol NO_THREAD_ELEMENTS = new Symbol("NO_THREAD_ELEMENTS");
    private static final Function2<Object, CoroutineContext.Element, Object> countAll = new Function2() { // from class: kotlinx.coroutines.internal.ThreadContextKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ThreadContextKt.m4836$r8$lambda$JV_KVVI_n23GsB5XC6MwwiLObk(obj, (CoroutineContext.Element) obj2);
        }
    };
    private static final Function2<ThreadContextElement<?>, CoroutineContext.Element, ThreadContextElement<?>> findOne = new Function2() { // from class: kotlinx.coroutines.internal.ThreadContextKt$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ThreadContextKt.$r8$lambda$BWRz50x54qs2OVxeNX6EXirG04g((ThreadContextElement) obj, (CoroutineContext.Element) obj2);
        }
    };
    private static final Function2<ThreadState, CoroutineContext.Element, ThreadState> updateState = new Function2() { // from class: kotlinx.coroutines.internal.ThreadContextKt$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ThreadContextKt.m4837$r8$lambda$LvERHGTiz1zuawbtmH23u2Uqo8((ThreadState) obj, (CoroutineContext.Element) obj2);
        }
    };

    /* JADX INFO: renamed from: $r8$lambda$JV-_KVVI_n23GsB5XC6MwwiLObk, reason: not valid java name */
    public static Object m4836$r8$lambda$JV_KVVI_n23GsB5XC6MwwiLObk(Object obj, CoroutineContext.Element element) {
        if (!(element instanceof ThreadContextElement)) {
            return obj;
        }
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        int iIntValue = num != null ? num.intValue() : 1;
        return iIntValue == 0 ? element : Integer.valueOf(iIntValue + 1);
    }

    public static ThreadContextElement $r8$lambda$BWRz50x54qs2OVxeNX6EXirG04g(ThreadContextElement threadContextElement, CoroutineContext.Element element) {
        if (threadContextElement != null) {
            return threadContextElement;
        }
        if (element instanceof ThreadContextElement) {
            return (ThreadContextElement) element;
        }
        return null;
    }

    /* JADX INFO: renamed from: $r8$lambda$LvERHGT-iz1zuawbtmH23u2Uqo8, reason: not valid java name */
    public static ThreadState m4837$r8$lambda$LvERHGTiz1zuawbtmH23u2Uqo8(ThreadState threadState, CoroutineContext.Element element) {
        if (element instanceof ThreadContextElement) {
            ThreadContextElement<?> threadContextElement = (ThreadContextElement) element;
            threadState.append(threadContextElement, threadContextElement.updateThreadContext(threadState.context));
        }
        return threadState;
    }

    public static final Object threadContextElements(CoroutineContext coroutineContext) {
        return coroutineContext.fold(0, countAll);
    }

    public static final Object updateThreadContext(CoroutineContext coroutineContext, Object obj) {
        if (obj == null) {
            obj = threadContextElements(coroutineContext);
        }
        if (obj == 0) {
            return NO_THREAD_ELEMENTS;
        }
        if (obj instanceof Integer) {
            return coroutineContext.fold(new ThreadState(coroutineContext, ((Number) obj).intValue()), updateState);
        }
        return ((ThreadContextElement) obj).updateThreadContext(coroutineContext);
    }

    public static final void restoreThreadContext(CoroutineContext coroutineContext, Object obj) {
        if (obj == NO_THREAD_ELEMENTS) {
            return;
        }
        if (obj instanceof ThreadState) {
            ((ThreadState) obj).restore(coroutineContext);
        } else {
            ((ThreadContextElement) coroutineContext.fold(null, findOne)).restoreThreadContext(coroutineContext, obj);
        }
    }
}
