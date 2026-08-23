package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import android.util.Log;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.impl.CameraCallbackMap;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.interop.Camera2CaptureRequestConfiguratorKt;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.Lock3ABehavior;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.MutableTagBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.TagBundle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import javax.inject.Provider;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes3.dex */
public final class UseCaseCameraRequestControlImpl implements UseCaseCameraRequestControl {
    private static final CompletableDeferred canceledResult;
    private final CameraXConfig cameraXConfig;
    private final Lazy capturePipeline$delegate;
    private final Provider capturePipelineProvider;
    private volatile boolean closed;
    private final Map infoBundleMap;
    private final UseCaseThreads threads;
    private final Lazy useCaseCameraState$delegate;
    private final Provider useCaseCameraStateProvider;
    private final UseCaseGraphContext useCaseGraphContext;
    private final Lazy useCaseSurfaceManager$delegate;
    private final Provider useCaseSurfaceManagerProvider;
    public static final Companion Companion = new Companion(null);
    private static final CompletableDeferred submitFailedResult = CompletableDeferredKt.CompletableDeferred(new Result3A(Result3A.Status.Companion.m1769getSUBMIT_FAILEDJvTi9ms(), null, 2, null));

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$updateCameraStateAsync$1 */
    static final class C01751 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C01751(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return UseCaseCameraRequestControlImpl.this.updateCameraStateAsync(null, null, this);
        }
    }

    public UseCaseCameraRequestControlImpl(Provider capturePipelineProvider, Provider useCaseCameraStateProvider, UseCaseGraphContext useCaseGraphContext, Provider useCaseSurfaceManagerProvider, UseCaseThreads threads, CameraXConfig cameraXConfig) {
        Intrinsics.checkNotNullParameter(capturePipelineProvider, "capturePipelineProvider");
        Intrinsics.checkNotNullParameter(useCaseCameraStateProvider, "useCaseCameraStateProvider");
        Intrinsics.checkNotNullParameter(useCaseGraphContext, "useCaseGraphContext");
        Intrinsics.checkNotNullParameter(useCaseSurfaceManagerProvider, "useCaseSurfaceManagerProvider");
        Intrinsics.checkNotNullParameter(threads, "threads");
        this.capturePipelineProvider = capturePipelineProvider;
        this.useCaseCameraStateProvider = useCaseCameraStateProvider;
        this.useCaseGraphContext = useCaseGraphContext;
        this.useCaseSurfaceManagerProvider = useCaseSurfaceManagerProvider;
        this.threads = threads;
        this.cameraXConfig = cameraXConfig;
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Configured " + this);
        }
        this.capturePipeline$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UseCaseCameraRequestControlImpl.capturePipeline_delegate$lambda$0(this.f$0);
            }
        });
        this.useCaseSurfaceManager$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UseCaseCameraRequestControlImpl.useCaseSurfaceManager_delegate$lambda$0(this.f$0);
            }
        });
        this.useCaseCameraState$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UseCaseCameraRequestControlImpl.useCaseCameraState_delegate$lambda$0(this.f$0);
            }
        });
        this.infoBundleMap = new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CapturePipeline capturePipeline_delegate$lambda$0(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl) {
        return (CapturePipeline) useCaseCameraRequestControlImpl.capturePipelineProvider.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CapturePipeline getCapturePipeline() {
        return (CapturePipeline) this.capturePipeline$delegate.getValue();
    }

    private final UseCaseSurfaceManager getUseCaseSurfaceManager() {
        return (UseCaseSurfaceManager) this.useCaseSurfaceManager$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UseCaseSurfaceManager useCaseSurfaceManager_delegate$lambda$0(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl) {
        return (UseCaseSurfaceManager) useCaseCameraRequestControlImpl.useCaseSurfaceManagerProvider.get();
    }

    private final UseCaseCameraState getUseCaseCameraState() {
        return (UseCaseCameraState) this.useCaseCameraState$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UseCaseCameraState useCaseCameraState_delegate$lambda$0(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl) {
        return (UseCaseCameraState) useCaseCameraRequestControlImpl.useCaseCameraStateProvider.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class InfoBundle {
        private final Set listeners;
        private final Camera2ImplConfig.Builder options;
        private final Map tags;
        private RequestTemplate template;

        public /* synthetic */ InfoBundle(Camera2ImplConfig.Builder builder, Map map, Set set, RequestTemplate requestTemplate, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder, map, set, requestTemplate);
        }

        /* JADX INFO: renamed from: copy-0am55g4$default, reason: not valid java name */
        public static /* synthetic */ InfoBundle m1475copy0am55g4$default(InfoBundle infoBundle, Camera2ImplConfig.Builder builder, Map map, Set set, RequestTemplate requestTemplate, int i, Object obj) {
            if ((i & 1) != 0) {
                builder = infoBundle.options;
            }
            if ((i & 2) != 0) {
                map = infoBundle.tags;
            }
            if ((i & 4) != 0) {
                set = infoBundle.listeners;
            }
            if ((i & 8) != 0) {
                requestTemplate = infoBundle.template;
            }
            return infoBundle.m1476copy0am55g4(builder, map, set, requestTemplate);
        }

        /* JADX INFO: renamed from: copy-0am55g4, reason: not valid java name */
        public final InfoBundle m1476copy0am55g4(Camera2ImplConfig.Builder options, Map tags, Set listeners, RequestTemplate requestTemplate) {
            Intrinsics.checkNotNullParameter(options, "options");
            Intrinsics.checkNotNullParameter(tags, "tags");
            Intrinsics.checkNotNullParameter(listeners, "listeners");
            return new InfoBundle(options, tags, listeners, requestTemplate, null);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof InfoBundle)) {
                return false;
            }
            InfoBundle infoBundle = (InfoBundle) obj;
            return Intrinsics.areEqual(this.options, infoBundle.options) && Intrinsics.areEqual(this.tags, infoBundle.tags) && Intrinsics.areEqual(this.listeners, infoBundle.listeners) && Intrinsics.areEqual(this.template, infoBundle.template);
        }

        public int hashCode() {
            int iHashCode = ((((this.options.hashCode() * 31) + this.tags.hashCode()) * 31) + this.listeners.hashCode()) * 31;
            RequestTemplate requestTemplate = this.template;
            return iHashCode + (requestTemplate == null ? 0 : RequestTemplate.m1758hashCodeimpl(requestTemplate.m1760unboximpl()));
        }

        public String toString() {
            return "InfoBundle(options=" + this.options + ", tags=" + this.tags + ", listeners=" + this.listeners + ", template=" + this.template + ')';
        }

        private InfoBundle(Camera2ImplConfig.Builder options, Map tags, Set listeners, RequestTemplate requestTemplate) {
            Intrinsics.checkNotNullParameter(options, "options");
            Intrinsics.checkNotNullParameter(tags, "tags");
            Intrinsics.checkNotNullParameter(listeners, "listeners");
            this.options = options;
            this.tags = tags;
            this.listeners = listeners;
            this.template = requestTemplate;
        }

        public /* synthetic */ InfoBundle(Camera2ImplConfig.Builder builder, Map map, Set set, RequestTemplate requestTemplate, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new Camera2ImplConfig.Builder() : builder, (i & 2) != 0 ? new LinkedHashMap() : map, (i & 4) != 0 ? new LinkedHashSet() : set, (i & 8) != 0 ? null : requestTemplate, null);
        }

        public final Camera2ImplConfig.Builder getOptions() {
            return this.options;
        }

        public final Map getTags() {
            return this.tags;
        }

        public final Set getListeners() {
            return this.listeners;
        }

        /* JADX INFO: renamed from: getTemplate-ejQnlcg, reason: not valid java name */
        public final RequestTemplate m1477getTemplateejQnlcg() {
            return this.template;
        }

        /* JADX INFO: renamed from: setTemplate-xlOpshk, reason: not valid java name */
        public final void m1478setTemplatexlOpshk(RequestTemplate requestTemplate) {
            this.template = requestTemplate;
        }
    }

    private final InfoBundle withParameters(InfoBundle infoBundle, Map map, Config.OptionPriority optionPriority) {
        Camera2ImplConfig.Builder builder = new Camera2ImplConfig.Builder();
        builder.insertAllOptions(infoBundle.getOptions().getMutableConfig());
        builder.addAllCaptureRequestOptionsWithPriority(map, optionPriority);
        return InfoBundle.m1475copy0am55g4$default(infoBundle, builder, MapsKt.toMutableMap(infoBundle.getTags()), CollectionsKt.toMutableSet(infoBundle.getListeners()), null, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final InfoBundle withoutParameters(InfoBundle infoBundle, List list) {
        Camera2ImplConfig.Builder builder = new Camera2ImplConfig.Builder();
        builder.insertAllOptions(infoBundle.getOptions().getMutableConfig());
        builder.removeCaptureRequestOptions(list);
        return InfoBundle.m1475copy0am55g4$default(infoBundle, builder, MapsKt.toMutableMap(infoBundle.getTags()), CollectionsKt.toMutableSet(infoBundle.getListeners()), null, 8, null);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred submitParameters(Map values, UseCaseCameraRequestControl.Type type, Config.OptionPriority optionPriority) {
        Intrinsics.checkNotNullParameter(values, "values");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(optionPriority, "optionPriority");
        if (this.closed) {
            return canceledResult;
        }
        this.threads.checkOnSequentialThread();
        return BuildersKt__Builders_commonKt.async$default(this.threads.getSequentialScope(), null, CoroutineStart.UNDISPATCHED, new C01741(type, values, optionPriority, null), 1, null);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$submitParameters$1 */
    static final class C01741 extends SuspendLambda implements Function2 {
        final /* synthetic */ Config.OptionPriority $optionPriority;
        final /* synthetic */ UseCaseCameraRequestControl.Type $type;
        final /* synthetic */ Map $values;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C01741(UseCaseCameraRequestControl.Type type, Map map, Config.OptionPriority optionPriority, Continuation continuation) {
            super(2, continuation);
            this.$type = type;
            this.$values = map;
            this.$optionPriority = optionPriority;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return UseCaseCameraRequestControlImpl.this.new C01741(this.$type, this.$values, this.$optionPriority, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01741) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x003a, code lost:
        
            if (((kotlinx.coroutines.Deferred) r7).await(r6) == r0) goto L15;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = UseCaseCameraRequestControlImpl.this;
                UseCaseCameraRequestControl.Type type = this.$type;
                Map map = this.$values;
                Config.OptionPriority optionPriority = this.$optionPriority;
                this.label = 1;
                obj = useCaseCameraRequestControlImpl.setParametersInternal(type, map, optionPriority, this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
            this.label = 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object setParametersInternal(UseCaseCameraRequestControl.Type type, Map map, Config.OptionPriority optionPriority, Continuation continuation) {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl#setParametersAsync: [" + type + "] values = " + map + ", optionPriority = " + optionPriority);
        }
        Map map2 = this.infoBundleMap;
        Object obj = map2.get(type);
        if (obj == null) {
            InfoBundle infoBundle = new InfoBundle(null, null, null, null, 15, null);
            map2.put(type, infoBundle);
            obj = infoBundle;
        }
        this.infoBundleMap.put(type, withParameters((InfoBundle) obj, map, optionPriority));
        return updateCameraStateAsync$default(this, merge(this.infoBundleMap), null, continuation, 1, null);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Object awaitSurfaceSetup(Continuation continuation) {
        return getUseCaseSurfaceManager().awaitSetupCompletion(continuation);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public void close() {
        this.closed = true;
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControl: closed");
        }
        getUseCaseCameraState().close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List failedResults(int i, String str) {
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            completableDeferredCompletableDeferred$default.completeExceptionally(new ImageCaptureException(2, str, null));
            arrayList.add(completableDeferredCompletableDeferred$default);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean hasInvalidSurface(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CaptureConfig captureConfig = (CaptureConfig) it.next();
            if (captureConfig.getSurfaces().isEmpty()) {
                return true;
            }
            List surfaces = captureConfig.getSurfaces();
            Intrinsics.checkNotNullExpressionValue(surfaces, "getSurfaces(...)");
            Iterator it2 = surfaces.iterator();
            while (it2.hasNext()) {
                if (this.useCaseGraphContext.getSurfaceToStreamMap().get((DeferrableSurface) it2.next()) == null) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final InfoBundle merge(Map map) {
        InfoBundle infoBundle = new InfoBundle(null, null, null, RequestTemplate.m1753boximpl(RequestTemplate.m1754constructorimpl(1)), 7, null);
        Iterator<E> it = UseCaseCameraRequestControl.Type.getEntries().iterator();
        while (it.hasNext()) {
            InfoBundle infoBundle2 = (InfoBundle) map.get((UseCaseCameraRequestControl.Type) it.next());
            if (infoBundle2 != null) {
                infoBundle.getOptions().insertAllOptions(infoBundle2.getOptions().getMutableConfig());
                infoBundle.getTags().putAll(infoBundle2.getTags());
                infoBundle.getListeners().addAll(infoBundle2.getListeners());
                RequestTemplate requestTemplateM1477getTemplateejQnlcg = infoBundle2.m1477getTemplateejQnlcg();
                if (requestTemplateM1477getTemplateejQnlcg != null) {
                    infoBundle.m1478setTemplatexlOpshk(RequestTemplate.m1753boximpl(requestTemplateM1477getTemplateejQnlcg.m1760unboximpl()));
                }
            }
        }
        return infoBundle;
    }

    private final TagBundle toTagBundle(InfoBundle infoBundle) {
        MutableTagBundle mutableTagBundleCreate = MutableTagBundle.create();
        for (Map.Entry entry : infoBundle.getTags().entrySet()) {
            mutableTagBundleCreate.putTag((String) entry.getKey(), entry.getValue());
        }
        Intrinsics.checkNotNullExpressionValue(mutableTagBundleCreate, "also(...)");
        return mutableTagBundleCreate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object updateCameraStateAsync(InfoBundle infoBundle, Set set, Continuation continuation) {
        C01751 c01751;
        Deferred deferred;
        int iM1760unboximpl;
        if (continuation instanceof C01751) {
            c01751 = (C01751) continuation;
            int i = c01751.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01751.label = i - Integer.MIN_VALUE;
            } else {
                c01751 = new C01751(continuation);
            }
        }
        C01751 c017512 = c01751;
        Object objM1479updateAsyncTp9XwKQ = c017512.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c017512.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objM1479updateAsyncTp9XwKQ);
            if (this.closed) {
                deferred = null;
                return deferred != null ? canceledResult : deferred;
            }
            CameraXConfig cameraXConfig = this.cameraXConfig;
            if (cameraXConfig != null) {
                Camera2CaptureRequestConfiguratorKt.getCamera2CaptureRequestConfigurator(cameraXConfig);
            }
            CapturePipeline capturePipeline = getCapturePipeline();
            RequestTemplate requestTemplateM1477getTemplateejQnlcg = infoBundle.m1477getTemplateejQnlcg();
            Intrinsics.checkNotNull(requestTemplateM1477getTemplateejQnlcg);
            if (requestTemplateM1477getTemplateejQnlcg.m1760unboximpl() != -1) {
                RequestTemplate requestTemplateM1477getTemplateejQnlcg2 = infoBundle.m1477getTemplateejQnlcg();
                Intrinsics.checkNotNull(requestTemplateM1477getTemplateejQnlcg2);
                iM1760unboximpl = requestTemplateM1477getTemplateejQnlcg2.m1760unboximpl();
            } else {
                iM1760unboximpl = 1;
            }
            capturePipeline.setTemplate(iM1760unboximpl);
            UseCaseCameraState useCaseCameraState = getUseCaseCameraState();
            Map parameters = Camera2ImplConfigKt.toParameters(infoBundle.getOptions().build());
            Map mapMapOf = MapsKt.mapOf(TuplesKt.m1081to(TagsKt.getCAMERAX_TAG_BUNDLE(), toTagBundle(infoBundle)));
            RequestTemplate requestTemplateM1477getTemplateejQnlcg3 = infoBundle.m1477getTemplateejQnlcg();
            Set listeners = infoBundle.getListeners();
            c017512.label = 1;
            objM1479updateAsyncTp9XwKQ = useCaseCameraState.m1479updateAsyncTp9XwKQ(parameters, false, mapMapOf, false, set, requestTemplateM1477getTemplateejQnlcg3, listeners, c017512);
            if (objM1479updateAsyncTp9XwKQ == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objM1479updateAsyncTp9XwKQ);
        }
        deferred = (Deferred) objM1479updateAsyncTp9XwKQ;
        if (deferred != null) {
        }
    }

    static /* synthetic */ Object updateCameraStateAsync$default(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, InfoBundle infoBundle, Set set, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            set = null;
        }
        return useCaseCameraRequestControlImpl.updateCameraStateAsync(infoBundle, set, continuation);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred cancelFocusAndMeteringAsync() {
        Deferred deferredRunOnSequential = this.closed ? null : runOnSequential(new UseCaseCameraRequestControlImpl$cancelFocusAndMeteringAsync$1$1(this, null));
        return deferredRunOnSequential == null ? submitFailedResult : deferredRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public List issueSingleCaptureAsync(List captureSequence, int i, int i2, int i3) {
        List list;
        List listRunOnSequentialList;
        Intrinsics.checkNotNullParameter(captureSequence, "captureSequence");
        if (this.closed) {
            list = captureSequence;
            listRunOnSequentialList = null;
        } else {
            list = captureSequence;
            listRunOnSequentialList = runOnSequentialList(captureSequence.size(), new UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1(this, list, i, i2, i3, null));
        }
        return listRunOnSequentialList == null ? failedResults(list.size(), "Capture request is cancelled on closed CameraGraph") : listRunOnSequentialList;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred removeParametersAsync(List keys, UseCaseCameraRequestControl.Type type) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        Intrinsics.checkNotNullParameter(type, "type");
        Deferred deferredRunOnSequential = this.closed ? null : runOnSequential(new UseCaseCameraRequestControlImpl$removeParametersAsync$1$1(this, type, keys, null));
        return deferredRunOnSequential == null ? canceledResult : deferredRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred setParametersAsync(Map values, UseCaseCameraRequestControl.Type type, Config.OptionPriority optionPriority) {
        Intrinsics.checkNotNullParameter(values, "values");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(optionPriority, "optionPriority");
        Deferred deferredRunOnSequential = !this.closed ? runOnSequential(new UseCaseCameraRequestControlImpl$setParametersAsync$1$1(this, type, values, optionPriority, null)) : null;
        return deferredRunOnSequential == null ? canceledResult : deferredRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    /* JADX INFO: renamed from: setTorchOffAsync-MtizInI */
    public Deferred mo1444setTorchOffAsyncMtizInI(int i) {
        Deferred deferredRunOnSequential = this.closed ? null : runOnSequential(new UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1(this, i, null));
        return deferredRunOnSequential == null ? submitFailedResult : deferredRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred setTorchOnAsync() {
        Deferred deferredRunOnSequential = this.closed ? null : runOnSequential(new UseCaseCameraRequestControlImpl$setTorchOnAsync$1$1(this, null));
        return deferredRunOnSequential == null ? submitFailedResult : deferredRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    /* JADX INFO: renamed from: startFocusAndMeteringAsync-NxRnBj4 */
    public Deferred mo1445startFocusAndMeteringAsyncNxRnBj4(List list, List list2, List list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode, long j) {
        Deferred deferredRunOnSequential = !this.closed ? runOnSequential(new UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1(this, list, list2, list3, lock3ABehavior, lock3ABehavior2, lock3ABehavior3, aeMode, j, null)) : null;
        return deferredRunOnSequential == null ? submitFailedResult : deferredRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred update3aRegions(List list, List list2, List list3) {
        Deferred deferredRunOnSequential = !this.closed ? runOnSequential(new UseCaseCameraRequestControlImpl$update3aRegions$1$1(this, list, list2, list3, null)) : null;
        return deferredRunOnSequential == null ? submitFailedResult : deferredRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred updateCamera2ConfigAsync(Config config, Map tags) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Deferred deferredRunOnSequential = this.closed ? null : runOnSequential(new UseCaseCameraRequestControlImpl$updateCamera2ConfigAsync$1$1(this, config, tags, null));
        return deferredRunOnSequential == null ? canceledResult : deferredRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred updateRepeatingRequestAsync(boolean z, Collection runningUseCases) {
        Intrinsics.checkNotNullParameter(runningUseCases, "runningUseCases");
        Deferred deferredRunOnSequential = this.closed ? null : runOnSequential(new UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1(runningUseCases, z, this, null));
        return deferredRunOnSequential == null ? canceledResult : deferredRunOnSequential;
    }

    private final Deferred runOnSequential(Function1 function1) {
        CoroutineStart coroutineStartDetermineStartStrategy$camera_camera2 = determineStartStrategy$camera_camera2(this.threads);
        UseCaseThreads useCaseThreads = this.threads;
        CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        BuildersKt__Builders_commonKt.launch$default(useCaseThreads.getSequentialScope(), null, coroutineStartDetermineStartStrategy$camera_camera2, new C0172x5900dd56(function1, completableDeferredCompletableDeferred$default, null), 1, null);
        return completableDeferredCompletableDeferred$default;
    }

    private final List runOnSequentialList(int i, Function1 function1) {
        CoroutineStart coroutineStartDetermineStartStrategy$camera_camera2 = determineStartStrategy$camera_camera2(this.threads);
        UseCaseThreads useCaseThreads = this.threads;
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(CompletableDeferredKt.CompletableDeferred$default(null, 1, null));
        }
        BuildersKt__Builders_commonKt.launch$default(useCaseThreads.getSequentialScope(), null, coroutineStartDetermineStartStrategy$camera_camera2, new C0173x371fa696(function1, arrayList, null), 1, null);
        return arrayList;
    }

    public final CoroutineStart determineStartStrategy$camera_camera2(UseCaseThreads useCaseThreads) {
        Intrinsics.checkNotNullParameter(useCaseThreads, "<this>");
        return useCaseThreads.isOnSequentialThread() ? CoroutineStart.UNDISPATCHED : CoroutineStart.DEFAULT;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Camera2ImplConfig.Builder extractCamera2ImplConfigBuilder(SessionConfig sessionConfig) {
            Intrinsics.checkNotNullParameter(sessionConfig, "<this>");
            Camera2ImplConfig.Builder builder = new Camera2ImplConfig.Builder();
            if (!Intrinsics.areEqual(sessionConfig.getExpectedFrameRateRange(), StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED)) {
                CaptureRequest.Key CONTROL_AE_TARGET_FPS_RANGE = CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE;
                Intrinsics.checkNotNullExpressionValue(CONTROL_AE_TARGET_FPS_RANGE, "CONTROL_AE_TARGET_FPS_RANGE");
                builder.setCaptureRequestOption(CONTROL_AE_TARGET_FPS_RANGE, sessionConfig.getExpectedFrameRateRange());
            }
            Config implementationOptions = sessionConfig.getImplementationOptions();
            Intrinsics.checkNotNullExpressionValue(implementationOptions, "getImplementationOptions(...)");
            builder.insertAllOptions(implementationOptions);
            return builder;
        }

        public final Map extractTags(SessionConfig sessionConfig) {
            Intrinsics.checkNotNullParameter(sessionConfig, "<this>");
            TagBundle tagBundle = sessionConfig.getRepeatingCaptureConfig().getTagBundle();
            Intrinsics.checkNotNullExpressionValue(tagBundle, "getTagBundle(...)");
            return MapsKt.toMutableMap(UseCaseCameraRequestControlKt.toMap(tagBundle));
        }

        public final Set extractListeners(SessionConfig sessionConfig, Executor callbackExecutor) {
            Intrinsics.checkNotNullParameter(sessionConfig, "<this>");
            Intrinsics.checkNotNullParameter(callbackExecutor, "callbackExecutor");
            CameraCallbackMap.Companion companion = CameraCallbackMap.Companion;
            List repeatingCameraCaptureCallbacks = sessionConfig.getRepeatingCameraCaptureCallbacks();
            Intrinsics.checkNotNullExpressionValue(repeatingCameraCaptureCallbacks, "getRepeatingCameraCaptureCallbacks(...)");
            return SetsKt.mutableSetOf(companion.createFor(repeatingCameraCaptureCallbacks, callbackExecutor));
        }

        /* JADX INFO: renamed from: extractTemplate-ARED-Gk, reason: not valid java name */
        public final int m1474extractTemplateAREDGk(SessionConfig extractTemplate) {
            Intrinsics.checkNotNullParameter(extractTemplate, "$this$extractTemplate");
            return RequestTemplate.m1754constructorimpl(extractTemplate.getTemplateType());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final InfoBundle toInfoBundle(SessionConfig sessionConfig, Executor executor) {
            return new InfoBundle(extractCamera2ImplConfigBuilder(sessionConfig), extractTags(sessionConfig), extractListeners(sessionConfig, executor), RequestTemplate.m1753boximpl(m1474extractTemplateAREDGk(sessionConfig)), null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Camera2ImplConfig.Builder extractCamera2ImplConfigBuilder(Config config) {
            Camera2ImplConfig.Builder builder = new Camera2ImplConfig.Builder();
            builder.insertAllOptions(config);
            return builder;
        }
    }

    static {
        CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        Job.DefaultImpls.cancel$default(completableDeferredCompletableDeferred$default, null, 1, null);
        canceledResult = completableDeferredCompletableDeferred$default;
    }
}
