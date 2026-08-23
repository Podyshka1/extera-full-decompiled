package androidx.datastore.core;

import java.io.File;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ProducerScope;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0002H\u008a@"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/channels/ProducerScope;"}, m754k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(m765c = "androidx.datastore.core.MulticastFileObserver$Companion$observe$1", m766f = "MulticastFileObserver.android.kt", m767i = {0, 0}, m768l = {84, 85}, m769m = "invokeSuspend", m770n = {"$this$channelFlow", "disposeListener"}, m771s = {"L$0", "L$1"})
public final class MulticastFileObserver$Companion$observe$1 extends SuspendLambda implements Function2<ProducerScope<? super Unit>, Continuation<? super Unit>, Object> {
    final /* synthetic */ File $file;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MulticastFileObserver$Companion$observe$1(File file, Continuation<? super MulticastFileObserver$Companion$observe$1> continuation) {
        super(2, continuation);
        this.$file = file;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MulticastFileObserver$Companion$observe$1 multicastFileObserver$Companion$observe$1 = new MulticastFileObserver$Companion$observe$1(this.$file, continuation);
        multicastFileObserver$Companion$observe$1.L$0 = obj;
        return multicastFileObserver$Companion$observe$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super Unit> producerScope, Continuation<? super Unit> continuation) {
        return ((MulticastFileObserver$Companion$observe$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x005e, code lost:
    
        if (kotlinx.coroutines.channels.ProduceKt.awaitClose(r4, r8, r7) == r0) goto L16;
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
            disposableHandleObserve = MulticastFileObserver.INSTANCE.observe(this.$file.getParentFile(), new Function1<String, Unit>() { // from class: androidx.datastore.core.MulticastFileObserver$Companion$observe$1$flowObserver$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                    invoke2(str);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(String str) {
                    if (Intrinsics.areEqual(str, file.getName())) {
                        ChannelsKt.trySendBlocking(producerScope2, Unit.INSTANCE);
                    }
                }
            });
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
            if (i == 2) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        disposableHandleObserve = (DisposableHandle) this.L$1;
        producerScope = (ProducerScope) this.L$0;
        ResultKt.throwOnFailure(obj);
        Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.datastore.core.MulticastFileObserver$Companion$observe$1.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                disposableHandleObserve.dispose();
            }
        };
        this.L$0 = null;
        this.L$1 = null;
        this.label = 2;
    }
}
