package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import android.util.Log;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl;
import androidx.camera.core.Logger;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.Deferred;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/Deferred;", _UrlKt.FRAGMENT_ENCODE_SET}, m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$removeParametersAsync$1$1", m766f = "UseCaseCameraRequestControl.kt", m767i = {}, m768l = {394}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
@SourceDebugExtension({"SMAP\nUseCaseCameraRequestControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$removeParametersAsync$1$1\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,742:1\n85#2,4:743\n384#3,7:747\n*S KotlinDebug\n*F\n+ 1 UseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$removeParametersAsync$1$1\n*L\n389#1:743,4\n392#1:747,7\n*E\n"})
public final class UseCaseCameraRequestControlImpl$removeParametersAsync$1$1 extends SuspendLambda implements Function1<Continuation<? super Deferred<? extends Unit>>, Object> {
    final /* synthetic */ List<CaptureRequest.Key<?>> $keys;
    final /* synthetic */ UseCaseCameraRequestControl.Type $type;
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public UseCaseCameraRequestControlImpl$removeParametersAsync$1$1(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, UseCaseCameraRequestControl.Type type, List<? extends CaptureRequest.Key<?>> list, Continuation<? super UseCaseCameraRequestControlImpl$removeParametersAsync$1$1> continuation) {
        super(1, continuation);
        this.this$0 = useCaseCameraRequestControlImpl;
        this.$type = type;
        this.$keys = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new UseCaseCameraRequestControlImpl$removeParametersAsync$1$1(this.this$0, this.$type, this.$keys, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Deferred<? extends Unit>> continuation) {
        return invoke2((Continuation<? super Deferred<Unit>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(Continuation<? super Deferred<Unit>> continuation) {
        return ((UseCaseCameraRequestControlImpl$removeParametersAsync$1$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
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
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        UseCaseCameraRequestControl.Type type = this.$type;
        List<CaptureRequest.Key<?>> list = this.$keys;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl#removeParametersAsync: [" + type + "] keys = " + list);
        }
        Map map = this.this$0.infoBundleMap;
        UseCaseCameraRequestControl.Type type2 = this.$type;
        Object obj2 = map.get(type2);
        if (obj2 == null) {
            UseCaseCameraRequestControlImpl.InfoBundle infoBundle = new UseCaseCameraRequestControlImpl.InfoBundle(null, null, null, null, 15, null);
            map.put(type2, infoBundle);
            obj2 = infoBundle;
        }
        this.this$0.infoBundleMap.put(this.$type, this.this$0.withoutParameters((UseCaseCameraRequestControlImpl.InfoBundle) obj2, this.$keys));
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.this$0;
        UseCaseCameraRequestControlImpl.InfoBundle infoBundleMerge = useCaseCameraRequestControlImpl.merge(useCaseCameraRequestControlImpl.infoBundleMap);
        this.label = 1;
        Object objUpdateCameraStateAsync$default = UseCaseCameraRequestControlImpl.updateCameraStateAsync$default(useCaseCameraRequestControlImpl, infoBundleMerge, null, this, 1, null);
        return objUpdateCameraStateAsync$default == coroutine_suspended ? coroutine_suspended : objUpdateCameraStateAsync$default;
    }
}
