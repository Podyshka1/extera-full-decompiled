package androidx.camera.camera2.impl;

import android.hardware.camera2.params.MeteringRectangle;
import android.util.Log;
import androidx.camera.camera2.pipe.CameraControls3A;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.core.Logger;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.Deferred;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/Deferred;", "Landroidx/camera/camera2/pipe/Result3A;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$update3aRegions$1$1", m766f = "UseCaseCameraRequestControl.kt", m767i = {}, m768l = {749}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
@SourceDebugExtension({"SMAP\nUseCaseCameraRequestControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 3 UseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl\n+ 4 UseCaseCameraConfig.kt\nandroidx/camera/camera2/config/UseCaseGraphContext\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,742:1\n85#2,4:743\n95#2,4:753\n656#3,2:747\n658#3,2:751\n660#3,2:757\n242#4:749\n1#5:750\n*S KotlinDebug\n*F\n+ 1 UseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$update3aRegions$1$1\n*L\n553#1:743,4\n554#1:753,4\n554#1:747,2\n554#1:751,2\n554#1:757,2\n554#1:749\n554#1:750\n*E\n"})
public final class UseCaseCameraRequestControlImpl$update3aRegions$1$1 extends SuspendLambda implements Function1<Continuation<? super Deferred<? extends Result3A>>, Object> {
    final /* synthetic */ List<MeteringRectangle> $aeRegions;
    final /* synthetic */ List<MeteringRectangle> $afRegions;
    final /* synthetic */ List<MeteringRectangle> $awbRegions;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraRequestControlImpl$update3aRegions$1$1(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3, Continuation<? super UseCaseCameraRequestControlImpl$update3aRegions$1$1> continuation) {
        super(1, continuation);
        this.this$0 = useCaseCameraRequestControlImpl;
        this.$aeRegions = list;
        this.$afRegions = list2;
        this.$awbRegions = list3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new UseCaseCameraRequestControlImpl$update3aRegions$1$1(this.this$0, this.$aeRegions, this.$afRegions, this.$awbRegions, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Deferred<? extends Result3A>> continuation) {
        return invoke2((Continuation<? super Deferred<Result3A>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(Continuation<? super Deferred<Result3A>> continuation) {
        return ((UseCaseCameraRequestControlImpl$update3aRegions$1$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Exception {
        List<MeteringRectangle> listAsList;
        List<MeteringRectangle> listAsList2;
        List<MeteringRectangle> listAsList3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl#update3aRegions");
                }
                UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.this$0;
                List<MeteringRectangle> list = this.$aeRegions;
                List<MeteringRectangle> list2 = this.$afRegions;
                List<MeteringRectangle> list3 = this.$awbRegions;
                CameraGraph graph = useCaseCameraRequestControlImpl.useCaseGraphContext.getGraph();
                this.L$0 = list;
                this.L$1 = list2;
                this.L$2 = list3;
                this.label = 1;
                obj = graph.acquireSession(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                listAsList = list;
                listAsList2 = list2;
                listAsList3 = list3;
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                listAsList3 = (List) this.L$2;
                listAsList2 = (List) this.L$1;
                listAsList = (List) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            AutoCloseable autoCloseable = (AutoCloseable) obj;
            try {
                CameraGraph.Session session = (CameraGraph.Session) autoCloseable;
                if (listAsList == null) {
                    listAsList = ArraysKt.asList(CameraGraph.Constants3A.INSTANCE.getMETERING_REGIONS_DEFAULT());
                }
                List<MeteringRectangle> list4 = listAsList;
                if (listAsList2 == null) {
                    listAsList2 = ArraysKt.asList(CameraGraph.Constants3A.INSTANCE.getMETERING_REGIONS_DEFAULT());
                }
                List<MeteringRectangle> list5 = listAsList2;
                if (listAsList3 == null) {
                    listAsList3 = ArraysKt.asList(CameraGraph.Constants3A.INSTANCE.getMETERING_REGIONS_DEFAULT());
                }
                Deferred deferredM1145update3AydBZfZg$default = CameraControls3A.m1145update3AydBZfZg$default(session, null, null, null, list4, list5, listAsList3, 7, null);
                AutoCloseableKt.closeFinally(autoCloseable, null);
                return deferredM1145update3AydBZfZg$default;
            } finally {
            }
        } catch (CancellationException e) {
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Cannot acquire the CameraGraph.Session", e);
            }
            return UseCaseCameraRequestControlImpl.submitFailedResult;
        }
    }
}
