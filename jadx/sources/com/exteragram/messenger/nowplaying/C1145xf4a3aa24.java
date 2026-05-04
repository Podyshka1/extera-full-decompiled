package com.exteragram.messenger.nowplaying;

import com.exteragram.messenger.api.dto.NowPlayingDTO;
import com.exteragram.messenger.api.network.ApiClient;
import com.exteragram.messenger.api.network.ApiService;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.telegram.messenger.FileLog;
import retrofit2.Response;

/* JADX INFO: renamed from: com.exteragram.messenger.nowplaying.NowPlayingController$getCurrentPlayingTrack$1$liveTrackDeferred$1 */
/* JADX INFO: loaded from: classes.dex */
final class C1145xf4a3aa24 extends SuspendLambda implements Function2 {
    final /* synthetic */ boolean $checkApi;
    final /* synthetic */ long $userId;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1145xf4a3aa24(boolean z, long j, Continuation continuation) {
        super(2, continuation);
        this.$checkApi = z;
        this.$userId = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C1145xf4a3aa24(this.$checkApi, this.$userId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((C1145xf4a3aa24) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (!this.$checkApi) {
                    return null;
                }
                ApiService apiService = ApiClient.INSTANCE.getApiService();
                long j = this.$userId;
                this.label = 1;
                obj = apiService.getCurrentPlayingTrack(j, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            Response response = (Response) obj;
            if (response.isSuccessful()) {
                return (NowPlayingDTO) response.body();
            }
            return null;
        } catch (Throwable th) {
            FileLog.m1136e(th);
            return null;
        }
    }
}
