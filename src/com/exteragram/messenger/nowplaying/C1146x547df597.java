package com.exteragram.messenger.nowplaying;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: renamed from: com.exteragram.messenger.nowplaying.NowPlayingController$getCurrentPlayingTrack$1$savedTrackDeferred$1 */
/* JADX INFO: loaded from: classes.dex */
final class C1146x547df597 extends SuspendLambda implements Function2 {
    final /* synthetic */ TLRPC.Document $savedMusic;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1146x547df597(TLRPC.Document document, Continuation continuation) {
        super(2, continuation);
        this.$savedMusic = document;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C1146x547df597(this.$savedMusic, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((C1146x547df597) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
        NowPlayingController nowPlayingController = NowPlayingController.INSTANCE;
        TLRPC.Document document = this.$savedMusic;
        this.label = 1;
        Object objProcessSavedMusic = nowPlayingController.processSavedMusic(document, this);
        return objProcessSavedMusic == coroutine_suspended ? coroutine_suspended : objProcessSavedMusic;
    }
}
