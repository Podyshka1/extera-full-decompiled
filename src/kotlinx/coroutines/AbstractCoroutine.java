package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\b'\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00020\u00022\u00020\u00032\b\u0012\u0004\u0012\u00028\u00000\u00042\u00020\u0005B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\bH\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\u000e2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0004¢\u0006\u0004\b\u001b\u0010\u0010J\u001b\u0010\u001e\u001a\u00020\u000e2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u001c¢\u0006\u0004\b\u001e\u0010\u0010J\u0019\u0010\u001f\u001a\u00020\u000e2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0014¢\u0006\u0004\b\u001f\u0010\u0010J\u0017\u0010#\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u0011H\u0000¢\u0006\u0004\b!\u0010\"J\u000f\u0010%\u001a\u00020\u0016H\u0010¢\u0006\u0004\b$\u0010\u0018JL\u0010(\u001a\u00020\u000e\"\u0004\b\u0001\u0010&2\u0006\u0010(\u001a\u00020'2\u0006\u0010)\u001a\u00028\u00012'\u0010,\u001a#\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00190*¢\u0006\u0002\b+¢\u0006\u0004\b(\u0010-R\u001d\u0010.\u001a\u00020\u00068\u0006¢\u0006\u0012\n\u0004\b.\u0010/\u0012\u0004\b2\u00103\u001a\u0004\b0\u00101R\u0014\u00105\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b4\u00101R\u0014\u00106\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b6\u00107¨\u00068"}, d2 = {"Lkotlinx/coroutines/AbstractCoroutine;", "T", "Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/Job;", "Lkotlin/coroutines/Continuation;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/CoroutineContext;", "parentContext", _UrlKt.FRAGMENT_ENCODE_SET, "initParentJob", "active", "<init>", "(Lkotlin/coroutines/CoroutineContext;ZZ)V", "value", _UrlKt.FRAGMENT_ENCODE_SET, "onCompleted", "(Ljava/lang/Object;)V", _UrlKt.FRAGMENT_ENCODE_SET, "cause", "handled", "onCancelled", "(Ljava/lang/Throwable;Z)V", _UrlKt.FRAGMENT_ENCODE_SET, "cancellationExceptionMessage", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "state", "onCompletionInternal", "Lkotlin/Result;", "result", "resumeWith", "afterResume", "exception", "handleOnCompletionException$kotlinx_coroutines_core", "(Ljava/lang/Throwable;)V", "handleOnCompletionException", "nameString$kotlinx_coroutines_core", "nameString", "R", "Lkotlinx/coroutines/CoroutineStart;", "start", "receiver", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "block", "(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "context", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "getContext$annotations", "()V", "getCoroutineContext", "coroutineContext", "isActive", "()Z", "kotlinx-coroutines-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class AbstractCoroutine<T> extends JobSupport implements Job, Continuation<T>, CoroutineScope {
    private final CoroutineContext context;

    public void onCancelled(Throwable cause, boolean handled) {
    }

    public void onCompleted(T value) {
    }

    public AbstractCoroutine(CoroutineContext coroutineContext, boolean z, boolean z2) {
        super(z2);
        if (z) {
            initParentJob((Job) coroutineContext.get(Job.INSTANCE));
        }
        this.context = coroutineContext.plus(this);
    }

    @Override // kotlin.coroutines.Continuation
    /* JADX INFO: renamed from: getContext, reason: from getter */
    public final CoroutineContext get_context() {
        return this.context;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.context;
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.Job
    public boolean isActive() {
        return super.isActive();
    }

    @Override // kotlinx.coroutines.JobSupport
    public String cancellationExceptionMessage() {
        return DebugStringsKt.getClassSimpleName(this) + " was cancelled";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.JobSupport
    public final void onCompletionInternal(Object state) {
        if (state instanceof CompletedExceptionally) {
            CompletedExceptionally completedExceptionally = (CompletedExceptionally) state;
            onCancelled(completedExceptionally.cause, completedExceptionally.getHandled());
        } else {
            onCompleted(state);
        }
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object result) {
        Object objMakeCompletingOnce$kotlinx_coroutines_core = makeCompletingOnce$kotlinx_coroutines_core(CompletionStateKt.toState(result));
        if (objMakeCompletingOnce$kotlinx_coroutines_core == JobSupportKt.COMPLETING_WAITING_CHILDREN) {
            return;
        }
        afterResume(objMakeCompletingOnce$kotlinx_coroutines_core);
    }

    public void afterResume(Object state) {
        afterCompletion(state);
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void handleOnCompletionException$kotlinx_coroutines_core(Throwable exception) {
        CoroutineExceptionHandlerKt.handleCoroutineException(this.context, exception);
    }

    @Override // kotlinx.coroutines.JobSupport
    public String nameString$kotlinx_coroutines_core() {
        String coroutineName = CoroutineContextKt.getCoroutineName(this.context);
        if (coroutineName == null) {
            return super.nameString$kotlinx_coroutines_core();
        }
        return "\"" + coroutineName + "\":" + super.nameString$kotlinx_coroutines_core();
    }

    public final <R> void start(CoroutineStart start, R receiver, Function2<? super R, ? super Continuation<? super T>, ? extends Object> block) {
        start.invoke(block, receiver, this);
    }
}
