package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.SessionConfig;
import java.util.Collection;
import java.util.Set;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/Deferred;", _UrlKt.FRAGMENT_ENCODE_SET}, m910k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m920c = "androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1", m921f = "UseCaseCameraRequestControl.kt", m922i = {}, m923l = {428}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
@SourceDebugExtension({"SMAP\nUseCaseCameraRequestControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,742:1\n85#2,4:743\n85#2,4:747\n85#2,4:752\n85#2,4:756\n1#3:751\n*S KotlinDebug\n*F\n+ 1 UseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1\n*L\n404#1:743,4\n410#1:747,4\n416#1:752,4\n427#1:756,4\n*E\n"})
public final class UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1 extends SuspendLambda implements Function1<Continuation<? super Deferred<? extends Unit>>, Object> {
    final /* synthetic */ boolean $isPrimary;
    final /* synthetic */ Collection<UseCase> $runningUseCases;
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1(Collection<? extends UseCase> collection, boolean z, UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, Continuation<? super UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1> continuation) {
        super(1, continuation);
        this.$runningUseCases = collection;
        this.$isPrimary = z;
        this.this$0 = useCaseCameraRequestControlImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1(this.$runningUseCases, this.$isPrimary, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Deferred<? extends Unit>> continuation) {
        return invoke2((Continuation<? super Deferred<Unit>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(Continuation<? super Deferred<Unit>> continuation) {
        return ((UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
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
            Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
            return null;
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
        }
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl: SessionConfig built. Updating state...");
        }
        this.this$0.infoBundleMap.put(UseCaseCameraRequestControl.Type.SESSION_CONFIG, UseCaseCameraRequestControlImpl.INSTANCE.toInfoBundle(validSessionConfigOrNull, this.this$0.threads.getSequentialExecutor()));
        Set<StreamId> streamIdsFromSurfaces = this.this$0.useCaseGraphContext.getStreamIdsFromSurfaces(validSessionConfigOrNull.getRepeatingCaptureConfig().getSurfaces());
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
