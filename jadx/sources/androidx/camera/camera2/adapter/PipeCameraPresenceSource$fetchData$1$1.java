package androidx.camera.camera2.adapter;

import android.util.Log;
import androidx.camera.core.CameraIdentifier;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.ArrayList;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
final class PipeCameraPresenceSource$fetchData$1$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ CallbackToFutureAdapter.Completer $completer;
    int label;
    final /* synthetic */ PipeCameraPresenceSource this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PipeCameraPresenceSource$fetchData$1$1(PipeCameraPresenceSource pipeCameraPresenceSource, CallbackToFutureAdapter.Completer completer, Continuation continuation) {
        super(2, continuation);
        this.this$0 = pipeCameraPresenceSource;
        this.$completer = completer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PipeCameraPresenceSource$fetchData$1$1(this.this$0, this.$completer, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((PipeCameraPresenceSource$fetchData$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            try {
                String[] cameraIdList = this.this$0.cameraManager.getCameraIdList();
                Intrinsics.checkNotNullExpressionValue(cameraIdList, "getCameraIdList(...)");
                ArrayList arrayList = new ArrayList();
                for (String str : cameraIdList) {
                    CameraIdentifier cameraIdentifierCreate$default = null;
                    try {
                        Intrinsics.checkNotNull(str);
                        cameraIdentifierCreate$default = CameraIdentifier.Factory.create$default(str, null, null, 6, null);
                    } catch (IllegalArgumentException e) {
                        Log.w("PipePresenceSrc", "Could not create CameraIdentifier for system ID: " + str, e);
                    }
                    if (cameraIdentifierCreate$default != null) {
                        arrayList.add(cameraIdentifierCreate$default);
                    }
                }
                Log.d("PipePresenceSrc", "[FetchData] Refreshed camera list from hardware: " + arrayList);
                this.this$0.updateData(arrayList);
                this.$completer.set(arrayList);
            } catch (Exception e2) {
                Log.e("PipePresenceSrc", "[FetchData] Failed to refresh camera list from hardware.", e2);
                this.this$0.updateError(e2);
                this.$completer.setException(e2);
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
