package kotlinx.coroutines.tasks;

import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a \u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0086@¢\u0006\u0004\b\u0002\u0010\u0003\u001a*\u0010\u0006\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0082@¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"T", "Lcom/google/android/gms/tasks/Task;", "await", "(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/google/android/gms/tasks/CancellationTokenSource;", "cancellationTokenSource", "awaitImpl", "(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-play-services"}, m754k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTasks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tasks.kt\nkotlinx/coroutines/tasks/TasksKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,164:1\n426#2,11:165\n*S KotlinDebug\n*F\n+ 1 Tasks.kt\nkotlinx/coroutines/tasks/TasksKt\n*L\n136#1:165,11\n*E\n"})
public abstract class TasksKt {
    public static final <T> Object await(Task<T> task, Continuation<? super T> continuation) {
        return awaitImpl(task, null, continuation);
    }

    private static final <T> Object awaitImpl(Task<T> task, final CancellationTokenSource cancellationTokenSource, Continuation<? super T> continuation) throws Exception {
        if (task.isComplete()) {
            Exception exception = task.getException();
            if (exception == null) {
                if (task.isCanceled()) {
                    throw new CancellationException("Task " + task + " was cancelled normally.");
                }
                return task.getResult();
            }
            throw exception;
        }
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        task.addOnCompleteListener(DirectExecutor.INSTANCE, new OnCompleteListener() { // from class: kotlinx.coroutines.tasks.TasksKt$awaitImpl$2$1
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task<T> task2) {
                Exception exception2 = task2.getException();
                if (exception2 == null) {
                    boolean zIsCanceled = task2.isCanceled();
                    CancellableContinuation<T> cancellableContinuation = cancellableContinuationImpl;
                    if (zIsCanceled) {
                        CancellableContinuation.DefaultImpls.cancel$default(cancellableContinuation, null, 1, null);
                        return;
                    } else {
                        Result.Companion companion = Result.INSTANCE;
                        cancellableContinuation.resumeWith(Result.m3291constructorimpl(task2.getResult()));
                        return;
                    }
                }
                Continuation continuation2 = cancellableContinuationImpl;
                Result.Companion companion2 = Result.INSTANCE;
                continuation2.resumeWith(Result.m3291constructorimpl(ResultKt.createFailure(exception2)));
            }
        });
        if (cancellationTokenSource != null) {
            cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.tasks.TasksKt$awaitImpl$2$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable th) {
                    cancellationTokenSource.cancel();
                }
            });
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
