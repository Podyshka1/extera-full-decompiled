package kotlinx.coroutines;

import androidx.concurrent.futures.AbstractC0324xc40028dd;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.InstantKt$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
import okhttp3.internal.url._UrlKt;
import okio.ByteString$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000Ò\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0011\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\u00060\u0004j\u0002`\u00052\u00020\u0006B\u001d\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J%\u0010\u0017\u001a\u00020\u00162\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u00142\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0019\u0010\u000fJ\u000f\u0010\u001a\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001a\u0010\u000fJ\u0011\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b \u0010!J!\u0010#\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u001e2\b\u0010\"\u001a\u0004\u0018\u00010\u001eH\u0002¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\tH\u0002¢\u0006\u0004\b&\u0010'J\u0088\u0001\u00103\u001a\u0004\u0018\u00010\u001e\"\u0004\b\u0001\u0010(2\u0006\u0010\"\u001a\u00020)2\u0006\u0010*\u001a\u00028\u00012\u0006\u0010\n\u001a\u00020\t2M\u00101\u001aI\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(.\u0012\u0013\u0012\u00110/¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(0\u0012\u0004\u0012\u00020\u0016\u0018\u00010+2\b\u00102\u001a\u0004\u0018\u00010\u001eH\u0002¢\u0006\u0004\b3\u00104Jx\u00106\u001a\u0004\u0018\u000105\"\u0004\b\u0001\u0010(2\u0006\u0010*\u001a\u00028\u00012\b\u00102\u001a\u0004\u0018\u00010\u001e2M\u00101\u001aI\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(.\u0012\u0013\u0012\u00110/¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(0\u0012\u0004\u0012\u00020\u0016\u0018\u00010+H\u0002¢\u0006\u0004\b6\u00107J\u0019\u00109\u001a\u0002082\b\u0010*\u001a\u0004\u0018\u00010\u001eH\u0002¢\u0006\u0004\b9\u0010:J\u000f\u0010;\u001a\u00020\u0016H\u0002¢\u0006\u0004\b;\u0010<J\u000f\u0010=\u001a\u00020\u0016H\u0016¢\u0006\u0004\b=\u0010<J\u000f\u0010>\u001a\u00020\rH\u0001¢\u0006\u0004\b>\u0010\u000fJ\u0017\u0010A\u001a\n\u0018\u00010?j\u0004\u0018\u0001`@H\u0016¢\u0006\u0004\bA\u0010BJ\u0011\u0010E\u001a\u0004\u0018\u00010\u001eH\u0010¢\u0006\u0004\bC\u0010DJ!\u0010I\u001a\u00020\u00162\b\u0010F\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0010¢\u0006\u0004\bG\u0010HJ\u0019\u0010J\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\bJ\u0010\u0013J\u0017\u0010M\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0010H\u0000¢\u0006\u0004\bK\u0010LJ\u001f\u0010O\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020N2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\bO\u0010PJp\u0010Q\u001a\u00020\u0016\"\u0004\b\u0001\u0010(2K\u00101\u001aG\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(.\u0012\u0013\u0012\u00110/¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(0\u0012\u0004\u0012\u00020\u00160+2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010.\u001a\u00028\u0001¢\u0006\u0004\bQ\u0010RJ\u0017\u0010U\u001a\u00020\u00102\u0006\u0010T\u001a\u00020SH\u0016¢\u0006\u0004\bU\u0010VJ\u0011\u0010W\u001a\u0004\u0018\u00010\u001eH\u0001¢\u0006\u0004\bW\u0010DJ\u000f\u0010Y\u001a\u00020\u0016H\u0000¢\u0006\u0004\bX\u0010<J\u001d\u0010\\\u001a\u00020\u00162\f\u0010[\u001a\b\u0012\u0004\u0012\u00028\u00000ZH\u0016¢\u0006\u0004\b\\\u0010!J<\u0010^\u001a\u00020\u00162\u0006\u0010.\u001a\u00028\u00002#\u00101\u001a\u001f\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u0016\u0018\u00010]H\u0016¢\u0006\u0004\b^\u0010_Jp\u0010^\u001a\u00020\u0016\"\b\b\u0001\u0010(*\u00028\u00002\u0006\u0010.\u001a\u00028\u00012M\u00101\u001aI\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(.\u0012\u0013\u0012\u00110/¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(0\u0012\u0004\u0012\u00020\u0016\u0018\u00010+H\u0016¢\u0006\u0004\b^\u0010`J#\u0010b\u001a\u00020\u00162\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u00142\u0006\u0010a\u001a\u00020\tH\u0016¢\u0006\u0004\bb\u0010cJ8\u0010b\u001a\u00020\u00162'\u0010\u001f\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0010¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00160]j\u0002`dH\u0016¢\u0006\u0004\bb\u0010eJ\u0017\u0010h\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020NH\u0000¢\u0006\u0004\bf\u0010gJv\u0010k\u001a\u00020\u0016\"\u0004\b\u0001\u0010(2\u0006\u0010*\u001a\u00028\u00012\u0006\u0010\n\u001a\u00020\t2O\b\u0002\u00101\u001aI\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(.\u0012\u0013\u0012\u00110/¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(0\u0012\u0004\u0012\u00020\u0016\u0018\u00010+H\u0000¢\u0006\u0004\bi\u0010jJ\u000f\u0010m\u001a\u00020\u0016H\u0000¢\u0006\u0004\bl\u0010<J|\u0010\u001a\u001a\u0004\u0018\u00010\u001e\"\b\b\u0001\u0010(*\u00028\u00002\u0006\u0010.\u001a\u00028\u00012\b\u00102\u001a\u0004\u0018\u00010\u001e2M\u00101\u001aI\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(.\u0012\u0013\u0012\u00110/¢\u0006\f\b,\u0012\b\b-\u0012\u0004\b\b(0\u0012\u0004\u0012\u00020\u0016\u0018\u00010+H\u0016¢\u0006\u0004\b\u001a\u0010nJ\u0019\u0010p\u001a\u0004\u0018\u00010\u001e2\u0006\u0010o\u001a\u00020\u0010H\u0016¢\u0006\u0004\bp\u0010qJ\u0017\u0010s\u001a\u00020\u00162\u0006\u0010r\u001a\u00020\u001eH\u0016¢\u0006\u0004\bs\u0010!J\u001b\u0010u\u001a\u00020\u0016*\u00020t2\u0006\u0010.\u001a\u00028\u0000H\u0016¢\u0006\u0004\bu\u0010vJ\u001f\u0010y\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00012\b\u0010\"\u001a\u0004\u0018\u00010\u001eH\u0010¢\u0006\u0004\bw\u0010xJ\u001b\u0010|\u001a\u0004\u0018\u00010\u00102\b\u0010\"\u001a\u0004\u0018\u00010\u001eH\u0010¢\u0006\u0004\bz\u0010{J\u000f\u0010~\u001a\u00020}H\u0016¢\u0006\u0004\b~\u0010\u007fJ\u0011\u0010\u0080\u0001\u001a\u00020}H\u0014¢\u0006\u0005\b\u0080\u0001\u0010\u007fR#\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00078\u0000X\u0080\u0004¢\u0006\u000f\n\u0005\b\b\u0010\u0081\u0001\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001R\u001d\u00100\u001a\u00020/8\u0016X\u0096\u0004¢\u0006\u000f\n\u0005\b0\u0010\u0084\u0001\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001R\u0018\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u001b8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0087\u0001\u0010\u001dR\u0016\u0010\u008a\u0001\u001a\u00020}8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0089\u0001\u0010\u007fR\u0017\u0010\"\u001a\u0004\u0018\u00010\u001e8@X\u0080\u0004¢\u0006\u0007\u001a\u0005\b\u008b\u0001\u0010DR\u0016\u0010\u008c\u0001\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u008c\u0001\u0010\u000fR\u0016\u0010\u008d\u0001\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u008d\u0001\u0010\u000fR\u0016\u0010\u008e\u0001\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u008e\u0001\u0010\u000fR\u001f\u0010\u0091\u0001\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u008f\u0001\u0010\u0090\u0001R\r\u0010\u0093\u0001\u001a\u00030\u0092\u00018\u0002X\u0082\u0004R\u0015\u0010\u0095\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u0094\u00018\u0002X\u0082\u0004R\u0015\u0010\u0096\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u0094\u00018\u0002X\u0082\u0004¨\u0006\u0097\u0001"}, d2 = {"Lkotlinx/coroutines/CancellableContinuationImpl;", "T", "Lkotlinx/coroutines/DispatchedTask;", "Lkotlinx/coroutines/CancellableContinuation;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/Waiter;", "Lkotlin/coroutines/Continuation;", "delegate", _UrlKt.FRAGMENT_ENCODE_SET, "resumeMode", "<init>", "(Lkotlin/coroutines/Continuation;I)V", _UrlKt.FRAGMENT_ENCODE_SET, "isReusable", "()Z", _UrlKt.FRAGMENT_ENCODE_SET, "cause", "cancelLater", "(Ljava/lang/Throwable;)Z", "Lkotlinx/coroutines/internal/Segment;", "segment", _UrlKt.FRAGMENT_ENCODE_SET, "callSegmentOnCancellation", "(Lkotlinx/coroutines/internal/Segment;Ljava/lang/Throwable;)V", "trySuspend", "tryResume", "Lkotlinx/coroutines/DisposableHandle;", "installParentHandle", "()Lkotlinx/coroutines/DisposableHandle;", _UrlKt.FRAGMENT_ENCODE_SET, "handler", "invokeOnCancellationImpl", "(Ljava/lang/Object;)V", "state", "multipleHandlersError", "(Ljava/lang/Object;Ljava/lang/Object;)V", "mode", "dispatchResume", "(I)V", "R", "Lkotlinx/coroutines/NotCompleted;", "proposedUpdate", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "value", "Lkotlin/coroutines/CoroutineContext;", "context", "onCancellation", "idempotent", "resumedState", "(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function3;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/Symbol;", "tryResumeImpl", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/internal/Symbol;", _UrlKt.FRAGMENT_ENCODE_SET, "alreadyResumedError", "(Ljava/lang/Object;)Ljava/lang/Void;", "detachChildIfNonReusable", "()V", "initCancellability", "resetStateReusable", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "takeState$kotlinx_coroutines_core", "()Ljava/lang/Object;", "takeState", "takenState", "cancelCompletedResult$kotlinx_coroutines_core", "(Ljava/lang/Object;Ljava/lang/Throwable;)V", "cancelCompletedResult", "cancel", "parentCancelled$kotlinx_coroutines_core", "(Ljava/lang/Throwable;)V", "parentCancelled", "Lkotlinx/coroutines/CancelHandler;", "callCancelHandler", "(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V", "callOnCancellation", "(Lkotlin/jvm/functions/Function3;Ljava/lang/Throwable;Ljava/lang/Object;)V", "Lkotlinx/coroutines/Job;", "parent", "getContinuationCancellationCause", "(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;", "getResult", "releaseClaimedReusableContinuation$kotlinx_coroutines_core", "releaseClaimedReusableContinuation", "Lkotlin/Result;", "result", "resumeWith", "Lkotlin/Function1;", "resume", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V", "index", "invokeOnCancellation", "(Lkotlinx/coroutines/internal/Segment;I)V", "Lkotlinx/coroutines/CompletionHandler;", "(Lkotlin/jvm/functions/Function1;)V", "invokeOnCancellationInternal$kotlinx_coroutines_core", "(Lkotlinx/coroutines/CancelHandler;)V", "invokeOnCancellationInternal", "resumeImpl$kotlinx_coroutines_core", "(Ljava/lang/Object;ILkotlin/jvm/functions/Function3;)V", "resumeImpl", "detachChild$kotlinx_coroutines_core", "detachChild", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "exception", "tryResumeWithException", "(Ljava/lang/Throwable;)Ljava/lang/Object;", "token", "completeResume", "Lkotlinx/coroutines/CoroutineDispatcher;", "resumeUndispatched", "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V", "getSuccessfulResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "getSuccessfulResult", "getExceptionalResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "getExceptionalResult", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "nameString", "Lkotlin/coroutines/Continuation;", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "getParentHandle", "parentHandle", "getStateDebugRepresentation", "stateDebugRepresentation", "getState$kotlinx_coroutines_core", "isActive", "isCompleted", "isCancelled", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "Lkotlinx/atomicfu/AtomicInt;", "_decisionAndIndex", "Lkotlinx/atomicfu/AtomicRef;", "_state", "_parentHandle", "kotlinx-coroutines-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@PublishedApi
@SourceDebugExtension({"SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImplKt\n+ 4 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,701:1\n227#1,10:705\n227#1,10:716\n1#2:702\n20#3:703\n20#3:704\n18#3:715\n17#3:726\n18#3,3:727\n17#3:730\n18#3,3:731\n18#3:738\n17#3,4:739\n57#4,2:734\n57#4,2:736\n57#4,2:743\n*S KotlinDebug\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n*L\n239#1:705,10\n244#1:716,10\n69#1:703\n155#1:704\n242#1:715\n271#1:726\n272#1:727,3\n281#1:730\n282#1:731,3\n387#1:738\n390#1:739,4\n323#1:734,2\n333#1:736,2\n614#1:743,2\n*E\n"})
public class CancellableContinuationImpl<T> extends DispatchedTask<T> implements CancellableContinuation<T>, CoroutineStackFrame, Waiter {
    private volatile /* synthetic */ int _decisionAndIndex$volatile;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;
    private final CoroutineContext context;
    private final Continuation<T> delegate;
    private static final /* synthetic */ AtomicIntegerFieldUpdater _decisionAndIndex$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(CancellableContinuationImpl.class, "_decisionAndIndex$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater _state$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(CancellableContinuationImpl.class, Object.class, "_state$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater _parentHandle$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(CancellableContinuationImpl.class, Object.class, "_parentHandle$volatile");

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Continuation<T> getDelegate$kotlinx_coroutines_core() {
        return this.delegate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CancellableContinuationImpl(Continuation<? super T> continuation, int i) {
        super(i);
        this.delegate = continuation;
        this.context = continuation.getContext();
        this._decisionAndIndex$volatile = 536870911;
        this._state$volatile = Active.INSTANCE;
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        return this.context;
    }

    private final DisposableHandle getParentHandle() {
        return (DisposableHandle) _parentHandle$volatile$FU.get(this);
    }

    public final Object getState$kotlinx_coroutines_core() {
        return _state$volatile$FU.get(this);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public boolean isActive() {
        return getState$kotlinx_coroutines_core() instanceof NotCompleted;
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public boolean isCompleted() {
        return !(getState$kotlinx_coroutines_core() instanceof NotCompleted);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public boolean isCancelled() {
        return getState$kotlinx_coroutines_core() instanceof CancelledContinuation;
    }

    private final String getStateDebugRepresentation() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        return state$kotlinx_coroutines_core instanceof NotCompleted ? "Active" : state$kotlinx_coroutines_core instanceof CancelledContinuation ? "Cancelled" : "Completed";
    }

    public void initCancellability() {
        DisposableHandle disposableHandleInstallParentHandle = installParentHandle();
        if (disposableHandleInstallParentHandle != null && isCompleted()) {
            disposableHandleInstallParentHandle.dispose();
            _parentHandle$volatile$FU.set(this, NonDisposableHandle.INSTANCE);
        }
    }

    private final boolean isReusable() {
        return DispatchedTaskKt.isReusableMode(this.resumeMode) && ((DispatchedContinuation) this.delegate).isReusable$kotlinx_coroutines_core();
    }

    @JvmName(name = "resetStateReusable")
    public final boolean resetStateReusable() {
        Object obj = _state$volatile$FU.get(this);
        if (!(obj instanceof CompletedContinuation) || ((CompletedContinuation) obj).idempotentResume == null) {
            _decisionAndIndex$volatile$FU.set(this, 536870911);
            _state$volatile$FU.set(this, Active.INSTANCE);
            return true;
        }
        detachChild$kotlinx_coroutines_core();
        return false;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.delegate;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public Object takeState$kotlinx_coroutines_core() {
        return getState$kotlinx_coroutines_core();
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public void cancelCompletedResult$kotlinx_coroutines_core(Object takenState, Throwable cause) {
        Throwable th;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof NotCompleted) {
                Segment$$ExternalSyntheticBUOutline1.m848m("Not completed");
                return;
            }
            if (obj instanceof CompletedExceptionally) {
                return;
            }
            if (obj instanceof CompletedContinuation) {
                CompletedContinuation completedContinuation = (CompletedContinuation) obj;
                if (completedContinuation.getCancelled()) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("Must be called at most once");
                    return;
                }
                Throwable th2 = cause;
                th = th2;
                if (AbstractC0324xc40028dd.m87m(_state$volatile$FU, this, obj, CompletedContinuation.copy$default(completedContinuation, null, null, null, null, th2, 15, null))) {
                    completedContinuation.invokeHandlers(this, th);
                    return;
                }
            } else {
                th = cause;
                if (AbstractC0324xc40028dd.m87m(_state$volatile$FU, this, obj, new CompletedContinuation(obj, null, null, null, th, 14, null))) {
                    return;
                }
            }
            cause = th;
        }
    }

    private final boolean cancelLater(Throwable cause) {
        if (isReusable()) {
            return ((DispatchedContinuation) this.delegate).postponeCancellation$kotlinx_coroutines_core(cause);
        }
        return false;
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public boolean cancel(Throwable cause) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof NotCompleted)) {
                return false;
            }
        } while (!AbstractC0324xc40028dd.m87m(_state$volatile$FU, this, obj, new CancelledContinuation(this, cause, (obj instanceof CancelHandler) || (obj instanceof Segment))));
        NotCompleted notCompleted = (NotCompleted) obj;
        if (notCompleted instanceof CancelHandler) {
            callCancelHandler((CancelHandler) obj, cause);
        } else if (notCompleted instanceof Segment) {
            callSegmentOnCancellation((Segment) obj, cause);
        }
        detachChildIfNonReusable();
        dispatchResume(this.resumeMode);
        return true;
    }

    public final void parentCancelled$kotlinx_coroutines_core(Throwable cause) {
        if (cancelLater(cause)) {
            return;
        }
        cancel(cause);
        detachChildIfNonReusable();
    }

    public final void callCancelHandler(CancelHandler handler, Throwable cause) {
        try {
            handler.invoke(cause);
        } catch (Throwable th) {
            CoroutineExceptionHandlerKt.handleCoroutineException(getContext(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th));
        }
    }

    private final void callSegmentOnCancellation(Segment<?> segment, Throwable cause) {
        int i = _decisionAndIndex$volatile$FU.get(this) & 536870911;
        if (i == 536870911) {
            Segment$$ExternalSyntheticBUOutline1.m848m("The index for Segment.onCancellation(..) is broken");
            return;
        }
        try {
            segment.onCancellation(i, cause, getContext());
        } catch (Throwable th) {
            CoroutineExceptionHandlerKt.handleCoroutineException(getContext(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> void callOnCancellation(Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> onCancellation, Throwable cause, R value) {
        try {
            onCancellation.invoke(cause, value, getContext());
        } catch (Throwable th) {
            CoroutineExceptionHandlerKt.handleCoroutineException(getContext(), new CompletionHandlerException("Exception in resume onCancellation handler for " + this, th));
        }
    }

    public Throwable getContinuationCancellationCause(Job parent) {
        return parent.getCancellationException();
    }

    private final boolean trySuspend() {
        int i;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _decisionAndIndex$volatile$FU;
        do {
            i = atomicIntegerFieldUpdater.get(this);
            int i2 = i >> 29;
            if (i2 != 0) {
                if (i2 == 2) {
                    return false;
                }
                Segment$$ExternalSyntheticBUOutline1.m848m("Already suspended");
                return false;
            }
        } while (!_decisionAndIndex$volatile$FU.compareAndSet(this, i, 536870912 + (536870911 & i)));
        return true;
    }

    private final boolean tryResume() {
        int i;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _decisionAndIndex$volatile$FU;
        do {
            i = atomicIntegerFieldUpdater.get(this);
            int i2 = i >> 29;
            if (i2 != 0) {
                if (i2 == 1) {
                    return false;
                }
                Segment$$ExternalSyntheticBUOutline1.m848m("Already resumed");
                return false;
            }
        } while (!_decisionAndIndex$volatile$FU.compareAndSet(this, i, TLObject.FLAG_30 + (536870911 & i)));
        return true;
    }

    @PublishedApi
    public final Object getResult() {
        Job job;
        boolean zIsReusable = isReusable();
        if (trySuspend()) {
            if (getParentHandle() == null) {
                installParentHandle();
            }
            if (zIsReusable) {
                releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            }
            return IntrinsicsKt.getCOROUTINE_SUSPENDED();
        }
        if (zIsReusable) {
            releaseClaimedReusableContinuation$kotlinx_coroutines_core();
        }
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            throw ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
        }
        if (DispatchedTaskKt.isCancellableMode(this.resumeMode) && (job = (Job) getContext().get(Job.INSTANCE)) != null && !job.isActive()) {
            CancellationException cancellationException = job.getCancellationException();
            cancelCompletedResult$kotlinx_coroutines_core(state$kotlinx_coroutines_core, cancellationException);
            throw cancellationException;
        }
        return getSuccessfulResult$kotlinx_coroutines_core(state$kotlinx_coroutines_core);
    }

    private final DisposableHandle installParentHandle() {
        Job job = (Job) getContext().get(Job.INSTANCE);
        if (job == null) {
            return null;
        }
        DisposableHandle disposableHandleInvokeOnCompletion$default = JobKt__JobKt.invokeOnCompletion$default(job, false, new ChildContinuation(this), 1, null);
        AbstractC0324xc40028dd.m87m(_parentHandle$volatile$FU, this, null, disposableHandleInvokeOnCompletion$default);
        return disposableHandleInvokeOnCompletion$default;
    }

    public final void releaseClaimedReusableContinuation$kotlinx_coroutines_core() {
        Throwable thTryReleaseClaimedContinuation$kotlinx_coroutines_core;
        Continuation<T> continuation = this.delegate;
        DispatchedContinuation dispatchedContinuation = continuation instanceof DispatchedContinuation ? (DispatchedContinuation) continuation : null;
        if (dispatchedContinuation == null || (thTryReleaseClaimedContinuation$kotlinx_coroutines_core = dispatchedContinuation.tryReleaseClaimedContinuation$kotlinx_coroutines_core(this)) == null) {
            return;
        }
        detachChild$kotlinx_coroutines_core();
        cancel(thTryReleaseClaimedContinuation$kotlinx_coroutines_core);
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object result) {
        resumeImpl$kotlinx_coroutines_core$default(this, CompletionStateKt.toState(result, this), this.resumeMode, null, 4, null);
    }

    /* JADX INFO: renamed from: $r8$lambda$l1v82JNL5Nl-KgSjI328OOjF67g, reason: not valid java name */
    public static Unit m4793$r8$lambda$l1v82JNL5NlKgSjI328OOjF67g(Function1 function1, Throwable th, Object obj, CoroutineContext coroutineContext) {
        function1.invoke(th);
        return Unit.INSTANCE;
    }

    public void resume(T value, final Function1<? super Throwable, Unit> onCancellation) {
        resumeImpl$kotlinx_coroutines_core(value, this.resumeMode, onCancellation != null ? new Function3() { // from class: kotlinx.coroutines.CancellableContinuationImpl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return CancellableContinuationImpl.m4793$r8$lambda$l1v82JNL5NlKgSjI328OOjF67g(onCancellation, (Throwable) obj, obj2, (CoroutineContext) obj3);
            }
        } : null);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public <R extends T> void resume(R value, Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> onCancellation) {
        resumeImpl$kotlinx_coroutines_core(value, this.resumeMode, onCancellation);
    }

    @Override // kotlinx.coroutines.Waiter
    public void invokeOnCancellation(Segment<?> segment, int index) {
        int i;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _decisionAndIndex$volatile$FU;
        do {
            i = atomicIntegerFieldUpdater.get(this);
            if ((i & 536870911) != 536870911) {
                Segment$$ExternalSyntheticBUOutline1.m848m("invokeOnCancellation should be called at most once");
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, ((i >> 29) << 29) + index));
        invokeOnCancellationImpl(segment);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void invokeOnCancellation(Function1<? super Throwable, Unit> handler) {
        CancellableContinuationKt.invokeOnCancellation(this, new CancelHandler.UserSupplied(handler));
    }

    public final void invokeOnCancellationInternal$kotlinx_coroutines_core(CancelHandler handler) {
        invokeOnCancellationImpl(handler);
    }

    private final void invokeOnCancellationImpl(Object handler) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof Active) {
                if (AbstractC0324xc40028dd.m87m(_state$volatile$FU, this, obj, handler)) {
                    return;
                }
            } else if ((obj instanceof CancelHandler) || (obj instanceof Segment)) {
                multipleHandlersError(handler, obj);
            } else {
                if (obj instanceof CompletedExceptionally) {
                    CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj;
                    if (!completedExceptionally.makeHandled()) {
                        multipleHandlersError(handler, obj);
                    }
                    if (obj instanceof CancelledContinuation) {
                        Throwable th = completedExceptionally.cause;
                        if (handler instanceof CancelHandler) {
                            callCancelHandler((CancelHandler) handler, th);
                            return;
                        } else {
                            callSegmentOnCancellation((Segment) handler, th);
                            return;
                        }
                    }
                    return;
                }
                if (obj instanceof CompletedContinuation) {
                    CompletedContinuation completedContinuation = (CompletedContinuation) obj;
                    if (completedContinuation.cancelHandler != null) {
                        multipleHandlersError(handler, obj);
                    }
                    if (handler instanceof Segment) {
                        return;
                    }
                    CancelHandler cancelHandler = (CancelHandler) handler;
                    if (completedContinuation.getCancelled()) {
                        callCancelHandler(cancelHandler, completedContinuation.cancelCause);
                        return;
                    } else {
                        if (AbstractC0324xc40028dd.m87m(_state$volatile$FU, this, obj, CompletedContinuation.copy$default(completedContinuation, null, cancelHandler, null, null, null, 29, null))) {
                            return;
                        }
                    }
                } else {
                    if (handler instanceof Segment) {
                        return;
                    }
                    if (AbstractC0324xc40028dd.m87m(_state$volatile$FU, this, obj, new CompletedContinuation(obj, (CancelHandler) handler, null, null, null, 28, null))) {
                        return;
                    }
                }
            }
        }
    }

    private final void multipleHandlersError(Object handler, Object state) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + handler + ", already has " + state).toString());
    }

    private final void dispatchResume(int mode) {
        if (tryResume()) {
            return;
        }
        DispatchedTaskKt.dispatch(this, mode);
    }

    private final <R> Object resumedState(NotCompleted state, R proposedUpdate, int resumeMode, Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> onCancellation, Object idempotent) {
        if (proposedUpdate instanceof CompletedExceptionally) {
            return proposedUpdate;
        }
        if ((DispatchedTaskKt.isCancellableMode(resumeMode) || idempotent != null) && !(onCancellation == null && !(state instanceof CancelHandler) && idempotent == null)) {
            return new CompletedContinuation(proposedUpdate, state instanceof CancelHandler ? (CancelHandler) state : null, onCancellation, idempotent, null, 16, null);
        }
        return proposedUpdate;
    }

    public static /* synthetic */ void resumeImpl$kotlinx_coroutines_core$default(CancellableContinuationImpl cancellableContinuationImpl, Object obj, int i, Function3 function3, int i2, Object obj2) {
        if (obj2 != null) {
            ByteString$$ExternalSyntheticBUOutline0.m838m("Super calls with default arguments not supported in this target, function: resumeImpl");
            return;
        }
        if ((i2 & 4) != 0) {
            function3 = null;
        }
        cancellableContinuationImpl.resumeImpl$kotlinx_coroutines_core(obj, i, function3);
    }

    public final <R> void resumeImpl$kotlinx_coroutines_core(R proposedUpdate, int resumeMode, Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> onCancellation) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof NotCompleted) {
                CancellableContinuationImpl<T> cancellableContinuationImpl = this;
                R r = proposedUpdate;
                int i = resumeMode;
                Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> function3 = onCancellation;
                if (AbstractC0324xc40028dd.m87m(_state$volatile$FU, cancellableContinuationImpl, obj, cancellableContinuationImpl.resumedState((NotCompleted) obj, r, i, function3, null))) {
                    cancellableContinuationImpl.detachChildIfNonReusable();
                    cancellableContinuationImpl.dispatchResume(i);
                    return;
                } else {
                    this = cancellableContinuationImpl;
                    proposedUpdate = r;
                    resumeMode = i;
                    onCancellation = function3;
                }
            } else {
                CancellableContinuationImpl<T> cancellableContinuationImpl2 = this;
                R r2 = proposedUpdate;
                Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> function32 = onCancellation;
                if (obj instanceof CancelledContinuation) {
                    CancelledContinuation cancelledContinuation = (CancelledContinuation) obj;
                    if (cancelledContinuation.makeResumed()) {
                        if (function32 != null) {
                            cancellableContinuationImpl2.callOnCancellation(function32, cancelledContinuation.cause, r2);
                            return;
                        }
                        return;
                    }
                }
                cancellableContinuationImpl2.alreadyResumedError(r2);
                InstantKt$$ExternalSyntheticBUOutline0.m813m();
                return;
            }
        }
    }

    private final <R> Symbol tryResumeImpl(R proposedUpdate, Object idempotent, Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> onCancellation) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof NotCompleted) {
                CancellableContinuationImpl<T> cancellableContinuationImpl = this;
                R r = proposedUpdate;
                Object obj2 = idempotent;
                Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> function3 = onCancellation;
                if (AbstractC0324xc40028dd.m87m(_state$volatile$FU, cancellableContinuationImpl, obj, cancellableContinuationImpl.resumedState((NotCompleted) obj, r, this.resumeMode, function3, obj2))) {
                    cancellableContinuationImpl.detachChildIfNonReusable();
                    return CancellableContinuationImplKt.RESUME_TOKEN;
                }
                this = cancellableContinuationImpl;
                proposedUpdate = r;
                onCancellation = function3;
                idempotent = obj2;
            } else {
                Object obj3 = idempotent;
                if ((obj instanceof CompletedContinuation) && obj3 != null && ((CompletedContinuation) obj).idempotentResume == obj3) {
                    return CancellableContinuationImplKt.RESUME_TOKEN;
                }
                return null;
            }
        }
    }

    private final Void alreadyResumedError(Object proposedUpdate) {
        throw new IllegalStateException(("Already resumed, but proposed with update " + proposedUpdate).toString());
    }

    private final void detachChildIfNonReusable() {
        if (isReusable()) {
            return;
        }
        detachChild$kotlinx_coroutines_core();
    }

    public final void detachChild$kotlinx_coroutines_core() {
        DisposableHandle parentHandle = getParentHandle();
        if (parentHandle == null) {
            return;
        }
        parentHandle.dispose();
        _parentHandle$volatile$FU.set(this, NonDisposableHandle.INSTANCE);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public <R extends T> Object tryResume(R value, Object idempotent, Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> onCancellation) {
        return tryResumeImpl(value, idempotent, onCancellation);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public Object tryResumeWithException(Throwable exception) {
        return tryResumeImpl(new CompletedExceptionally(exception, false, 2, null), null, null);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void completeResume(Object token) {
        dispatchResume(this.resumeMode);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public void resumeUndispatched(CoroutineDispatcher coroutineDispatcher, T t) {
        Continuation<T> continuation = this.delegate;
        DispatchedContinuation dispatchedContinuation = continuation instanceof DispatchedContinuation ? (DispatchedContinuation) continuation : null;
        resumeImpl$kotlinx_coroutines_core$default(this, t, (dispatchedContinuation != null ? dispatchedContinuation.dispatcher : null) == coroutineDispatcher ? 4 : this.resumeMode, null, 4, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.DispatchedTask
    public <T> T getSuccessfulResult$kotlinx_coroutines_core(Object state) {
        return state instanceof CompletedContinuation ? (T) ((CompletedContinuation) state).result : state;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public Throwable getExceptionalResult$kotlinx_coroutines_core(Object state) {
        Throwable exceptionalResult$kotlinx_coroutines_core = super.getExceptionalResult$kotlinx_coroutines_core(state);
        if (exceptionalResult$kotlinx_coroutines_core != null) {
            return exceptionalResult$kotlinx_coroutines_core;
        }
        return null;
    }

    public String toString() {
        return nameString() + '(' + DebugStringsKt.toDebugString(this.delegate) + "){" + getStateDebugRepresentation() + "}@" + DebugStringsKt.getHexAddress(this);
    }

    public String nameString() {
        return "CancellableContinuation";
    }
}
