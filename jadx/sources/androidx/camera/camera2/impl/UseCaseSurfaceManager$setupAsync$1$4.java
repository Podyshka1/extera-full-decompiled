package androidx.camera.camera2.impl;

import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.core.impl.DeferrableSurface;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
final class UseCaseSurfaceManager$setupAsync$1$4 extends SuspendLambda implements Function2 {

    /* JADX INFO: renamed from: $e */
    final /* synthetic */ DeferrableSurface.SurfaceClosedException f7$e;
    final /* synthetic */ SessionConfigAdapter $sessionConfigAdapter;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UseCaseSurfaceManager$setupAsync$1$4(SessionConfigAdapter sessionConfigAdapter, DeferrableSurface.SurfaceClosedException surfaceClosedException, Continuation continuation) {
        super(2, continuation);
        this.$sessionConfigAdapter = sessionConfigAdapter;
        this.f7$e = surfaceClosedException;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new UseCaseSurfaceManager$setupAsync$1$4(this.$sessionConfigAdapter, this.f7$e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((UseCaseSurfaceManager$setupAsync$1$4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        SessionConfigAdapter sessionConfigAdapter = this.$sessionConfigAdapter;
        DeferrableSurface deferrableSurface = this.f7$e.getDeferrableSurface();
        Intrinsics.checkNotNullExpressionValue(deferrableSurface, "getDeferrableSurface(...)");
        sessionConfigAdapter.reportSurfaceInvalid(deferrableSurface);
        return Unit.INSTANCE;
    }
}
