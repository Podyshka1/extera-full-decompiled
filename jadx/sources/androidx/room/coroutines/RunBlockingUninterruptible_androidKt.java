package androidx.room.coroutines;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.GlobalScope;

/* JADX INFO: loaded from: classes.dex */
public abstract class RunBlockingUninterruptible_androidKt {
    public static final Object runBlockingUninterruptible(Function2 block) {
        Intrinsics.checkNotNullParameter(block, "block");
        Thread.interrupted();
        return BuildersKt__BuildersKt.runBlocking$default(null, new C07821(block, null), 1, null);
    }

    /* JADX INFO: renamed from: androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1 */
    static final class C07821 extends SuspendLambda implements Function2 {
        final /* synthetic */ Function2 $block;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C07821(Function2 function2, Continuation continuation) {
            super(2, continuation);
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C07821 c07821 = new C07821(this.$block, continuation);
            c07821.L$0 = obj;
            return c07821;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C07821) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            CoroutineContext.Element element = ((CoroutineScope) this.L$0).getCoroutineContext().get(ContinuationInterceptor.Key);
            Intrinsics.checkNotNull(element);
            ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) element;
            CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            BuildersKt.launch(GlobalScope.INSTANCE, continuationInterceptor, CoroutineStart.UNDISPATCHED, new AnonymousClass1(completableDeferredCompletableDeferred$default, this.$block, null));
            while (!completableDeferredCompletableDeferred$default.isCompleted()) {
                try {
                    return BuildersKt.runBlocking(continuationInterceptor, new AnonymousClass2(completableDeferredCompletableDeferred$default, null));
                } catch (InterruptedException unused) {
                }
            }
            return completableDeferredCompletableDeferred$default.getCompleted();
        }

        /* JADX INFO: renamed from: androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$1, reason: invalid class name */
        static final class AnonymousClass1 extends SuspendLambda implements Function2 {
            final /* synthetic */ Function2 $block;
            final /* synthetic */ CompletableDeferred $deferred;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(CompletableDeferred completableDeferred, Function2 function2, Continuation continuation) {
                super(2, continuation);
                this.$deferred = completableDeferred;
                this.$block = function2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$deferred, this.$block, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CompletableDeferred completableDeferred;
                Object objM3604constructorimpl;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                    CompletableDeferred completableDeferred2 = this.$deferred;
                    Function2 function2 = this.$block;
                    try {
                        Result.Companion companion = Result.Companion;
                        this.L$0 = completableDeferred2;
                        this.label = 1;
                        obj = function2.invoke(coroutineScope, this);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        completableDeferred = completableDeferred2;
                    } catch (Throwable th) {
                        th = th;
                        completableDeferred = completableDeferred2;
                        Result.Companion companion2 = Result.Companion;
                        objM3604constructorimpl = Result.m3604constructorimpl(ResultKt.createFailure(th));
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    completableDeferred = (CompletableDeferred) this.L$0;
                    try {
                        ResultKt.throwOnFailure(obj);
                    } catch (Throwable th2) {
                        th = th2;
                        Result.Companion companion22 = Result.Companion;
                        objM3604constructorimpl = Result.m3604constructorimpl(ResultKt.createFailure(th));
                    }
                }
                objM3604constructorimpl = Result.m3604constructorimpl(obj);
                CompletableDeferredKt.completeWith(completableDeferred, objM3604constructorimpl);
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$2, reason: invalid class name */
        /* JADX INFO: loaded from: classes4.dex */
        static final class AnonymousClass2 extends SuspendLambda implements Function2 {
            final /* synthetic */ CompletableDeferred $deferred;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(CompletableDeferred completableDeferred, Continuation continuation) {
                super(2, continuation);
                this.$deferred = completableDeferred;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass2(this.$deferred, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                ResultKt.throwOnFailure(obj);
                CompletableDeferred completableDeferred = this.$deferred;
                this.label = 1;
                Object objAwait = completableDeferred.await(this);
                return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
            }
        }
    }
}
