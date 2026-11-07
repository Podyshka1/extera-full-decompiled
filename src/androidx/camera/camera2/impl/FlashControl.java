package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.camera2.compat.workaround.UseFlashModeTorchFor3aUpdate;
import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.core.CameraControl;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.mediarouter.media.GlobalMediaRouter;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0082@¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0013H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0013H\u0002¢\u0006\u0004\b\u0018\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0019\u0010\u0010J%\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00132\u0006\u0010\u001b\u001a\u00020\u001a2\b\b\u0002\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010\"\u001a\u00020\u000e2\b\u0010!\u001a\u0004\u0018\u00010 ¢\u0006\u0004\b\"\u0010#J\u0010\u0010$\u001a\u00020\u000eH\u0086@¢\u0006\u0004\b$\u0010%J\u0010\u0010&\u001a\u00020\u000eH\u0086@¢\u0006\u0004\b&\u0010%J\u0010\u0010'\u001a\u00020\u001aH\u0086@¢\u0006\u0004\b'\u0010%R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010(R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010)R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010*R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010+R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010,R\u0018\u0010.\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u001c\u00100\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\f\n\u0004\b0\u00101\u0012\u0004\b2\u0010\u0010R*\u0010\u001b\u001a\u00020\u001a2\u0006\u00103\u001a\u00020\u001a8F@BX\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u00101\u0012\u0004\b6\u0010\u0010\u001a\u0004\b4\u00105R\u0018\u00107\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R(\u0010!\u001a\u0004\u0018\u00010 2\b\u00103\u001a\u0004\u0018\u00010 8F@BX\u0086\u000e¢\u0006\f\n\u0004\b!\u00108\u001a\u0004\b9\u0010:R\u001e\u0010<\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R0\u0010>\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00132\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00138F@BX\u0086\u000e¢\u0006\f\n\u0004\b>\u0010?\u001a\u0004\b@\u0010\u0017R(\u0010E\u001a\u0004\u0018\u00010-2\b\u00103\u001a\u0004\u0018\u00010-8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bA\u0010B\"\u0004\bC\u0010D¨\u0006F"}, d2 = {"Landroidx/camera/camera2/impl/FlashControl;", "Landroidx/camera/camera2/impl/UseCaseCameraControl;", "Landroidx/camera/camera2/impl/CameraProperties;", "cameraProperties", "Landroidx/camera/camera2/impl/State3AControl;", "state3AControl", "Landroidx/camera/camera2/impl/UseCaseThreads;", "threads", "Landroidx/camera/camera2/impl/TorchControl;", "torchControl", "Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate;", "useFlashModeTorchFor3aUpdate", "<init>", "(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/TorchControl;Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate;)V", _UrlKt.FRAGMENT_ENCODE_SET, "stopRunningTask", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "timeoutMillis", "Lkotlinx/coroutines/Deferred;", "applyScreenFlash", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setExternalFlashAeModeAsync", "()Lkotlinx/coroutines/Deferred;", "setTorchForScreenFlash", "reset", _UrlKt.FRAGMENT_ENCODE_SET, "flashMode", _UrlKt.FRAGMENT_ENCODE_SET, "cancelPreviousTask", "setFlashAsync", "(IZ)Lkotlinx/coroutines/Deferred;", "Landroidx/camera/core/ImageCapture$ScreenFlash;", "screenFlash", "setScreenFlash", "(Landroidx/camera/core/ImageCapture$ScreenFlash;)V", "startScreenFlashCaptureTasks", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "stopScreenFlashCaptureTasks", "awaitFlashModeUpdate", "Landroidx/camera/camera2/impl/CameraProperties;", "Landroidx/camera/camera2/impl/State3AControl;", "Landroidx/camera/camera2/impl/UseCaseThreads;", "Landroidx/camera/camera2/impl/TorchControl;", "Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate;", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "_requestControl", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "_flashMode", "I", "get_flashMode$annotations", "value", "getFlashMode", "()I", "getFlashMode$annotations", "_screenFlash", "Landroidx/camera/core/ImageCapture$ScreenFlash;", "getScreenFlash", "()Landroidx/camera/core/ImageCapture$ScreenFlash;", "Lkotlinx/coroutines/CompletableDeferred;", "_updateSignal", "Lkotlinx/coroutines/CompletableDeferred;", "updateSignal", "Lkotlinx/coroutines/Deferred;", "getUpdateSignal", "getRequestControl", "()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "setRequestControl", "(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V", "requestControl", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFlashControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlashControl.kt\nandroidx/camera/camera2/impl/FlashControl\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,296:1\n85#2,4:297\n85#2,4:302\n85#2,4:306\n85#2,4:310\n85#2,4:314\n85#2,4:318\n85#2,4:322\n85#2,4:326\n85#2,4:330\n1#3:301\n*S KotlinDebug\n*F\n+ 1 FlashControl.kt\nandroidx/camera/camera2/impl/FlashControl\n*L\n97#1:297,4\n207#1:302,4\n217#1:306,4\n239#1:310,4\n250#1:314,4\n280#1:318,4\n285#1:322,4\n221#1:326,4\n254#1:330,4\n*E\n"})
public final class FlashControl implements UseCaseCameraControl {
    private UseCaseCameraRequestControl _requestControl;
    private CompletableDeferred<Unit> _updateSignal;
    private final CameraProperties cameraProperties;
    private final State3AControl state3AControl;
    private final UseCaseThreads threads;
    private final TorchControl torchControl;
    private final UseFlashModeTorchFor3aUpdate useFlashModeTorchFor3aUpdate;
    private volatile int _flashMode = 2;
    private int flashMode = this._flashMode;
    private volatile ImageCapture.ScreenFlash _screenFlash;
    private ImageCapture.ScreenFlash screenFlash = this._screenFlash;
    private Deferred<Unit> updateSignal = CompletableDeferredKt.CompletableDeferred(Unit.INSTANCE);

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FlashControl$applyScreenFlash$1 */
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.impl.FlashControl", m921f = "FlashControl.kt", m922i = {0, 0}, m923l = {171}, m924m = "applyScreenFlash", m925n = {"onApplyCompletedSignal", "timeoutMillis"}, m926s = {"L$0", "J$0"}, m927v = 1)
    public static final class C01601 extends ContinuationImpl {
        long J$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C01601(Continuation<? super C01601> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlashControl.this.applyScreenFlash(0L, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FlashControl$awaitFlashModeUpdate$1 */
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.impl.FlashControl", m921f = "FlashControl.kt", m922i = {0}, m923l = {284}, m924m = "awaitFlashModeUpdate", m925n = {"initialFlashMode"}, m926s = {"I$0"}, m927v = 1)
    public static final class C01631 extends ContinuationImpl {
        int I$0;
        int label;
        /* synthetic */ Object result;

        public C01631(Continuation<? super C01631> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlashControl.this.awaitFlashModeUpdate(this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FlashControl$startScreenFlashCaptureTasks$1 */
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.impl.FlashControl", m921f = "FlashControl.kt", m922i = {0}, m923l = {149, 160}, m924m = "startScreenFlashCaptureTasks", m925n = {"pendingTasks"}, m926s = {"L$0"}, m927v = 1)
    public static final class C01641 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C01641(Continuation<? super C01641> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlashControl.this.startScreenFlashCaptureTasks(this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FlashControl$stopScreenFlashCaptureTasks$1 */
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.impl.FlashControl", m921f = "FlashControl.kt", m922i = {}, m923l = {GlobalMediaRouter.CallbackHandler.MSG_ROUTE_VOLUME_CHANGED}, m924m = "stopScreenFlashCaptureTasks", m925n = {}, m926s = {}, m927v = 1)
    public static final class C01651 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C01651(Continuation<? super C01651> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlashControl.this.stopScreenFlashCaptureTasks(this);
        }
    }

    public FlashControl(CameraProperties cameraProperties, State3AControl state3AControl, UseCaseThreads useCaseThreads, TorchControl torchControl, UseFlashModeTorchFor3aUpdate useFlashModeTorchFor3aUpdate) {
        this.cameraProperties = cameraProperties;
        this.state3AControl = state3AControl;
        this.threads = useCaseThreads;
        this.torchControl = torchControl;
        this.useFlashModeTorchFor3aUpdate = useFlashModeTorchFor3aUpdate;
    }

    /* JADX INFO: renamed from: getRequestControl, reason: from getter */
    public UseCaseCameraRequestControl get_requestControl() {
        return this._requestControl;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
        setFlashAsync(this._flashMode, false);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        this._flashMode = 2;
        this._screenFlash = null;
        stopRunningTask();
        setFlashAsync$default(this, 2, false, 2, null);
    }

    /* JADX INFO: renamed from: getFlashMode, reason: from getter */
    public final int get_flashMode() {
        return this._flashMode;
    }

    /* JADX INFO: renamed from: getScreenFlash, reason: from getter */
    public final ImageCapture.ScreenFlash get_screenFlash() {
        return this._screenFlash;
    }

    public final Deferred<Unit> getUpdateSignal() {
        CompletableDeferred<Unit> completableDeferred = this._updateSignal;
        return completableDeferred != null ? completableDeferred : CompletableDeferredKt.CompletableDeferred(Unit.INSTANCE);
    }

    public static /* synthetic */ Deferred setFlashAsync$default(FlashControl flashControl, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        return flashControl.setFlashAsync(i, z);
    }

    public final Deferred<Unit> setFlashAsync(int flashMode, boolean cancelPreviousTask) {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "setFlashAsync: flashMode = " + flashMode + ", requestControl = " + get_requestControl());
        }
        CompletableDeferred<Unit> completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        if (get_requestControl() != null) {
            this._flashMode = flashMode;
            if (cancelPreviousTask) {
                stopRunningTask();
            } else {
                CompletableDeferred<Unit> completableDeferred = this._updateSignal;
                if (completableDeferred != null) {
                    CoroutineAdaptersKt.propagateTo(completableDeferredCompletableDeferred$default, completableDeferred);
                }
            }
            this._updateSignal = completableDeferredCompletableDeferred$default;
            CoroutineAdaptersKt.propagateTo(this.state3AControl.setFlashModeAsync(flashMode), completableDeferredCompletableDeferred$default);
            return completableDeferredCompletableDeferred$default;
        }
        completableDeferredCompletableDeferred$default.completeExceptionally(new CameraControl.OperationCanceledException("Camera is not active."));
        return completableDeferredCompletableDeferred$default;
    }

    private final void stopRunningTask() {
        CompletableDeferred<Unit> completableDeferred = this._updateSignal;
        if (completableDeferred != null) {
            completableDeferred.completeExceptionally(new CameraControl.OperationCanceledException("There is a new flash mode being set or camera was closed"));
        }
        this._updateSignal = null;
    }

    public final void setScreenFlash(ImageCapture.ScreenFlash screenFlash) {
        this._screenFlash = screenFlash;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0080, code lost:
    
        if (kotlinx.coroutines.AwaitKt.awaitAll(r5, r0) == r1) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object startScreenFlashCaptureTasks(Continuation<? super Unit> continuation) {
        C01641 c01641;
        List arrayList;
        List list;
        if (continuation instanceof C01641) {
            c01641 = (C01641) continuation;
            int i = c01641.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01641.label = i - Integer.MIN_VALUE;
            } else {
                c01641 = new C01641(continuation);
            }
        }
        Object objApplyScreenFlash = c01641.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c01641.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objApplyScreenFlash);
            arrayList = new ArrayList();
            c01641.L$0 = arrayList;
            c01641.L$1 = arrayList;
            c01641.label = 1;
            objApplyScreenFlash = applyScreenFlash(3000L, c01641);
            if (objApplyScreenFlash != coroutine_suspended) {
                list = arrayList;
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                ResultKt.throwOnFailure(objApplyScreenFlash);
                return Unit.INSTANCE;
            }
            Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        arrayList = (List) c01641.L$1;
        list = (List) c01641.L$0;
        ResultKt.throwOnFailure(objApplyScreenFlash);
        arrayList.add(objApplyScreenFlash);
        Deferred<Unit> externalFlashAeModeAsync = setExternalFlashAeModeAsync();
        if (externalFlashAeModeAsync != null) {
            Boxing.boxBoolean(list.add(externalFlashAeModeAsync));
        }
        Deferred<Unit> torchForScreenFlash = setTorchForScreenFlash();
        if (torchForScreenFlash != null) {
            Boxing.boxBoolean(list.add(torchForScreenFlash));
        }
        c01641.L$0 = null;
        c01641.L$1 = null;
        c01641.label = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object applyScreenFlash(long j, Continuation<? super Deferred<Unit>> continuation) {
        C01601 c01601;
        FlashControl flashControl;
        CompletableDeferred completableDeferred;
        long j2;
        if (continuation instanceof C01601) {
            c01601 = (C01601) continuation;
            int i = c01601.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01601.label = i - Integer.MIN_VALUE;
            } else {
                c01601 = new C01601(continuation);
            }
        }
        Object obj = c01601.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c01601.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            final CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            ImageCapture.ScreenFlashListener screenFlashListener = new ImageCapture.ScreenFlashListener() { // from class: androidx.camera.camera2.impl.FlashControl$$ExternalSyntheticLambda1
                @Override // androidx.camera.core.ImageCapture.ScreenFlashListener
                public final void onCompleted() {
                    completableDeferredCompletableDeferred$default.complete(Unit.INSTANCE);
                }
            };
            MainCoroutineDispatcher main = Dispatchers.getMain();
            flashControl = this;
            C01612 c01612 = new C01612(j, flashControl, screenFlashListener, null);
            c01601.L$0 = completableDeferredCompletableDeferred$default;
            c01601.J$0 = j;
            c01601.label = 1;
            if (BuildersKt.withContext(main, c01612, c01601) == coroutine_suspended) {
                return coroutine_suspended;
            }
            completableDeferred = completableDeferredCompletableDeferred$default;
            j2 = j;
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j2 = c01601.J$0;
            completableDeferred = (CompletableDeferred) c01601.L$0;
            ResultKt.throwOnFailure(obj);
            flashControl = this;
        }
        return BuildersKt__Builders_commonKt.async$default(flashControl.threads.getScope(), null, null, new C01623(completableDeferred, j2, null), 3, null);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FlashControl$applyScreenFlash$2 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.impl.FlashControl$applyScreenFlash$2", m921f = "FlashControl.kt", m922i = {}, m923l = {}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
    @SourceDebugExtension({"SMAP\nFlashControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlashControl.kt\nandroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,296:1\n85#2,4:297\n*S KotlinDebug\n*F\n+ 1 FlashControl.kt\nandroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2\n*L\n174#1:297,4\n*E\n"})
    public static final class C01612 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ ImageCapture.ScreenFlashListener $screenFlashListener;
        final /* synthetic */ long $timeoutMillis;
        int label;
        final /* synthetic */ FlashControl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C01612(long j, FlashControl flashControl, ImageCapture.ScreenFlashListener screenFlashListener, Continuation<? super C01612> continuation) {
            super(2, continuation);
            this.$timeoutMillis = j;
            this.this$0 = flashControl;
            this.$screenFlashListener = screenFlashListener;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C01612(this.$timeoutMillis, this.this$0, this.$screenFlashListener, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C01612) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            long jCurrentTimeMillis = System.currentTimeMillis() + this.$timeoutMillis;
            ImageCapture.ScreenFlash screenFlash = this.this$0.get_screenFlash();
            if (screenFlash != null) {
                screenFlash.apply(jCurrentTimeMillis, this.$screenFlashListener);
            }
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "applyScreenFlash: ScreenFlash.apply() invoked, expirationTimeMillis = " + jCurrentTimeMillis);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FlashControl$applyScreenFlash$3 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.impl.FlashControl$applyScreenFlash$3", m921f = "FlashControl.kt", m922i = {}, m923l = {188}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
    @SourceDebugExtension({"SMAP\nFlashControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlashControl.kt\nandroidx/camera/camera2/impl/FlashControl$applyScreenFlash$3\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,296:1\n85#2,4:297\n85#2,4:301\n119#2,4:305\n*S KotlinDebug\n*F\n+ 1 FlashControl.kt\nandroidx/camera/camera2/impl/FlashControl$applyScreenFlash$3\n*L\n181#1:297,4\n189#1:301,4\n191#1:305,4\n*E\n"})
    public static final class C01623 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ CompletableDeferred<Unit> $onApplyCompletedSignal;
        final /* synthetic */ long $timeoutMillis;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C01623(CompletableDeferred<Unit> completableDeferred, long j, Continuation<? super C01623> continuation) {
            super(2, continuation);
            this.$onApplyCompletedSignal = completableDeferred;
            this.$timeoutMillis = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C01623(this.$onApplyCompletedSignal, this.$timeoutMillis, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C01623) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "applyScreenFlash: Waiting for ScreenFlashListener to be completed");
                }
                CompletableDeferred<Unit> completableDeferred = this.$onApplyCompletedSignal;
                long j = this.$timeoutMillis;
                this.label = 1;
                obj = CoroutineAdaptersKt.awaitUntil(completableDeferred, j, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            if (((Boolean) obj).booleanValue()) {
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "applyScreenFlash: ScreenFlashListener completed");
                }
            } else {
                Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                long j2 = this.$timeoutMillis;
                if (Logger.isWarnEnabled("CXCP")) {
                    Log.w(Camera2Logger.TRUNCATED_TAG, "applyScreenFlash: ScreenFlashListener completion timed out after " + j2 + " ms");
                }
            }
            return Unit.INSTANCE;
        }
    }

    private final Deferred<Unit> setExternalFlashAeModeAsync() {
        boolean zIsExternalFlashAeModeSupported = CameraMetadataIntegrationKt.isExternalFlashAeModeSupported(this.cameraProperties.getMetadata());
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "setExternalFlashAeModeAsync: isExternalFlashAeModeSupported = " + zIsExternalFlashAeModeSupported);
        }
        if (!zIsExternalFlashAeModeSupported) {
            return null;
        }
        Deferred<Unit> tryExternalFlashAeModeAsync = this.state3AControl.setTryExternalFlashAeModeAsync(true);
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "setExternalFlashAeModeAsync: need to wait for state3AControl.updateSignal");
        }
        tryExternalFlashAeModeAsync.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.impl.FlashControl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FlashControl.setExternalFlashAeModeAsync$lambda$1$1((Throwable) obj);
            }
        });
        return tryExternalFlashAeModeAsync;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setExternalFlashAeModeAsync$lambda$1$1(Throwable th) {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "setExternalFlashAeModeAsync: state3AControl.updateSignal completed");
        }
        return Unit.INSTANCE;
    }

    private final Deferred<Unit> setTorchForScreenFlash() {
        boolean zShouldUseFlashModeTorch = this.useFlashModeTorchFor3aUpdate.shouldUseFlashModeTorch();
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "setTorchIfRequired: shouldUseFlashModeTorch = " + zShouldUseFlashModeTorch);
        }
        if (!zShouldUseFlashModeTorch) {
            return null;
        }
        Deferred<Unit> deferredM1201setTorchAsyncOup_wC0$camera_camera2$default = TorchControl.m1201setTorchAsyncOup_wC0$camera_camera2$default(this.torchControl, TorchControl.TorchMode.INSTANCE.m1213getUSED_AS_FLASHIRs_R8(), false, true, 2, null);
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "setTorchIfRequired: need to wait for torch control to be completed");
        }
        deferredM1201setTorchAsyncOup_wC0$camera_camera2$default.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.impl.FlashControl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FlashControl.setTorchForScreenFlash$lambda$1$1((Throwable) obj);
            }
        });
        return deferredM1201setTorchAsyncOup_wC0$camera_camera2$default;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setTorchForScreenFlash$lambda$1$1(Throwable th) {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "setTorchIfRequired: torch control completed");
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FlashControl$stopScreenFlashCaptureTasks$2 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.impl.FlashControl$stopScreenFlashCaptureTasks$2", m921f = "FlashControl.kt", m922i = {}, m923l = {}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
    @SourceDebugExtension({"SMAP\nFlashControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlashControl.kt\nandroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$2\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,296:1\n85#2,4:297\n*S KotlinDebug\n*F\n+ 1 FlashControl.kt\nandroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$2\n*L\n262#1:297,4\n*E\n"})
    public static final class C01662 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public C01662(Continuation<? super C01662> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FlashControl.this.new C01662(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C01662) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            ImageCapture.ScreenFlash screenFlash = FlashControl.this.get_screenFlash();
            if (screenFlash != null) {
                screenFlash.clear();
            }
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPostCapture: ScreenFlash.clear() invoked");
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object stopScreenFlashCaptureTasks(Continuation<? super Unit> continuation) {
        C01651 c01651;
        if (continuation instanceof C01651) {
            c01651 = (C01651) continuation;
            int i = c01651.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01651.label = i - Integer.MIN_VALUE;
            } else {
                c01651 = new C01651(continuation);
            }
        }
        Object obj = c01651.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c01651.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            MainCoroutineDispatcher main = Dispatchers.getMain();
            C01662 c01662 = new C01662(null);
            c01651.label = 1;
            if (BuildersKt.withContext(main, c01662, c01651) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        if (CameraMetadataIntegrationKt.isExternalFlashAeModeSupported(this.cameraProperties.getMetadata())) {
            this.state3AControl.setTryExternalFlashAeModeAsync(false);
        }
        if (this.useFlashModeTorchFor3aUpdate.shouldUseFlashModeTorch()) {
            TorchControl.m1201setTorchAsyncOup_wC0$camera_camera2$default(this.torchControl, TorchControl.TorchMode.INSTANCE.m1211getOFFIRs_R8(), false, true, 2, null);
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object awaitFlashModeUpdate(Continuation<? super Integer> continuation) {
        C01631 c01631;
        int i;
        if (continuation instanceof C01631) {
            c01631 = (C01631) continuation;
            int i2 = c01631.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c01631.label = i2 - Integer.MIN_VALUE;
            } else {
                c01631 = new C01631(continuation);
            }
        }
        Object obj = c01631.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c01631.label;
        if (i3 == 0) {
            ResultKt.throwOnFailure(obj);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "FlashControl: Waiting for any ongoing update to be completed");
            }
            int i4 = get_flashMode();
            Deferred<Unit> updateSignal = getUpdateSignal();
            c01631.I$0 = i4;
            c01631.label = 1;
            if (updateSignal.join(c01631) == coroutine_suspended) {
                return coroutine_suspended;
            }
            i = i4;
        } else {
            if (i3 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i = c01631.I$0;
            ResultKt.throwOnFailure(obj);
        }
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "awaitFlashModeUpdate: initialFlashMode = " + i);
        }
        return Boxing.boxInt(i);
    }
}
