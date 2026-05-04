package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.Config;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
final class UseCaseCameraRequestControlImpl$updateCamera2ConfigAsync$1$1 extends SuspendLambda implements Function1 {
    final /* synthetic */ Config $config;
    final /* synthetic */ Map $tags;
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UseCaseCameraRequestControlImpl$updateCamera2ConfigAsync$1$1(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, Config config, Map map, Continuation continuation) {
        super(1, continuation);
        this.this$0 = useCaseCameraRequestControlImpl;
        this.$config = config;
        this.$tags = map;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new UseCaseCameraRequestControlImpl$updateCamera2ConfigAsync$1$1(this.this$0, this.$config, this.$tags, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation continuation) {
        return ((UseCaseCameraRequestControlImpl$updateCamera2ConfigAsync$1$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
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
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl#updateCamera2ConfigAsync");
        }
        this.this$0.infoBundleMap.put(UseCaseCameraRequestControl.Type.CAMERA2_CAMERA_CONTROL, new UseCaseCameraRequestControlImpl.InfoBundle(UseCaseCameraRequestControlImpl.Companion.extractCamera2ImplConfigBuilder(this.$config), MapsKt.toMutableMap(this.$tags), null, null, 12, null));
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.this$0;
        UseCaseCameraRequestControlImpl.InfoBundle infoBundleMerge = useCaseCameraRequestControlImpl.merge(useCaseCameraRequestControlImpl.infoBundleMap);
        this.label = 1;
        Object objUpdateCameraStateAsync$default = UseCaseCameraRequestControlImpl.updateCameraStateAsync$default(useCaseCameraRequestControlImpl, infoBundleMerge, null, this, 1, null);
        return objUpdateCameraStateAsync$default == coroutine_suspended ? coroutine_suspended : objUpdateCameraStateAsync$default;
    }
}
