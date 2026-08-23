package androidx.room;

import java.util.concurrent.RejectedExecutionException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.ThreadContextElementKt;

/* JADX INFO: loaded from: classes.dex */
abstract /* synthetic */ class RoomDatabaseKt__RoomDatabase_androidKt {
    public static final Object withTransactionContext(RoomDatabase roomDatabase, Function1 function1, Continuation continuation) {
        C0760x2e53b6b3 c0760x2e53b6b3 = new C0760x2e53b6b3(function1, null);
        TransactionElement transactionElement = (TransactionElement) continuation.getContext().get(TransactionElement.Key);
        ContinuationInterceptor transactionDispatcher$room_runtime = transactionElement != null ? transactionElement.getTransactionDispatcher$room_runtime() : null;
        if (transactionDispatcher$room_runtime != null) {
            return BuildersKt.withContext(transactionDispatcher$room_runtime, c0760x2e53b6b3, continuation);
        }
        return startTransactionCoroutine$RoomDatabaseKt__RoomDatabase_androidKt(roomDatabase, c0760x2e53b6b3, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineContext createTransactionContext$RoomDatabaseKt__RoomDatabase_androidKt(RoomDatabase roomDatabase, ContinuationInterceptor continuationInterceptor) {
        CoroutineContext coroutineContextPlus = continuationInterceptor.plus(new TransactionElement(continuationInterceptor));
        return coroutineContextPlus.plus(ThreadContextElementKt.asContextElement(roomDatabase.getSuspendingTransactionContext(), coroutineContextPlus));
    }

    public static final Object compatTransactionCoroutineExecute(RoomDatabase roomDatabase, Function1 function1, Continuation continuation) {
        if (roomDatabase.inCompatibilityMode() && roomDatabase.isOpenInternal$room_runtime() && roomDatabase.inTransaction()) {
            return function1.invoke(continuation);
        }
        if (continuation.getContext().get(RoomExternalOperationElement.INSTANCE) == null) {
            return function1.invoke(continuation);
        }
        return RoomDatabaseKt.withTransactionContext(roomDatabase, function1, continuation);
    }

    private static final Object startTransactionCoroutine$RoomDatabaseKt__RoomDatabase_androidKt(final RoomDatabase roomDatabase, final Function2 function2, Continuation continuation) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        try {
            roomDatabase.getTransactionExecutor().execute(new Runnable() { // from class: androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1

                /* JADX INFO: renamed from: androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1$1, reason: invalid class name */
                static final class AnonymousClass1 extends SuspendLambda implements Function2 {
                    final /* synthetic */ CancellableContinuation $continuation;
                    final /* synthetic */ RoomDatabase $this_startTransactionCoroutine;
                    final /* synthetic */ Function2 $transactionBlock;
                    private /* synthetic */ Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass1(RoomDatabase roomDatabase, CancellableContinuation cancellableContinuation, Function2 function2, Continuation continuation) {
                        super(2, continuation);
                        this.$this_startTransactionCoroutine = roomDatabase;
                        this.$continuation = cancellableContinuation;
                        this.$transactionBlock = function2;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation create(Object obj, Continuation continuation) {
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_startTransactionCoroutine, this.$continuation, this.$transactionBlock, continuation);
                        anonymousClass1.L$0 = obj;
                        return anonymousClass1;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                        return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        Continuation continuation;
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i = this.label;
                        if (i == 0) {
                            ResultKt.throwOnFailure(obj);
                            CoroutineContext.Element element = ((CoroutineScope) this.L$0).getCoroutineContext().get(ContinuationInterceptor.Key);
                            Intrinsics.checkNotNull(element);
                            CoroutineContext coroutineContextCreateTransactionContext$RoomDatabaseKt__RoomDatabase_androidKt = RoomDatabaseKt__RoomDatabase_androidKt.createTransactionContext$RoomDatabaseKt__RoomDatabase_androidKt(this.$this_startTransactionCoroutine, (ContinuationInterceptor) element);
                            CancellableContinuation cancellableContinuation = this.$continuation;
                            Result.Companion companion = Result.Companion;
                            Function2 function2 = this.$transactionBlock;
                            this.L$0 = cancellableContinuation;
                            this.label = 1;
                            obj = BuildersKt.withContext(coroutineContextCreateTransactionContext$RoomDatabaseKt__RoomDatabase_androidKt, function2, this);
                            if (obj == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            continuation = cancellableContinuation;
                        } else {
                            if (i != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            continuation = (Continuation) this.L$0;
                            ResultKt.throwOnFailure(obj);
                        }
                        continuation.resumeWith(Result.m3604constructorimpl(obj));
                        return Unit.INSTANCE;
                    }
                }

                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        BuildersKt.runBlocking(cancellableContinuationImpl.getContext().minusKey(ContinuationInterceptor.Key), new AnonymousClass1(roomDatabase, cancellableContinuationImpl, function2, null));
                    } catch (Throwable th) {
                        cancellableContinuationImpl.cancel(th);
                    }
                }
            });
        } catch (RejectedExecutionException e) {
            cancellableContinuationImpl.cancel(new IllegalStateException("Unable to acquire a thread to perform the database transaction.", e));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
