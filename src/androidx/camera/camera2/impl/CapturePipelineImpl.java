package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureResult;
import android.util.Log;
import androidx.camera.camera2.adapter.CaptureConfigAdapter;
import androidx.camera.camera2.adapter.CaptureResultAdapter;
import androidx.camera.camera2.compat.workaround.FlashAvailabilityCheckerKt;
import androidx.camera.camera2.compat.workaround.UseTorchAsFlash;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Lock3ABehavior;
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.RequestNumber;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ConvergenceUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.inject.Provider;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: loaded from: classes3.dex */
public final class CapturePipelineImpl implements CapturePipeline {
    private final CaptureConfigAdapter configAdapter;
    private final CapturePipelineImpl$emptyRequestMetadata$1 emptyRequestMetadata;
    private final FlashControl flashControl;
    private FrameMetadata frameMetadata;
    private final Lazy hasFlashUnit$delegate;
    private final ComboRequestListener requestListener;
    private int template;
    private final UseCaseThreads threads;
    private final TorchControl torchControl;
    private final Lazy useCaseCameraState$delegate;
    private final Provider useCaseCameraStateProvider;
    private final UseCaseGraphContext useCaseGraphContext;
    private final UseTorchAsFlash useTorchAsFlash;
    private final VideoUsageControl videoUsageControl;

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$aePreCaptureApplyCapture$1 */
    static final class C01251 extends ContinuationImpl {
        int I$0;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C01251(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.aePreCaptureApplyCapture(null, 0L, 0, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$defaultCapture$1 */
    static final class C01261 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C01261(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.defaultCapture(null, 0, 0, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$defaultNoFlashCapture$1 */
    static final class C01271 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C01271(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.defaultNoFlashCapture(null, 0, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$getFrameMetadata$1 */
    static final class C01281 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C01281(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.getFrameMetadata(this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$invokeCaptureTasks$1 */
    static final class C01291 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C01291(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.invokeCaptureTasks(null, 0, 0, 0, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$invokeScreenFlashPostCaptureTasks$1 */
    static final class C01301 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C01301(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.invokeScreenFlashPostCaptureTasks(0, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$invokeScreenFlashPreCaptureTasks$1 */
    static final class C01311 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C01311(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.invokeScreenFlashPreCaptureTasks(0, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$isPhysicalFlashRequired$1 */
    static final class C01321 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C01321(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.isPhysicalFlashRequired(0, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$lockAf$1 */
    static final class C01341 extends ContinuationImpl {
        long J$0;
        Object L$0;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C01341(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.lockAf(0L, false, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$screenFlashCapture$1 */
    static final class C01351 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C01351(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.screenFlashCapture(null, 0, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$torchApplyCapture$1 */
    static final class C01371 extends ContinuationImpl {
        int I$0;
        int I$1;
        int I$2;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C01371(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.torchApplyCapture(null, 0, 0L, null, false, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$torchAsFlashCapture$1 */
    static final class C01381 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C01381(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.torchAsFlashCapture(null, 0, 0, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$unlockAf$1 */
    static final class C01391 extends ContinuationImpl {
        long J$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C01391(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.unlockAf(0L, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$waitForResult$1 */
    static final class C01401 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C01401(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.waitForResult(0L, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean waitForResult$lambda$0(FrameInfo frameInfo) {
        Intrinsics.checkNotNullParameter(frameInfo, "<unused var>");
        return true;
    }

    /* JADX WARN: Type inference failed for: r2v6, types: [androidx.camera.camera2.impl.CapturePipelineImpl$emptyRequestMetadata$1] */
    public CapturePipelineImpl(CaptureConfigAdapter configAdapter, FlashControl flashControl, TorchControl torchControl, VideoUsageControl videoUsageControl, UseCaseThreads threads, ComboRequestListener requestListener, UseTorchAsFlash useTorchAsFlash, final CameraProperties cameraProperties, Provider useCaseCameraStateProvider, UseCaseGraphContext useCaseGraphContext) {
        Intrinsics.checkNotNullParameter(configAdapter, "configAdapter");
        Intrinsics.checkNotNullParameter(flashControl, "flashControl");
        Intrinsics.checkNotNullParameter(torchControl, "torchControl");
        Intrinsics.checkNotNullParameter(videoUsageControl, "videoUsageControl");
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(requestListener, "requestListener");
        Intrinsics.checkNotNullParameter(useTorchAsFlash, "useTorchAsFlash");
        Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
        Intrinsics.checkNotNullParameter(useCaseCameraStateProvider, "useCaseCameraStateProvider");
        Intrinsics.checkNotNullParameter(useCaseGraphContext, "useCaseGraphContext");
        this.configAdapter = configAdapter;
        this.flashControl = flashControl;
        this.torchControl = torchControl;
        this.videoUsageControl = videoUsageControl;
        this.threads = threads;
        this.requestListener = requestListener;
        this.useTorchAsFlash = useTorchAsFlash;
        this.useCaseCameraStateProvider = useCaseCameraStateProvider;
        this.useCaseGraphContext = useCaseGraphContext;
        this.hasFlashUnit$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(CapturePipelineImpl.hasFlashUnit_delegate$lambda$0(cameraProperties));
            }
        });
        this.useCaseCameraState$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CapturePipelineImpl.useCaseCameraState_delegate$lambda$0(this.f$0);
            }
        });
        this.template = 1;
        this.emptyRequestMetadata = new RequestMetadata() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$emptyRequestMetadata$1
            private final int template = RequestTemplate.m1754constructorimpl(0);
            private final Map streams = MapsKt.emptyMap();
            private final boolean repeating = true;
            private final Request request = new Request(CollectionsKt.emptyList(), null, null, null, null, null, 62, null);
            private final long requestNumber = RequestNumber.m1748constructorimpl(0);

            @Override // androidx.camera.camera2.pipe.Metadata
            public Object get(Metadata.Key key) {
                Intrinsics.checkNotNullParameter(key, "key");
                return null;
            }

            @Override // androidx.camera.camera2.pipe.Metadata
            public Object getOrDefault(Metadata.Key key, Object obj) {
                Intrinsics.checkNotNullParameter(key, "key");
                return obj;
            }

            @Override // androidx.camera.camera2.pipe.UnsafeWrapper
            public Object unwrapAs(KClass type) {
                Intrinsics.checkNotNullParameter(type, "type");
                return null;
            }

            @Override // androidx.camera.camera2.pipe.RequestMetadata
            public Map getStreams() {
                return this.streams;
            }

            @Override // androidx.camera.camera2.pipe.RequestMetadata
            public boolean getRepeating() {
                return this.repeating;
            }

            @Override // androidx.camera.camera2.pipe.RequestMetadata
            public Request getRequest() {
                return this.request;
            }

            @Override // androidx.camera.camera2.pipe.RequestMetadata
            /* JADX INFO: renamed from: getRequestNumber-my6kx4g, reason: not valid java name */
            public long mo1442getRequestNumbermy6kx4g() {
                return this.requestNumber;
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    private static final class PipelineTask {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ PipelineTask[] $VALUES;
        public static final PipelineTask PRE_CAPTURE = new PipelineTask("PRE_CAPTURE", 0);
        public static final PipelineTask MAIN_CAPTURE = new PipelineTask("MAIN_CAPTURE", 1);
        public static final PipelineTask POST_CAPTURE = new PipelineTask("POST_CAPTURE", 2);

        private static final /* synthetic */ PipelineTask[] $values() {
            return new PipelineTask[]{PRE_CAPTURE, MAIN_CAPTURE, POST_CAPTURE};
        }

        public static PipelineTask valueOf(String str) {
            return (PipelineTask) Enum.valueOf(PipelineTask.class, str);
        }

        public static PipelineTask[] values() {
            return (PipelineTask[]) $VALUES.clone();
        }

        private PipelineTask(String str, int i) {
        }

        static {
            PipelineTask[] pipelineTaskArr$values = $values();
            $VALUES = pipelineTaskArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(pipelineTaskArr$values);
        }
    }

    private static final class MainCaptureParams {
        private final List configs;
        private final int requestTemplate;
        private final Config sessionConfigOptions;

        public /* synthetic */ MainCaptureParams(List list, int i, Config config, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, i, config);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MainCaptureParams)) {
                return false;
            }
            MainCaptureParams mainCaptureParams = (MainCaptureParams) obj;
            return Intrinsics.areEqual(this.configs, mainCaptureParams.configs) && RequestTemplate.m1756equalsimpl0(this.requestTemplate, mainCaptureParams.requestTemplate) && Intrinsics.areEqual(this.sessionConfigOptions, mainCaptureParams.sessionConfigOptions);
        }

        public int hashCode() {
            return (((this.configs.hashCode() * 31) + RequestTemplate.m1758hashCodeimpl(this.requestTemplate)) * 31) + this.sessionConfigOptions.hashCode();
        }

        public String toString() {
            return "MainCaptureParams(configs=" + this.configs + ", requestTemplate=" + ((Object) RequestTemplate.m1759toStringimpl(this.requestTemplate)) + ", sessionConfigOptions=" + this.sessionConfigOptions + ')';
        }

        private MainCaptureParams(List configs, int i, Config sessionConfigOptions) {
            Intrinsics.checkNotNullParameter(configs, "configs");
            Intrinsics.checkNotNullParameter(sessionConfigOptions, "sessionConfigOptions");
            this.configs = configs;
            this.requestTemplate = i;
            this.sessionConfigOptions = sessionConfigOptions;
        }

        public final List getConfigs() {
            return this.configs;
        }

        /* JADX INFO: renamed from: getRequestTemplate-fGx8uWA, reason: not valid java name */
        public final int m1441getRequestTemplatefGx8uWA() {
            return this.requestTemplate;
        }

        public final Config getSessionConfigOptions() {
            return this.sessionConfigOptions;
        }
    }

    private final boolean getHasFlashUnit() {
        return ((Boolean) this.hasFlashUnit$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasFlashUnit_delegate$lambda$0(CameraProperties cameraProperties) {
        return FlashAvailabilityCheckerKt.isFlashAvailable$default(cameraProperties, false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UseCaseCameraState getUseCaseCameraState() {
        return (UseCaseCameraState) this.useCaseCameraState$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UseCaseCameraState useCaseCameraState_delegate$lambda$0(CapturePipelineImpl capturePipelineImpl) {
        return (UseCaseCameraState) capturePipelineImpl.useCaseCameraStateProvider.get();
    }

    public int getTemplate() {
        return this.template;
    }

    @Override // androidx.camera.camera2.impl.CapturePipeline
    public void setTemplate(int i) {
        this.template = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object getFrameMetadata(Continuation continuation) {
        C01281 c01281;
        CapturePipelineImpl capturePipelineImpl;
        CapturePipelineImpl capturePipelineImpl2;
        if (continuation instanceof C01281) {
            c01281 = (C01281) continuation;
            int i = c01281.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01281.label = i - Integer.MIN_VALUE;
            } else {
                c01281 = new C01281(continuation);
            }
        }
        C01281 c012812 = c01281;
        Object objWaitForResult$default = c012812.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c012812.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objWaitForResult$default);
            if (this.frameMetadata != null) {
                capturePipelineImpl = this;
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "getFrameMetadata: frameMetadata = " + this.frameMetadata);
                }
                return capturePipelineImpl.frameMetadata;
            }
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "getFrameMetadata: waiting for result");
            }
            long j = CapturePipelineKt.CHECK_FLASH_REQUIRED_TIMEOUT_IN_NS;
            c012812.L$0 = this;
            c012812.label = 1;
            capturePipelineImpl = this;
            objWaitForResult$default = waitForResult$default(capturePipelineImpl, j, null, c012812, 2, null);
            if (objWaitForResult$default == coroutine_suspended) {
                return coroutine_suspended;
            }
            capturePipelineImpl2 = capturePipelineImpl;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            capturePipelineImpl2 = (CapturePipelineImpl) c012812.L$0;
            ResultKt.throwOnFailure(objWaitForResult$default);
            capturePipelineImpl = this;
        }
        FrameInfo frameInfo = (FrameInfo) objWaitForResult$default;
        capturePipelineImpl2.frameMetadata = frameInfo != null ? frameInfo.getMetadata() : null;
        Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
        }
        return capturePipelineImpl.frameMetadata;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeCaptureTasks(List list, int i, int i2, int i3, MainCaptureParams mainCaptureParams, Continuation continuation) throws Exception {
        C01291 c01291;
        if (continuation instanceof C01291) {
            c01291 = (C01291) continuation;
            int i4 = c01291.label;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                c01291.label = i4 - Integer.MIN_VALUE;
            } else {
                c01291 = new C01291(continuation);
            }
        }
        C01291 c012912 = c01291;
        Object objIsTorchAsFlash = c012912.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i5 = c012912.label;
        if (i5 == 0) {
            ResultKt.throwOnFailure(objIsTorchAsFlash);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#invokeCaptureTasks: tasks = " + list + ", captureMode = " + i + ", flashMode = " + i2 + ", flashType = " + i3);
            }
            this.frameMetadata = null;
            if (list.contains(PipelineTask.MAIN_CAPTURE) && mainCaptureParams == null) {
                throw new IllegalStateException("Must not be null for PipelineType.MAIN_CAPTURE");
            }
            if (i2 == 3) {
                c012912.label = 1;
                Object objScreenFlashCapture = screenFlashCapture(mainCaptureParams, i, list, c012912);
                if (objScreenFlashCapture != coroutine_suspended) {
                    return objScreenFlashCapture;
                }
            } else {
                c012912.L$0 = list;
                c012912.L$1 = mainCaptureParams;
                c012912.I$0 = i;
                c012912.I$1 = i2;
                c012912.label = 2;
                objIsTorchAsFlash = isTorchAsFlash(i3, c012912);
                if (objIsTorchAsFlash != coroutine_suspended) {
                }
            }
            return coroutine_suspended;
        }
        if (i5 == 1) {
            ResultKt.throwOnFailure(objIsTorchAsFlash);
            return objIsTorchAsFlash;
        }
        if (i5 != 2) {
            if (i5 == 3) {
                ResultKt.throwOnFailure(objIsTorchAsFlash);
                return objIsTorchAsFlash;
            }
            if (i5 != 4) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objIsTorchAsFlash);
            return objIsTorchAsFlash;
        }
        i2 = c012912.I$1;
        i = c012912.I$0;
        mainCaptureParams = (MainCaptureParams) c012912.L$1;
        list = (List) c012912.L$0;
        ResultKt.throwOnFailure(objIsTorchAsFlash);
        int i6 = i2;
        int i7 = i;
        MainCaptureParams mainCaptureParams2 = mainCaptureParams;
        List list2 = list;
        if (((Boolean) objIsTorchAsFlash).booleanValue()) {
            c012912.L$0 = null;
            c012912.L$1 = null;
            c012912.label = 3;
            Object obj = torchAsFlashCapture(mainCaptureParams2, i7, i6, list2, c012912);
            if (obj != coroutine_suspended) {
                return obj;
            }
        } else {
            c012912.L$0 = null;
            c012912.L$1 = null;
            c012912.label = 4;
            Object objDefaultCapture = defaultCapture(mainCaptureParams2, i7, i6, list2, c012912);
            if (objDefaultCapture != coroutine_suspended) {
                return objDefaultCapture;
            }
        }
        return coroutine_suspended;
    }

    @Override // androidx.camera.camera2.impl.CapturePipeline
    /* JADX INFO: renamed from: submitStillCaptures-BvXKQx0 */
    public Object mo1413submitStillCapturesBvXKQx0(List list, int i, Config config, int i2, int i3, int i4, Continuation continuation) {
        return invokeCaptureTasks(CollectionsKt.listOf((Object[]) new PipelineTask[]{PipelineTask.PRE_CAPTURE, PipelineTask.MAIN_CAPTURE, PipelineTask.POST_CAPTURE}), i2, i4, i3, new MainCaptureParams(list, i, config, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00bd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00be A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object torchAsFlashCapture(MainCaptureParams mainCaptureParams, int i, int i2, List list, Continuation continuation) throws Exception {
        C01381 c01381;
        Object objDefaultNoFlashCapture;
        if (continuation instanceof C01381) {
            c01381 = (C01381) continuation;
            int i3 = c01381.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c01381.label = i3 - Integer.MIN_VALUE;
            } else {
                c01381 = new C01381(continuation);
            }
        }
        C01381 c013812 = c01381;
        Object objIsPhysicalFlashRequired = c013812.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = c013812.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(objIsPhysicalFlashRequired);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchAsFlashCapture");
            }
            if (getHasFlashUnit()) {
                c013812.L$0 = mainCaptureParams;
                c013812.L$1 = list;
                c013812.I$0 = i;
                c013812.label = 1;
                objIsPhysicalFlashRequired = isPhysicalFlashRequired(i2, c013812);
                if (objIsPhysicalFlashRequired == coroutine_suspended) {
                }
            } else {
                c013812.L$0 = null;
                c013812.L$1 = null;
                c013812.label = 3;
                objDefaultNoFlashCapture = defaultNoFlashCapture(mainCaptureParams, i, list, c013812);
                if (objDefaultNoFlashCapture == coroutine_suspended) {
                    return objDefaultNoFlashCapture;
                }
            }
        }
        if (i4 != 1) {
            if (i4 == 2) {
                ResultKt.throwOnFailure(objIsPhysicalFlashRequired);
                return objIsPhysicalFlashRequired;
            }
            if (i4 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objIsPhysicalFlashRequired);
            return objIsPhysicalFlashRequired;
        }
        i = c013812.I$0;
        list = (List) c013812.L$1;
        mainCaptureParams = (MainCaptureParams) c013812.L$0;
        ResultKt.throwOnFailure(objIsPhysicalFlashRequired);
        List list2 = list;
        if (((Boolean) objIsPhysicalFlashRequired).booleanValue()) {
            boolean z = true;
            long j = CapturePipelineKt.CHECK_3A_WITH_FLASH_TIMEOUT_IN_NS;
            if (this.useTorchAsFlash.shouldDisableAePrecapture() || this.videoUsageControl.isInVideoUsage()) {
                z = false;
            }
            boolean z2 = z;
            c013812.L$0 = null;
            c013812.L$1 = null;
            c013812.label = 2;
            Object obj = torchApplyCapture(mainCaptureParams, i, j, list2, z2, c013812);
            return obj == coroutine_suspended ? coroutine_suspended : obj;
        }
        list = list2;
        c013812.L$0 = null;
        c013812.L$1 = null;
        c013812.label = 3;
        objDefaultNoFlashCapture = defaultNoFlashCapture(mainCaptureParams, i, list, c013812);
        if (objDefaultNoFlashCapture == coroutine_suspended) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ad A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object defaultCapture(MainCaptureParams mainCaptureParams, int i, int i2, List list, Continuation continuation) throws Exception {
        C01261 c01261;
        if (continuation instanceof C01261) {
            c01261 = (C01261) continuation;
            int i3 = c01261.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c01261.label = i3 - Integer.MIN_VALUE;
            } else {
                c01261 = new C01261(continuation);
            }
        }
        C01261 c012612 = c01261;
        Object objIsPhysicalFlashRequired = c012612.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = c012612.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(objIsPhysicalFlashRequired);
            if (getHasFlashUnit()) {
                c012612.L$0 = mainCaptureParams;
                c012612.L$1 = list;
                c012612.I$0 = i;
                c012612.label = 1;
                objIsPhysicalFlashRequired = isPhysicalFlashRequired(i2, c012612);
                if (objIsPhysicalFlashRequired == coroutine_suspended) {
                }
            }
            c012612.label = 4;
            Object objDefaultNoFlashCapture = defaultNoFlashCapture(mainCaptureParams, i, list, c012612);
            return objDefaultNoFlashCapture == coroutine_suspended ? coroutine_suspended : objDefaultNoFlashCapture;
        }
        if (i4 != 1) {
            if (i4 == 2) {
                ResultKt.throwOnFailure(objIsPhysicalFlashRequired);
                return objIsPhysicalFlashRequired;
            }
            if (i4 == 3) {
                ResultKt.throwOnFailure(objIsPhysicalFlashRequired);
                return objIsPhysicalFlashRequired;
            }
            if (i4 != 4) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objIsPhysicalFlashRequired);
            return objIsPhysicalFlashRequired;
        }
        i = c012612.I$0;
        list = (List) c012612.L$1;
        mainCaptureParams = (MainCaptureParams) c012612.L$0;
        ResultKt.throwOnFailure(objIsPhysicalFlashRequired);
        MainCaptureParams mainCaptureParams2 = mainCaptureParams;
        int i5 = i;
        List list2 = list;
        boolean zBooleanValue = ((Boolean) objIsPhysicalFlashRequired).booleanValue();
        long j = zBooleanValue ? CapturePipelineKt.CHECK_3A_WITH_FLASH_TIMEOUT_IN_NS : CapturePipelineKt.CHECK_3A_TIMEOUT_IN_NS;
        if (zBooleanValue || i5 == 0) {
            c012612.L$0 = null;
            c012612.L$1 = null;
            c012612.label = 2;
            Object objAePreCaptureApplyCapture = aePreCaptureApplyCapture(mainCaptureParams2, j, i5, list2, c012612);
            if (objAePreCaptureApplyCapture != coroutine_suspended) {
                return objAePreCaptureApplyCapture;
            }
        } else {
            c012612.L$0 = null;
            c012612.L$1 = null;
            c012612.label = 3;
            Object objDefaultNoFlashCapture2 = defaultNoFlashCapture(mainCaptureParams2, i5, list2, c012612);
            if (objDefaultNoFlashCapture2 != coroutine_suspended) {
                return objDefaultNoFlashCapture2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object defaultNoFlashCapture(MainCaptureParams mainCaptureParams, int i, List list, Continuation continuation) {
        C01271 c01271;
        int i2;
        CapturePipelineImpl capturePipelineImpl;
        MainCaptureParams mainCaptureParams2;
        List listListOf;
        List list2 = list;
        if (continuation instanceof C01271) {
            c01271 = (C01271) continuation;
            int i3 = c01271.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c01271.label = i3 - Integer.MIN_VALUE;
            } else {
                c01271 = new C01271(continuation);
            }
        }
        Object obj = c01271.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = c01271.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#defaultNoFlashCapture");
            }
            i2 = i == 0 ? 1 : 0;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: tasks = " + list2);
            }
            if (!list2.contains(PipelineTask.PRE_CAPTURE)) {
                capturePipelineImpl = this;
                mainCaptureParams2 = mainCaptureParams;
                if (list2.contains(PipelineTask.MAIN_CAPTURE)) {
                }
                if (list2.contains(PipelineTask.POST_CAPTURE)) {
                }
                return listListOf;
            }
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting PRE_CAPTURE");
            }
            if (i2 == 0) {
                capturePipelineImpl = this;
                mainCaptureParams2 = mainCaptureParams;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
                }
                if (list2.contains(PipelineTask.MAIN_CAPTURE)) {
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE");
                    }
                    if (mainCaptureParams2 == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    listListOf = capturePipelineImpl.submitRequestInternal(mainCaptureParams2);
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed");
                    }
                } else {
                    listListOf = CollectionsKt.listOf(CompletableDeferredKt.CompletableDeferred((Object) null));
                }
                if (list2.contains(PipelineTask.POST_CAPTURE)) {
                    BuildersKt__Builders_commonKt.launch$default(capturePipelineImpl.threads.getSequentialScope(), null, null, new CapturePipelineImpl$defaultNoFlashCapture$$inlined$invoke$1(listListOf, null, i2 != 0, this), 3, null);
                }
                return listListOf;
            }
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#defaultNoFlashCapture: Locking 3A");
            }
            long j = CapturePipelineKt.CHECK_3A_TIMEOUT_IN_NS;
            c01271.L$0 = this;
            c01271.L$1 = list2;
            c01271.L$2 = mainCaptureParams;
            c01271.I$0 = i2;
            c01271.label = 1;
            if (lockAf(j, false, c01271) == coroutine_suspended) {
                return coroutine_suspended;
            }
            capturePipelineImpl = this;
            mainCaptureParams2 = mainCaptureParams;
        } else {
            if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            int i5 = c01271.I$0;
            mainCaptureParams2 = (MainCaptureParams) c01271.L$2;
            List list3 = (List) c01271.L$1;
            capturePipelineImpl = (CapturePipelineImpl) c01271.L$0;
            ResultKt.throwOnFailure(obj);
            i2 = i5;
            list2 = list3;
        }
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#defaultNoFlashCapture: Locking 3A done");
        }
        if (Logger.isDebugEnabled("CXCP")) {
        }
        if (list2.contains(PipelineTask.MAIN_CAPTURE)) {
        }
        if (list2.contains(PipelineTask.POST_CAPTURE)) {
        }
        return listListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x03ac  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02b4  */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v26 */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v35, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r7v49 */
    /* JADX WARN: Type inference failed for: r7v50 */
    /* JADX WARN: Type inference failed for: r7v51 */
    /* JADX WARN: Type inference failed for: r7v52 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object torchApplyCapture(MainCaptureParams mainCaptureParams, int i, long j, List list, boolean z, Continuation continuation) throws Exception {
        C01371 c01371;
        ?? r7;
        Throwable th;
        ?? r72;
        int i2;
        MainCaptureParams mainCaptureParams2;
        boolean z2;
        Throwable th2;
        int i3;
        List list2;
        CapturePipelineImpl capturePipelineImpl;
        int i4;
        boolean z3;
        int i5;
        int i6;
        boolean z4;
        List list3;
        int i7;
        long j2;
        long j3;
        boolean z5;
        int i8;
        int i9;
        MainCaptureParams mainCaptureParams3;
        List list4;
        CapturePipelineImpl capturePipelineImpl2;
        long j4;
        int i10;
        MainCaptureParams mainCaptureParams4;
        int i11;
        List list5;
        CapturePipelineImpl capturePipelineImpl3;
        AutoCloseable autoCloseable;
        int i12;
        Object objLock3AForCapture$default;
        AutoCloseable autoCloseable2;
        CapturePipelineImpl capturePipelineImpl4;
        boolean z6;
        List listListOf;
        int i13;
        boolean z7;
        int i14;
        if (!(continuation instanceof C01371) || (r7 = (i14 = (c01371 = (C01371) continuation).label) & Integer.MIN_VALUE) == 0) {
            c01371 = new C01371(continuation);
        } else {
            c01371.label = i14 - Integer.MIN_VALUE;
        }
        C01371 c013712 = c01371;
        Object objAwait = c013712.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (c013712.label) {
                case 0:
                    ResultKt.throwOnFailure(objAwait);
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture");
                    }
                    Integer num = (Integer) this.torchControl.getTorchStateLiveData().getValue();
                    i2 = (num != null && num.intValue() == 0) ? 1 : 0;
                    int i15 = (i2 != 0 || i == 0) ? 1 : 0;
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: tasks = " + list);
                    }
                    if (!list.contains(PipelineTask.PRE_CAPTURE)) {
                        mainCaptureParams2 = mainCaptureParams;
                        z2 = true;
                        th2 = null;
                        i3 = i;
                        list2 = list;
                        capturePipelineImpl = this;
                        i4 = i15;
                        z3 = z;
                        if (list2.contains(PipelineTask.MAIN_CAPTURE)) {
                        }
                        if (list2.contains(PipelineTask.POST_CAPTURE)) {
                        }
                        return listListOf;
                    }
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting PRE_CAPTURE");
                    }
                    if (i2 == 0) {
                        mainCaptureParams2 = mainCaptureParams;
                        i5 = i2;
                        capturePipelineImpl = this;
                        i6 = i15;
                        z4 = z;
                        list3 = list;
                        i7 = i;
                        j2 = j;
                        if (z4) {
                        }
                        return coroutine_suspended;
                    }
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Setting torch");
                    }
                    Deferred deferredM1452setTorchAsyncOup_wC0$camera_camera2$default = TorchControl.m1452setTorchAsyncOup_wC0$camera_camera2$default(this.torchControl, TorchControl.TorchMode.Companion.m1464getUSED_AS_FLASHIRs_R8(), false, false, 6, null);
                    c013712.L$0 = this;
                    c013712.L$1 = list;
                    mainCaptureParams2 = mainCaptureParams;
                    c013712.L$2 = mainCaptureParams2;
                    c013712.I$0 = i;
                    c013712.J$0 = j;
                    c013712.Z$0 = z;
                    c013712.I$1 = i2;
                    c013712.I$2 = i15;
                    c013712.label = 1;
                    if (deferredM1452setTorchAsyncOup_wC0$camera_camera2$default.join(c013712) != coroutine_suspended) {
                        i5 = i2;
                        capturePipelineImpl = this;
                        i6 = i15;
                        z4 = z;
                        list3 = list;
                        j3 = j;
                        i7 = i;
                        j2 = j3;
                        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                        if (Logger.isDebugEnabled("CXCP")) {
                            Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Setting torch done");
                        }
                        if (z4) {
                            if (Logger.isDebugEnabled("CXCP")) {
                                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Locking 3A for capture");
                            }
                            CameraGraph graph = this.useCaseGraphContext.getGraph();
                            c013712.L$0 = capturePipelineImpl;
                            c013712.L$1 = list3;
                            c013712.L$2 = mainCaptureParams2;
                            c013712.I$0 = i7;
                            c013712.J$0 = j2;
                            c013712.Z$0 = z4;
                            c013712.I$1 = i5;
                            c013712.I$2 = i6;
                            c013712.label = 2;
                            Object objAcquireSession = graph.acquireSession(c013712);
                            if (objAcquireSession != coroutine_suspended) {
                                j4 = j2;
                                i4 = i6;
                                objAwait = objAcquireSession;
                                i10 = i5;
                                mainCaptureParams4 = mainCaptureParams2;
                                i11 = i7;
                                long j5 = j4;
                                list5 = list3;
                                capturePipelineImpl3 = capturePipelineImpl;
                                autoCloseable = (AutoCloseable) objAwait;
                                try {
                                    CameraGraph.Session session = (CameraGraph.Session) autoCloseable;
                                    boolean z8 = i11 != 0;
                                    boolean z9 = i11 != 0;
                                    c013712.L$0 = capturePipelineImpl3;
                                    c013712.L$1 = list5;
                                    c013712.L$2 = mainCaptureParams4;
                                    c013712.L$3 = autoCloseable;
                                    c013712.I$0 = i11;
                                    c013712.Z$0 = z4;
                                    c013712.I$1 = i10;
                                    c013712.I$2 = i4;
                                    c013712.label = 3;
                                    boolean z10 = z4;
                                    i12 = i11;
                                    boolean z11 = z9;
                                    MainCaptureParams mainCaptureParams5 = mainCaptureParams4;
                                    th2 = null;
                                    objLock3AForCapture$default = CameraGraph.Session.CC.lock3AForCapture$default(session, z8, z11, 0, j5, c013712, 4, null);
                                    if (objLock3AForCapture$default != coroutine_suspended) {
                                        autoCloseable2 = autoCloseable;
                                        objAwait = objLock3AForCapture$default;
                                        list2 = list5;
                                        mainCaptureParams2 = mainCaptureParams5;
                                        capturePipelineImpl4 = capturePipelineImpl3;
                                        z6 = z10;
                                        c013712.L$0 = capturePipelineImpl4;
                                        c013712.L$1 = list2;
                                        c013712.L$2 = mainCaptureParams2;
                                        c013712.L$3 = autoCloseable2;
                                        c013712.I$0 = i12;
                                        c013712.Z$0 = z6;
                                        c013712.I$1 = i10;
                                        c013712.I$2 = i4;
                                        c013712.label = 4;
                                        objAwait = ((Deferred) objAwait).await(c013712);
                                        if (objAwait == coroutine_suspended) {
                                            z5 = z6;
                                            i8 = i12;
                                            r7 = autoCloseable2;
                                            Result3A result3A = (Result3A) objAwait;
                                            AutoCloseableKt.closeFinally(r7, th2);
                                            Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                                            if (Logger.isDebugEnabled("CXCP")) {
                                                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Locking 3A for capture done, result3A = " + result3A);
                                            }
                                            i2 = i10;
                                            capturePipelineImpl = capturePipelineImpl4;
                                            z2 = true;
                                            if (Logger.isDebugEnabled("CXCP")) {
                                                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
                                            }
                                            i3 = i8;
                                            z3 = z5;
                                            if (list2.contains(PipelineTask.MAIN_CAPTURE)) {
                                                listListOf = CollectionsKt.listOf(CompletableDeferredKt.CompletableDeferred(th2));
                                            } else {
                                                if (Logger.isDebugEnabled("CXCP")) {
                                                    Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE");
                                                }
                                                if (mainCaptureParams2 == null) {
                                                    throw new IllegalStateException("Required value was null.");
                                                }
                                                listListOf = capturePipelineImpl.submitRequestInternal(mainCaptureParams2);
                                                if (Logger.isDebugEnabled("CXCP")) {
                                                    Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed");
                                                }
                                            }
                                            if (list2.contains(PipelineTask.POST_CAPTURE)) {
                                                CoroutineScope sequentialScope = capturePipelineImpl.threads.getSequentialScope();
                                                int i16 = i4;
                                                if (i2 != 0) {
                                                    i13 = i16;
                                                    z7 = z2;
                                                } else {
                                                    i13 = i16;
                                                    z7 = false;
                                                }
                                                if (i13 == 0) {
                                                    z2 = false;
                                                }
                                                BuildersKt__Builders_commonKt.launch$default(sequentialScope, null, null, new CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1(listListOf, null, z7, this, z3, z2, i3), 3, null);
                                            }
                                            return listListOf;
                                        }
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    r72 = autoCloseable;
                                    try {
                                        throw th;
                                    } catch (Throwable th4) {
                                        AutoCloseableKt.closeFinally(r72, th);
                                        throw th4;
                                    }
                                }
                            }
                        } else {
                            th2 = null;
                            if (i6 == 0) {
                                z2 = true;
                                i4 = i6;
                                z5 = z4;
                                i2 = i5;
                                i8 = i7;
                                list2 = list3;
                                if (Logger.isDebugEnabled("CXCP")) {
                                }
                                i3 = i8;
                                z3 = z5;
                                if (list2.contains(PipelineTask.MAIN_CAPTURE)) {
                                }
                                if (list2.contains(PipelineTask.POST_CAPTURE)) {
                                }
                                return listListOf;
                            }
                            if (i7 == 0) {
                                if (Logger.isDebugEnabled("CXCP")) {
                                    Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Locking 3A");
                                }
                                c013712.L$0 = capturePipelineImpl;
                                c013712.L$1 = list3;
                                c013712.L$2 = mainCaptureParams2;
                                c013712.I$0 = i7;
                                c013712.Z$0 = z4;
                                c013712.I$1 = i5;
                                c013712.I$2 = i6;
                                c013712.label = 5;
                                z2 = true;
                                if (lockAf(j2, true, c013712) != coroutine_suspended) {
                                    i4 = i6;
                                    z5 = z4;
                                    i9 = i5;
                                    mainCaptureParams3 = mainCaptureParams2;
                                    i8 = i7;
                                    list4 = list3;
                                    capturePipelineImpl2 = capturePipelineImpl;
                                    Camera2Logger camera2Logger4 = Camera2Logger.INSTANCE;
                                    if (Logger.isDebugEnabled("CXCP")) {
                                        Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Locking 3A done");
                                    }
                                    i2 = i9;
                                    capturePipelineImpl = capturePipelineImpl2;
                                    list2 = list4;
                                    mainCaptureParams2 = mainCaptureParams3;
                                    if (Logger.isDebugEnabled("CXCP")) {
                                    }
                                    i3 = i8;
                                    z3 = z5;
                                    if (list2.contains(PipelineTask.MAIN_CAPTURE)) {
                                    }
                                    if (list2.contains(PipelineTask.POST_CAPTURE)) {
                                    }
                                    return listListOf;
                                }
                            } else {
                                z2 = true;
                                if (Logger.isDebugEnabled("CXCP")) {
                                    Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Awaiting 3A convergence");
                                }
                                Function1 function1 = new Function1() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$torchApplyCapture$3$8
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Boolean invoke(FrameInfo it) {
                                        Intrinsics.checkNotNullParameter(it, "it");
                                        return Boolean.valueOf(ConvergenceUtils.is3AConverged(this.this$0.toCameraCaptureResult(it.getMetadata()), true));
                                    }
                                };
                                c013712.L$0 = capturePipelineImpl;
                                c013712.L$1 = list3;
                                c013712.L$2 = mainCaptureParams2;
                                c013712.I$0 = i7;
                                c013712.Z$0 = z4;
                                c013712.I$1 = i5;
                                c013712.I$2 = i6;
                                c013712.label = 6;
                                if (waitForResult(j2, function1, c013712) != coroutine_suspended) {
                                    i4 = i6;
                                    z5 = z4;
                                    i9 = i5;
                                    mainCaptureParams3 = mainCaptureParams2;
                                    i8 = i7;
                                    list4 = list3;
                                    capturePipelineImpl2 = capturePipelineImpl;
                                    Camera2Logger camera2Logger5 = Camera2Logger.INSTANCE;
                                    if (Logger.isDebugEnabled("CXCP")) {
                                        Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: 3A convergence waiting done");
                                    }
                                    i2 = i9;
                                    capturePipelineImpl = capturePipelineImpl2;
                                    list2 = list4;
                                    mainCaptureParams2 = mainCaptureParams3;
                                    if (Logger.isDebugEnabled("CXCP")) {
                                    }
                                    i3 = i8;
                                    z3 = z5;
                                    if (list2.contains(PipelineTask.MAIN_CAPTURE)) {
                                    }
                                    if (list2.contains(PipelineTask.POST_CAPTURE)) {
                                    }
                                    return listListOf;
                                }
                            }
                        }
                    }
                    return coroutine_suspended;
                case 1:
                    int i17 = c013712.I$2;
                    int i18 = c013712.I$1;
                    z4 = c013712.Z$0;
                    long j6 = c013712.J$0;
                    i7 = c013712.I$0;
                    MainCaptureParams mainCaptureParams6 = (MainCaptureParams) c013712.L$2;
                    list3 = (List) c013712.L$1;
                    capturePipelineImpl = (CapturePipelineImpl) c013712.L$0;
                    ResultKt.throwOnFailure(objAwait);
                    i6 = i17;
                    j3 = j6;
                    i5 = i18;
                    mainCaptureParams2 = mainCaptureParams6;
                    j2 = j3;
                    Camera2Logger camera2Logger22 = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled("CXCP")) {
                    }
                    if (z4) {
                    }
                    return coroutine_suspended;
                case 2:
                    i4 = c013712.I$2;
                    i10 = c013712.I$1;
                    z4 = c013712.Z$0;
                    long j7 = c013712.J$0;
                    i7 = c013712.I$0;
                    MainCaptureParams mainCaptureParams7 = (MainCaptureParams) c013712.L$2;
                    list3 = (List) c013712.L$1;
                    capturePipelineImpl = (CapturePipelineImpl) c013712.L$0;
                    ResultKt.throwOnFailure(objAwait);
                    j4 = j7;
                    mainCaptureParams4 = mainCaptureParams7;
                    i11 = i7;
                    long j52 = j4;
                    list5 = list3;
                    capturePipelineImpl3 = capturePipelineImpl;
                    autoCloseable = (AutoCloseable) objAwait;
                    CameraGraph.Session session2 = (CameraGraph.Session) autoCloseable;
                    if (i11 != 0) {
                    }
                    if (i11 != 0) {
                    }
                    c013712.L$0 = capturePipelineImpl3;
                    c013712.L$1 = list5;
                    c013712.L$2 = mainCaptureParams4;
                    c013712.L$3 = autoCloseable;
                    c013712.I$0 = i11;
                    c013712.Z$0 = z4;
                    c013712.I$1 = i10;
                    c013712.I$2 = i4;
                    c013712.label = 3;
                    boolean z102 = z4;
                    i12 = i11;
                    boolean z112 = z9;
                    MainCaptureParams mainCaptureParams52 = mainCaptureParams4;
                    th2 = null;
                    objLock3AForCapture$default = CameraGraph.Session.CC.lock3AForCapture$default(session2, z8, z112, 0, j52, c013712, 4, null);
                    if (objLock3AForCapture$default != coroutine_suspended) {
                    }
                    return coroutine_suspended;
                case 3:
                    i4 = c013712.I$2;
                    i10 = c013712.I$1;
                    z6 = c013712.Z$0;
                    int i19 = c013712.I$0;
                    AutoCloseable autoCloseable3 = (AutoCloseable) c013712.L$3;
                    MainCaptureParams mainCaptureParams8 = (MainCaptureParams) c013712.L$2;
                    List list6 = (List) c013712.L$1;
                    CapturePipelineImpl capturePipelineImpl5 = (CapturePipelineImpl) c013712.L$0;
                    try {
                        ResultKt.throwOnFailure(objAwait);
                        i12 = i19;
                        autoCloseable2 = autoCloseable3;
                        mainCaptureParams2 = mainCaptureParams8;
                        list2 = list6;
                        capturePipelineImpl4 = capturePipelineImpl5;
                        th2 = null;
                        c013712.L$0 = capturePipelineImpl4;
                        c013712.L$1 = list2;
                        c013712.L$2 = mainCaptureParams2;
                        c013712.L$3 = autoCloseable2;
                        c013712.I$0 = i12;
                        c013712.Z$0 = z6;
                        c013712.I$1 = i10;
                        c013712.I$2 = i4;
                        c013712.label = 4;
                        objAwait = ((Deferred) objAwait).await(c013712);
                        if (objAwait == coroutine_suspended) {
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        r72 = autoCloseable3;
                        throw th;
                    }
                    break;
                case 4:
                    i4 = c013712.I$2;
                    i10 = c013712.I$1;
                    z5 = c013712.Z$0;
                    i8 = c013712.I$0;
                    AutoCloseable autoCloseable4 = (AutoCloseable) c013712.L$3;
                    mainCaptureParams2 = (MainCaptureParams) c013712.L$2;
                    list2 = (List) c013712.L$1;
                    capturePipelineImpl4 = (CapturePipelineImpl) c013712.L$0;
                    ResultKt.throwOnFailure(objAwait);
                    th2 = null;
                    r7 = autoCloseable4;
                    Result3A result3A2 = (Result3A) objAwait;
                    AutoCloseableKt.closeFinally(r7, th2);
                    Camera2Logger camera2Logger32 = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled("CXCP")) {
                    }
                    i2 = i10;
                    capturePipelineImpl = capturePipelineImpl4;
                    z2 = true;
                    if (Logger.isDebugEnabled("CXCP")) {
                    }
                    i3 = i8;
                    z3 = z5;
                    if (list2.contains(PipelineTask.MAIN_CAPTURE)) {
                    }
                    if (list2.contains(PipelineTask.POST_CAPTURE)) {
                    }
                    return listListOf;
                case 5:
                    i4 = c013712.I$2;
                    i9 = c013712.I$1;
                    z5 = c013712.Z$0;
                    i8 = c013712.I$0;
                    mainCaptureParams3 = (MainCaptureParams) c013712.L$2;
                    list4 = (List) c013712.L$1;
                    capturePipelineImpl2 = (CapturePipelineImpl) c013712.L$0;
                    ResultKt.throwOnFailure(objAwait);
                    z2 = true;
                    th2 = null;
                    Camera2Logger camera2Logger42 = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled("CXCP")) {
                    }
                    i2 = i9;
                    capturePipelineImpl = capturePipelineImpl2;
                    list2 = list4;
                    mainCaptureParams2 = mainCaptureParams3;
                    if (Logger.isDebugEnabled("CXCP")) {
                    }
                    i3 = i8;
                    z3 = z5;
                    if (list2.contains(PipelineTask.MAIN_CAPTURE)) {
                    }
                    if (list2.contains(PipelineTask.POST_CAPTURE)) {
                    }
                    return listListOf;
                case 6:
                    i4 = c013712.I$2;
                    i9 = c013712.I$1;
                    z5 = c013712.Z$0;
                    i8 = c013712.I$0;
                    mainCaptureParams3 = (MainCaptureParams) c013712.L$2;
                    list4 = (List) c013712.L$1;
                    capturePipelineImpl2 = (CapturePipelineImpl) c013712.L$0;
                    ResultKt.throwOnFailure(objAwait);
                    z2 = true;
                    th2 = null;
                    Camera2Logger camera2Logger52 = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled("CXCP")) {
                    }
                    i2 = i9;
                    capturePipelineImpl = capturePipelineImpl2;
                    list2 = list4;
                    mainCaptureParams2 = mainCaptureParams3;
                    if (Logger.isDebugEnabled("CXCP")) {
                    }
                    i3 = i8;
                    z3 = z5;
                    if (list2.contains(PipelineTask.MAIN_CAPTURE)) {
                    }
                    if (list2.contains(PipelineTask.POST_CAPTURE)) {
                    }
                    return listListOf;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Throwable th6) {
            th = th6;
            r72 = r7;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0186 A[Catch: all -> 0x004c, TryCatch #3 {all -> 0x004c, blocks: (B:15:0x0047, B:68:0x017e, B:70:0x0186, B:71:0x018f), top: B:108:0x0047 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01f0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object aePreCaptureApplyCapture(MainCaptureParams mainCaptureParams, long j, int i, List list, Continuation continuation) throws Exception {
        C01251 c01251;
        MainCaptureParams mainCaptureParams2;
        int i2;
        CapturePipelineImpl capturePipelineImpl;
        List list2;
        MainCaptureParams mainCaptureParams3;
        Object obj;
        int i3;
        long j2;
        CapturePipelineImpl capturePipelineImpl2;
        AutoCloseable autoCloseable;
        AutoCloseable autoCloseable2;
        CameraGraph.Session session;
        Throwable th;
        AutoCloseable autoCloseable3;
        boolean z;
        CapturePipelineImpl capturePipelineImpl3;
        List list3;
        boolean z2;
        MainCaptureParams mainCaptureParams4;
        int i4;
        List list4;
        List list5;
        Continuation continuation2;
        List listListOf;
        List list6 = list;
        if (continuation instanceof C01251) {
            c01251 = (C01251) continuation;
            int i5 = c01251.label;
            if ((i5 & Integer.MIN_VALUE) != 0) {
                c01251.label = i5 - Integer.MIN_VALUE;
            } else {
                c01251 = new C01251(continuation);
            }
        }
        C01251 c012512 = c01251;
        Object obj2 = c012512.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i6 = c012512.label;
        try {
            try {
                if (i6 == 0) {
                    ResultKt.throwOnFailure(obj2);
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#aePreCaptureApplyCapture");
                    }
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: tasks = " + list6);
                    }
                    if (!list6.contains(PipelineTask.PRE_CAPTURE)) {
                        mainCaptureParams2 = mainCaptureParams;
                        i2 = i;
                        capturePipelineImpl = this;
                        if (list6.contains(PipelineTask.MAIN_CAPTURE)) {
                        }
                        if (list6.contains(PipelineTask.POST_CAPTURE)) {
                        }
                        return listListOf;
                    }
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting PRE_CAPTURE");
                    }
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#aePreCaptureApplyCapture: Acquiring session for locking 3A");
                    }
                    CameraGraph graph = this.useCaseGraphContext.getGraph();
                    c012512.L$0 = this;
                    c012512.L$1 = list6;
                    c012512.L$2 = mainCaptureParams;
                    c012512.J$0 = j;
                    c012512.I$0 = i;
                    c012512.label = 1;
                    Object objAcquireSession = graph.acquireSession(c012512);
                    if (objAcquireSession != coroutine_suspended) {
                        list2 = list6;
                        mainCaptureParams3 = mainCaptureParams;
                        obj = objAcquireSession;
                        i3 = i;
                        j2 = j;
                        capturePipelineImpl2 = this;
                    }
                    return coroutine_suspended;
                }
                if (i6 != 1) {
                    if (i6 == 2) {
                        i4 = c012512.I$0;
                        AutoCloseable autoCloseable4 = (AutoCloseable) c012512.L$3;
                        mainCaptureParams4 = (MainCaptureParams) c012512.L$2;
                        List list7 = (List) c012512.L$1;
                        CapturePipelineImpl capturePipelineImpl4 = (CapturePipelineImpl) c012512.L$0;
                        try {
                            ResultKt.throwOnFailure(obj2);
                            autoCloseable2 = autoCloseable4;
                            list4 = list7;
                            capturePipelineImpl = capturePipelineImpl4;
                            c012512.L$0 = capturePipelineImpl;
                            c012512.L$1 = list4;
                            c012512.L$2 = mainCaptureParams4;
                            c012512.L$3 = autoCloseable2;
                            c012512.I$0 = i4;
                            c012512.label = 3;
                            if (((Deferred) obj2).join(c012512) != coroutine_suspended) {
                                MainCaptureParams mainCaptureParams5 = mainCaptureParams4;
                                list5 = list4;
                                mainCaptureParams2 = mainCaptureParams5;
                                autoCloseable3 = autoCloseable2;
                                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                                if (Logger.isDebugEnabled("CXCP")) {
                                }
                                Unit unit = Unit.INSTANCE;
                                AutoCloseableKt.closeFinally(autoCloseable3, null);
                                if (Logger.isDebugEnabled("CXCP")) {
                                }
                                i2 = i4;
                                list6 = list5;
                                if (list6.contains(PipelineTask.MAIN_CAPTURE)) {
                                }
                                if (list6.contains(PipelineTask.POST_CAPTURE)) {
                                }
                                return listListOf;
                            }
                            return coroutine_suspended;
                        } catch (Throwable th2) {
                            th = th2;
                            autoCloseable3 = autoCloseable4;
                            throw th;
                        }
                    }
                    if (i6 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    i4 = c012512.I$0;
                    autoCloseable3 = (AutoCloseable) c012512.L$3;
                    mainCaptureParams2 = (MainCaptureParams) c012512.L$2;
                    list5 = (List) c012512.L$1;
                    capturePipelineImpl = (CapturePipelineImpl) c012512.L$0;
                    try {
                        ResultKt.throwOnFailure(obj2);
                        Camera2Logger camera2Logger22 = Camera2Logger.INSTANCE;
                        if (Logger.isDebugEnabled("CXCP")) {
                            Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#aePreCaptureApplyCapture: Locking 3A for capture done");
                        }
                        Unit unit2 = Unit.INSTANCE;
                        AutoCloseableKt.closeFinally(autoCloseable3, null);
                        if (Logger.isDebugEnabled("CXCP")) {
                            Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
                        }
                        i2 = i4;
                        list6 = list5;
                        if (list6.contains(PipelineTask.MAIN_CAPTURE)) {
                            if (Logger.isDebugEnabled("CXCP")) {
                                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE");
                            }
                            if (mainCaptureParams2 == null) {
                                throw new IllegalStateException("Required value was null.");
                            }
                            List listSubmitRequestInternal = capturePipelineImpl.submitRequestInternal(mainCaptureParams2);
                            if (Logger.isDebugEnabled("CXCP")) {
                                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed");
                            }
                            listListOf = listSubmitRequestInternal;
                            continuation2 = null;
                        } else {
                            continuation2 = null;
                            listListOf = CollectionsKt.listOf(CompletableDeferredKt.CompletableDeferred((Object) null));
                        }
                        if (list6.contains(PipelineTask.POST_CAPTURE)) {
                            BuildersKt__Builders_commonKt.launch$default(capturePipelineImpl.threads.getSequentialScope(), null, null, new CapturePipelineImpl$aePreCaptureApplyCapture$$inlined$invoke$1(listListOf, continuation2, this, i2), 3, null);
                        }
                        return listListOf;
                    } catch (Throwable th3) {
                        th = th3;
                        try {
                            throw th;
                        } catch (Throwable th4) {
                            AutoCloseableKt.closeFinally(autoCloseable3, th);
                            throw th4;
                        }
                    }
                }
                int i7 = c012512.I$0;
                long j3 = c012512.J$0;
                MainCaptureParams mainCaptureParams6 = (MainCaptureParams) c012512.L$2;
                List list8 = (List) c012512.L$1;
                capturePipelineImpl2 = (CapturePipelineImpl) c012512.L$0;
                ResultKt.throwOnFailure(obj2);
                i3 = i7;
                mainCaptureParams3 = mainCaptureParams6;
                list2 = list8;
                j2 = j3;
                obj = obj2;
                Object objLock3AForCapture$default = CameraGraph.Session.CC.lock3AForCapture$default(session, z2, z, 0, j2, c012512, 4, null);
                if (objLock3AForCapture$default == coroutine_suspended) {
                    return coroutine_suspended;
                }
                mainCaptureParams4 = mainCaptureParams3;
                i4 = i3;
                obj2 = objLock3AForCapture$default;
                capturePipelineImpl = capturePipelineImpl3;
                list4 = list3;
                c012512.L$0 = capturePipelineImpl;
                c012512.L$1 = list4;
                c012512.L$2 = mainCaptureParams4;
                c012512.L$3 = autoCloseable2;
                c012512.I$0 = i4;
                c012512.label = 3;
                if (((Deferred) obj2).join(c012512) != coroutine_suspended) {
                }
                return coroutine_suspended;
            } catch (Throwable th5) {
                th = th5;
                th = th;
                autoCloseable3 = autoCloseable2;
                throw th;
            }
            session = (CameraGraph.Session) autoCloseable;
            Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                try {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#aePreCaptureApplyCapture: Locking 3A for capture");
                } catch (Throwable th6) {
                    th = th6;
                    autoCloseable3 = autoCloseable;
                    throw th;
                }
            }
            boolean z3 = i3 == 0;
            z = i3 == 0;
            c012512.L$0 = capturePipelineImpl2;
            c012512.L$1 = list2;
            c012512.L$2 = mainCaptureParams3;
            c012512.L$3 = autoCloseable;
            c012512.I$0 = i3;
            c012512.label = 2;
            capturePipelineImpl3 = capturePipelineImpl2;
            list3 = list2;
            z2 = z3;
            autoCloseable2 = autoCloseable;
        } catch (Throwable th7) {
            th = th7;
            autoCloseable2 = autoCloseable;
            th = th;
            autoCloseable3 = autoCloseable2;
            throw th;
        }
        autoCloseable = (AutoCloseable) obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object screenFlashCapture(MainCaptureParams mainCaptureParams, int i, List list, Continuation continuation) {
        C01351 c01351;
        CapturePipelineImpl capturePipelineImpl;
        List listListOf;
        if (continuation instanceof C01351) {
            c01351 = (C01351) continuation;
            int i2 = c01351.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c01351.label = i2 - Integer.MIN_VALUE;
            } else {
                c01351 = new C01351(continuation);
            }
        }
        Object obj = c01351.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c01351.label;
        if (i3 == 0) {
            ResultKt.throwOnFailure(obj);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#screenFlashCapture");
            }
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: tasks = " + list);
            }
            if (!list.contains(PipelineTask.PRE_CAPTURE)) {
                capturePipelineImpl = this;
                if (list.contains(PipelineTask.MAIN_CAPTURE)) {
                    listListOf = CollectionsKt.listOf(CompletableDeferredKt.CompletableDeferred((Object) null));
                } else {
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting MAIN_CAPTURE");
                    }
                    if (mainCaptureParams == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    listListOf = capturePipelineImpl.submitRequestInternal(mainCaptureParams);
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: MAIN_CAPTURE completed");
                    }
                }
                if (list.contains(PipelineTask.POST_CAPTURE)) {
                    BuildersKt__Builders_commonKt.launch$default(capturePipelineImpl.threads.getSequentialScope(), null, null, new CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1(listListOf, null, this, i), 3, null);
                }
                return listListOf;
            }
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: starting PRE_CAPTURE");
            }
            c01351.L$0 = this;
            c01351.L$1 = list;
            c01351.L$2 = mainCaptureParams;
            c01351.I$0 = i;
            c01351.label = 1;
            if (invokeScreenFlashPreCaptureTasks(i, c01351) == coroutine_suspended) {
                return coroutine_suspended;
            }
            capturePipelineImpl = this;
        } else {
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i = c01351.I$0;
            mainCaptureParams = (MainCaptureParams) c01351.L$2;
            list = (List) c01351.L$1;
            capturePipelineImpl = (CapturePipelineImpl) c01351.L$0;
            ResultKt.throwOnFailure(obj);
        }
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: PRE_CAPTURE completed");
        }
        if (list.contains(PipelineTask.MAIN_CAPTURE)) {
        }
        if (list.contains(PipelineTask.POST_CAPTURE)) {
        }
        return listListOf;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00bf, code lost:
    
        if (r15 != r0) goto L50;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008a A[Catch: all -> 0x0094, TryCatch #0 {all -> 0x0094, blocks: (B:34:0x007f, B:36:0x008a, B:39:0x009a, B:43:0x00a2), top: B:60:0x007f }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /* JADX WARN: Type inference failed for: r14v0, types: [int] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r14v19 */
    /* JADX WARN: Type inference failed for: r14v2, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r14v20 */
    /* JADX WARN: Type inference failed for: r14v22 */
    /* JADX WARN: Type inference failed for: r14v23 */
    /* JADX WARN: Type inference failed for: r14v24 */
    /* JADX WARN: Type inference failed for: r14v25 */
    /* JADX WARN: Type inference failed for: r14v26 */
    /* JADX WARN: Type inference failed for: r14v3, types: [int] */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeScreenFlashPreCaptureTasks(int i, Continuation continuation) throws Exception {
        C01311 c01311;
        Throwable th;
        ?? r14;
        ?? r142;
        ?? r143;
        AutoCloseable autoCloseable;
        Object objLock3AForCapture$default;
        AutoCloseable autoCloseable2;
        if (continuation instanceof C01311) {
            c01311 = (C01311) continuation;
            int i2 = c01311.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c01311.label = i2 - Integer.MIN_VALUE;
            } else {
                c01311 = new C01311(continuation);
            }
        }
        C01311 c013112 = c01311;
        Object objAcquireSession = c013112.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c013112.label;
        boolean z = true;
        try {
            if (i3 == 0) {
                ResultKt.throwOnFailure(objAcquireSession);
                FlashControl flashControl = this.flashControl;
                c013112.I$0 = i;
                c013112.label = 1;
                r142 = i;
                if (flashControl.startScreenFlashCaptureTasks(c013112) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i3 == 1) {
                int i4 = c013112.I$0;
                ResultKt.throwOnFailure(objAcquireSession);
                r142 = i4;
            } else {
                if (i3 == 2) {
                    int i5 = c013112.I$0;
                    ResultKt.throwOnFailure(objAcquireSession);
                    r143 = i5;
                    autoCloseable = (AutoCloseable) objAcquireSession;
                    try {
                        CameraGraph.Session session = (CameraGraph.Session) autoCloseable;
                        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                        if (Logger.isDebugEnabled("CXCP")) {
                            Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPreCapture: Locking 3A for capture");
                        }
                        long j = CapturePipelineKt.CHECK_3A_WITH_SCREEN_FLASH_TIMEOUT_IN_NS;
                        if (r143 == 0) {
                            z = false;
                        }
                        c013112.L$0 = autoCloseable;
                        c013112.label = 3;
                        objLock3AForCapture$default = CameraGraph.Session.CC.lock3AForCapture$default(session, z, true, 0, j, c013112, 4, null);
                        if (objLock3AForCapture$default != coroutine_suspended) {
                            objAcquireSession = objLock3AForCapture$default;
                            autoCloseable2 = autoCloseable;
                            c013112.L$0 = autoCloseable2;
                            c013112.label = 4;
                            objAcquireSession = ((Deferred) objAcquireSession).await(c013112);
                            i = autoCloseable2;
                        }
                        return coroutine_suspended;
                    } catch (Throwable th2) {
                        th = th2;
                        r14 = autoCloseable;
                        try {
                            throw th;
                        } catch (Throwable th3) {
                            AutoCloseableKt.closeFinally(r14, th);
                            throw th3;
                        }
                    }
                }
                if (i3 != 3) {
                    if (i3 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    AutoCloseable autoCloseable3 = (AutoCloseable) c013112.L$0;
                    ResultKt.throwOnFailure(objAcquireSession);
                    i = autoCloseable3;
                    Result3A result3A = (Result3A) objAcquireSession;
                    Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPreCapture: Locking 3A for capture done, result3A = " + result3A);
                    }
                    Unit unit = Unit.INSTANCE;
                    AutoCloseableKt.closeFinally(i, null);
                    return Unit.INSTANCE;
                }
                AutoCloseable autoCloseable4 = (AutoCloseable) c013112.L$0;
                ResultKt.throwOnFailure(objAcquireSession);
                autoCloseable2 = autoCloseable4;
                c013112.L$0 = autoCloseable2;
                c013112.label = 4;
                objAcquireSession = ((Deferred) objAcquireSession).await(c013112);
                i = autoCloseable2;
            }
            CameraGraph graph = this.useCaseGraphContext.getGraph();
            c013112.I$0 = r142;
            c013112.label = 2;
            objAcquireSession = graph.acquireSession(c013112);
            r143 = r142;
            if (objAcquireSession != coroutine_suspended) {
                autoCloseable = (AutoCloseable) objAcquireSession;
                CameraGraph.Session session2 = (CameraGraph.Session) autoCloseable;
                Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                }
                long j2 = CapturePipelineKt.CHECK_3A_WITH_SCREEN_FLASH_TIMEOUT_IN_NS;
                if (r143 == 0) {
                }
                c013112.L$0 = autoCloseable;
                c013112.label = 3;
                objLock3AForCapture$default = CameraGraph.Session.CC.lock3AForCapture$default(session2, z, true, 0, j2, c013112, 4, null);
                if (objLock3AForCapture$default != coroutine_suspended) {
                }
            }
            return coroutine_suspended;
        } catch (Throwable th4) {
            th = th4;
            r14 = i;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x008c A[Catch: all -> 0x0096, TryCatch #0 {all -> 0x0096, blocks: (B:32:0x0081, B:34:0x008c, B:40:0x009f), top: B:54:0x0081 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b3 A[Catch: all -> 0x0036, TryCatch #2 {all -> 0x0036, blocks: (B:14:0x0031, B:44:0x00ab, B:46:0x00b3, B:47:0x00bc), top: B:58:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeScreenFlashPostCaptureTasks(int i, Continuation continuation) throws Exception {
        C01301 c01301;
        AutoCloseable autoCloseable;
        Throwable th;
        AutoCloseable autoCloseable2;
        CameraGraph.Session session;
        if (continuation instanceof C01301) {
            c01301 = (C01301) continuation;
            int i2 = c01301.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c01301.label = i2 - Integer.MIN_VALUE;
            } else {
                c01301 = new C01301(continuation);
            }
        }
        Object objAcquireSession = c01301.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c01301.label;
        boolean z = true;
        if (i3 == 0) {
            ResultKt.throwOnFailure(objAcquireSession);
            FlashControl flashControl = this.flashControl;
            c01301.I$0 = i;
            c01301.label = 1;
            if (flashControl.stopScreenFlashCaptureTasks(c01301) != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i3 != 1) {
            if (i3 != 2) {
                if (i3 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                autoCloseable2 = (AutoCloseable) c01301.L$0;
                try {
                    ResultKt.throwOnFailure(objAcquireSession);
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPostCapture: Unlocking 3A done");
                    }
                    Unit unit = Unit.INSTANCE;
                    AutoCloseableKt.closeFinally(autoCloseable2, null);
                    return Unit.INSTANCE;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        throw th;
                    } catch (Throwable th3) {
                        AutoCloseableKt.closeFinally(autoCloseable2, th);
                        throw th3;
                    }
                }
            }
            i = c01301.I$0;
            ResultKt.throwOnFailure(objAcquireSession);
            autoCloseable = (AutoCloseable) objAcquireSession;
            try {
                session = (CameraGraph.Session) autoCloseable;
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPostCapture: Unlocking 3A");
                }
                if (i == 0) {
                    z = false;
                }
                c01301.L$0 = autoCloseable;
                c01301.label = 3;
                if (session.unlock3APostCapture(z, c01301) != coroutine_suspended) {
                    autoCloseable2 = autoCloseable;
                    Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled("CXCP")) {
                    }
                    Unit unit2 = Unit.INSTANCE;
                    AutoCloseableKt.closeFinally(autoCloseable2, null);
                    return Unit.INSTANCE;
                }
                return coroutine_suspended;
            } catch (Throwable th4) {
                th = th4;
                autoCloseable2 = autoCloseable;
                throw th;
            }
        }
        i = c01301.I$0;
        ResultKt.throwOnFailure(objAcquireSession);
        Camera2Logger camera2Logger4 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPostCapture: Acquiring session for unlocking 3A");
        }
        CameraGraph graph = this.useCaseGraphContext.getGraph();
        c01301.I$0 = i;
        c01301.label = 2;
        objAcquireSession = graph.acquireSession(c01301);
        if (objAcquireSession != coroutine_suspended) {
            autoCloseable = (AutoCloseable) objAcquireSession;
            session = (CameraGraph.Session) autoCloseable;
            Camera2Logger camera2Logger22 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
            }
            if (i == 0) {
            }
            c01301.L$0 = autoCloseable;
            c01301.label = 3;
            if (session.unlock3APostCapture(z, c01301) != coroutine_suspended) {
            }
        }
        return coroutine_suspended;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object lockAf(long j, boolean z, Continuation continuation) throws Exception {
        C01341 c01341;
        boolean z2;
        long j2;
        AutoCloseable autoCloseable;
        Object obj;
        AutoCloseable autoCloseable2;
        CameraGraph.Session session;
        Lock3ABehavior lock3ABehaviorM1655boximpl;
        Function1 convergeCondition;
        long j3;
        C01341 c013412;
        int i;
        Object objM1600lock3AtS25XM$default;
        C01341 c013413;
        AutoCloseable autoCloseable3;
        Throwable th;
        if (continuation instanceof C01341) {
            c01341 = (C01341) continuation;
            int i2 = c01341.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c01341.label = i2 - Integer.MIN_VALUE;
            } else {
                c01341 = new C01341(continuation);
            }
        }
        Object objAcquireSession = c01341.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c01341.label;
        try {
            try {
                if (i3 == 0) {
                    ResultKt.throwOnFailure(objAcquireSession);
                    CameraGraph graph = this.useCaseGraphContext.getGraph();
                    c01341.J$0 = j;
                    z2 = z;
                    c01341.Z$0 = z2;
                    c01341.label = 1;
                    objAcquireSession = graph.acquireSession(c01341);
                    if (objAcquireSession == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    j2 = j;
                } else {
                    if (i3 != 1) {
                        if (i3 != 2) {
                            if (i3 != 3) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(objAcquireSession);
                            return objAcquireSession;
                        }
                        autoCloseable3 = (AutoCloseable) c01341.L$0;
                        try {
                            ResultKt.throwOnFailure(objAcquireSession);
                            objM1600lock3AtS25XM$default = objAcquireSession;
                            obj = coroutine_suspended;
                            c013413 = c01341;
                            autoCloseable2 = autoCloseable3;
                            i = 3;
                            Deferred deferred = (Deferred) objM1600lock3AtS25XM$default;
                            AutoCloseableKt.closeFinally(autoCloseable2, null);
                            c013413.L$0 = null;
                            c013413.label = i;
                            Object objAwait = deferred.await(c013413);
                            return objAwait != obj ? obj : objAwait;
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                throw th;
                            } catch (Throwable th3) {
                                AutoCloseableKt.closeFinally(autoCloseable3, th);
                                throw th3;
                            }
                        }
                    }
                    z2 = c01341.Z$0;
                    long j4 = c01341.J$0;
                    ResultKt.throwOnFailure(objAcquireSession);
                    j2 = j4;
                }
                objM1600lock3AtS25XM$default = CameraGraph.Session.CC.m1600lock3AtS25XM$default(session, null, null, null, null, null, null, null, lock3ABehaviorM1655boximpl, null, null, convergeCondition, null, 0, j2, j3, c013412, 6719, null);
                c013413 = c013412;
                if (objM1600lock3AtS25XM$default == obj) {
                    return obj;
                }
                Deferred deferred2 = (Deferred) objM1600lock3AtS25XM$default;
                AutoCloseableKt.closeFinally(autoCloseable2, null);
                c013413.L$0 = null;
                c013413.label = i;
                Object objAwait2 = deferred2.await(c013413);
                if (objAwait2 != obj) {
                }
            } catch (Throwable th4) {
                th = th4;
                th = th;
                autoCloseable3 = autoCloseable2;
                throw th;
            }
            session = (CameraGraph.Session) autoCloseable;
            lock3ABehaviorM1655boximpl = Lock3ABehavior.m1655boximpl(Lock3ABehavior.Companion.m1662getAFTER_CURRENT_SCANhRqSH3k());
            convergeCondition = getConvergeCondition(z2);
            j3 = CapturePipelineKt.CHECK_3A_TIMEOUT_IN_NS;
            c01341.L$0 = autoCloseable;
            c01341.label = 2;
            c013412 = c01341;
            autoCloseable2 = autoCloseable;
            i = 3;
        } catch (Throwable th5) {
            th = th5;
            autoCloseable2 = autoCloseable;
            th = th;
            autoCloseable3 = autoCloseable2;
            throw th;
        }
        autoCloseable = (AutoCloseable) objAcquireSession;
        obj = coroutine_suspended;
    }

    private final Function1 getConvergeCondition(final boolean z) {
        return new Function1() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(CapturePipelineImpl.getConvergeCondition$lambda$0(this.f$0, z, (FrameMetadata) obj));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean getConvergeCondition$lambda$0(CapturePipelineImpl capturePipelineImpl, boolean z, FrameMetadata frameMetadata) {
        Intrinsics.checkNotNullParameter(frameMetadata, "frameMetadata");
        return ConvergenceUtils.is3AConverged(capturePipelineImpl.toCameraCaptureResult(frameMetadata), z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CameraCaptureResult toCameraCaptureResult(final FrameMetadata frameMetadata) {
        return new CaptureResultAdapter(this.emptyRequestMetadata, frameMetadata.mo1641getFrameNumberUgla2oM(), new FrameInfo(frameMetadata, this) { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$toCameraCaptureResult$frameInfo$1
            private final String camera;
            private final FrameMetadata frameMetadata;
            private final long frameNumber;
            private final FrameMetadata metadata;
            private final RequestMetadata requestMetadata;

            @Override // androidx.camera.camera2.pipe.UnsafeWrapper
            public Object unwrapAs(KClass type) {
                Intrinsics.checkNotNullParameter(type, "type");
                return null;
            }

            {
                this.frameMetadata = frameMetadata;
                this.metadata = frameMetadata;
                this.camera = frameMetadata.mo1640getCameraDz_R5H8();
                this.frameNumber = frameMetadata.mo1641getFrameNumberUgla2oM();
                this.requestMetadata = this.emptyRequestMetadata;
            }

            @Override // androidx.camera.camera2.pipe.FrameInfo
            public FrameMetadata getMetadata() {
                return this.metadata;
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0093 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object unlockAf(long j, Continuation continuation) throws Exception {
        C01391 c01391;
        long j2;
        long j3;
        AutoCloseable autoCloseable;
        Throwable th;
        AutoCloseable autoCloseable2;
        if (continuation instanceof C01391) {
            c01391 = (C01391) continuation;
            int i = c01391.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01391.label = i - Integer.MIN_VALUE;
            } else {
                c01391 = new C01391(continuation);
            }
        }
        C01391 c013912 = c01391;
        Object objAcquireSession = c013912.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c013912.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objAcquireSession);
                CameraGraph graph = this.useCaseGraphContext.getGraph();
                j2 = j;
                c013912.J$0 = j2;
                c013912.label = 1;
                objAcquireSession = graph.acquireSession(c013912);
                if (objAcquireSession != coroutine_suspended) {
                }
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(objAcquireSession);
                    return objAcquireSession;
                }
                autoCloseable2 = (AutoCloseable) c013912.L$0;
                try {
                    ResultKt.throwOnFailure(objAcquireSession);
                    Deferred deferred = (Deferred) objAcquireSession;
                    AutoCloseableKt.closeFinally(autoCloseable2, null);
                    c013912.L$0 = null;
                    c013912.label = 3;
                    Object objAwait = deferred.await(c013912);
                    return objAwait != coroutine_suspended ? coroutine_suspended : objAwait;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        throw th;
                    } catch (Throwable th3) {
                        AutoCloseableKt.closeFinally(autoCloseable2, th);
                        throw th3;
                    }
                }
            }
            j2 = c013912.J$0;
            ResultKt.throwOnFailure(objAcquireSession);
            Boolean boolBoxBoolean = Boxing.boxBoolean(true);
            c013912.L$0 = autoCloseable;
            c013912.label = 2;
            objAcquireSession = CameraGraph.Session.CC.unlock3A$default((CameraGraph.Session) autoCloseable, null, boolBoxBoolean, null, null, 0, j3, c013912, 29, null);
            if (objAcquireSession != coroutine_suspended) {
                autoCloseable2 = autoCloseable;
                Deferred deferred2 = (Deferred) objAcquireSession;
                AutoCloseableKt.closeFinally(autoCloseable2, null);
                c013912.L$0 = null;
                c013912.label = 3;
                Object objAwait2 = deferred2.await(c013912);
                if (objAwait2 != coroutine_suspended) {
                }
            }
        } catch (Throwable th4) {
            th = th4;
            autoCloseable2 = autoCloseable;
            throw th;
        }
        j3 = j2;
        autoCloseable = (AutoCloseable) objAcquireSession;
    }

    private final List submitRequestInternal(MainCaptureParams mainCaptureParams) {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#submitRequestInternal; Submitting " + mainCaptureParams.getConfigs() + " with CameraPipe");
        }
        ArrayList arrayList = new ArrayList();
        List configs = mainCaptureParams.getConfigs();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = configs.iterator();
        while (true) {
            Request requestM1385mapToRequestnAberiA = null;
            if (!it.hasNext()) {
                break;
            }
            CaptureConfig captureConfig = (CaptureConfig) it.next();
            final CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            arrayList.add(completableDeferredCompletableDeferred$default);
            try {
                requestM1385mapToRequestnAberiA = this.configAdapter.m1385mapToRequestnAberiA(captureConfig, mainCaptureParams.m1441getRequestTemplatefGx8uWA(), mainCaptureParams.getSessionConfigOptions(), CollectionsKt.listOf(new Request.Listener() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$submitRequestInternal$requests$1$1
                    @Override // androidx.camera.camera2.pipe.Request.Listener
                    /* JADX INFO: renamed from: onBufferLost-DlC0U5Y */
                    public /* synthetic */ void mo1387onBufferLostDlC0U5Y(RequestMetadata requestMetadata, long j, int i) {
                        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
                    }

                    @Override // androidx.camera.camera2.pipe.Request.Listener
                    /* JADX INFO: renamed from: onBufferLost-iiEMlm4 */
                    public /* synthetic */ void mo1388onBufferLostiiEMlm4(RequestMetadata requestMetadata, long j, int i, int i2) {
                        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
                    }

                    @Override // androidx.camera.camera2.pipe.Request.Listener
                    public /* synthetic */ void onCaptureProgress(RequestMetadata requestMetadata, int i) {
                        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
                    }

                    @Override // androidx.camera.camera2.pipe.Request.Listener
                    /* JADX INFO: renamed from: onComplete-CcXjc1I */
                    public /* synthetic */ void mo1389onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
                        Request.Listener.CC.m1740$default$onCompleteCcXjc1I(this, requestMetadata, j, frameInfo);
                    }

                    @Override // androidx.camera.camera2.pipe.Request.Listener
                    /* JADX INFO: renamed from: onPartialCaptureResult-CcXjc1I */
                    public /* synthetic */ void mo1391onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameMetadata frameMetadata) {
                        Request.Listener.CC.m1742$default$onPartialCaptureResultCcXjc1I(this, requestMetadata, j, frameMetadata);
                    }

                    @Override // androidx.camera.camera2.pipe.Request.Listener
                    /* JADX INFO: renamed from: onReadoutStarted-mP9r-9w */
                    public /* synthetic */ void mo1392onReadoutStartedmP9r9w(RequestMetadata requestMetadata, long j, long j2) {
                        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
                    }

                    @Override // androidx.camera.camera2.pipe.Request.Listener
                    public /* synthetic */ void onRequestSequenceAborted(RequestMetadata requestMetadata) {
                        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
                    }

                    @Override // androidx.camera.camera2.pipe.Request.Listener
                    /* JADX INFO: renamed from: onRequestSequenceCompleted-RuT0dZU */
                    public /* synthetic */ void mo1393onRequestSequenceCompletedRuT0dZU(RequestMetadata requestMetadata, long j) {
                        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
                    }

                    @Override // androidx.camera.camera2.pipe.Request.Listener
                    public /* synthetic */ void onRequestSequenceCreated(RequestMetadata requestMetadata) {
                        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
                    }

                    @Override // androidx.camera.camera2.pipe.Request.Listener
                    public /* synthetic */ void onRequestSequenceSubmitted(RequestMetadata requestMetadata) {
                        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
                    }

                    @Override // androidx.camera.camera2.pipe.Request.Listener
                    /* JADX INFO: renamed from: onStarted-uGKBvU4 */
                    public /* synthetic */ void mo1394onStarteduGKBvU4(RequestMetadata requestMetadata, long j, long j2) {
                        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
                    }

                    @Override // androidx.camera.camera2.pipe.Request.Listener
                    public void onAborted(Request request) {
                        Intrinsics.checkNotNullParameter(request, "request");
                        completableDeferredCompletableDeferred$default.completeExceptionally(new ImageCaptureException(3, "Capture request is cancelled because camera is closed", null));
                    }

                    @Override // androidx.camera.camera2.pipe.Request.Listener
                    /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
                    public void mo1395onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo totalCaptureResult) {
                        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
                        Intrinsics.checkNotNullParameter(totalCaptureResult, "totalCaptureResult");
                        completableDeferredCompletableDeferred$default.complete(null);
                    }

                    @Override // androidx.camera.camera2.pipe.Request.Listener
                    /* JADX INFO: renamed from: onFailed-CcXjc1I */
                    public void mo1390onFailedCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
                        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
                        Intrinsics.checkNotNullParameter(requestFailure, "requestFailure");
                        completableDeferredCompletableDeferred$default.completeExceptionally(new ImageCaptureException(2, "Capture request failed with reason " + requestFailure.getReason(), null));
                    }
                }));
            } catch (IllegalStateException e) {
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isInfoEnabled("CXCP")) {
                    Log.i(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#submitRequestInternal: configAdapter.mapToRequest failed!", e);
                }
                completableDeferredCompletableDeferred$default.completeExceptionally(new ImageCaptureException(2, "Capture request failed with reason " + e.getMessage(), e));
            }
            if (requestM1385mapToRequestnAberiA != null) {
                arrayList2.add(requestM1385mapToRequestnAberiA);
            }
        }
        if (arrayList2.isEmpty()) {
            return arrayList;
        }
        BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new C0136x5c55b0eb(null, this, arrayList, arrayList2), 3, null);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object isPhysicalFlashRequired(int i, Continuation continuation) {
        C01321 c01321;
        if (continuation instanceof C01321) {
            c01321 = (C01321) continuation;
            int i2 = c01321.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c01321.label = i2 - Integer.MIN_VALUE;
            } else {
                c01321 = new C01321(continuation);
            }
        }
        Object frameMetadata = c01321.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c01321.label;
        boolean z = false;
        if (i3 == 0) {
            ResultKt.throwOnFailure(frameMetadata);
            if (i == 0) {
                c01321.label = 1;
                frameMetadata = getFrameMetadata(c01321);
                if (frameMetadata == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i == 1) {
                    z = true;
                } else if (i != 2 && i != 3) {
                    throw new AssertionError(i);
                }
                return Boxing.boxBoolean(z);
            }
        } else {
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(frameMetadata);
        }
        FrameMetadata frameMetadata2 = (FrameMetadata) frameMetadata;
        if (frameMetadata2 != null) {
            CaptureResult.Key CONTROL_AE_STATE = CaptureResult.CONTROL_AE_STATE;
            Intrinsics.checkNotNullExpressionValue(CONTROL_AE_STATE, "CONTROL_AE_STATE");
            Integer num = (Integer) frameMetadata2.get(CONTROL_AE_STATE);
            if (num != null && num.intValue() == 4) {
            }
        }
        return Boxing.boxBoolean(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object waitForResult(long j, Function1 function1, Continuation continuation) {
        C01401 c01401;
        ResultListener resultListener;
        if (continuation instanceof C01401) {
            c01401 = (C01401) continuation;
            int i = c01401.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01401.label = i - Integer.MIN_VALUE;
            } else {
                c01401 = new C01401(continuation);
            }
        }
        Object obj = c01401.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c01401.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            ResultListener resultListener2 = new ResultListener(j, function1);
            this.requestListener.addListener(resultListener2, this.threads.getSequentialExecutor());
            BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new CapturePipelineImpl$waitForResult$resultListener$1$1(resultListener2, this, null), 3, null);
            long millis = TimeUnit.NANOSECONDS.toMillis(j);
            C01413 c01413 = new C01413(resultListener2, null);
            c01401.L$0 = resultListener2;
            c01401.label = 1;
            Object objWithTimeoutOrNull = TimeoutKt.withTimeoutOrNull(millis, c01413, c01401);
            if (objWithTimeoutOrNull == coroutine_suspended) {
                return coroutine_suspended;
            }
            obj = objWithTimeoutOrNull;
            resultListener = resultListener2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            resultListener = (ResultListener) c01401.L$0;
            ResultKt.throwOnFailure(obj);
        }
        if (((FrameInfo) obj) == null) {
            this.requestListener.removeListener(resultListener);
        }
        return obj;
    }

    static /* synthetic */ Object waitForResult$default(CapturePipelineImpl capturePipelineImpl, long j, Function1 function1, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new Function1() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return Boolean.valueOf(CapturePipelineImpl.waitForResult$lambda$0((FrameInfo) obj2));
                }
            };
        }
        return capturePipelineImpl.waitForResult(j, function1, continuation);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$waitForResult$3 */
    static final class C01413 extends SuspendLambda implements Function2 {
        final /* synthetic */ ResultListener $resultListener;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C01413(ResultListener resultListener, Continuation continuation) {
            super(2, continuation);
            this.$resultListener = resultListener;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C01413(this.$resultListener, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01413) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            Deferred result = this.$resultListener.getResult();
            this.label = 1;
            Object objAwait = result.await(this);
            return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
        }
    }

    private final Object isTorchAsFlash(int i, Continuation continuation) {
        if (getTemplate() != 3 && i != 1) {
            return this.useTorchAsFlash.shouldUseTorchAsFlash(new C01332(null), continuation);
        }
        return Boxing.boxBoolean(true);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$isTorchAsFlash$2 */
    static final class C01332 extends SuspendLambda implements Function1 {
        int label;

        C01332(Continuation continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return CapturePipelineImpl.this.new C01332(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation continuation) {
            return ((C01332) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            CapturePipelineImpl capturePipelineImpl = CapturePipelineImpl.this;
            this.label = 1;
            Object frameMetadata = capturePipelineImpl.getFrameMetadata(this);
            return frameMetadata == coroutine_suspended ? coroutine_suspended : frameMetadata;
        }
    }
}
