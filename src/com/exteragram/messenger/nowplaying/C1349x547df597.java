package com.exteragram.messenger.nowplaying;

import com.exteragram.messenger.api.dto.NowPlayingDTO;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: renamed from: com.exteragram.messenger.nowplaying.NowPlayingController$getCurrentPlayingTrack$1$savedTrackDeferred$1 */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/exteragram/messenger/api/dto/NowPlayingDTO;", "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(m872c = "com.exteragram.messenger.nowplaying.NowPlayingController$getCurrentPlayingTrack$1$savedTrackDeferred$1", m873f = "NowPlayingController.kt", m874i = {}, m875l = {103}, m876m = "invokeSuspend", m877n = {}, m878s = {})
public final class C1349x547df597 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super NowPlayingDTO>, Object> {
    final /* synthetic */ TLRPC.Document $savedMusic;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1349x547df597(TLRPC.Document document, Continuation<? super C1349x547df597> continuation) {
        super(2, continuation);
        this.$savedMusic = document;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new C1349x547df597(this.$savedMusic, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super NowPlayingDTO> continuation) {
        return ((C1349x547df597) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        NowPlayingController nowPlayingController = NowPlayingController.INSTANCE;
        TLRPC.Document document = this.$savedMusic;
        this.label = 1;
        Object objProcessSavedMusic = nowPlayingController.processSavedMusic(document, this);
        return objProcessSavedMusic == coroutine_suspended ? coroutine_suspended : objProcessSavedMusic;
    }
}
