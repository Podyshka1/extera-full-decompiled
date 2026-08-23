package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.core.Logger;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class UseCaseCameraImpl$start$$inlined$confineLaunch$1 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ UseCaseCameraImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraImpl$start$$inlined$confineLaunch$1(Continuation continuation, UseCaseCameraImpl useCaseCameraImpl) {
        super(2, continuation);
        this.this$0 = useCaseCameraImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new UseCaseCameraImpl$start$$inlined$confineLaunch$1(continuation, this.this$0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((UseCaseCameraImpl$start$$inlined$confineLaunch$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        if (this.this$0.closed.getValue()) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCamera is closed before starting the CameraGraph, skipping setup.");
            }
        } else {
            CameraGraph graph = this.this$0.useCaseGraphContext.getGraph();
            this.this$0.useCaseGraphContext.configureCameraStateListener();
            graph.start();
            Map surfaceToStreamMap = this.this$0.useCaseGraphContext.getSurfaceToStreamMap();
            StreamId streamIdM1469findStillCaptureStreamId4TVKcYk = this.this$0.m1469findStillCaptureStreamId4TVKcYk();
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Setting up Surfaces with UseCaseSurfaceManager");
            }
            if (this.this$0.getSessionConfigAdapter().isSessionConfigValid()) {
                UseCaseSurfaceManager useCaseSurfaceManager = this.this$0.getUseCaseSurfaceManager();
                Intrinsics.checkNotNullExpressionValue(useCaseSurfaceManager, "access$getUseCaseSurfaceManager(...)");
                SessionConfigAdapter sessionConfigAdapter = this.this$0.getSessionConfigAdapter();
                Intrinsics.checkNotNullExpressionValue(sessionConfigAdapter, "access$getSessionConfigAdapter(...)");
                UseCaseSurfaceManager.setupAsync$default(useCaseSurfaceManager, graph, sessionConfigAdapter, surfaceToStreamMap, 0L, 8, null).invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.impl.UseCaseCameraImpl$start$1$3
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                        invoke((Throwable) obj2);
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Throwable th) {
                        if (th == null || (th instanceof CancellationException)) {
                            return;
                        }
                        Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                        if (Logger.isErrorEnabled("CXCP")) {
                            Log.e(Camera2Logger.TRUNCATED_TAG, "Surface setup error!", th);
                        }
                    }
                });
            } else if (Logger.isErrorEnabled("CXCP")) {
                Log.e(Camera2Logger.TRUNCATED_TAG, "Unable to create capture session due to conflicting configurations");
            }
            this.this$0.m1470setCaptureSessionRequestProcessor9O56998(streamIdM1469findStillCaptureStreamId4TVKcYk, graph);
        }
        return Unit.INSTANCE;
    }
}
