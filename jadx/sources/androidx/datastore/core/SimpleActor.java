package androidx.datastore.core;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.ClosedSendChannelException;

/* JADX INFO: loaded from: classes.dex */
public final class SimpleActor {
    private final Function2 consumeMessage;
    private final Channel messageQueue;
    private final AtomicInt remainingMessages;
    private final CoroutineScope scope;

    public SimpleActor(CoroutineScope scope, final Function1 onComplete, final Function2 onUndeliveredElement, Function2 consumeMessage) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(onComplete, "onComplete");
        Intrinsics.checkNotNullParameter(onUndeliveredElement, "onUndeliveredElement");
        Intrinsics.checkNotNullParameter(consumeMessage, "consumeMessage");
        this.scope = scope;
        this.consumeMessage = consumeMessage;
        this.messageQueue = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
        this.remainingMessages = new AtomicInt(0);
        Job job = (Job) scope.getCoroutineContext().get(Job.Key);
        if (job != null) {
            job.invokeOnCompletion(new Function1() { // from class: androidx.datastore.core.SimpleActor.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((Throwable) obj);
                    return Unit.INSTANCE;
                }

                public final void invoke(Throwable th) {
                    Unit unit;
                    onComplete.invoke(th);
                    this.messageQueue.close(th);
                    do {
                        Object objM3677getOrNullimpl = ChannelResult.m3677getOrNullimpl(this.messageQueue.mo3669tryReceivePtdJZtk());
                        if (objM3677getOrNullimpl != null) {
                            onUndeliveredElement.invoke(objM3677getOrNullimpl, th);
                            unit = Unit.INSTANCE;
                        } else {
                            unit = null;
                        }
                    } while (unit != null);
                }
            });
        }
    }

    public final void offer(Object obj) {
        Object objMo3670trySendJP2dKIU = this.messageQueue.mo3670trySendJP2dKIU(obj);
        if (objMo3670trySendJP2dKIU instanceof ChannelResult.Closed) {
            Throwable thM3676exceptionOrNullimpl = ChannelResult.m3676exceptionOrNullimpl(objMo3670trySendJP2dKIU);
            if (thM3676exceptionOrNullimpl != null) {
                throw thM3676exceptionOrNullimpl;
            }
            throw new ClosedSendChannelException("Channel was closed normally");
        }
        if (!ChannelResult.m3681isSuccessimpl(objMo3670trySendJP2dKIU)) {
            throw new IllegalStateException("Check failed.");
        }
        if (this.remainingMessages.getAndIncrement() == 0) {
            BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new C05302(null), 3, null);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.SimpleActor$offer$2 */
    static final class C05302 extends SuspendLambda implements Function2 {
        Object L$0;
        int label;

        C05302(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return SimpleActor.this.new C05302(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C05302) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x005a, code lost:
        
            if (r1.invoke(r6, r5) != r0) goto L18;
         */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0051 A[PHI: r1 r6
  0x0051: PHI (r1v1 kotlin.jvm.functions.Function2) = (r1v2 kotlin.jvm.functions.Function2), (r1v4 kotlin.jvm.functions.Function2) binds: [B:13:0x004e, B:9:0x001a] A[DONT_GENERATE, DONT_INLINE]
  0x0051: PHI (r6v5 java.lang.Object) = (r6v12 java.lang.Object), (r6v0 java.lang.Object) binds: [B:13:0x004e, B:9:0x001a] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x005a -> B:18:0x005d). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Function2 function2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (SimpleActor.this.remainingMessages.get() <= 0) {
                    throw new IllegalStateException("Check failed.");
                }
                CoroutineScopeKt.ensureActive(SimpleActor.this.scope);
                function2 = SimpleActor.this.consumeMessage;
                Channel channel = SimpleActor.this.messageQueue;
                this.L$0 = function2;
                this.label = 1;
                obj = channel.receive(this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                if (SimpleActor.this.remainingMessages.decrementAndGet() == 0) {
                    return Unit.INSTANCE;
                }
                CoroutineScopeKt.ensureActive(SimpleActor.this.scope);
                function2 = SimpleActor.this.consumeMessage;
                Channel channel2 = SimpleActor.this.messageQueue;
                this.L$0 = function2;
                this.label = 1;
                obj = channel2.receive(this);
                if (obj != coroutine_suspended) {
                    this.L$0 = null;
                    this.label = 2;
                }
                return coroutine_suspended;
            }
            function2 = (Function2) this.L$0;
            ResultKt.throwOnFailure(obj);
            this.L$0 = null;
            this.label = 2;
        }
    }
}
