package androidx.datastore.core;

import androidx.datastore.core.MulticastFileObserver;
import java.io.File;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: loaded from: classes.dex */
final class MulticastFileObserver$Companion$observe$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ File $file;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MulticastFileObserver$Companion$observe$1(File file, Continuation continuation) {
        super(2, continuation);
        this.$file = file;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        MulticastFileObserver$Companion$observe$1 multicastFileObserver$Companion$observe$1 = new MulticastFileObserver$Companion$observe$1(this.$file, continuation);
        multicastFileObserver$Companion$observe$1.L$0 = obj;
        return multicastFileObserver$Companion$observe$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope producerScope, Continuation continuation) {
        return ((MulticastFileObserver$Companion$observe$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0063, code lost:
    
        if (kotlinx.coroutines.channels.ProduceKt.awaitClose(r3, r7, r6) == r0) goto L16;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        final DisposableHandle disposableHandleObserve;
        ProducerScope producerScope;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope2 = (ProducerScope) this.L$0;
            final File file = this.$file;
            Function1 function1 = new Function1() { // from class: androidx.datastore.core.MulticastFileObserver$Companion$observe$1$flowObserver$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    invoke((String) obj2);
                    return Unit.INSTANCE;
                }

                public final void invoke(String str) {
                    if (Intrinsics.areEqual(str, file.getName())) {
                        ChannelsKt.trySendBlocking(producerScope2, Unit.INSTANCE);
                    }
                }
            };
            MulticastFileObserver.Companion companion = MulticastFileObserver.Companion;
            File parentFile = this.$file.getParentFile();
            Intrinsics.checkNotNull(parentFile);
            disposableHandleObserve = companion.observe(parentFile, function1);
            Unit unit = Unit.INSTANCE;
            this.L$0 = producerScope2;
            this.L$1 = disposableHandleObserve;
            this.label = 1;
            if (producerScope2.send(unit, this) != coroutine_suspended) {
                producerScope = producerScope2;
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
        disposableHandleObserve = (DisposableHandle) this.L$1;
        producerScope = (ProducerScope) this.L$0;
        ResultKt.throwOnFailure(obj);
        Function0 function0 = new Function0() { // from class: androidx.datastore.core.MulticastFileObserver$Companion$observe$1.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m2104invoke();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m2104invoke() {
                disposableHandleObserve.dispose();
            }
        };
        this.L$0 = null;
        this.L$1 = null;
        this.label = 2;
    }
}
