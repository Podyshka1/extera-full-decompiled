package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.Token;
import androidx.camera.camera2.pipe.core.WakeLock;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.CharsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018J \u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u00142\b\u0010\u001b\u001a\u0004\u0018\u00010\u0018H\u0086@¢\u0006\u0002\u0010\u001cJ\u0006\u0010\u001d\u001a\u00020\u000bJ\u000e\u0010\u001e\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\u001fJ\b\u0010 \u001a\u00020!H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Landroidx/camera/camera2/pipe/compat/ActiveCamera;", _UrlKt.FRAGMENT_ENCODE_SET, "androidCameraState", "Landroidx/camera/camera2/pipe/compat/AndroidCameraState;", "allCameraIds", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/CameraId;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "closeCallback", "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Ljava/util/Set;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;)V", "getAllCameraIds$camera_camera2_pipe", "()Ljava/util/Set;", "cameraId", "getCameraId-Dz_R5H8", "()Ljava/lang/String;", "current", "Landroidx/camera/camera2/pipe/compat/VirtualCameraState;", "wakelock", "Landroidx/camera/camera2/pipe/core/WakeLock;", "acquire", "Landroidx/camera/camera2/pipe/core/Token;", "connectTo", "virtualCameraState", "token", "(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Landroidx/camera/camera2/pipe/core/Token;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "close", "awaitClosed", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public final class ActiveCamera {
    private final Set<CameraId> allCameraIds;
    private final AndroidCameraState androidCameraState;
    private VirtualCameraState current;
    private final WakeLock wakelock;

    public ActiveCamera(AndroidCameraState androidCameraState, Set<CameraId> set, CoroutineScope coroutineScope, final Function1<? super ActiveCamera, Unit> function1) {
        this.androidCameraState = androidCameraState;
        this.allCameraIds = set;
        this.wakelock = new WakeLock(coroutineScope, 1000L, true, new Function0() { // from class: androidx.camera.camera2.pipe.compat.ActiveCamera$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ActiveCamera.m1532$r8$lambda$Pft0woi3wOq0lzMTXAHXs4ZXo(function1, this);
            }
        });
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C01861(null), 3, null);
    }

    public final Set<CameraId> getAllCameraIds$camera_camera2_pipe() {
        return this.allCameraIds;
    }

    /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
    public final String m1533getCameraIdDz_R5H8() {
        return this.androidCameraState.getCameraId();
    }

    /* JADX INFO: renamed from: $r8$lambda$Pft0woi-3wOq-0lzMTXAHXs4ZXo, reason: not valid java name */
    public static Unit m1532$r8$lambda$Pft0woi3wOq0lzMTXAHXs4ZXo(Function1 function1, ActiveCamera activeCamera) {
        function1.invoke(activeCamera);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.ActiveCamera$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.pipe.compat.ActiveCamera$1", m921f = "Camera2DeviceManager.kt", m922i = {}, m923l = {137}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
    public static final class C01861 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public C01861(Continuation<? super C01861> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ActiveCamera.this.new C01861(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C01861) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.ActiveCamera$1$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "it", "Landroidx/camera/camera2/pipe/compat/CameraState;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(m920c = "androidx.camera.camera2.pipe.compat.ActiveCamera$1$1", m921f = "Camera2DeviceManager.kt", m922i = {}, m923l = {}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<CameraState, Continuation<? super Boolean>, Object> {
            /* synthetic */ Object L$0;
            int label;

            public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CameraState cameraState, Continuation<? super Boolean> continuation) {
                return ((AnonymousClass1) create(cameraState, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                    return null;
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
                StateFlow<CameraState> state = ActiveCamera.this.androidCameraState.getState();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(null);
                this.label = 1;
                if (FlowKt.first(state, anonymousClass1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                    return null;
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

    public final Object connectTo(VirtualCameraState virtualCameraState, Token token, Continuation<? super Unit> continuation) {
        VirtualCameraState virtualCameraState2 = this.current;
        this.current = virtualCameraState;
        if (virtualCameraState2 != null) {
            VirtualCamera.m1607disconnectTPqeGZw$default(virtualCameraState2, null, 1, null);
        }
        Object objConnect$camera_camera2_pipe = virtualCameraState.connect$camera_camera2_pipe(this.androidCameraState.getState(), token, continuation);
        return objConnect$camera_camera2_pipe == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objConnect$camera_camera2_pipe : Unit.INSTANCE;
    }

    public final void close() {
        this.wakelock.release();
        this.androidCameraState.close();
    }

    public final Object awaitClosed(Continuation<? super Unit> continuation) {
        Object objAwaitClosed = this.androidCameraState.awaitClosed(continuation);
        return objAwaitClosed == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwaitClosed : Unit.INSTANCE;
    }

    public String toString() {
        return "ActiveCamera(cameraId=" + ((Object) CameraId.m1356toStringimpl(m1533getCameraIdDz_R5H8())) + ")@" + Integer.toString(super.hashCode(), CharsKt.checkRadix(16));
    }
}
