package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.SessionConfig;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
final class UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1 extends SuspendLambda implements Function1 {
    final /* synthetic */ boolean $isPrimary;
    final /* synthetic */ Collection $runningUseCases;
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1(Collection collection, boolean z, UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, Continuation continuation) {
        super(1, continuation);
        this.$runningUseCases = collection;
        this.$isPrimary = z;
        this.this$0 = useCaseCameraRequestControlImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1(this.$runningUseCases, this.$isPrimary, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation continuation) {
        return ((UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
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
            Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl: Building SessionConfig...");
        }
        SessionConfig validSessionConfigOrNull = new SessionConfigAdapter(this.$runningUseCases, this.$isPrimary).getValidSessionConfigOrNull();
        if (validSessionConfigOrNull == null) {
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Using default SessionConfig");
            }
            SessionConfig.Builder builder = new SessionConfig.Builder();
            builder.setTemplateType(1);
            validSessionConfigOrNull = builder.build();
            Intrinsics.checkNotNullExpressionValue(validSessionConfigOrNull, "build(...)");
        }
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl: SessionConfig built. Updating state...");
        }
        this.this$0.infoBundleMap.put(UseCaseCameraRequestControl.Type.SESSION_CONFIG, UseCaseCameraRequestControlImpl.Companion.toInfoBundle(validSessionConfigOrNull, this.this$0.threads.getSequentialExecutor()));
        UseCaseGraphContext useCaseGraphContext = this.this$0.useCaseGraphContext;
        List surfaces = validSessionConfigOrNull.getRepeatingCaptureConfig().getSurfaces();
        Intrinsics.checkNotNullExpressionValue(surfaces, "getSurfaces(...)");
        Set streamIdsFromSurfaces = useCaseGraphContext.getStreamIdsFromSurfaces(surfaces);
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl: State update processing.");
        }
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.this$0;
        UseCaseCameraRequestControlImpl.InfoBundle infoBundleMerge = useCaseCameraRequestControlImpl.merge(useCaseCameraRequestControlImpl.infoBundleMap);
        this.label = 1;
        Object objUpdateCameraStateAsync = useCaseCameraRequestControlImpl.updateCameraStateAsync(infoBundleMerge, streamIdsFromSurfaces, this);
        return objUpdateCameraStateAsync == coroutine_suspended ? coroutine_suspended : objUpdateCameraStateAsync;
    }
}
