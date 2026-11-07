package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Permissions;
import androidx.camera.camera2.pipe.core.PruningProcessingQueue;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.Token;
import androidx.camera.camera2.pipe.graph.GraphListener;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Ê\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\b\b\u0001\u0018\u00002\u00020\u0001:\u0003efgB1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u0013\u0010\u0010\u001a\u00020\u000f*\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000eH\u0082@¢\u0006\u0004\b\u0013\u0010\u0014J\u0018\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0015H\u0082@¢\u0006\u0004\b\u0016\u0010\u0017J\u0018\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0018H\u0082@¢\u0006\u0004\b\u0019\u0010\u001aJ\u0018\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u001bH\u0082@¢\u0006\u0004\b\u001c\u0010\u001dJ\u0018\u0010 \u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u001eH\u0082@¢\u0006\u0004\b \u0010!J \u0010(\u001a\u00020%2\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u0015H\u0082@¢\u0006\u0004\b&\u0010'JB\u00103\u001a\u0002002\u0006\u0010#\u001a\u00020\"2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\"0)2\u0012\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020,0+2\u0006\u0010/\u001a\u00020.H\u0082@¢\u0006\u0004\b1\u00102J\u001e\u00106\u001a\u00020\u000f2\f\u00105\u001a\b\u0012\u0004\u0012\u00020\"04H\u0082@¢\u0006\u0004\b6\u00107J\u001e\u0010:\u001a\u00020\u000f2\f\u00109\u001a\b\u0012\u0004\u0012\u0002080)H\u0082@¢\u0006\u0004\b:\u0010;J3\u0010@\u001a\b\u0012\u0004\u0012\u00028\u00000)\"\u0004\b\u0000\u0010<*\b\u0012\u0004\u0012\u00028\u00000=2\f\u0010?\u001a\b\u0012\u0004\u0012\u00020>04H\u0002¢\u0006\u0004\b@\u0010AJK\u0010H\u001a\u0004\u0018\u00010E2\u0006\u0010#\u001a\u00020\"2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\"0)2\u0006\u0010C\u001a\u00020B2\u0006\u0010D\u001a\u00020,2\u0012\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020,0+H\u0016¢\u0006\u0004\bF\u0010GJ\u001d\u0010L\u001a\b\u0012\u0004\u0012\u00020\u000f0I2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\bJ\u0010KJ\u001d\u0010N\u001a\b\u0012\u0004\u0012\u00020\u000f0I2\u0006\u0010M\u001a\u00020,H\u0016¢\u0006\u0004\bN\u0010OJ\u001d\u0010S\u001a\u00020\u000f2\f\u0010P\u001a\b\u0012\u0004\u0012\u00020\u000e0=H\u0001¢\u0006\u0004\bQ\u0010RR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010TR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010UR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010VR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010WR\u0017\u0010\u000b\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010X\u001a\u0004\bY\u0010ZR\u0014\u0010/\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u0010[R\u001a\u0010]\u001a\b\u0012\u0004\u0012\u00020\u000e0\\8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b]\u0010^R\u001a\u0010a\u001a\b\u0012\u0004\u0012\u00020`0_8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\ba\u0010bR\u001a\u0010c\u001a\b\u0012\u0004\u0012\u0002080=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bc\u0010d¨\u0006h"}, d2 = {"Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;", "Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;", "Landroidx/camera/camera2/pipe/core/Permissions;", "permissions", "Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;", "retryingCameraStateOpener", "Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;", "camera2DeviceCloser", "Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;", "camera2ErrorProcessor", "Landroidx/camera/camera2/pipe/core/Threads;", "threads", "<init>", "(Landroidx/camera/camera2/pipe/core/Permissions;Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroidx/camera/camera2/pipe/core/Threads;)V", "Landroidx/camera/camera2/pipe/compat/CameraRequest;", _UrlKt.FRAGMENT_ENCODE_SET, "onRemoved", "(Landroidx/camera/camera2/pipe/compat/CameraRequest;)V", PluginsConstants.REQUEST, "process", "(Landroidx/camera/camera2/pipe/compat/CameraRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/camera/camera2/pipe/compat/RequestOpen;", "processRequestOpen", "(Landroidx/camera/camera2/pipe/compat/RequestOpen;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/camera/camera2/pipe/compat/RequestClose;", "processRequestClose", "(Landroidx/camera/camera2/pipe/compat/RequestClose;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/camera/camera2/pipe/compat/RequestCloseById;", "processRequestCloseById", "(Landroidx/camera/camera2/pipe/compat/RequestCloseById;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/camera/camera2/pipe/compat/RequestCloseAll;", "requestCloseAll", "processRequestCloseAll", "(Landroidx/camera/camera2/pipe/compat/RequestCloseAll;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/camera/camera2/pipe/CameraId;", "cameraId", "requestOpen", "Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult;", "retrieveActiveCamera-RzXb1QE", "(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/RequestOpen;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "retrieveActiveCamera", _UrlKt.FRAGMENT_ENCODE_SET, "sharedCameraIds", "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, "isForegroundObserver", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult;", "openCameraWithRetry-zDSwpeU", "(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "openCameraWithRetry", _UrlKt.FRAGMENT_ENCODE_SET, "cameraIds", "connectPendingRequestOpens", "(Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;", "pendingRequestOpensToDisconnect", "disconnectPendingRequestOpens", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "T", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "indices", "removeIndices", "(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;", "Landroidx/camera/camera2/pipe/graph/GraphListener;", "graphListener", "isPrewarm", "Landroidx/camera/camera2/pipe/compat/VirtualCamera;", "open-zDSwpeU", "(Ljava/lang/String;Ljava/util/List;Landroidx/camera/camera2/pipe/graph/GraphListener;ZLkotlin/jvm/functions/Function1;)Landroidx/camera/camera2/pipe/compat/VirtualCamera;", "open", "Lkotlinx/coroutines/Deferred;", "close-EfqyGwQ", "(Ljava/lang/String;)Lkotlinx/coroutines/Deferred;", "close", "forceCancelOpen", "closeAll", "(Z)Lkotlinx/coroutines/Deferred;", "requests", "prune$camera_camera2_pipe", "(Ljava/util/List;)V", "prune", "Landroidx/camera/camera2/pipe/core/Permissions;", "Landroidx/camera/camera2/pipe/compat/RetryingCameraStateOpener;", "Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;", "Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;", "Landroidx/camera/camera2/pipe/core/Threads;", "getThreads", "()Landroidx/camera/camera2/pipe/core/Threads;", "Lkotlinx/coroutines/CoroutineScope;", "Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;", "queue", "Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/compat/ActiveCamera;", "activeCameras", "Ljava/util/Set;", "pendingRequestOpens", "Ljava/util/List;", "PendingRequestOpen", "RetrieveActiveCameraResult", "OpenVirtualCameraResult", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCamera2DeviceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Camera2DeviceManager.kt\nandroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,656:1\n627#1,6:673\n627#1,6:679\n82#2,2:657\n82#2,2:659\n82#2,2:661\n50#2,2:685\n59#2,2:689\n82#2,2:700\n71#2,2:702\n59#2,2:710\n59#2,2:715\n59#2,2:722\n59#2,2:724\n59#2,2:726\n59#2,2:728\n50#2,2:730\n774#3:663\n865#3,2:664\n388#3,7:666\n1869#3,2:687\n774#3:691\n865#3,2:692\n774#3:694\n865#3,2:695\n774#3:697\n865#3,2:698\n1740#3,2:704\n1761#3,3:706\n1742#3:709\n774#3:712\n865#3,2:713\n774#3:717\n865#3,2:718\n295#3,2:720\n774#3:732\n865#3,2:733\n1740#3,2:735\n1761#3,3:737\n1742#3:740\n*S KotlinDebug\n*F\n+ 1 Camera2DeviceManager.kt\nandroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager\n*L\n317#1:673,6\n339#1:679,6\n221#1:657,2\n247#1:659,2\n259#1:661,2\n346#1:685,2\n376#1:689,2\n407#1:700,2\n412#1:702,2\n456#1:710,2\n474#1:715,2\n491#1:722,2\n546#1:724,2\n549#1:726,2\n559#1:728,2\n574#1:730,2\n268#1:663\n268#1:664,2\n276#1:666,7\n356#1:687,2\n380#1:691\n380#1:692,2\n384#1:694\n384#1:695,2\n392#1:697\n392#1:698,2\n429#1:704,2\n430#1:706,3\n429#1:709\n466#1:712\n466#1:713,2\n479#1:717\n479#1:718,2\n481#1:720,2\n597#1:732\n597#1:733,2\n604#1:735,2\n604#1:737,3\n604#1:740\n*E\n"})
public final class PruningCamera2DeviceManager implements Camera2DeviceManager {
    private final Set<ActiveCamera> activeCameras;
    private final Camera2DeviceCloser camera2DeviceCloser;
    private final Camera2ErrorProcessor camera2ErrorProcessor;
    private final List<PendingRequestOpen> pendingRequestOpens;
    private final Permissions permissions;
    private final PruningProcessingQueue<CameraRequest> queue;
    private final RetryingCameraStateOpener retryingCameraStateOpener;
    private final CoroutineScope scope;
    private final Threads threads;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$connectPendingRequestOpens$1 */
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager", m921f = "Camera2DeviceManager.kt", m922i = {0}, m923l = {606}, m924m = "connectPendingRequestOpens", m925n = {"pendingRequestOpen"}, m926s = {"L$1"}, m927v = 1)
    public static final class C02141 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C02141(Continuation<? super C02141> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PruningCamera2DeviceManager.this.connectPendingRequestOpens(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestClose$1 */
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager", m921f = "Camera2DeviceManager.kt", m922i = {0}, m923l = {465, 469}, m924m = "processRequestClose", m925n = {PluginsConstants.REQUEST}, m926s = {"L$0"}, m927v = 1)
    public static final class C02151 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C02151(Continuation<? super C02151> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PruningCamera2DeviceManager.this.processRequestClose(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestCloseAll$1 */
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager", m921f = "Camera2DeviceManager.kt", m922i = {0, 1}, m923l = {493, 498}, m924m = "processRequestCloseAll", m925n = {"requestCloseAll", "requestCloseAll"}, m926s = {"L$0", "L$0"}, m927v = 1)
    public static final class C02161 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C02161(Continuation<? super C02161> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PruningCamera2DeviceManager.this.processRequestCloseAll(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestCloseById$1 */
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager", m921f = "Camera2DeviceManager.kt", m922i = {0, 0, 1}, m923l = {478, 485}, m924m = "processRequestCloseById", m925n = {PluginsConstants.REQUEST, "cameraId", PluginsConstants.REQUEST}, m926s = {"L$0", "L$1", "L$0"}, m927v = 1)
    public static final class C02171 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C02171(Continuation<? super C02171> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PruningCamera2DeviceManager.this.processRequestCloseById(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestOpen$1 */
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager", m921f = "Camera2DeviceManager.kt", m922i = {0, 0, 0, 1, 1, 2, 2, 3}, m923l = {391, 398, 404, 436, 437, 445}, m924m = "processRequestOpen", m925n = {PluginsConstants.REQUEST, "cameraIdToOpen", "camerasToClose", PluginsConstants.REQUEST, "cameraIdToOpen", PluginsConstants.REQUEST, "cameraIdToOpen", PluginsConstants.REQUEST}, m926s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$0", "L$1", "L$0"}, m927v = 1)
    public static final class C02181 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C02181(Continuation<? super C02181> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PruningCamera2DeviceManager.this.processRequestOpen(null, this);
        }
    }

    public PruningCamera2DeviceManager(Permissions permissions, RetryingCameraStateOpener retryingCameraStateOpener, Camera2DeviceCloser camera2DeviceCloser, Camera2ErrorProcessor camera2ErrorProcessor, Threads threads) {
        this.permissions = permissions;
        this.retryingCameraStateOpener = retryingCameraStateOpener;
        this.camera2DeviceCloser = camera2DeviceCloser;
        this.camera2ErrorProcessor = camera2ErrorProcessor;
        this.threads = threads;
        CoroutineScope cameraPipeScope = threads.getCameraPipeScope();
        this.scope = cameraPipeScope;
        this.queue = PruningProcessingQueue.INSTANCE.processIn(new PruningProcessingQueue(0, new PruningCamera2DeviceManager$queue$1(this), null, new PruningCamera2DeviceManager$queue$2(this, null), 5, null), cameraPipeScope);
        this.activeCameras = new LinkedHashSet();
        this.pendingRequestOpens = new ArrayList();
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.REQUEST, "Landroidx/camera/camera2/pipe/compat/RequestOpen;", "activeCamera", "Landroidx/camera/camera2/pipe/compat/ActiveCamera;", "token", "Landroidx/camera/camera2/pipe/core/Token;", "<init>", "(Landroidx/camera/camera2/pipe/compat/RequestOpen;Landroidx/camera/camera2/pipe/compat/ActiveCamera;Landroidx/camera/camera2/pipe/core/Token;)V", "getRequest", "()Landroidx/camera/camera2/pipe/compat/RequestOpen;", "getActiveCamera", "()Landroidx/camera/camera2/pipe/compat/ActiveCamera;", "getToken", "()Landroidx/camera/camera2/pipe/core/Token;", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class PendingRequestOpen {
        private final ActiveCamera activeCamera;
        private final RequestOpen request;
        private final Token token;

        public PendingRequestOpen(RequestOpen requestOpen, ActiveCamera activeCamera, Token token) {
            this.request = requestOpen;
            this.activeCamera = activeCamera;
            this.token = token;
        }

        public final RequestOpen getRequest() {
            return this.request;
        }

        public final ActiveCamera getActiveCamera() {
            return this.activeCamera;
        }

        public final Token getToken() {
            return this.token;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2DeviceManager
    /* JADX INFO: renamed from: open-zDSwpeU */
    public VirtualCamera mo1570openzDSwpeU(String cameraId, List<CameraId> sharedCameraIds, GraphListener graphListener, boolean isPrewarm, Function1<? super Unit, Boolean> isForegroundObserver) {
        VirtualCameraState virtualCameraState = new VirtualCameraState(cameraId, graphListener, this.scope, null);
        if (this.queue.tryEmit(new RequestOpen(virtualCameraState, sharedCameraIds, graphListener, isPrewarm, isForegroundObserver))) {
            return virtualCameraState;
        }
        if (Log.INSTANCE.getERROR_LOGGABLE()) {
            android.util.Log.e("CXCP", "Camera open request failed for " + ((Object) CameraId.m1356toStringimpl(cameraId)) + '!');
        }
        graphListener.onGraphError(new GraphState.GraphStateError(CameraError.INSTANCE.m1315getERROR_CAMERA_OPENERv7Vf74A(), false, null));
        return null;
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2DeviceManager
    /* JADX INFO: renamed from: close-EfqyGwQ */
    public Deferred<Unit> mo1569closeEfqyGwQ(String cameraId) {
        RequestCloseById requestCloseById = new RequestCloseById(cameraId, null);
        if (!this.queue.tryEmit(requestCloseById)) {
            if (Log.INSTANCE.getERROR_LOGGABLE()) {
                android.util.Log.e("CXCP", "Camera close by ID request failed for " + ((Object) CameraId.m1356toStringimpl(cameraId)) + '!');
            }
            requestCloseById.getDeferred().complete(Unit.INSTANCE);
        }
        return requestCloseById.getDeferred();
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2DeviceManager
    public Deferred<Unit> closeAll(boolean forceCancelOpen) {
        if (forceCancelOpen) {
            this.retryingCameraStateOpener.cancelOpen();
        }
        RequestCloseAll requestCloseAll = new RequestCloseAll();
        if (!this.queue.tryEmit(requestCloseAll)) {
            if (Log.INSTANCE.getERROR_LOGGABLE()) {
                android.util.Log.e("CXCP", "Camera close all request failed!");
            }
            requestCloseAll.getDeferred().complete(Unit.INSTANCE);
        }
        return requestCloseAll.getDeferred();
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x0140  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void prune$camera_camera2_pipe(List<CameraRequest> requests) {
        boolean z;
        int iNextIndex;
        Integer numValueOf;
        boolean zContains;
        final CompletableDeferred<Unit> deferred;
        ArrayList arrayList = new ArrayList();
        for (Object obj : requests) {
            if (((CameraRequest) obj) instanceof RequestClose) {
                arrayList.add(obj);
            }
        }
        requests.removeAll(arrayList);
        Iterator it = CollectionsKt.reversed(arrayList).iterator();
        while (true) {
            z = false;
            if (!it.hasNext()) {
                break;
            } else {
                requests.add(0, (CameraRequest) it.next());
            }
        }
        ListIterator<CameraRequest> listIterator = requests.listIterator(requests.size());
        while (true) {
            if (listIterator.hasPrevious()) {
                if (listIterator.previous() instanceof RequestCloseAll) {
                    iNextIndex = listIterator.nextIndex();
                    break;
                }
            } else {
                iNextIndex = -1;
                break;
            }
        }
        if (iNextIndex > 0) {
            RequestCloseAll requestCloseAll = (RequestCloseAll) requests.get(iNextIndex);
            for (int i = 0; i < iNextIndex; i++) {
                CameraRequest cameraRequestRemove = requests.remove(0);
                if (cameraRequestRemove instanceof RequestCloseById) {
                    deferred = ((RequestCloseById) cameraRequestRemove).getDeferred();
                } else {
                    deferred = cameraRequestRemove instanceof RequestCloseAll ? ((RequestCloseAll) cameraRequestRemove).getDeferred() : null;
                }
                if (deferred != null) {
                    requestCloseAll.getDeferred().invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            return PruningCamera2DeviceManager.prune$lambda$2$0(deferred, (Throwable) obj2);
                        }
                    });
                }
                onRemoved(cameraRequestRemove);
            }
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int i2 = 0;
        for (final CameraRequest cameraRequest : requests) {
            int i3 = i2 + 1;
            if (cameraRequest instanceof RequestOpen) {
                RequestOpen requestOpen = (RequestOpen) cameraRequest;
                String cameraId = requestOpen.getVirtualCamera().getCameraId();
                Set set = CollectionsKt.toSet(CollectionsKt.plus((Collection<? extends CameraId>) requestOpen.getSharedCameraIds(), CameraId.m1351boximpl(cameraId)));
                int size = requests.size();
                int i4 = i3;
                while (i4 < size) {
                    CameraRequest cameraRequest2 = requests.get(i4);
                    if (cameraRequest2 instanceof RequestCloseById) {
                        zContains = set.contains(CameraId.m1351boximpl(((RequestCloseById) cameraRequest2).getActiveCameraId()));
                    } else if (cameraRequest2 instanceof RequestOpen) {
                        boolean z2 = (requestOpen.getIsPrewarm() || !((RequestOpen) cameraRequest2).getIsPrewarm()) ? true : z;
                        RequestOpen requestOpen2 = (RequestOpen) cameraRequest2;
                        String cameraId2 = requestOpen2.getVirtualCamera().getCameraId();
                        Set set2 = CollectionsKt.toSet(CollectionsKt.plus((Collection<? extends CameraId>) requestOpen2.getSharedCameraIds(), CameraId.m1351boximpl(cameraId2)));
                        if (z2 && (CameraId.m1354equalsimpl0(cameraId, cameraId2) || !Intrinsics.areEqual(set, set2))) {
                            zContains = true;
                        }
                    } else {
                        zContains = false;
                    }
                    if (zContains) {
                        numValueOf = Integer.valueOf(i4);
                        break;
                    } else {
                        i4++;
                        z = false;
                    }
                }
                numValueOf = null;
            } else if (cameraRequest instanceof RequestCloseById) {
                int size2 = requests.size();
                for (int i5 = i3; i5 < size2; i5++) {
                    CameraRequest cameraRequest3 = requests.get(i5);
                    if ((cameraRequest3 instanceof RequestCloseById) && CameraId.m1354equalsimpl0(((RequestCloseById) cameraRequest3).getActiveCameraId(), ((RequestCloseById) cameraRequest).getActiveCameraId())) {
                        numValueOf = Integer.valueOf(i5);
                        break;
                    }
                }
                numValueOf = null;
            } else {
                numValueOf = null;
            }
            if (numValueOf != null) {
                CameraRequest cameraRequest4 = requests.get(numValueOf.intValue());
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", cameraRequest + " is pruned by " + cameraRequest4);
                }
                linkedHashSet.add(Integer.valueOf(i2));
                if ((cameraRequest instanceof RequestCloseById) && (cameraRequest4 instanceof RequestCloseById)) {
                    ((RequestCloseById) cameraRequest4).getDeferred().invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            return PruningCamera2DeviceManager.m1588$r8$lambda$mG8_AgNMPKBsIwSXjNbj0kE9U(cameraRequest, (Throwable) obj2);
                        }
                    });
                }
            }
            i2 = i3;
            z = false;
        }
        Iterator it2 = removeIndices(requests, linkedHashSet).iterator();
        while (it2.hasNext()) {
            onRemoved((CameraRequest) it2.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit prune$lambda$2$0(CompletableDeferred completableDeferred, Throwable th) {
        Unit unit = Unit.INSTANCE;
        completableDeferred.complete(unit);
        return unit;
    }

    /* JADX INFO: renamed from: $r8$lambda$-mG8_AgNMPKBsIwSXjNb-j0kE9U, reason: not valid java name */
    public static Unit m1588$r8$lambda$mG8_AgNMPKBsIwSXjNbj0kE9U(CameraRequest cameraRequest, Throwable th) {
        CompletableDeferred<Unit> deferred = ((RequestCloseById) cameraRequest).getDeferred();
        Unit unit = Unit.INSTANCE;
        deferred.complete(unit);
        return unit;
    }

    private final void onRemoved(CameraRequest cameraRequest) {
        if (cameraRequest instanceof RequestOpen) {
            VirtualCamera.m1607disconnectTPqeGZw$default(((RequestOpen) cameraRequest).getVirtualCamera(), null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object process(CameraRequest cameraRequest, Continuation<? super Unit> continuation) {
        if (cameraRequest instanceof RequestOpen) {
            Object objProcessRequestOpen = processRequestOpen((RequestOpen) cameraRequest, continuation);
            return objProcessRequestOpen == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objProcessRequestOpen : Unit.INSTANCE;
        }
        if (cameraRequest instanceof RequestClose) {
            Object objProcessRequestClose = processRequestClose((RequestClose) cameraRequest, continuation);
            return objProcessRequestClose == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objProcessRequestClose : Unit.INSTANCE;
        }
        if (cameraRequest instanceof RequestCloseById) {
            Object objProcessRequestCloseById = processRequestCloseById((RequestCloseById) cameraRequest, continuation);
            return objProcessRequestCloseById == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objProcessRequestCloseById : Unit.INSTANCE;
        }
        if (cameraRequest instanceof RequestCloseAll) {
            Object objProcessRequestCloseAll = processRequestCloseAll((RequestCloseAll) cameraRequest, continuation);
            return objProcessRequestCloseAll == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objProcessRequestCloseAll : Unit.INSTANCE;
        }
        LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x02c0, code lost:
    
        if (connectPendingRequestOpens(r11, r0) != r1) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x02df, code lost:
    
        if (r12.connectTo(r10, r0, r2) == r1) goto L117;
     */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0164 A[LOOP:3: B:49:0x015e->B:51:0x0164, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object processRequestOpen(RequestOpen requestOpen, Continuation<? super Unit> continuation) {
        C02181 c02181;
        String cameraId;
        ArrayList arrayList;
        RequestOpen requestOpen2;
        List list;
        Iterator it;
        Iterator it2;
        Object objM1593retrieveActiveCameraRzXb1QE;
        C02181 c021812;
        Object obj;
        String str;
        RequestOpen requestOpen3;
        RetrieveActiveCameraResult retrieveActiveCameraResult;
        if (continuation instanceof C02181) {
            c02181 = (C02181) continuation;
            int i = c02181.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c02181.label = i - Integer.MIN_VALUE;
            } else {
                c02181 = new C02181(continuation);
            }
        }
        Object obj2 = c02181.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c02181.label) {
            case 0:
                ResultKt.throwOnFailure(obj2);
                cameraId = requestOpen.getVirtualCamera().getCameraId();
                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                    android.util.Log.i("CXCP", "PruningCamera2DeviceManager#processRequestOpen(" + ((Object) CameraId.m1356toStringimpl(cameraId)) + ')');
                }
                if (requestOpen.getSharedCameraIds().isEmpty()) {
                    Set<ActiveCamera> set = this.activeCameras;
                    arrayList = new ArrayList();
                    for (Object obj3 : set) {
                        if (!CameraId.m1354equalsimpl0(((ActiveCamera) obj3).m1533getCameraIdDz_R5H8(), cameraId)) {
                            arrayList.add(obj3);
                        }
                    }
                } else {
                    Set set2 = CollectionsKt.toSet(CollectionsKt.plus((Collection<? extends CameraId>) requestOpen.getSharedCameraIds(), CameraId.m1351boximpl(requestOpen.getVirtualCamera().getCameraId())));
                    Set<ActiveCamera> set3 = this.activeCameras;
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj4 : set3) {
                        if (!Intrinsics.areEqual(((ActiveCamera) obj4).getAllCameraIds$camera_camera2_pipe(), set2)) {
                            arrayList2.add(obj4);
                        }
                    }
                    arrayList = arrayList2;
                }
                if (!arrayList.isEmpty()) {
                    this.activeCameras.removeAll(arrayList);
                    List<PendingRequestOpen> list2 = this.pendingRequestOpens;
                    ArrayList arrayList3 = new ArrayList();
                    for (Object obj5 : list2) {
                        if (arrayList.contains(((PendingRequestOpen) obj5).getActiveCamera())) {
                            arrayList3.add(obj5);
                        }
                    }
                    c02181.L$0 = requestOpen;
                    c02181.L$1 = cameraId;
                    c02181.L$2 = arrayList;
                    c02181.label = 1;
                    if (disconnectPendingRequestOpens(arrayList3, c02181) != coroutine_suspended) {
                        ArrayList arrayList4 = arrayList;
                        requestOpen2 = requestOpen;
                        list = arrayList4;
                        it = list.iterator();
                        while (it.hasNext()) {
                            ((ActiveCamera) it.next()).close();
                        }
                        it2 = list.iterator();
                        while (it2.hasNext()) {
                            ActiveCamera activeCamera = (ActiveCamera) it2.next();
                            c02181.L$0 = requestOpen2;
                            c02181.L$1 = cameraId;
                            c02181.L$2 = it2;
                            c02181.label = 2;
                            if (activeCamera.awaitClosed(c02181) == coroutine_suspended) {
                            }
                        }
                        String str2 = cameraId;
                        this.camera2ErrorProcessor.m1572setActiveVirtualCamera0r8Bogc$camera_camera2_pipe(str2, requestOpen2.getVirtualCamera());
                        c02181.L$0 = requestOpen2;
                        c02181.L$1 = str2;
                        c02181.L$2 = null;
                        c02181.label = 3;
                        objM1593retrieveActiveCameraRzXb1QE = m1593retrieveActiveCameraRzXb1QE(str2, requestOpen2, c02181);
                        if (objM1593retrieveActiveCameraRzXb1QE != coroutine_suspended) {
                            c021812 = c02181;
                            obj = objM1593retrieveActiveCameraRzXb1QE;
                            str = str2;
                            requestOpen3 = requestOpen2;
                            retrieveActiveCameraResult = (RetrieveActiveCameraResult) obj;
                            if (!(retrieveActiveCameraResult instanceof RetrieveActiveCameraResult.Error)) {
                                RetrieveActiveCameraResult.Error error = (RetrieveActiveCameraResult.Error) retrieveActiveCameraResult;
                                if (error.getLastCameraError() == null) {
                                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                        android.util.Log.w("CXCP", "Failed to retrieve active camera for " + ((Object) CameraId.m1356toStringimpl(str)) + ". Camera might have been closed during opening.");
                                    }
                                } else if (Log.INSTANCE.getERROR_LOGGABLE()) {
                                    android.util.Log.e("CXCP", "Failed to retrieve active camera for " + ((Object) CameraId.m1356toStringimpl(str)) + ". Last camera error was " + ((Object) CameraError.m1305toStringimpl(error.getLastCameraError().getValue())));
                                }
                                return Unit.INSTANCE;
                            }
                            if (!(retrieveActiveCameraResult instanceof RetrieveActiveCameraResult.Success)) {
                                Segment$$ExternalSyntheticBUOutline1.m973m("Check failed.");
                                return null;
                            }
                            RetrieveActiveCameraResult.Success success = (RetrieveActiveCameraResult.Success) retrieveActiveCameraResult;
                            ActiveCamera activeCamera2 = success.getActiveCamera();
                            Token token = success.getToken();
                            if (!requestOpen3.getSharedCameraIds().isEmpty()) {
                                List<CameraId> sharedCameraIds = requestOpen3.getSharedCameraIds();
                                if (!(sharedCameraIds instanceof Collection) || !sharedCameraIds.isEmpty()) {
                                    Iterator<T> it3 = sharedCameraIds.iterator();
                                    while (it3.hasNext()) {
                                        String value = ((CameraId) it3.next()).getValue();
                                        List<PendingRequestOpen> list3 = this.pendingRequestOpens;
                                        if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                                            Iterator<T> it4 = list3.iterator();
                                            while (it4.hasNext()) {
                                                if (CameraId.m1354equalsimpl0(((PendingRequestOpen) it4.next()).getActiveCamera().m1533getCameraIdDz_R5H8(), value)) {
                                                }
                                                break;
                                            }
                                        }
                                        this.pendingRequestOpens.add(new PendingRequestOpen(requestOpen3, activeCamera2, token));
                                        return Unit.INSTANCE;
                                    }
                                }
                                if (requestOpen3.getIsPrewarm()) {
                                    Segment$$ExternalSyntheticBUOutline1.m973m("Check failed.");
                                    return null;
                                }
                                VirtualCameraState virtualCamera = requestOpen3.getVirtualCamera();
                                c021812.L$0 = requestOpen3;
                                c021812.L$1 = null;
                                c021812.label = 4;
                                if (activeCamera2.connectTo(virtualCamera, token, c021812) != coroutine_suspended) {
                                    c02181 = c021812;
                                    Set<CameraId> set4 = CollectionsKt.toSet(requestOpen3.getSharedCameraIds());
                                    c02181.L$0 = null;
                                    c02181.label = 5;
                                }
                            } else if (!requestOpen3.getIsPrewarm()) {
                                VirtualCameraState virtualCamera2 = requestOpen3.getVirtualCamera();
                                c021812.L$0 = null;
                                c021812.L$1 = null;
                                c021812.label = 6;
                            } else {
                                token.release();
                                return Unit.INSTANCE;
                            }
                        }
                        break;
                    }
                    return coroutine_suspended;
                }
                requestOpen2 = requestOpen;
                String str22 = cameraId;
                this.camera2ErrorProcessor.m1572setActiveVirtualCamera0r8Bogc$camera_camera2_pipe(str22, requestOpen2.getVirtualCamera());
                c02181.L$0 = requestOpen2;
                c02181.L$1 = str22;
                c02181.L$2 = null;
                c02181.label = 3;
                objM1593retrieveActiveCameraRzXb1QE = m1593retrieveActiveCameraRzXb1QE(str22, requestOpen2, c02181);
                if (objM1593retrieveActiveCameraRzXb1QE != coroutine_suspended) {
                }
                return coroutine_suspended;
            case 1:
                list = (List) c02181.L$2;
                cameraId = (String) c02181.L$1;
                requestOpen2 = (RequestOpen) c02181.L$0;
                ResultKt.throwOnFailure(obj2);
                it = list.iterator();
                while (it.hasNext()) {
                }
                it2 = list.iterator();
                while (it2.hasNext()) {
                }
                String str222 = cameraId;
                this.camera2ErrorProcessor.m1572setActiveVirtualCamera0r8Bogc$camera_camera2_pipe(str222, requestOpen2.getVirtualCamera());
                c02181.L$0 = requestOpen2;
                c02181.L$1 = str222;
                c02181.L$2 = null;
                c02181.label = 3;
                objM1593retrieveActiveCameraRzXb1QE = m1593retrieveActiveCameraRzXb1QE(str222, requestOpen2, c02181);
                if (objM1593retrieveActiveCameraRzXb1QE != coroutine_suspended) {
                }
                return coroutine_suspended;
            case 2:
                it2 = (Iterator) c02181.L$2;
                cameraId = (String) c02181.L$1;
                requestOpen2 = (RequestOpen) c02181.L$0;
                ResultKt.throwOnFailure(obj2);
                while (it2.hasNext()) {
                }
                String str2222 = cameraId;
                this.camera2ErrorProcessor.m1572setActiveVirtualCamera0r8Bogc$camera_camera2_pipe(str2222, requestOpen2.getVirtualCamera());
                c02181.L$0 = requestOpen2;
                c02181.L$1 = str2222;
                c02181.L$2 = null;
                c02181.label = 3;
                objM1593retrieveActiveCameraRzXb1QE = m1593retrieveActiveCameraRzXb1QE(str2222, requestOpen2, c02181);
                if (objM1593retrieveActiveCameraRzXb1QE != coroutine_suspended) {
                }
                return coroutine_suspended;
            case 3:
                String str3 = (String) c02181.L$1;
                RequestOpen requestOpen4 = (RequestOpen) c02181.L$0;
                ResultKt.throwOnFailure(obj2);
                str = str3;
                requestOpen3 = requestOpen4;
                c021812 = c02181;
                obj = obj2;
                retrieveActiveCameraResult = (RetrieveActiveCameraResult) obj;
                if (!(retrieveActiveCameraResult instanceof RetrieveActiveCameraResult.Error)) {
                }
                break;
            case 4:
                requestOpen3 = (RequestOpen) c02181.L$0;
                ResultKt.throwOnFailure(obj2);
                Set<CameraId> set42 = CollectionsKt.toSet(requestOpen3.getSharedCameraIds());
                c02181.L$0 = null;
                c02181.label = 5;
                break;
            case 5:
                ResultKt.throwOnFailure(obj2);
                return Unit.INSTANCE;
            case 6:
                ResultKt.throwOnFailure(obj2);
                return Unit.INSTANCE;
            default:
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00cc, code lost:
    
        if (r9.awaitClosed(r0) == r1) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object processRequestClose(RequestClose requestClose, Continuation<? super Unit> continuation) {
        C02151 c02151;
        if (continuation instanceof C02151) {
            c02151 = (C02151) continuation;
            int i = c02151.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c02151.label = i - Integer.MIN_VALUE;
            } else {
                c02151 = new C02151(continuation);
            }
        }
        Object obj = c02151.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c02151.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            String strM1533getCameraIdDz_R5H8 = requestClose.getActiveCamera().m1533getCameraIdDz_R5H8();
            if (Log.INSTANCE.getINFO_LOGGABLE()) {
                android.util.Log.i("CXCP", "PruningCamera2DeviceManager#processRequestClose(" + ((Object) CameraId.m1356toStringimpl(strM1533getCameraIdDz_R5H8)) + ')');
            }
            if (this.activeCameras.contains(requestClose.getActiveCamera())) {
                this.activeCameras.remove(requestClose.getActiveCamera());
            }
            List<PendingRequestOpen> list = this.pendingRequestOpens;
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : list) {
                if (Intrinsics.areEqual(((PendingRequestOpen) obj2).getActiveCamera(), requestClose.getActiveCamera())) {
                    arrayList.add(obj2);
                }
            }
            c02151.L$0 = requestClose;
            c02151.label = 1;
            if (disconnectPendingRequestOpens(arrayList, c02151) != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        requestClose = (RequestClose) c02151.L$0;
        ResultKt.throwOnFailure(obj);
        requestClose.getActiveCamera().close();
        ActiveCamera activeCamera = requestClose.getActiveCamera();
        c02151.L$0 = null;
        c02151.label = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object processRequestCloseById(RequestCloseById requestCloseById, Continuation<? super Unit> continuation) {
        C02171 c02171;
        RequestCloseById requestCloseById2;
        String str;
        Object next;
        RequestCloseById requestCloseById3;
        if (continuation instanceof C02171) {
            c02171 = (C02171) continuation;
            int i = c02171.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c02171.label = i - Integer.MIN_VALUE;
            } else {
                c02171 = new C02171(continuation);
            }
        }
        Object obj = c02171.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c02171.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            String activeCameraId = requestCloseById.getActiveCameraId();
            if (Log.INSTANCE.getINFO_LOGGABLE()) {
                android.util.Log.i("CXCP", "PruningCamera2DeviceManager#processRequestCloseById(" + ((Object) CameraId.m1356toStringimpl(requestCloseById.getActiveCameraId())) + ')');
            }
            List<PendingRequestOpen> list = this.pendingRequestOpens;
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : list) {
                if (CameraId.m1354equalsimpl0(((PendingRequestOpen) obj2).getRequest().getVirtualCamera().getCameraId(), activeCameraId)) {
                    arrayList.add(obj2);
                }
            }
            c02171.L$0 = requestCloseById;
            c02171.L$1 = activeCameraId;
            c02171.label = 1;
            if (disconnectPendingRequestOpens(arrayList, c02171) != coroutine_suspended) {
                requestCloseById2 = requestCloseById;
                str = activeCameraId;
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            requestCloseById3 = (RequestCloseById) c02171.L$0;
            ResultKt.throwOnFailure(obj);
            requestCloseById2 = requestCloseById3;
            CompletableDeferred<Unit> deferred = requestCloseById2.getDeferred();
            Unit unit = Unit.INSTANCE;
            deferred.complete(unit);
            return unit;
        }
        str = (String) c02171.L$1;
        requestCloseById2 = (RequestCloseById) c02171.L$0;
        ResultKt.throwOnFailure(obj);
        Iterator<T> it = this.activeCameras.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (CameraId.m1354equalsimpl0(((ActiveCamera) next).m1533getCameraIdDz_R5H8(), str)) {
                break;
            }
        }
        ActiveCamera activeCamera = (ActiveCamera) next;
        if (activeCamera != null) {
            this.activeCameras.remove(activeCamera);
            activeCamera.close();
            c02171.L$0 = requestCloseById2;
            c02171.L$1 = null;
            c02171.label = 2;
            if (activeCamera.awaitClosed(c02171) != coroutine_suspended) {
                requestCloseById3 = requestCloseById2;
                requestCloseById2 = requestCloseById3;
            }
            return coroutine_suspended;
        }
        CompletableDeferred<Unit> deferred2 = requestCloseById2.getDeferred();
        Unit unit2 = Unit.INSTANCE;
        deferred2.complete(unit2);
        return unit2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005f, code lost:
    
        if (disconnectPendingRequestOpens(r7, r0) == r1) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object processRequestCloseAll(RequestCloseAll requestCloseAll, Continuation<? super Unit> continuation) {
        C02161 c02161;
        RequestCloseAll requestCloseAll2;
        Iterator<ActiveCamera> it;
        if (continuation instanceof C02161) {
            c02161 = (C02161) continuation;
            int i = c02161.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c02161.label = i - Integer.MIN_VALUE;
            } else {
                c02161 = new C02161(continuation);
            }
        }
        Object obj = c02161.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c02161.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            if (Log.INSTANCE.getINFO_LOGGABLE()) {
                android.util.Log.i("CXCP", "PruningCamera2DeviceManager#processRequestCloseAll()");
            }
            List<PendingRequestOpen> list = this.pendingRequestOpens;
            c02161.L$0 = requestCloseAll;
            c02161.label = 1;
        } else {
            if (i2 != 1) {
                if (i2 != 2) {
                    Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                it = (Iterator) c02161.L$1;
                requestCloseAll2 = (RequestCloseAll) c02161.L$0;
                ResultKt.throwOnFailure(obj);
                while (it.hasNext()) {
                    ActiveCamera next = it.next();
                    c02161.L$0 = requestCloseAll2;
                    c02161.L$1 = it;
                    c02161.label = 2;
                    if (next.awaitClosed(c02161) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                this.activeCameras.clear();
                CompletableDeferred<Unit> deferred = requestCloseAll2.getDeferred();
                Unit unit = Unit.INSTANCE;
                deferred.complete(unit);
                return unit;
            }
            requestCloseAll = (RequestCloseAll) c02161.L$0;
            ResultKt.throwOnFailure(obj);
        }
        Iterator<ActiveCamera> it2 = this.activeCameras.iterator();
        while (it2.hasNext()) {
            it2.next().close();
        }
        requestCloseAll2 = requestCloseAll;
        it = this.activeCameras.iterator();
        while (it.hasNext()) {
        }
        this.activeCameras.clear();
        CompletableDeferred<Unit> deferred2 = requestCloseAll2.getDeferred();
        Unit unit2 = Unit.INSTANCE;
        deferred2.complete(unit2);
        return unit2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0076, code lost:
    
        r0 = r15.acquire();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007a, code lost:
    
        if (r0 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007d, code lost:
    
        r15.close();
        r11.L$0 = r7;
        r11.L$1 = r13;
        r11.L$2 = r14;
        r11.L$3 = r15;
        r11.label = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008e, code lost:
    
        if (r15.awaitClosed(r11) != r1) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0091, code lost:
    
        r2 = r13;
        r13 = r15;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x009a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0091 -> B:28:0x0093). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: retrieveActiveCamera-RzXb1QE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m1593retrieveActiveCameraRzXb1QE(String str, RequestOpen requestOpen, Continuation<? super RetrieveActiveCameraResult> continuation) {
        PruningCamera2DeviceManager$retrieveActiveCamera$1 pruningCamera2DeviceManager$retrieveActiveCamera$1;
        String str2;
        RequestOpen requestOpen2;
        Iterator<ActiveCamera> it;
        PruningCamera2DeviceManager$retrieveActiveCamera$1 pruningCamera2DeviceManager$retrieveActiveCamera$12;
        ActiveCamera next;
        Token tokenAcquire;
        PruningCamera2DeviceManager pruningCamera2DeviceManager;
        String str3;
        OpenVirtualCameraResult openVirtualCameraResult;
        if (continuation instanceof PruningCamera2DeviceManager$retrieveActiveCamera$1) {
            pruningCamera2DeviceManager$retrieveActiveCamera$1 = (PruningCamera2DeviceManager$retrieveActiveCamera$1) continuation;
            int i = pruningCamera2DeviceManager$retrieveActiveCamera$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                pruningCamera2DeviceManager$retrieveActiveCamera$1.label = i - Integer.MIN_VALUE;
            } else {
                pruningCamera2DeviceManager$retrieveActiveCamera$1 = new PruningCamera2DeviceManager$retrieveActiveCamera$1(this, continuation);
            }
        }
        Object objM1592openCameraWithRetryzDSwpeU = pruningCamera2DeviceManager$retrieveActiveCamera$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = pruningCamera2DeviceManager$retrieveActiveCamera$1.label;
        CameraError cameraError = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objM1592openCameraWithRetryzDSwpeU);
            str2 = str;
            requestOpen2 = requestOpen;
            it = this.activeCameras.iterator();
            pruningCamera2DeviceManager$retrieveActiveCamera$12 = pruningCamera2DeviceManager$retrieveActiveCamera$1;
            while (true) {
                if (!it.hasNext()) {
                }
            }
            if (next == null) {
            }
            if (tokenAcquire != null) {
            }
        } else {
            if (i2 != 1) {
                if (i2 != 2) {
                    Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                requestOpen2 = (RequestOpen) pruningCamera2DeviceManager$retrieveActiveCamera$1.L$1;
                str3 = (String) pruningCamera2DeviceManager$retrieveActiveCamera$1.L$0;
                ResultKt.throwOnFailure(objM1592openCameraWithRetryzDSwpeU);
                pruningCamera2DeviceManager = this;
                openVirtualCameraResult = (OpenVirtualCameraResult) objM1592openCameraWithRetryzDSwpeU;
                if (openVirtualCameraResult instanceof OpenVirtualCameraResult.Success) {
                    if (!(openVirtualCameraResult instanceof OpenVirtualCameraResult.Error)) {
                        LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
                        return null;
                    }
                    if (Log.INSTANCE.getINFO_LOGGABLE()) {
                        android.util.Log.i("CXCP", "PruningCameraDeviceManager: Failed to open " + ((Object) CameraId.m1356toStringimpl(str3)));
                    }
                    OpenVirtualCameraResult.Error error = (OpenVirtualCameraResult.Error) openVirtualCameraResult;
                    requestOpen2.getVirtualCamera().mo1608disconnectTPqeGZw(error.getLastCameraError());
                    return new RetrieveActiveCameraResult.Error(error.getLastCameraError(), objArr == true ? 1 : 0);
                }
                next = ((OpenVirtualCameraResult.Success) openVirtualCameraResult).getActiveCamera();
                Token tokenAcquire2 = next.acquire();
                if (tokenAcquire2 == null) {
                    if (Log.INSTANCE.getINFO_LOGGABLE()) {
                        android.util.Log.i("CXCP", "PruningCameraDeviceManager: Failed to open " + ((Object) CameraId.m1356toStringimpl(str3)) + ": Camera may have been closed (possibly due to an error) immediately after opening");
                    }
                    requestOpen2.getVirtualCamera().mo1608disconnectTPqeGZw(null);
                    return new RetrieveActiveCameraResult.Error(cameraError, objArr2 == true ? 1 : 0);
                }
                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                    android.util.Log.i("CXCP", "PruningCameraDeviceManager: " + ((Object) CameraId.m1356toStringimpl(str3)) + " opened successfully");
                }
                pruningCamera2DeviceManager.activeCameras.add(next);
                tokenAcquire = tokenAcquire2;
                if (tokenAcquire != null) {
                    return new RetrieveActiveCameraResult.Success(next, tokenAcquire);
                }
                Segment$$ExternalSyntheticBUOutline1.m973m("Required value was null.");
                return null;
            }
            ActiveCamera activeCamera = (ActiveCamera) pruningCamera2DeviceManager$retrieveActiveCamera$1.L$3;
            it = (Iterator) pruningCamera2DeviceManager$retrieveActiveCamera$1.L$2;
            RequestOpen requestOpen3 = (RequestOpen) pruningCamera2DeviceManager$retrieveActiveCamera$1.L$1;
            String str4 = (String) pruningCamera2DeviceManager$retrieveActiveCamera$1.L$0;
            ResultKt.throwOnFailure(objM1592openCameraWithRetryzDSwpeU);
            pruningCamera2DeviceManager$retrieveActiveCamera$12 = pruningCamera2DeviceManager$retrieveActiveCamera$1;
            str2 = str4;
            this.activeCameras.remove(activeCamera);
            requestOpen2 = requestOpen3;
            while (true) {
                if (!it.hasNext()) {
                    next = it.next();
                    if (CameraId.m1354equalsimpl0(next.m1533getCameraIdDz_R5H8(), str2)) {
                        break;
                    }
                } else {
                    next = null;
                    tokenAcquire = null;
                    break;
                }
            }
            if (next == null) {
                List<CameraId> sharedCameraIds = requestOpen2.getSharedCameraIds();
                Function1<Unit, Boolean> function1IsForegroundObserver = requestOpen2.isForegroundObserver();
                CoroutineScope coroutineScope = this.scope;
                pruningCamera2DeviceManager$retrieveActiveCamera$12.L$0 = str2;
                pruningCamera2DeviceManager$retrieveActiveCamera$12.L$1 = requestOpen2;
                pruningCamera2DeviceManager$retrieveActiveCamera$12.L$2 = null;
                pruningCamera2DeviceManager$retrieveActiveCamera$12.L$3 = null;
                pruningCamera2DeviceManager$retrieveActiveCamera$12.label = 2;
                pruningCamera2DeviceManager = this;
                objM1592openCameraWithRetryzDSwpeU = pruningCamera2DeviceManager.m1592openCameraWithRetryzDSwpeU(str2, sharedCameraIds, function1IsForegroundObserver, coroutineScope, pruningCamera2DeviceManager$retrieveActiveCamera$12);
                if (objM1592openCameraWithRetryzDSwpeU != coroutine_suspended) {
                    str3 = str2;
                    openVirtualCameraResult = (OpenVirtualCameraResult) objM1592openCameraWithRetryzDSwpeU;
                    if (openVirtualCameraResult instanceof OpenVirtualCameraResult.Success) {
                    }
                }
                return coroutine_suspended;
            }
            if (tokenAcquire != null) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX INFO: renamed from: openCameraWithRetry-zDSwpeU, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m1592openCameraWithRetryzDSwpeU(String str, List<CameraId> list, Function1<? super Unit, Boolean> function1, CoroutineScope coroutineScope, Continuation<? super OpenVirtualCameraResult> continuation) {
        PruningCamera2DeviceManager$openCameraWithRetry$1 pruningCamera2DeviceManager$openCameraWithRetry$1;
        if (continuation instanceof PruningCamera2DeviceManager$openCameraWithRetry$1) {
            pruningCamera2DeviceManager$openCameraWithRetry$1 = (PruningCamera2DeviceManager$openCameraWithRetry$1) continuation;
            int i = pruningCamera2DeviceManager$openCameraWithRetry$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                pruningCamera2DeviceManager$openCameraWithRetry$1.label = i - Integer.MIN_VALUE;
            } else {
                pruningCamera2DeviceManager$openCameraWithRetry$1 = new PruningCamera2DeviceManager$openCameraWithRetry$1(this, continuation);
            }
        }
        Object objMo1600openCameraWithRetryaeCOTgg = pruningCamera2DeviceManager$openCameraWithRetry$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = pruningCamera2DeviceManager$openCameraWithRetry$1.label;
        DefaultConstructorMarker defaultConstructorMarker = null;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objMo1600openCameraWithRetryaeCOTgg);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "Opening " + ((Object) CameraId.m1356toStringimpl(str)) + " with retries...");
            }
            RetryingCameraStateOpener retryingCameraStateOpener = this.retryingCameraStateOpener;
            Camera2DeviceCloser camera2DeviceCloser = this.camera2DeviceCloser;
            pruningCamera2DeviceManager$openCameraWithRetry$1.L$0 = str;
            pruningCamera2DeviceManager$openCameraWithRetry$1.L$1 = list;
            pruningCamera2DeviceManager$openCameraWithRetry$1.L$2 = coroutineScope;
            pruningCamera2DeviceManager$openCameraWithRetry$1.label = 1;
            objMo1600openCameraWithRetryaeCOTgg = retryingCameraStateOpener.mo1600openCameraWithRetryaeCOTgg(str, camera2DeviceCloser, function1, pruningCamera2DeviceManager$openCameraWithRetry$1);
            if (objMo1600openCameraWithRetryaeCOTgg == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            coroutineScope = (CoroutineScope) pruningCamera2DeviceManager$openCameraWithRetry$1.L$2;
            list = (List) pruningCamera2DeviceManager$openCameraWithRetry$1.L$1;
            str = (String) pruningCamera2DeviceManager$openCameraWithRetry$1.L$0;
            ResultKt.throwOnFailure(objMo1600openCameraWithRetryaeCOTgg);
        }
        OpenCameraResult openCameraResult = (OpenCameraResult) objMo1600openCameraWithRetryaeCOTgg;
        if (openCameraResult.getCameraState() == null) {
            return new OpenVirtualCameraResult.Error(openCameraResult.getErrorCode(), defaultConstructorMarker);
        }
        return new OpenVirtualCameraResult.Success(new ActiveCamera(openCameraResult.getCameraState(), CollectionsKt.toSet(CollectionsKt.plus((Collection<? extends CameraId>) list, CameraId.m1351boximpl(str))), coroutineScope, new Function1() { // from class: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PruningCamera2DeviceManager.$r8$lambda$vP9kzpFdONuWMUT974T0jXAWwcs(this.f$0, (ActiveCamera) obj);
            }
        }));
    }

    public static Unit $r8$lambda$vP9kzpFdONuWMUT974T0jXAWwcs(PruningCamera2DeviceManager pruningCamera2DeviceManager, ActiveCamera activeCamera) {
        pruningCamera2DeviceManager.queue.tryEmit(new RequestClose(activeCamera));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00ea, code lost:
    
        okio.Segment$$ExternalSyntheticBUOutline1.m973m("Check failed.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ef, code lost:
    
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x0106 -> B:46:0x0109). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object connectPendingRequestOpens(Set<CameraId> set, Continuation<? super Unit> continuation) {
        C02141 c02141;
        Iterator it;
        if (continuation instanceof C02141) {
            c02141 = (C02141) continuation;
            int i = c02141.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c02141.label = i - Integer.MIN_VALUE;
            } else {
                c02141 = new C02141(continuation);
            }
        }
        Object obj = c02141.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c02141.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            List<PendingRequestOpen> list = this.pendingRequestOpens;
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : list) {
                if (set.contains(CameraId.m1351boximpl(((PendingRequestOpen) obj2).getRequest().getVirtualCamera().getCameraId()))) {
                    arrayList.add(obj2);
                }
            }
            it = arrayList.iterator();
            if (it.hasNext()) {
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            PendingRequestOpen pendingRequestOpen = (PendingRequestOpen) c02141.L$1;
            it = (Iterator) c02141.L$0;
            ResultKt.throwOnFailure(obj);
            this.pendingRequestOpens.remove(pendingRequestOpen);
            if (it.hasNext()) {
                pendingRequestOpen = (PendingRequestOpen) it.next();
                RequestOpen request = pendingRequestOpen.getRequest();
                List listPlus = CollectionsKt.plus((Collection) CollectionsKt.listOf(CameraId.m1351boximpl(request.getVirtualCamera().getCameraId())), (Iterable) request.getSharedCameraIds());
                if (!(listPlus instanceof Collection) || !listPlus.isEmpty()) {
                    Iterator it2 = listPlus.iterator();
                    loop0: while (it2.hasNext()) {
                        String value = ((CameraId) it2.next()).getValue();
                        Set<ActiveCamera> set2 = this.activeCameras;
                        if (set2 != null && set2.isEmpty()) {
                            break;
                        }
                        Iterator<T> it3 = set2.iterator();
                        while (it3.hasNext()) {
                            if (CameraId.m1354equalsimpl0(((ActiveCamera) it3.next()).m1533getCameraIdDz_R5H8(), value)) {
                                break;
                            }
                        }
                        break loop0;
                    }
                }
                ActiveCamera activeCamera = pendingRequestOpen.getActiveCamera();
                VirtualCameraState virtualCamera = request.getVirtualCamera();
                Token token = pendingRequestOpen.getToken();
                c02141.L$0 = it;
                c02141.L$1 = pendingRequestOpen;
                c02141.label = 1;
                if (activeCamera.connectTo(virtualCamera, token, c02141) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                this.pendingRequestOpens.remove(pendingRequestOpen);
                if (it.hasNext()) {
                    return Unit.INSTANCE;
                }
            }
        }
    }

    private final Object disconnectPendingRequestOpens(List<PendingRequestOpen> list, Continuation<? super Unit> continuation) {
        for (PendingRequestOpen pendingRequestOpen : list) {
            pendingRequestOpen.getToken().release();
            this.pendingRequestOpens.remove(pendingRequestOpen);
        }
        return Unit.INSTANCE;
    }

    private final <T> List<T> removeIndices(List<T> list, Set<Integer> set) {
        ArrayList arrayList = new ArrayList();
        Iterator it = CollectionsKt.sorted(set).iterator();
        while (it.hasNext()) {
            arrayList.add(list.remove(((Number) it.next()).intValue() - arrayList.size()));
        }
        return arrayList;
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\br\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult;", _UrlKt.FRAGMENT_ENCODE_SET, "Success", "Error", "Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;", "Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public interface RetrieveActiveCameraResult {

        @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Success;", "Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult;", "Landroidx/camera/camera2/pipe/compat/ActiveCamera;", "activeCamera", "Landroidx/camera/camera2/pipe/core/Token;", "token", "<init>", "(Landroidx/camera/camera2/pipe/compat/ActiveCamera;Landroidx/camera/camera2/pipe/core/Token;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", _UrlKt.FRAGMENT_ENCODE_SET, "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Landroidx/camera/camera2/pipe/compat/ActiveCamera;", "getActiveCamera", "()Landroidx/camera/camera2/pipe/compat/ActiveCamera;", "Landroidx/camera/camera2/pipe/core/Token;", "getToken", "()Landroidx/camera/camera2/pipe/core/Token;", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
        public static final /* data */ class Success implements RetrieveActiveCameraResult {
            private final ActiveCamera activeCamera;
            private final Token token;

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Success)) {
                    return false;
                }
                Success success = (Success) other;
                return Intrinsics.areEqual(this.activeCamera, success.activeCamera) && Intrinsics.areEqual(this.token, success.token);
            }

            public int hashCode() {
                return (this.activeCamera.hashCode() * 31) + this.token.hashCode();
            }

            public String toString() {
                return "Success(activeCamera=" + this.activeCamera + ", token=" + this.token + ')';
            }

            public Success(ActiveCamera activeCamera, Token token) {
                this.activeCamera = activeCamera;
                this.token = token;
            }

            public final ActiveCamera getActiveCamera() {
                return this.activeCamera;
            }

            public final Token getToken() {
                return this.token;
            }
        }

        @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;", "Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult;", "Landroidx/camera/camera2/pipe/CameraError;", "lastCameraError", "<init>", "(Landroidx/camera/camera2/pipe/CameraError;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", _UrlKt.FRAGMENT_ENCODE_SET, "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Landroidx/camera/camera2/pipe/CameraError;", "getLastCameraError-mVEW8x0", "()Landroidx/camera/camera2/pipe/CameraError;", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
        public static final /* data */ class Error implements RetrieveActiveCameraResult {
            private final CameraError lastCameraError;

            public /* synthetic */ Error(CameraError cameraError, DefaultConstructorMarker defaultConstructorMarker) {
                this(cameraError);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Error) && Intrinsics.areEqual(this.lastCameraError, ((Error) other).lastCameraError);
            }

            public int hashCode() {
                CameraError cameraError = this.lastCameraError;
                if (cameraError == null) {
                    return 0;
                }
                return CameraError.m1303hashCodeimpl(cameraError.getValue());
            }

            public String toString() {
                return "Error(lastCameraError=" + this.lastCameraError + ')';
            }

            private Error(CameraError cameraError) {
                this.lastCameraError = cameraError;
            }

            /* JADX INFO: renamed from: getLastCameraError-mVEW8x0, reason: not valid java name and from getter */
            public final CameraError getLastCameraError() {
                return this.lastCameraError;
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\br\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult;", _UrlKt.FRAGMENT_ENCODE_SET, "Success", "Error", "Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Error;", "Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Success;", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OpenVirtualCameraResult {

        @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Success;", "Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult;", "Landroidx/camera/camera2/pipe/compat/ActiveCamera;", "activeCamera", "<init>", "(Landroidx/camera/camera2/pipe/compat/ActiveCamera;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", _UrlKt.FRAGMENT_ENCODE_SET, "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Landroidx/camera/camera2/pipe/compat/ActiveCamera;", "getActiveCamera", "()Landroidx/camera/camera2/pipe/compat/ActiveCamera;", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
        public static final /* data */ class Success implements OpenVirtualCameraResult {
            private final ActiveCamera activeCamera;

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Success) && Intrinsics.areEqual(this.activeCamera, ((Success) other).activeCamera);
            }

            public int hashCode() {
                return this.activeCamera.hashCode();
            }

            public String toString() {
                return "Success(activeCamera=" + this.activeCamera + ')';
            }

            public Success(ActiveCamera activeCamera) {
                this.activeCamera = activeCamera;
            }

            public final ActiveCamera getActiveCamera() {
                return this.activeCamera;
            }
        }

        @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult$Error;", "Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$OpenVirtualCameraResult;", "Landroidx/camera/camera2/pipe/CameraError;", "lastCameraError", "<init>", "(Landroidx/camera/camera2/pipe/CameraError;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", _UrlKt.FRAGMENT_ENCODE_SET, "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Landroidx/camera/camera2/pipe/CameraError;", "getLastCameraError-mVEW8x0", "()Landroidx/camera/camera2/pipe/CameraError;", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
        public static final /* data */ class Error implements OpenVirtualCameraResult {
            private final CameraError lastCameraError;

            public /* synthetic */ Error(CameraError cameraError, DefaultConstructorMarker defaultConstructorMarker) {
                this(cameraError);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Error) && Intrinsics.areEqual(this.lastCameraError, ((Error) other).lastCameraError);
            }

            public int hashCode() {
                CameraError cameraError = this.lastCameraError;
                if (cameraError == null) {
                    return 0;
                }
                return CameraError.m1303hashCodeimpl(cameraError.getValue());
            }

            public String toString() {
                return "Error(lastCameraError=" + this.lastCameraError + ')';
            }

            private Error(CameraError cameraError) {
                this.lastCameraError = cameraError;
            }

            /* JADX INFO: renamed from: getLastCameraError-mVEW8x0, reason: not valid java name and from getter */
            public final CameraError getLastCameraError() {
                return this.lastCameraError;
            }
        }
    }
}
