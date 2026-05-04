package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.compat.VirtualCamera;
import androidx.camera.camera2.pipe.core.Token;
import androidx.camera.camera2.pipe.core.WakeLock;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes3.dex */
public final class ActiveCamera {
    private final Set allCameraIds;
    private final AndroidCameraState androidCameraState;
    private VirtualCameraState current;
    private final WakeLock wakelock;

    public ActiveCamera(AndroidCameraState androidCameraState, Set allCameraIds, CoroutineScope scope, final Function1 closeCallback) {
        Intrinsics.checkNotNullParameter(androidCameraState, "androidCameraState");
        Intrinsics.checkNotNullParameter(allCameraIds, "allCameraIds");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(closeCallback, "closeCallback");
        this.androidCameraState = androidCameraState;
        this.allCameraIds = allCameraIds;
        this.wakelock = new WakeLock(scope, 1000L, true, new Function0() { // from class: androidx.camera.camera2.pipe.compat.ActiveCamera$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ActiveCamera.wakelock$lambda$0(closeCallback, this);
            }
        });
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new C01821(null), 3, null);
    }

    public final Set getAllCameraIds$camera_camera2_pipe() {
        return this.allCameraIds;
    }

    /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
    public final String m1794getCameraIdDz_R5H8() {
        return this.androidCameraState.m1802getCameraIdDz_R5H8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit wakelock$lambda$0(Function1 function1, ActiveCamera activeCamera) {
        function1.invoke(activeCamera);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.ActiveCamera$1 */
    static final class C01821 extends SuspendLambda implements Function2 {
        int label;

        C01821(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return ActiveCamera.this.new C01821(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01821) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.ActiveCamera$1$1, reason: invalid class name */
        static final class AnonymousClass1 extends SuspendLambda implements Function2 {
            /* synthetic */ Object L$0;
            int label;

            AnonymousClass1(Continuation continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CameraState cameraState, Continuation continuation) {
                return ((AnonymousClass1) create(cameraState, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                CameraState cameraState = (CameraState) this.L$0;
                return Boxing.boxBoolean((cameraState instanceof CameraStateClosing) || (cameraState instanceof CameraStateClosed));
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                StateFlow state = ActiveCamera.this.androidCameraState.getState();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(null);
                this.label = 1;
                if (FlowKt.first(state, anonymousClass1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            ActiveCamera.this.wakelock.release();
            return Unit.INSTANCE;
        }
    }

    public final Token acquire() {
        return this.wakelock.acquire();
    }

    public final Object connectTo(VirtualCameraState virtualCameraState, Token token, Continuation continuation) {
        VirtualCameraState virtualCameraState2 = this.current;
        this.current = virtualCameraState;
        if (virtualCameraState2 != null) {
            VirtualCamera.CC.m1868disconnectTPqeGZw$default(virtualCameraState2, null, 1, null);
        }
        Object objConnect$camera_camera2_pipe = virtualCameraState.connect$camera_camera2_pipe(this.androidCameraState.getState(), token, continuation);
        return objConnect$camera_camera2_pipe == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objConnect$camera_camera2_pipe : Unit.INSTANCE;
    }

    public final void close() throws Throwable {
        this.wakelock.release();
        this.androidCameraState.close();
    }

    public final Object awaitClosed(Continuation continuation) {
        Object objAwaitClosed = this.androidCameraState.awaitClosed(continuation);
        return objAwaitClosed == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwaitClosed : Unit.INSTANCE;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ActiveCamera(cameraId=");
        sb.append((Object) CameraId.m1607toStringimpl(m1794getCameraIdDz_R5H8()));
        sb.append(")@");
        String string = Integer.toString(super.hashCode(), CharsKt.checkRadix(16));
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        sb.append(string);
        return sb.toString();
    }
}
