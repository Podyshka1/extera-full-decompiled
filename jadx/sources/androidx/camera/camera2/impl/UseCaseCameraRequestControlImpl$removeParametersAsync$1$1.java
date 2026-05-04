package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl;
import androidx.camera.core.Logger;
import java.util.List;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
final class UseCaseCameraRequestControlImpl$removeParametersAsync$1$1 extends SuspendLambda implements Function1 {
    final /* synthetic */ List $keys;
    final /* synthetic */ UseCaseCameraRequestControl.Type $type;
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UseCaseCameraRequestControlImpl$removeParametersAsync$1$1(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, UseCaseCameraRequestControl.Type type, List list, Continuation continuation) {
        super(1, continuation);
        this.this$0 = useCaseCameraRequestControlImpl;
        this.$type = type;
        this.$keys = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new UseCaseCameraRequestControlImpl$removeParametersAsync$1$1(this.this$0, this.$type, this.$keys, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation continuation) {
        return ((UseCaseCameraRequestControlImpl$removeParametersAsync$1$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
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
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        UseCaseCameraRequestControl.Type type = this.$type;
        List list = this.$keys;
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
