package androidx.camera.camera2.adapter;

import android.content.Context;
import android.hardware.camera2.CameraManager;
import android.util.Log;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.impl.AbstractCameraPresenceSource;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.concurrent.futures.ListenableFutureKt;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB9\u0012\u0012\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0004\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0014\u001a\u00020\u0015H\u0014J\b\u0010\u0016\u001a\u00020\u0015H\u0016J\u0014\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u00040\u0018H\u0016R\u001a\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Landroidx/camera/camera2/adapter/PipeCameraPresenceSource;", "Landroidx/camera/core/impl/AbstractCameraPresenceSource;", "idFlow", "Lkotlinx/coroutines/flow/Flow;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/CameraId;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "initialCameraIds", _UrlKt.FRAGMENT_ENCODE_SET, "context", "Landroid/content/Context;", "<init>", "(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Ljava/util/List;Landroid/content/Context;)V", "isMonitoring", "Ljava/util/concurrent/atomic/AtomicBoolean;", "flowCollectionJob", "Lkotlinx/coroutines/Job;", "cameraManager", "Landroid/hardware/camera2/CameraManager;", "startMonitoring", _UrlKt.FRAGMENT_ENCODE_SET, "stopMonitoring", "fetchData", "Lcom/google/common/util/concurrent/ListenableFuture;", "Landroidx/camera/core/CameraIdentifier;", "Companion", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPipeCameraPresenceSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PipeCameraPresenceSource.kt\nandroidx/camera/camera2/adapter/PipeCameraPresenceSource\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,151:1\n49#2:152\n51#2:156\n46#3:153\n51#3:155\n105#4:154\n*S KotlinDebug\n*F\n+ 1 PipeCameraPresenceSource.kt\nandroidx/camera/camera2/adapter/PipeCameraPresenceSource\n*L\n65#1:152\n65#1:156\n65#1:153\n65#1:155\n65#1:154\n*E\n"})
public final class PipeCameraPresenceSource extends AbstractCameraPresenceSource {
    private final CameraManager cameraManager;
    private final CoroutineScope coroutineScope;
    private Job flowCollectionJob;
    private final Flow<List<CameraId>> idFlow;
    private final AtomicBoolean isMonitoring;

    /* JADX WARN: Multi-variable type inference failed */
    public PipeCameraPresenceSource(Flow<? extends List<CameraId>> flow, CoroutineScope coroutineScope, List<String> list, Context context) {
        super(list);
        this.idFlow = flow;
        this.coroutineScope = coroutineScope;
        this.isMonitoring = new AtomicBoolean(false);
        this.cameraManager = (CameraManager) context.getSystemService("camera");
    }

    @Override // androidx.camera.core.impl.AbstractCameraPresenceSource
    public void startMonitoring() {
        if (!this.isMonitoring.compareAndSet(false, true)) {
            Log.i("PipePresenceSrc", "Monitoring is already active. Ignoring redundant start call.");
            return;
        }
        Log.i("PipePresenceSrc", "Starting to collect camera ID flow.");
        Job job = this.flowCollectionJob;
        if (job != null) {
            Job.cancel$default(job, null, 1, null);
        }
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.element = true;
        final Flow<List<CameraId>> flow = this.idFlow;
        this.flowCollectionJob = FlowKt.launchIn(FlowKt.m4620catch(FlowKt.onEach(new Flow<List<? extends CameraIdentifier>>() { // from class: androidx.camera.camera2.adapter.PipeCameraPresenceSource$startMonitoring$$inlined$map$1

            /* JADX INFO: renamed from: androidx.camera.camera2.adapter.PipeCameraPresenceSource$startMonitoring$$inlined$map$1$2 */
            @Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 PipeCameraPresenceSource.kt\nandroidx/camera/camera2/adapter/PipeCameraPresenceSource\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,49:1\n50#2:50\n66#3:51\n67#3,10:62\n77#3:75\n1617#4,9:52\n1869#4:61\n1870#4:73\n1626#4:74\n1#5:72\n*S KotlinDebug\n*F\n+ 1 PipeCameraPresenceSource.kt\nandroidx/camera/camera2/adapter/PipeCameraPresenceSource\n*L\n66#1:52,9\n66#1:61\n66#1:73\n66#1:74\n66#1:72\n*E\n"})
            public static final class C01162<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: androidx.camera.camera2.adapter.PipeCameraPresenceSource$startMonitoring$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
                @DebugMetadata(m872c = "androidx.camera.camera2.adapter.PipeCameraPresenceSource$startMonitoring$$inlined$map$1$2", m873f = "PipeCameraPresenceSource.kt", m874i = {}, m875l = {50}, m876m = "emit", m877n = {}, m878s = {}, m879v = 1)
                public static final class AnonymousClass1 extends ContinuationImpl {
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return C01162.this.emit(null, this);
                    }
                }

                public C01162(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    CameraIdentifier cameraIdentifierCreate$default;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i = anonymousClass1.label;
                        if ((i & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    }
                    Object obj2 = anonymousClass1.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i2 = anonymousClass1.label;
                    if (i2 == 0) {
                        ResultKt.throwOnFailure(obj2);
                        FlowCollector flowCollector = this.$this_unsafeFlow;
                        ArrayList arrayList = new ArrayList();
                        Iterator<T> it = ((List) obj).iterator();
                        while (it.hasNext()) {
                            String value = ((CameraId) it.next()).getValue();
                            try {
                                cameraIdentifierCreate$default = CameraIdentifier.Factory.create$default(value, null, null, 6, null);
                            } catch (Exception e) {
                                Log.w("PipePresenceSrc", "Failed to create CameraIdentifier for pipeId: " + value, e);
                                cameraIdentifierCreate$default = null;
                            }
                            if (cameraIdentifierCreate$default != null) {
                                arrayList.add(cameraIdentifierCreate$default);
                            }
                        }
                        anonymousClass1.label = 1;
                        if (flowCollector.emit(arrayList, anonymousClass1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i2 != 1) {
                            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.throwOnFailure(obj2);
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super List<? extends CameraIdentifier>> flowCollector, Continuation continuation) {
                Object objCollect = flow.collect(new C01162(flowCollector), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        }, new C01172(booleanRef, null)), new C01183(null)), this.coroutineScope);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.adapter.PipeCameraPresenceSource$startMonitoring$2 */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "identifiers", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/CameraIdentifier;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.adapter.PipeCameraPresenceSource$startMonitoring$2", m873f = "PipeCameraPresenceSource.kt", m874i = {}, m875l = {84}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
    public static final class C01172 extends SuspendLambda implements Function2<List<? extends CameraIdentifier>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.BooleanRef $isFirstEmission;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C01172(Ref.BooleanRef booleanRef, Continuation<? super C01172> continuation) {
            super(2, continuation);
            this.$isFirstEmission = booleanRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C01172 c01172 = PipeCameraPresenceSource.this.new C01172(this.$isFirstEmission, continuation);
            c01172.L$0 = obj;
            return c01172;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(List<? extends CameraIdentifier> list, Continuation<? super Unit> continuation) {
            return invoke2((List<CameraIdentifier>) list, continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(List<CameraIdentifier> list, Continuation<? super Unit> continuation) {
            return ((C01172) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                List list = (List) this.L$0;
                Log.d("PipePresenceSrc", "Flow emitted new camera set: " + CollectionsKt.joinToString$default(list, null, null, null, 0, null, null, 63, null));
                if (PipeCameraPresenceSource.this.isMonitoring.get()) {
                    if (!this.$isFirstEmission.element) {
                        PipeCameraPresenceSource.this.updateData(list);
                    } else {
                        Log.i("PipePresenceSrc", "Handling first camera set, triggering fresh query.");
                        ListenableFuture<List<CameraIdentifier>> listenableFutureFetchData = PipeCameraPresenceSource.this.fetchData();
                        this.label = 1;
                        if (ListenableFutureKt.await(listenableFutureFetchData, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                } else {
                    Boxing.boxInt(Log.d("PipePresenceSrc", "Ignoring camera update because monitoring is stopped."));
                }
                return Unit.INSTANCE;
            }
            if (i != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            this.$isFirstEmission.element = false;
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.adapter.PipeCameraPresenceSource$startMonitoring$3 */
    @Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/flow/FlowCollector;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/CameraIdentifier;", "e", _UrlKt.FRAGMENT_ENCODE_SET}, m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.adapter.PipeCameraPresenceSource$startMonitoring$3", m873f = "PipeCameraPresenceSource.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
    public static final class C01183 extends SuspendLambda implements Function3<FlowCollector<? super List<? extends CameraIdentifier>>, Throwable, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        public C01183(Continuation<? super C01183> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(FlowCollector<? super List<? extends CameraIdentifier>> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
            return invoke2((FlowCollector<? super List<CameraIdentifier>>) flowCollector, th, continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(FlowCollector<? super List<CameraIdentifier>> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
            C01183 c01183 = PipeCameraPresenceSource.this.new C01183(continuation);
            c01183.L$0 = th;
            return c01183.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            Throwable th = (Throwable) this.L$0;
            Log.e("PipePresenceSrc", "Error in camera ID flow collection.", th);
            if (PipeCameraPresenceSource.this.isMonitoring.get()) {
                PipeCameraPresenceSource.this.updateError(th);
            } else {
                Boxing.boxInt(Log.d("PipePresenceSrc", "Ignoring error because monitoring is stopped."));
            }
            return Unit.INSTANCE;
        }
    }

    @Override // androidx.camera.core.impl.AbstractCameraPresenceSource
    public void stopMonitoring() {
        Log.i("PipePresenceSrc", "Stopping camera ID flow collection.");
        if (this.isMonitoring.compareAndSet(true, false)) {
            Job job = this.flowCollectionJob;
            if (job != null) {
                Job.cancel$default(job, null, 1, null);
            }
            this.flowCollectionJob = null;
        }
    }

    @Override // androidx.camera.core.impl.Observable
    public ListenableFuture<List<CameraIdentifier>> fetchData() {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.camera2.adapter.PipeCameraPresenceSource$$ExternalSyntheticLambda0
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return PipeCameraPresenceSource.$r8$lambda$pNibnT2Ln7rKug19LH2UnicKFAs(this.f$0, completer);
            }
        });
    }

    public static Object $r8$lambda$pNibnT2Ln7rKug19LH2UnicKFAs(PipeCameraPresenceSource pipeCameraPresenceSource, CallbackToFutureAdapter.Completer completer) {
        BuildersKt__Builders_commonKt.launch$default(pipeCameraPresenceSource.coroutineScope, null, null, new PipeCameraPresenceSource$fetchData$1$1(pipeCameraPresenceSource, completer, null), 3, null);
        return "FetchData for PipeCameraPresence0";
    }
}
