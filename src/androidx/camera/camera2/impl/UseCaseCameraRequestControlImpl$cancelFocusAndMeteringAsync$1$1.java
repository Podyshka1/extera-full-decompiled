package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.pipe.CameraControls3A;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.core.Logger;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.Deferred;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/Deferred;", "Landroidx/camera/camera2/pipe/Result3A;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$cancelFocusAndMeteringAsync$1$1", m766f = "UseCaseCameraRequestControl.kt", m767i = {}, m768l = {749, 497, 497, 761}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
@SourceDebugExtension({"SMAP\nUseCaseCameraRequestControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$cancelFocusAndMeteringAsync$1$1\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 3 UseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl\n+ 4 UseCaseCameraConfig.kt\nandroidx/camera/camera2/config/UseCaseGraphContext\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,742:1\n85#2,4:743\n95#2,4:753\n95#2,4:765\n656#3,2:747\n658#3,2:751\n660#3,2:757\n656#3,2:759\n658#3,2:763\n660#3,2:769\n242#4:749\n242#4:761\n1#5:750\n1#5:762\n*S KotlinDebug\n*F\n+ 1 UseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$cancelFocusAndMeteringAsync$1$1\n*L\n493#1:743,4\n497#1:753,4\n499#1:765,4\n497#1:747,2\n497#1:751,2\n497#1:757,2\n499#1:759,2\n499#1:763,2\n499#1:769,2\n497#1:749\n499#1:761\n497#1:750\n499#1:762\n*E\n"})
public final class UseCaseCameraRequestControlImpl$cancelFocusAndMeteringAsync$1$1 extends SuspendLambda implements Function1<Continuation<? super Deferred<? extends Result3A>>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraRequestControlImpl$cancelFocusAndMeteringAsync$1$1(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, Continuation<? super UseCaseCameraRequestControlImpl$cancelFocusAndMeteringAsync$1$1> continuation) {
        super(1, continuation);
        this.this$0 = useCaseCameraRequestControlImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new UseCaseCameraRequestControlImpl$cancelFocusAndMeteringAsync$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Deferred<? extends Result3A>> continuation) {
        return invoke2((Continuation<? super Deferred<Result3A>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(Continuation<? super Deferred<Result3A>> continuation) {
        return ((UseCaseCameraRequestControlImpl$cancelFocusAndMeteringAsync$1$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x00f4, code lost:
    
        if (r0 != r11) goto L65;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00e3 A[PHI: r13
  0x00e3: PHI (r13v5 ??) = (r13v18 ??), (r13v15 ??) binds: [B:59:0x00e0, B:14:0x002c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v21 */
    /* JADX WARN: Type inference failed for: r13v23 */
    /* JADX WARN: Type inference failed for: r13v24 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6, types: [java.lang.Throwable] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws Exception {
        Deferred deferred;
        ?? r13;
        Object objAcquireSession;
        ?? r132;
        Object objAcquireSession2;
        AutoCloseable autoCloseable;
        Throwable th;
        AutoCloseable autoCloseable2;
        Throwable th2;
        AutoCloseable autoCloseable3;
        CameraGraph.Session session;
        Boolean boolBoxBoolean;
        Boolean boolBoxBoolean2;
        Boolean boolBoxBoolean3;
        Object objUnlock3A$default;
        AutoCloseable autoCloseable4;
        Throwable th3;
        Throwable th4;
        Throwable th5;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        ?? r133 = 4;
        try {
            try {
                try {
                } catch (CancellationException e) {
                    e = e;
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "Cannot acquire the CameraGraph.Session", e);
                    }
                    deferred = UseCaseCameraRequestControlImpl.submitFailedResult;
                    ?? r134 = r133;
                    this.L$0 = r134;
                    this.label = 3;
                    r13 = r134;
                    if (deferred.await(this) != coroutine_suspended) {
                    }
                    return coroutine_suspended;
                }
            } catch (CancellationException e2) {
                e = e2;
                r133 = 0;
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                }
                deferred = UseCaseCameraRequestControlImpl.submitFailedResult;
                ?? r1342 = r133;
                this.L$0 = r1342;
                this.label = 3;
                r13 = r1342;
                if (deferred.await(this) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            try {
                try {
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                        if (Logger.isDebugEnabled("CXCP")) {
                            Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl#cancelFocusAndMeteringAsync");
                        }
                        CameraGraph graph = this.this$0.useCaseGraphContext.getGraph();
                        this.label = 1;
                        objAcquireSession2 = graph.acquireSession(this);
                        if (objAcquireSession2 == coroutine_suspended) {
                        }
                        return coroutine_suspended;
                    }
                    if (i == 1) {
                        ResultKt.throwOnFailure(obj);
                        objAcquireSession2 = obj;
                    } else {
                        if (i == 2) {
                            autoCloseable4 = (AutoCloseable) this.L$0;
                            try {
                                ResultKt.throwOnFailure(obj);
                                objUnlock3A$default = obj;
                                th5 = null;
                                try {
                                    deferred = (Deferred) objUnlock3A$default;
                                    this.L$0 = r1342;
                                    this.label = 3;
                                    r13 = r1342;
                                    if (deferred.await(this) != coroutine_suspended) {
                                        CameraGraph graph2 = this.this$0.useCaseGraphContext.getGraph();
                                        this.label = 4;
                                        objAcquireSession = graph2.acquireSession(this);
                                        r132 = r13;
                                    }
                                    return coroutine_suspended;
                                } catch (Throwable th6) {
                                    th4 = th6;
                                    autoCloseable3 = autoCloseable4;
                                    th3 = th5;
                                    th2 = th4;
                                    r133 = th3;
                                    try {
                                        throw th2;
                                    } finally {
                                        AutoCloseableKt.closeFinally(autoCloseable3, th2);
                                    }
                                }
                            } catch (Throwable th7) {
                                th4 = th7;
                                autoCloseable3 = autoCloseable4;
                                th3 = null;
                                th2 = th4;
                                r133 = th3;
                                throw th2;
                            }
                        }
                        if (i == 3) {
                            ResultKt.throwOnFailure(obj);
                            r13 = 0;
                            CameraGraph graph22 = this.this$0.useCaseGraphContext.getGraph();
                            this.label = 4;
                            objAcquireSession = graph22.acquireSession(this);
                            r132 = r13;
                        } else {
                            if (i != 4) {
                                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            ResultKt.throwOnFailure(obj);
                            objAcquireSession = obj;
                            r132 = 0;
                            AutoCloseable autoCloseable5 = (AutoCloseable) objAcquireSession;
                            try {
                                CameraGraph.Constants3A constants3A = CameraGraph.Constants3A.INSTANCE;
                                Deferred deferredM1145update3AydBZfZg$default = CameraControls3A.m1145update3AydBZfZg$default((CameraGraph.Session) autoCloseable5, null, null, null, ArraysKt.asList(constants3A.getMETERING_REGIONS_DEFAULT()), ArraysKt.asList(constants3A.getMETERING_REGIONS_DEFAULT()), ArraysKt.asList(constants3A.getMETERING_REGIONS_DEFAULT()), 7, null);
                                AutoCloseableKt.closeFinally(autoCloseable5, r132);
                                return deferredM1145update3AydBZfZg$default;
                            } finally {
                            }
                        }
                    }
                    objUnlock3A$default = CameraGraph.Session.unlock3A$default(session, boolBoxBoolean, boolBoxBoolean2, boolBoxBoolean3, null, 0, 0L, this, 56, null);
                    if (objUnlock3A$default != coroutine_suspended) {
                        autoCloseable4 = autoCloseable2;
                        th5 = th;
                        deferred = (Deferred) objUnlock3A$default;
                        this.L$0 = r1342;
                        this.label = 3;
                        r13 = r1342;
                        if (deferred.await(this) != coroutine_suspended) {
                        }
                    }
                    return coroutine_suspended;
                } catch (Throwable th8) {
                    th = th8;
                    th2 = th;
                    autoCloseable3 = autoCloseable2;
                    r133 = th;
                    throw th2;
                }
                session = (CameraGraph.Session) autoCloseable;
                boolBoxBoolean = Boxing.boxBoolean(true);
                boolBoxBoolean2 = Boxing.boxBoolean(true);
                boolBoxBoolean3 = Boxing.boxBoolean(true);
                this.L$0 = autoCloseable;
                this.label = 2;
                autoCloseable2 = autoCloseable;
                th = null;
            } catch (Throwable th9) {
                th = th9;
                th = null;
                autoCloseable2 = autoCloseable;
            }
            autoCloseable = (AutoCloseable) objAcquireSession2;
        } catch (CancellationException e3) {
            Camera2Logger camera2Logger4 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Cannot acquire the CameraGraph.Session", e3);
            }
            return UseCaseCameraRequestControlImpl.submitFailedResult;
        }
    }
}
