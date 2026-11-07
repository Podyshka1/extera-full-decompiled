package androidx.camera.camera2.adapter;

import android.util.Log;
import androidx.camera.core.CameraIdentifier;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m920c = "androidx.camera.camera2.adapter.PipeCameraPresenceSource$fetchData$1$1", m921f = "PipeCameraPresenceSource.kt", m922i = {}, m923l = {}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
@SourceDebugExtension({"SMAP\nPipeCameraPresenceSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PipeCameraPresenceSource.kt\nandroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,151:1\n11546#2,9:152\n13472#2:161\n13473#2:163\n11555#2:164\n1#3:162\n*S KotlinDebug\n*F\n+ 1 PipeCameraPresenceSource.kt\nandroidx/camera/camera2/adapter/PipeCameraPresenceSource$fetchData$1$1\n*L\n121#1:152,9\n121#1:161\n121#1:163\n121#1:164\n121#1:162\n*E\n"})
public final class PipeCameraPresenceSource$fetchData$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ CallbackToFutureAdapter.Completer<List<CameraIdentifier>> $completer;
    int label;
    final /* synthetic */ PipeCameraPresenceSource this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PipeCameraPresenceSource$fetchData$1$1(PipeCameraPresenceSource pipeCameraPresenceSource, CallbackToFutureAdapter.Completer<List<CameraIdentifier>> completer, Continuation<? super PipeCameraPresenceSource$fetchData$1$1> continuation) {
        super(2, continuation);
        this.this$0 = pipeCameraPresenceSource;
        this.$completer = completer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PipeCameraPresenceSource$fetchData$1$1(this.this$0, this.$completer, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((PipeCameraPresenceSource$fetchData$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CameraIdentifier cameraIdentifierCreate$default;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            try {
                String[] cameraIdList = this.this$0.cameraManager.getCameraIdList();
                ArrayList arrayList = new ArrayList();
                for (String str : cameraIdList) {
                    try {
                        cameraIdentifierCreate$default = CameraIdentifier.Factory.create$default(str, null, null, 6, null);
                    } catch (IllegalArgumentException e) {
                        Log.w("PipePresenceSrc", "Could not create CameraIdentifier for system ID: " + str, e);
                        cameraIdentifierCreate$default = null;
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
        Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
