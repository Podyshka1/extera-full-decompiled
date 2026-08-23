package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.camera2.compat.workaround.UseFlashModeTorchFor3aUpdate;
import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.core.CameraControl;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;

/* JADX INFO: loaded from: classes3.dex */
public final class FlashControl implements UseCaseCameraControl {
    private volatile int _flashMode;
    private UseCaseCameraRequestControl _requestControl;
    private volatile ImageCapture.ScreenFlash _screenFlash;
    private CompletableDeferred _updateSignal;
    private final CameraProperties cameraProperties;
    private int flashMode;
    private ImageCapture.ScreenFlash screenFlash;
    private final State3AControl state3AControl;
    private final UseCaseThreads threads;
    private final TorchControl torchControl;
    private Deferred updateSignal;
    private final UseFlashModeTorchFor3aUpdate useFlashModeTorchFor3aUpdate;

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FlashControl$applyScreenFlash$1 */
    static final class C01561 extends ContinuationImpl {
        long J$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C01561(Continuation continuation) {
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
    static final class C01591 extends ContinuationImpl {
        int I$0;
        int label;
        /* synthetic */ Object result;

        C01591(Continuation continuation) {
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
    static final class C01601 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C01601(Continuation continuation) {
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
    static final class C01611 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C01611(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlashControl.this.stopScreenFlashCaptureTasks(this);
        }
    }

    public FlashControl(CameraProperties cameraProperties, State3AControl state3AControl, UseCaseThreads threads, TorchControl torchControl, UseFlashModeTorchFor3aUpdate useFlashModeTorchFor3aUpdate) {
        Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
        Intrinsics.checkNotNullParameter(state3AControl, "state3AControl");
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(torchControl, "torchControl");
        Intrinsics.checkNotNullParameter(useFlashModeTorchFor3aUpdate, "useFlashModeTorchFor3aUpdate");
        this.cameraProperties = cameraProperties;
        this.state3AControl = state3AControl;
        this.threads = threads;
        this.torchControl = torchControl;
        this.useFlashModeTorchFor3aUpdate = useFlashModeTorchFor3aUpdate;
        this._flashMode = 2;
        this.flashMode = this._flashMode;
        this.screenFlash = this._screenFlash;
        this.updateSignal = CompletableDeferredKt.CompletableDeferred(Unit.INSTANCE);
    }

    public UseCaseCameraRequestControl getRequestControl() {
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

    public final int getFlashMode() {
        return this._flashMode;
    }

    public final ImageCapture.ScreenFlash getScreenFlash() {
        return this._screenFlash;
    }

    public final Deferred getUpdateSignal() {
        CompletableDeferred completableDeferred = this._updateSignal;
        if (completableDeferred != null) {
            Intrinsics.checkNotNull(completableDeferred);
            return completableDeferred;
        }
        return CompletableDeferredKt.CompletableDeferred(Unit.INSTANCE);
    }

    public static /* synthetic */ Deferred setFlashAsync$default(FlashControl flashControl, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        return flashControl.setFlashAsync(i, z);
    }

    public final Deferred setFlashAsync(int i, boolean z) {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "setFlashAsync: flashMode = " + i + ", requestControl = " + getRequestControl());
        }
        CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        if (getRequestControl() != null) {
            this._flashMode = i;
            if (z) {
                stopRunningTask();
            } else {
                CompletableDeferred completableDeferred = this._updateSignal;
                if (completableDeferred != null) {
                    CoroutineAdaptersKt.propagateTo(completableDeferredCompletableDeferred$default, completableDeferred);
                }
            }
            this._updateSignal = completableDeferredCompletableDeferred$default;
            CoroutineAdaptersKt.propagateTo(this.state3AControl.setFlashModeAsync(i), completableDeferredCompletableDeferred$default);
            return completableDeferredCompletableDeferred$default;
        }
        completableDeferredCompletableDeferred$default.completeExceptionally(new CameraControl.OperationCanceledException("Camera is not active."));
        return completableDeferredCompletableDeferred$default;
    }

    private final void stopRunningTask() {
        CompletableDeferred completableDeferred = this._updateSignal;
        if (completableDeferred != null) {
            completableDeferred.completeExceptionally(new CameraControl.OperationCanceledException("There is a new flash mode being set or camera was closed"));
        }
        this._updateSignal = null;
    }

    public final void setScreenFlash(ImageCapture.ScreenFlash screenFlash) {
        this._screenFlash = screenFlash;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0088, code lost:
    
        if (kotlinx.coroutines.AwaitKt.awaitAll(r4, r0) == r1) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object startScreenFlashCaptureTasks(Continuation continuation) {
        C01601 c01601;
        List arrayList;
        List list;
        if (continuation instanceof C01601) {
            c01601 = (C01601) continuation;
            int i = c01601.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01601.label = i - Integer.MIN_VALUE;
            } else {
                c01601 = new C01601(continuation);
            }
        }
        Object objApplyScreenFlash = c01601.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c01601.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objApplyScreenFlash);
            arrayList = new ArrayList();
            long millis = TimeUnit.SECONDS.toMillis(3L);
            c01601.L$0 = arrayList;
            c01601.L$1 = arrayList;
            c01601.label = 1;
            objApplyScreenFlash = applyScreenFlash(millis, c01601);
            if (objApplyScreenFlash != coroutine_suspended) {
                list = arrayList;
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objApplyScreenFlash);
            return Unit.INSTANCE;
        }
        arrayList = (List) c01601.L$1;
        list = (List) c01601.L$0;
        ResultKt.throwOnFailure(objApplyScreenFlash);
        arrayList.add(objApplyScreenFlash);
        Deferred externalFlashAeModeAsync = setExternalFlashAeModeAsync();
        if (externalFlashAeModeAsync != null) {
            Boxing.boxBoolean(list.add(externalFlashAeModeAsync));
        }
        Deferred torchForScreenFlash = setTorchForScreenFlash();
        if (torchForScreenFlash != null) {
            Boxing.boxBoolean(list.add(torchForScreenFlash));
        }
        c01601.L$0 = null;
        c01601.L$1 = null;
        c01601.label = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object applyScreenFlash(long j, Continuation continuation) {
        C01561 c01561;
        long j2;
        CompletableDeferred completableDeferred;
        if (continuation instanceof C01561) {
            c01561 = (C01561) continuation;
            int i = c01561.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01561.label = i - Integer.MIN_VALUE;
            } else {
                c01561 = new C01561(continuation);
            }
        }
        C01561 c015612 = c01561;
        Object obj = c015612.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c015612.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            final CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            ImageCapture.ScreenFlashListener screenFlashListener = new ImageCapture.ScreenFlashListener() { // from class: androidx.camera.camera2.impl.FlashControl$$ExternalSyntheticLambda1
                @Override // androidx.camera.core.ImageCapture.ScreenFlashListener
                public final void onCompleted() {
                    FlashControl.applyScreenFlash$lambda$0(completableDeferredCompletableDeferred$default);
                }
            };
            MainCoroutineDispatcher main = Dispatchers.getMain();
            j2 = j;
            C01572 c01572 = new C01572(j2, this, screenFlashListener, null);
            c015612.L$0 = completableDeferredCompletableDeferred$default;
            c015612.J$0 = j2;
            c015612.label = 1;
            if (BuildersKt.withContext(main, c01572, c015612) == coroutine_suspended) {
                return coroutine_suspended;
            }
            completableDeferred = completableDeferredCompletableDeferred$default;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j2 = c015612.J$0;
            completableDeferred = (CompletableDeferred) c015612.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return BuildersKt__Builders_commonKt.async$default(this.threads.getScope(), null, null, new C01583(completableDeferred, j2, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void applyScreenFlash$lambda$0(CompletableDeferred completableDeferred) {
        completableDeferred.complete(Unit.INSTANCE);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FlashControl$applyScreenFlash$2 */
    static final class C01572 extends SuspendLambda implements Function2 {
        final /* synthetic */ ImageCapture.ScreenFlashListener $screenFlashListener;
        final /* synthetic */ long $timeoutMillis;
        int label;
        final /* synthetic */ FlashControl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C01572(long j, FlashControl flashControl, ImageCapture.ScreenFlashListener screenFlashListener, Continuation continuation) {
            super(2, continuation);
            this.$timeoutMillis = j;
            this.this$0 = flashControl;
            this.$screenFlashListener = screenFlashListener;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C01572(this.$timeoutMillis, this.this$0, this.$screenFlashListener, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01572) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            long jCurrentTimeMillis = System.currentTimeMillis() + this.$timeoutMillis;
            ImageCapture.ScreenFlash screenFlash = this.this$0.getScreenFlash();
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
    static final class C01583 extends SuspendLambda implements Function2 {
        final /* synthetic */ CompletableDeferred $onApplyCompletedSignal;
        final /* synthetic */ long $timeoutMillis;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C01583(CompletableDeferred completableDeferred, long j, Continuation continuation) {
            super(2, continuation);
            this.$onApplyCompletedSignal = completableDeferred;
            this.$timeoutMillis = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C01583(this.$onApplyCompletedSignal, this.$timeoutMillis, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01583) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                CompletableDeferred completableDeferred = this.$onApplyCompletedSignal;
                long j = this.$timeoutMillis;
                this.label = 1;
                obj = CoroutineAdaptersKt.awaitUntil(completableDeferred, j, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
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

    private final Deferred setExternalFlashAeModeAsync() {
        boolean zIsExternalFlashAeModeSupported = CameraMetadataIntegrationKt.isExternalFlashAeModeSupported(this.cameraProperties.getMetadata());
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "setExternalFlashAeModeAsync: isExternalFlashAeModeSupported = " + zIsExternalFlashAeModeSupported);
        }
        if (!zIsExternalFlashAeModeSupported) {
            return null;
        }
        Deferred tryExternalFlashAeModeAsync = this.state3AControl.setTryExternalFlashAeModeAsync(true);
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

    private final Deferred setTorchForScreenFlash() {
        boolean zShouldUseFlashModeTorch = this.useFlashModeTorchFor3aUpdate.shouldUseFlashModeTorch();
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "setTorchIfRequired: shouldUseFlashModeTorch = " + zShouldUseFlashModeTorch);
        }
        if (!zShouldUseFlashModeTorch) {
            return null;
        }
        Deferred deferredM1452setTorchAsyncOup_wC0$camera_camera2$default = TorchControl.m1452setTorchAsyncOup_wC0$camera_camera2$default(this.torchControl, TorchControl.TorchMode.Companion.m1464getUSED_AS_FLASHIRs_R8(), false, true, 2, null);
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "setTorchIfRequired: need to wait for torch control to be completed");
        }
        deferredM1452setTorchAsyncOup_wC0$camera_camera2$default.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.impl.FlashControl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FlashControl.setTorchForScreenFlash$lambda$1$1((Throwable) obj);
            }
        });
        return deferredM1452setTorchAsyncOup_wC0$camera_camera2$default;
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
    static final class C01622 extends SuspendLambda implements Function2 {
        int label;

        C01622(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return FlashControl.this.new C01622(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01622) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ImageCapture.ScreenFlash screenFlash = FlashControl.this.getScreenFlash();
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
    public final Object stopScreenFlashCaptureTasks(Continuation continuation) {
        C01611 c01611;
        if (continuation instanceof C01611) {
            c01611 = (C01611) continuation;
            int i = c01611.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01611.label = i - Integer.MIN_VALUE;
            } else {
                c01611 = new C01611(continuation);
            }
        }
        Object obj = c01611.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c01611.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            MainCoroutineDispatcher main = Dispatchers.getMain();
            C01622 c01622 = new C01622(null);
            c01611.label = 1;
            if (BuildersKt.withContext(main, c01622, c01611) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        if (CameraMetadataIntegrationKt.isExternalFlashAeModeSupported(this.cameraProperties.getMetadata())) {
            this.state3AControl.setTryExternalFlashAeModeAsync(false);
        }
        if (this.useFlashModeTorchFor3aUpdate.shouldUseFlashModeTorch()) {
            TorchControl.m1452setTorchAsyncOup_wC0$camera_camera2$default(this.torchControl, TorchControl.TorchMode.Companion.m1462getOFFIRs_R8(), false, true, 2, null);
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object awaitFlashModeUpdate(Continuation continuation) {
        C01591 c01591;
        int i;
        if (continuation instanceof C01591) {
            c01591 = (C01591) continuation;
            int i2 = c01591.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c01591.label = i2 - Integer.MIN_VALUE;
            } else {
                c01591 = new C01591(continuation);
            }
        }
        Object obj = c01591.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c01591.label;
        if (i3 == 0) {
            ResultKt.throwOnFailure(obj);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "FlashControl: Waiting for any ongoing update to be completed");
            }
            int flashMode = getFlashMode();
            Deferred updateSignal = getUpdateSignal();
            c01591.I$0 = flashMode;
            c01591.label = 1;
            if (updateSignal.join(c01591) == coroutine_suspended) {
                return coroutine_suspended;
            }
            i = flashMode;
        } else {
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i = c01591.I$0;
            ResultKt.throwOnFailure(obj);
        }
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "awaitFlashModeUpdate: initialFlashMode = " + i);
        }
        return Boxing.boxInt(i);
    }
}
