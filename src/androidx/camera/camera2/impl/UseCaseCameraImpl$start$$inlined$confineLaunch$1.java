package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.DeferrableSurface;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", _UrlKt.FRAGMENT_ENCODE_SET, "<anonymous>", "(Lkotlinx/coroutines/CoroutineScope;)V"}, m910k = 3, mv = {2, 1, 0})
@DebugMetadata(m920c = "androidx.camera.camera2.impl.UseCaseCameraImpl$start$$inlined$confineLaunch$1", m921f = "UseCaseCamera.kt", m922i = {}, m923l = {}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
@SourceDebugExtension({"SMAP\nUseCaseThreads.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseCaseThreads.kt\nandroidx/camera/camera2/impl/UseCaseThreads$confineLaunch$1\n+ 2 UseCaseCamera.kt\nandroidx/camera/camera2/impl/UseCaseCameraImpl\n+ 3 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,200:1\n97#2,2:201\n99#2:205\n101#2,16:207\n117#2,12:227\n129#2:241\n134#2,2:243\n85#3,2:203\n88#3:206\n85#3,4:223\n136#3,2:239\n139#3:242\n*S KotlinDebug\n*F\n+ 1 UseCaseCamera.kt\nandroidx/camera/camera2/impl/UseCaseCameraImpl\n*L\n98#1:203,2\n98#1:206\n116#1:223,4\n128#1:239,2\n128#1:242\n*E\n"})
public final class UseCaseCameraImpl$start$$inlined$confineLaunch$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ UseCaseCameraImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraImpl$start$$inlined$confineLaunch$1(Continuation continuation, UseCaseCameraImpl useCaseCameraImpl) {
        super(2, continuation);
        this.this$0 = useCaseCameraImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UseCaseCameraImpl$start$$inlined$confineLaunch$1(continuation, this.this$0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((UseCaseCameraImpl$start$$inlined$confineLaunch$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
            return null;
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
            Map<DeferrableSurface, StreamId> surfaceToStreamMap = this.this$0.useCaseGraphContext.getSurfaceToStreamMap();
            StreamId streamIdM1218findStillCaptureStreamId4TVKcYk = this.this$0.m1218findStillCaptureStreamId4TVKcYk();
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Setting up Surfaces with UseCaseSurfaceManager");
            }
            if (this.this$0.getSessionConfigAdapter().isSessionConfigValid()) {
                UseCaseSurfaceManager.setupAsync$default(this.this$0.getUseCaseSurfaceManager(), graph, this.this$0.getSessionConfigAdapter(), surfaceToStreamMap, 0L, 8, null).invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.camera.camera2.impl.UseCaseCameraImpl$start$1$3
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                        invoke2(th);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Throwable th) {
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
            this.this$0.m1219setCaptureSessionRequestProcessor9O56998(streamIdM1218findStillCaptureStreamId4TVKcYk, graph);
        }
        return Unit.INSTANCE;
    }
}
