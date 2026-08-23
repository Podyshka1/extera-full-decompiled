package androidx.camera.camera2.pipe.compat;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.camera2.pipe.compat.VirtualCamera;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Permissions;
import androidx.camera.camera2.pipe.core.PruningProcessingQueue;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.Token;
import androidx.camera.camera2.pipe.graph.GraphListener;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
public final class PruningCamera2DeviceManager implements Camera2DeviceManager {
    private final Set activeCameras;
    private final Camera2DeviceCloser camera2DeviceCloser;
    private final Camera2ErrorProcessor camera2ErrorProcessor;
    private final List pendingRequestOpens;
    private final Permissions permissions;
    private final PruningProcessingQueue queue;
    private final RetryingCameraStateOpener retryingCameraStateOpener;
    private final CoroutineScope scope;
    private final Threads threads;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$connectPendingRequestOpens$1 */
    static final class C02141 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02141(Continuation continuation) {
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
    static final class C02151 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02151(Continuation continuation) {
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
    static final class C02161 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02161(Continuation continuation) {
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
    static final class C02171 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02171(Continuation continuation) {
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
    static final class C02181 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C02181(Continuation continuation) {
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
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(retryingCameraStateOpener, "retryingCameraStateOpener");
        Intrinsics.checkNotNullParameter(camera2DeviceCloser, "camera2DeviceCloser");
        Intrinsics.checkNotNullParameter(camera2ErrorProcessor, "camera2ErrorProcessor");
        Intrinsics.checkNotNullParameter(threads, "threads");
        this.permissions = permissions;
        this.retryingCameraStateOpener = retryingCameraStateOpener;
        this.camera2DeviceCloser = camera2DeviceCloser;
        this.camera2ErrorProcessor = camera2ErrorProcessor;
        this.threads = threads;
        CoroutineScope cameraPipeScope = threads.getCameraPipeScope();
        this.scope = cameraPipeScope;
        this.queue = PruningProcessingQueue.Companion.processIn(new PruningProcessingQueue(0, new PruningCamera2DeviceManager$queue$1(this), null, new PruningCamera2DeviceManager$queue$2(this, null), 5, null), cameraPipeScope);
        this.activeCameras = new LinkedHashSet();
        this.pendingRequestOpens = new ArrayList();
    }

    private static final class PendingRequestOpen {
        private final ActiveCamera activeCamera;
        private final RequestOpen request;
        private final Token token;

        public PendingRequestOpen(RequestOpen request, ActiveCamera activeCamera, Token token) {
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(activeCamera, "activeCamera");
            Intrinsics.checkNotNullParameter(token, "token");
            this.request = request;
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
    public VirtualCamera mo1831openzDSwpeU(String cameraId, List sharedCameraIds, GraphListener graphListener, boolean z, Function1 isForegroundObserver) {
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        Intrinsics.checkNotNullParameter(sharedCameraIds, "sharedCameraIds");
        Intrinsics.checkNotNullParameter(graphListener, "graphListener");
        Intrinsics.checkNotNullParameter(isForegroundObserver, "isForegroundObserver");
        VirtualCameraState virtualCameraState = new VirtualCameraState(cameraId, graphListener, this.scope, null);
        if (this.queue.tryEmit(new RequestOpen(virtualCameraState, sharedCameraIds, graphListener, z, isForegroundObserver))) {
            return virtualCameraState;
        }
        if (Log.INSTANCE.getERROR_LOGGABLE()) {
            android.util.Log.e("CXCP", "Camera open request failed for " + ((Object) CameraId.m1607toStringimpl(cameraId)) + '!');
        }
        graphListener.onGraphError(new GraphState.GraphStateError(CameraError.Companion.m1566getERROR_CAMERA_OPENERv7Vf74A(), false, null));
        return null;
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2DeviceManager
    /* JADX INFO: renamed from: close-EfqyGwQ */
    public Deferred mo1830closeEfqyGwQ(String cameraId) {
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        RequestCloseById requestCloseById = new RequestCloseById(cameraId, null);
        if (!this.queue.tryEmit(requestCloseById)) {
            if (Log.INSTANCE.getERROR_LOGGABLE()) {
                android.util.Log.e("CXCP", "Camera close by ID request failed for " + ((Object) CameraId.m1607toStringimpl(cameraId)) + '!');
            }
            requestCloseById.getDeferred().complete(Unit.INSTANCE);
        }
        return requestCloseById.getDeferred();
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2DeviceManager
    public Deferred closeAll(boolean z) {
        if (z) {
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

    /* JADX WARN: Removed duplicated region for block: B:58:0x014a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void prune$camera_camera2_pipe(List requests) {
        boolean z;
        int iNextIndex;
        Integer numValueOf;
        boolean zContains;
        final CompletableDeferred deferred;
        Intrinsics.checkNotNullParameter(requests, "requests");
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
        ListIterator listIterator = requests.listIterator(requests.size());
        while (true) {
            if (listIterator.hasPrevious()) {
                if (((CameraRequest) listIterator.previous()) instanceof RequestCloseAll) {
                    iNextIndex = listIterator.nextIndex();
                    break;
                }
            } else {
                iNextIndex = -1;
                break;
            }
        }
        if (iNextIndex > 0) {
            Object obj2 = requests.get(iNextIndex);
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type androidx.camera.camera2.pipe.compat.RequestCloseAll");
            RequestCloseAll requestCloseAll = (RequestCloseAll) obj2;
            for (int i = 0; i < iNextIndex; i++) {
                CameraRequest cameraRequest = (CameraRequest) requests.remove(0);
                if (cameraRequest instanceof RequestCloseById) {
                    deferred = ((RequestCloseById) cameraRequest).getDeferred();
                } else {
                    deferred = cameraRequest instanceof RequestCloseAll ? ((RequestCloseAll) cameraRequest).getDeferred() : null;
                }
                if (deferred != null) {
                    requestCloseAll.getDeferred().invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj3) {
                            return PruningCamera2DeviceManager.prune$lambda$2$0(deferred, (Throwable) obj3);
                        }
                    });
                }
                onRemoved(cameraRequest);
            }
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it2 = requests.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            int i3 = i2 + 1;
            final CameraRequest cameraRequest2 = (CameraRequest) it2.next();
            if (cameraRequest2 instanceof RequestOpen) {
                RequestOpen requestOpen = (RequestOpen) cameraRequest2;
                String strM1869getCameraIdDz_R5H8 = requestOpen.getVirtualCamera().m1869getCameraIdDz_R5H8();
                Set set = CollectionsKt.toSet(CollectionsKt.plus(requestOpen.getSharedCameraIds(), CameraId.m1602boximpl(strM1869getCameraIdDz_R5H8)));
                int size = requests.size();
                int i4 = i3;
                while (i4 < size) {
                    CameraRequest cameraRequest3 = (CameraRequest) requests.get(i4);
                    if (cameraRequest3 instanceof RequestCloseById) {
                        zContains = set.contains(CameraId.m1602boximpl(((RequestCloseById) cameraRequest3).m1857getActiveCameraIdDz_R5H8()));
                    } else if (cameraRequest3 instanceof RequestOpen) {
                        boolean z2 = (requestOpen.isPrewarm() || !((RequestOpen) cameraRequest3).isPrewarm()) ? true : z;
                        RequestOpen requestOpen2 = (RequestOpen) cameraRequest3;
                        String strM1869getCameraIdDz_R5H82 = requestOpen2.getVirtualCamera().m1869getCameraIdDz_R5H8();
                        Set set2 = CollectionsKt.toSet(CollectionsKt.plus(requestOpen2.getSharedCameraIds(), CameraId.m1602boximpl(strM1869getCameraIdDz_R5H82)));
                        if (z2 && (CameraId.m1605equalsimpl0(strM1869getCameraIdDz_R5H8, strM1869getCameraIdDz_R5H82) || !Intrinsics.areEqual(set, set2))) {
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
            } else if (cameraRequest2 instanceof RequestCloseById) {
                int size2 = requests.size();
                for (int i5 = i3; i5 < size2; i5++) {
                    CameraRequest cameraRequest4 = (CameraRequest) requests.get(i5);
                    if ((cameraRequest4 instanceof RequestCloseById) && CameraId.m1605equalsimpl0(((RequestCloseById) cameraRequest4).m1857getActiveCameraIdDz_R5H8(), ((RequestCloseById) cameraRequest2).m1857getActiveCameraIdDz_R5H8())) {
                        numValueOf = Integer.valueOf(i5);
                        break;
                    }
                }
                numValueOf = null;
            } else {
                numValueOf = null;
            }
            if (numValueOf != null) {
                CameraRequest cameraRequest5 = (CameraRequest) requests.get(numValueOf.intValue());
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", cameraRequest2 + " is pruned by " + cameraRequest5);
                }
                linkedHashSet.add(Integer.valueOf(i2));
                if ((cameraRequest2 instanceof RequestCloseById) && (cameraRequest5 instanceof RequestCloseById)) {
                    ((RequestCloseById) cameraRequest5).getDeferred().invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj3) {
                            return PruningCamera2DeviceManager.prune$lambda$6(cameraRequest2, (Throwable) obj3);
                        }
                    });
                }
            }
            i2 = i3;
            z = false;
        }
        Iterator it3 = removeIndices(requests, linkedHashSet).iterator();
        while (it3.hasNext()) {
            onRemoved((CameraRequest) it3.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit prune$lambda$2$0(CompletableDeferred completableDeferred, Throwable th) {
        Unit unit = Unit.INSTANCE;
        completableDeferred.complete(unit);
        return unit;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit prune$lambda$6(CameraRequest cameraRequest, Throwable th) {
        CompletableDeferred deferred = ((RequestCloseById) cameraRequest).getDeferred();
        Unit unit = Unit.INSTANCE;
        deferred.complete(unit);
        return unit;
    }

    private final void onRemoved(CameraRequest cameraRequest) {
        if (cameraRequest instanceof RequestOpen) {
            VirtualCamera.CC.m1868disconnectTPqeGZw$default(((RequestOpen) cameraRequest).getVirtualCamera(), null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object process(CameraRequest cameraRequest, Continuation continuation) throws Throwable {
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
        if (!(cameraRequest instanceof RequestCloseAll)) {
            throw new NoWhenBranchMatchedException();
        }
        Object objProcessRequestCloseAll = processRequestCloseAll((RequestCloseAll) cameraRequest, continuation);
        return objProcessRequestCloseAll == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objProcessRequestCloseAll : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x02cb, code lost:
    
        if (connectPendingRequestOpens(r11, r0) != r1) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x02ec, code lost:
    
        if (r12.connectTo(r11, r0, r2) == r1) goto L117;
     */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0169 A[LOOP:3: B:49:0x0163->B:51:0x0169, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object processRequestOpen(RequestOpen requestOpen, Continuation continuation) throws Throwable {
        C02181 c02181;
        String strM1869getCameraIdDz_R5H8;
        ArrayList arrayList;
        RequestOpen requestOpen2;
        List list;
        Iterator it;
        Iterator it2;
        Object objM1854retrieveActiveCameraRzXb1QE;
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
                strM1869getCameraIdDz_R5H8 = requestOpen.getVirtualCamera().m1869getCameraIdDz_R5H8();
                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                    android.util.Log.i("CXCP", "PruningCamera2DeviceManager#processRequestOpen(" + ((Object) CameraId.m1607toStringimpl(strM1869getCameraIdDz_R5H8)) + ')');
                }
                if (requestOpen.getSharedCameraIds().isEmpty()) {
                    Set set = this.activeCameras;
                    arrayList = new ArrayList();
                    for (Object obj3 : set) {
                        if (!CameraId.m1605equalsimpl0(((ActiveCamera) obj3).m1794getCameraIdDz_R5H8(), strM1869getCameraIdDz_R5H8)) {
                            arrayList.add(obj3);
                        }
                    }
                } else {
                    Set set2 = CollectionsKt.toSet(CollectionsKt.plus(requestOpen.getSharedCameraIds(), CameraId.m1602boximpl(requestOpen.getVirtualCamera().m1869getCameraIdDz_R5H8())));
                    Set set3 = this.activeCameras;
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj4 : set3) {
                        if (!Intrinsics.areEqual(((ActiveCamera) obj4).getAllCameraIds$camera_camera2_pipe(), set2)) {
                            arrayList2.add(obj4);
                        }
                    }
                    arrayList = arrayList2;
                }
                if (arrayList.isEmpty()) {
                    requestOpen2 = requestOpen;
                    String str2 = strM1869getCameraIdDz_R5H8;
                    this.camera2ErrorProcessor.m1833setActiveVirtualCamera0r8Bogc$camera_camera2_pipe(str2, requestOpen2.getVirtualCamera());
                    c02181.L$0 = requestOpen2;
                    c02181.L$1 = str2;
                    c02181.L$2 = null;
                    c02181.label = 3;
                    objM1854retrieveActiveCameraRzXb1QE = m1854retrieveActiveCameraRzXb1QE(str2, requestOpen2, c02181);
                    if (objM1854retrieveActiveCameraRzXb1QE != coroutine_suspended) {
                    }
                    return coroutine_suspended;
                }
                this.activeCameras.removeAll(arrayList);
                List list2 = this.pendingRequestOpens;
                List arrayList3 = new ArrayList();
                for (Object obj5 : list2) {
                    if (arrayList.contains(((PendingRequestOpen) obj5).getActiveCamera())) {
                        arrayList3.add(obj5);
                    }
                }
                c02181.L$0 = requestOpen;
                c02181.L$1 = strM1869getCameraIdDz_R5H8;
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
                        c02181.L$1 = strM1869getCameraIdDz_R5H8;
                        c02181.L$2 = it2;
                        c02181.label = 2;
                        if (activeCamera.awaitClosed(c02181) == coroutine_suspended) {
                        }
                    }
                    String str22 = strM1869getCameraIdDz_R5H8;
                    this.camera2ErrorProcessor.m1833setActiveVirtualCamera0r8Bogc$camera_camera2_pipe(str22, requestOpen2.getVirtualCamera());
                    c02181.L$0 = requestOpen2;
                    c02181.L$1 = str22;
                    c02181.L$2 = null;
                    c02181.label = 3;
                    objM1854retrieveActiveCameraRzXb1QE = m1854retrieveActiveCameraRzXb1QE(str22, requestOpen2, c02181);
                    if (objM1854retrieveActiveCameraRzXb1QE != coroutine_suspended) {
                        c021812 = c02181;
                        obj = objM1854retrieveActiveCameraRzXb1QE;
                        str = str22;
                        requestOpen3 = requestOpen2;
                        retrieveActiveCameraResult = (RetrieveActiveCameraResult) obj;
                        if (!(retrieveActiveCameraResult instanceof RetrieveActiveCameraResult.Error)) {
                            RetrieveActiveCameraResult.Error error = (RetrieveActiveCameraResult.Error) retrieveActiveCameraResult;
                            if (error.m1856getLastCameraErrormVEW8x0() != null) {
                                if (Log.INSTANCE.getERROR_LOGGABLE()) {
                                    android.util.Log.e("CXCP", "Failed to retrieve active camera for " + ((Object) CameraId.m1607toStringimpl(str)) + ". Last camera error was " + ((Object) CameraError.m1556toStringimpl(error.m1856getLastCameraErrormVEW8x0().m1557unboximpl())));
                                }
                            } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to retrieve active camera for " + ((Object) CameraId.m1607toStringimpl(str)) + ". Camera might have been closed during opening.");
                            }
                            return Unit.INSTANCE;
                        }
                        if (!(retrieveActiveCameraResult instanceof RetrieveActiveCameraResult.Success)) {
                            throw new IllegalStateException("Check failed.");
                        }
                        RetrieveActiveCameraResult.Success success = (RetrieveActiveCameraResult.Success) retrieveActiveCameraResult;
                        ActiveCamera activeCamera2 = success.getActiveCamera();
                        Token token = success.getToken();
                        if (!requestOpen3.getSharedCameraIds().isEmpty()) {
                            List sharedCameraIds = requestOpen3.getSharedCameraIds();
                            if (!(sharedCameraIds instanceof Collection) || !sharedCameraIds.isEmpty()) {
                                Iterator it3 = sharedCameraIds.iterator();
                                while (it3.hasNext()) {
                                    String strM1608unboximpl = ((CameraId) it3.next()).m1608unboximpl();
                                    List list3 = this.pendingRequestOpens;
                                    if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                                        Iterator it4 = list3.iterator();
                                        while (it4.hasNext()) {
                                            if (CameraId.m1605equalsimpl0(((PendingRequestOpen) it4.next()).getActiveCamera().m1794getCameraIdDz_R5H8(), strM1608unboximpl)) {
                                            }
                                            break;
                                        }
                                    }
                                    this.pendingRequestOpens.add(new PendingRequestOpen(requestOpen3, activeCamera2, token));
                                    return Unit.INSTANCE;
                                }
                            }
                            if (requestOpen3.isPrewarm()) {
                                throw new IllegalStateException("Check failed.");
                            }
                            VirtualCameraState virtualCamera = requestOpen3.getVirtualCamera();
                            c021812.L$0 = requestOpen3;
                            c021812.L$1 = null;
                            c021812.label = 4;
                            if (activeCamera2.connectTo(virtualCamera, token, c021812) != coroutine_suspended) {
                                c02181 = c021812;
                                Set set4 = CollectionsKt.toSet(requestOpen3.getSharedCameraIds());
                                c02181.L$0 = null;
                                c02181.label = 5;
                            }
                        } else {
                            if (requestOpen3.isPrewarm()) {
                                token.release();
                                return Unit.INSTANCE;
                            }
                            VirtualCameraState virtualCamera2 = requestOpen3.getVirtualCamera();
                            c021812.L$0 = null;
                            c021812.L$1 = null;
                            c021812.label = 6;
                        }
                    }
                    break;
                }
                return coroutine_suspended;
            case 1:
                list = (List) c02181.L$2;
                strM1869getCameraIdDz_R5H8 = (String) c02181.L$1;
                requestOpen2 = (RequestOpen) c02181.L$0;
                ResultKt.throwOnFailure(obj2);
                it = list.iterator();
                while (it.hasNext()) {
                }
                it2 = list.iterator();
                while (it2.hasNext()) {
                }
                String str222 = strM1869getCameraIdDz_R5H8;
                this.camera2ErrorProcessor.m1833setActiveVirtualCamera0r8Bogc$camera_camera2_pipe(str222, requestOpen2.getVirtualCamera());
                c02181.L$0 = requestOpen2;
                c02181.L$1 = str222;
                c02181.L$2 = null;
                c02181.label = 3;
                objM1854retrieveActiveCameraRzXb1QE = m1854retrieveActiveCameraRzXb1QE(str222, requestOpen2, c02181);
                if (objM1854retrieveActiveCameraRzXb1QE != coroutine_suspended) {
                }
                return coroutine_suspended;
            case 2:
                it2 = (Iterator) c02181.L$2;
                strM1869getCameraIdDz_R5H8 = (String) c02181.L$1;
                requestOpen2 = (RequestOpen) c02181.L$0;
                ResultKt.throwOnFailure(obj2);
                while (it2.hasNext()) {
                }
                String str2222 = strM1869getCameraIdDz_R5H8;
                this.camera2ErrorProcessor.m1833setActiveVirtualCamera0r8Bogc$camera_camera2_pipe(str2222, requestOpen2.getVirtualCamera());
                c02181.L$0 = requestOpen2;
                c02181.L$1 = str2222;
                c02181.L$2 = null;
                c02181.label = 3;
                objM1854retrieveActiveCameraRzXb1QE = m1854retrieveActiveCameraRzXb1QE(str2222, requestOpen2, c02181);
                if (objM1854retrieveActiveCameraRzXb1QE != coroutine_suspended) {
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
                Set set42 = CollectionsKt.toSet(requestOpen3.getSharedCameraIds());
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
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d0, code lost:
    
        if (r9.awaitClosed(r0) == r1) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object processRequestClose(RequestClose requestClose, Continuation continuation) throws Throwable {
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
            String strM1794getCameraIdDz_R5H8 = requestClose.getActiveCamera().m1794getCameraIdDz_R5H8();
            if (Log.INSTANCE.getINFO_LOGGABLE()) {
                android.util.Log.i("CXCP", "PruningCamera2DeviceManager#processRequestClose(" + ((Object) CameraId.m1607toStringimpl(strM1794getCameraIdDz_R5H8)) + ')');
            }
            if (this.activeCameras.contains(requestClose.getActiveCamera())) {
                this.activeCameras.remove(requestClose.getActiveCamera());
            }
            List list = this.pendingRequestOpens;
            List arrayList = new ArrayList();
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
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
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
    public final Object processRequestCloseById(RequestCloseById requestCloseById, Continuation continuation) throws Throwable {
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
            String strM1857getActiveCameraIdDz_R5H8 = requestCloseById.m1857getActiveCameraIdDz_R5H8();
            if (Log.INSTANCE.getINFO_LOGGABLE()) {
                android.util.Log.i("CXCP", "PruningCamera2DeviceManager#processRequestCloseById(" + ((Object) CameraId.m1607toStringimpl(requestCloseById.m1857getActiveCameraIdDz_R5H8())) + ')');
            }
            List list = this.pendingRequestOpens;
            List arrayList = new ArrayList();
            for (Object obj2 : list) {
                if (CameraId.m1605equalsimpl0(((PendingRequestOpen) obj2).getRequest().getVirtualCamera().m1869getCameraIdDz_R5H8(), strM1857getActiveCameraIdDz_R5H8)) {
                    arrayList.add(obj2);
                }
            }
            c02171.L$0 = requestCloseById;
            c02171.L$1 = strM1857getActiveCameraIdDz_R5H8;
            c02171.label = 1;
            if (disconnectPendingRequestOpens(arrayList, c02171) != coroutine_suspended) {
                requestCloseById2 = requestCloseById;
                str = strM1857getActiveCameraIdDz_R5H8;
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            requestCloseById3 = (RequestCloseById) c02171.L$0;
            ResultKt.throwOnFailure(obj);
            requestCloseById2 = requestCloseById3;
            CompletableDeferred deferred = requestCloseById2.getDeferred();
            Unit unit = Unit.INSTANCE;
            deferred.complete(unit);
            return unit;
        }
        str = (String) c02171.L$1;
        requestCloseById2 = (RequestCloseById) c02171.L$0;
        ResultKt.throwOnFailure(obj);
        Iterator it = this.activeCameras.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (CameraId.m1605equalsimpl0(((ActiveCamera) next).m1794getCameraIdDz_R5H8(), str)) {
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
        CompletableDeferred deferred2 = requestCloseById2.getDeferred();
        Unit unit2 = Unit.INSTANCE;
        deferred2.complete(unit2);
        return unit2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0060, code lost:
    
        if (disconnectPendingRequestOpens(r7, r0) == r1) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object processRequestCloseAll(RequestCloseAll requestCloseAll, Continuation continuation) throws Throwable {
        C02161 c02161;
        RequestCloseAll requestCloseAll2;
        Iterator it;
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
            List list = this.pendingRequestOpens;
            c02161.L$0 = requestCloseAll;
            c02161.label = 1;
        } else {
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (Iterator) c02161.L$1;
                requestCloseAll2 = (RequestCloseAll) c02161.L$0;
                ResultKt.throwOnFailure(obj);
                while (it.hasNext()) {
                    ActiveCamera activeCamera = (ActiveCamera) it.next();
                    c02161.L$0 = requestCloseAll2;
                    c02161.L$1 = it;
                    c02161.label = 2;
                    if (activeCamera.awaitClosed(c02161) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                this.activeCameras.clear();
                CompletableDeferred deferred = requestCloseAll2.getDeferred();
                Unit unit = Unit.INSTANCE;
                deferred.complete(unit);
                return unit;
            }
            requestCloseAll = (RequestCloseAll) c02161.L$0;
            ResultKt.throwOnFailure(obj);
        }
        Iterator it2 = this.activeCameras.iterator();
        while (it2.hasNext()) {
            ((ActiveCamera) it2.next()).close();
        }
        requestCloseAll2 = requestCloseAll;
        it = this.activeCameras.iterator();
        while (it.hasNext()) {
        }
        this.activeCameras.clear();
        CompletableDeferred deferred2 = requestCloseAll2.getDeferred();
        Unit unit2 = Unit.INSTANCE;
        deferred2.complete(unit2);
        return unit2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0078, code lost:
    
        r0 = r15.acquire();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007c, code lost:
    
        if (r0 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007f, code lost:
    
        r15.close();
        r11.L$0 = r7;
        r11.L$1 = r13;
        r11.L$2 = r14;
        r11.L$3 = r15;
        r11.label = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0090, code lost:
    
        if (r15.awaitClosed(r11) != r1) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0094, code lost:
    
        r2 = r13;
        r13 = r15;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x009d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0094 -> B:28:0x0096). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: retrieveActiveCamera-RzXb1QE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m1854retrieveActiveCameraRzXb1QE(String str, RequestOpen requestOpen, Continuation continuation) throws Throwable {
        PruningCamera2DeviceManager$retrieveActiveCamera$1 pruningCamera2DeviceManager$retrieveActiveCamera$1;
        String str2;
        RequestOpen requestOpen2;
        Iterator it;
        PruningCamera2DeviceManager$retrieveActiveCamera$1 pruningCamera2DeviceManager$retrieveActiveCamera$12;
        ActiveCamera activeCamera;
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
        Object objM1853openCameraWithRetryzDSwpeU = pruningCamera2DeviceManager$retrieveActiveCamera$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = pruningCamera2DeviceManager$retrieveActiveCamera$1.label;
        CameraError cameraError = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objM1853openCameraWithRetryzDSwpeU);
            str2 = str;
            requestOpen2 = requestOpen;
            it = this.activeCameras.iterator();
            pruningCamera2DeviceManager$retrieveActiveCamera$12 = pruningCamera2DeviceManager$retrieveActiveCamera$1;
            while (true) {
                if (!it.hasNext()) {
                }
            }
            if (activeCamera != null) {
            }
        } else {
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                requestOpen2 = (RequestOpen) pruningCamera2DeviceManager$retrieveActiveCamera$1.L$1;
                str3 = (String) pruningCamera2DeviceManager$retrieveActiveCamera$1.L$0;
                ResultKt.throwOnFailure(objM1853openCameraWithRetryzDSwpeU);
                pruningCamera2DeviceManager = this;
                openVirtualCameraResult = (OpenVirtualCameraResult) objM1853openCameraWithRetryzDSwpeU;
                if (openVirtualCameraResult instanceof OpenVirtualCameraResult.Success) {
                    if (!(openVirtualCameraResult instanceof OpenVirtualCameraResult.Error)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    if (Log.INSTANCE.getINFO_LOGGABLE()) {
                        android.util.Log.i("CXCP", "PruningCameraDeviceManager: Failed to open " + ((Object) CameraId.m1607toStringimpl(str3)));
                    }
                    OpenVirtualCameraResult.Error error = (OpenVirtualCameraResult.Error) openVirtualCameraResult;
                    requestOpen2.getVirtualCamera().mo1867disconnectTPqeGZw(error.m1855getLastCameraErrormVEW8x0());
                    return new RetrieveActiveCameraResult.Error(error.m1855getLastCameraErrormVEW8x0(), objArr == true ? 1 : 0);
                }
                activeCamera = ((OpenVirtualCameraResult.Success) openVirtualCameraResult).getActiveCamera();
                tokenAcquire = activeCamera.acquire();
                if (tokenAcquire == null) {
                    if (Log.INSTANCE.getINFO_LOGGABLE()) {
                        android.util.Log.i("CXCP", "PruningCameraDeviceManager: Failed to open " + ((Object) CameraId.m1607toStringimpl(str3)) + ": Camera may have been closed (possibly due to an error) immediately after opening");
                    }
                    requestOpen2.getVirtualCamera().mo1867disconnectTPqeGZw(null);
                    return new RetrieveActiveCameraResult.Error(cameraError, objArr2 == true ? 1 : 0);
                }
                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                    android.util.Log.i("CXCP", "PruningCameraDeviceManager: " + ((Object) CameraId.m1607toStringimpl(str3)) + " opened successfully");
                }
                pruningCamera2DeviceManager.activeCameras.add(activeCamera);
                if (tokenAcquire == null) {
                    return new RetrieveActiveCameraResult.Success(activeCamera, tokenAcquire);
                }
                throw new IllegalStateException("Required value was null.");
            }
            ActiveCamera activeCamera2 = (ActiveCamera) pruningCamera2DeviceManager$retrieveActiveCamera$1.L$3;
            it = (Iterator) pruningCamera2DeviceManager$retrieveActiveCamera$1.L$2;
            RequestOpen requestOpen3 = (RequestOpen) pruningCamera2DeviceManager$retrieveActiveCamera$1.L$1;
            String str4 = (String) pruningCamera2DeviceManager$retrieveActiveCamera$1.L$0;
            ResultKt.throwOnFailure(objM1853openCameraWithRetryzDSwpeU);
            pruningCamera2DeviceManager$retrieveActiveCamera$12 = pruningCamera2DeviceManager$retrieveActiveCamera$1;
            str2 = str4;
            this.activeCameras.remove(activeCamera2);
            requestOpen2 = requestOpen3;
            while (true) {
                if (!it.hasNext()) {
                    activeCamera = (ActiveCamera) it.next();
                    if (CameraId.m1605equalsimpl0(activeCamera.m1794getCameraIdDz_R5H8(), str2)) {
                        break;
                    }
                } else {
                    activeCamera = null;
                    tokenAcquire = null;
                    break;
                }
            }
            if (activeCamera != null) {
                List sharedCameraIds = requestOpen2.getSharedCameraIds();
                Function1 function1IsForegroundObserver = requestOpen2.isForegroundObserver();
                CoroutineScope coroutineScope = this.scope;
                pruningCamera2DeviceManager$retrieveActiveCamera$12.L$0 = str2;
                pruningCamera2DeviceManager$retrieveActiveCamera$12.L$1 = requestOpen2;
                pruningCamera2DeviceManager$retrieveActiveCamera$12.L$2 = null;
                pruningCamera2DeviceManager$retrieveActiveCamera$12.L$3 = null;
                pruningCamera2DeviceManager$retrieveActiveCamera$12.label = 2;
                pruningCamera2DeviceManager = this;
                objM1853openCameraWithRetryzDSwpeU = pruningCamera2DeviceManager.m1853openCameraWithRetryzDSwpeU(str2, sharedCameraIds, function1IsForegroundObserver, coroutineScope, pruningCamera2DeviceManager$retrieveActiveCamera$12);
                if (objM1853openCameraWithRetryzDSwpeU != coroutine_suspended) {
                    str3 = str2;
                    openVirtualCameraResult = (OpenVirtualCameraResult) objM1853openCameraWithRetryzDSwpeU;
                    if (openVirtualCameraResult instanceof OpenVirtualCameraResult.Success) {
                    }
                }
                return coroutine_suspended;
            }
            if (tokenAcquire == null) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX INFO: renamed from: openCameraWithRetry-zDSwpeU, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m1853openCameraWithRetryzDSwpeU(String str, List list, Function1 function1, CoroutineScope coroutineScope, Continuation continuation) {
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
        Object objMo1859openCameraWithRetryaeCOTgg = pruningCamera2DeviceManager$openCameraWithRetry$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = pruningCamera2DeviceManager$openCameraWithRetry$1.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objMo1859openCameraWithRetryaeCOTgg);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d("CXCP", "Opening " + ((Object) CameraId.m1607toStringimpl(str)) + " with retries...");
            }
            RetryingCameraStateOpener retryingCameraStateOpener = this.retryingCameraStateOpener;
            Camera2DeviceCloser camera2DeviceCloser = this.camera2DeviceCloser;
            pruningCamera2DeviceManager$openCameraWithRetry$1.L$0 = str;
            pruningCamera2DeviceManager$openCameraWithRetry$1.L$1 = list;
            pruningCamera2DeviceManager$openCameraWithRetry$1.L$2 = coroutineScope;
            pruningCamera2DeviceManager$openCameraWithRetry$1.label = 1;
            objMo1859openCameraWithRetryaeCOTgg = retryingCameraStateOpener.mo1859openCameraWithRetryaeCOTgg(str, camera2DeviceCloser, function1, pruningCamera2DeviceManager$openCameraWithRetry$1);
            if (objMo1859openCameraWithRetryaeCOTgg == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            coroutineScope = (CoroutineScope) pruningCamera2DeviceManager$openCameraWithRetry$1.L$2;
            list = (List) pruningCamera2DeviceManager$openCameraWithRetry$1.L$1;
            str = (String) pruningCamera2DeviceManager$openCameraWithRetry$1.L$0;
            ResultKt.throwOnFailure(objMo1859openCameraWithRetryaeCOTgg);
        }
        OpenCameraResult openCameraResult = (OpenCameraResult) objMo1859openCameraWithRetryaeCOTgg;
        if (openCameraResult.getCameraState() == null) {
            return new OpenVirtualCameraResult.Error(openCameraResult.m1848getErrorCodemVEW8x0(), null);
        }
        return new OpenVirtualCameraResult.Success(new ActiveCamera(openCameraResult.getCameraState(), CollectionsKt.toSet(CollectionsKt.plus(list, CameraId.m1602boximpl(str))), coroutineScope, new Function1() { // from class: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PruningCamera2DeviceManager.openCameraWithRetry_zDSwpeU$lambda$1(this.f$0, (ActiveCamera) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit openCameraWithRetry_zDSwpeU$lambda$1(PruningCamera2DeviceManager pruningCamera2DeviceManager, ActiveCamera activeCamera) {
        Intrinsics.checkNotNullParameter(activeCamera, "activeCamera");
        pruningCamera2DeviceManager.queue.tryEmit(new RequestClose(activeCamera));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f6, code lost:
    
        throw new java.lang.IllegalStateException("Check failed.");
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x010d -> B:46:0x0110). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object connectPendingRequestOpens(Set set, Continuation continuation) {
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
            List list = this.pendingRequestOpens;
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : list) {
                if (set.contains(CameraId.m1602boximpl(((PendingRequestOpen) obj2).getRequest().getVirtualCamera().m1869getCameraIdDz_R5H8()))) {
                    arrayList.add(obj2);
                }
            }
            it = arrayList.iterator();
            if (it.hasNext()) {
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            PendingRequestOpen pendingRequestOpen = (PendingRequestOpen) c02141.L$1;
            it = (Iterator) c02141.L$0;
            ResultKt.throwOnFailure(obj);
            this.pendingRequestOpens.remove(pendingRequestOpen);
            if (it.hasNext()) {
                pendingRequestOpen = (PendingRequestOpen) it.next();
                RequestOpen request = pendingRequestOpen.getRequest();
                List listPlus = CollectionsKt.plus((Collection) CollectionsKt.listOf(CameraId.m1602boximpl(request.getVirtualCamera().m1869getCameraIdDz_R5H8())), (Iterable) request.getSharedCameraIds());
                if (!(listPlus instanceof Collection) || !listPlus.isEmpty()) {
                    Iterator it2 = listPlus.iterator();
                    loop0: while (it2.hasNext()) {
                        String strM1608unboximpl = ((CameraId) it2.next()).m1608unboximpl();
                        Set set2 = this.activeCameras;
                        if (!OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(set2) || !set2.isEmpty()) {
                            Iterator it3 = set2.iterator();
                            while (it3.hasNext()) {
                                if (CameraId.m1605equalsimpl0(((ActiveCamera) it3.next()).m1794getCameraIdDz_R5H8(), strM1608unboximpl)) {
                                    break;
                                }
                            }
                            break loop0;
                        }
                        break;
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

    private final Object disconnectPendingRequestOpens(List list, Continuation continuation) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            PendingRequestOpen pendingRequestOpen = (PendingRequestOpen) it.next();
            pendingRequestOpen.getToken().release();
            this.pendingRequestOpens.remove(pendingRequestOpen);
        }
        return Unit.INSTANCE;
    }

    private final List removeIndices(List list, Set set) {
        ArrayList arrayList = new ArrayList();
        Iterator it = CollectionsKt.sorted(set).iterator();
        while (it.hasNext()) {
            arrayList.add(list.remove(((Number) it.next()).intValue() - arrayList.size()));
        }
        return arrayList;
    }

    private interface RetrieveActiveCameraResult {

        public static final class Success implements RetrieveActiveCameraResult {
            private final ActiveCamera activeCamera;
            private final Token token;

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Success)) {
                    return false;
                }
                Success success = (Success) obj;
                return Intrinsics.areEqual(this.activeCamera, success.activeCamera) && Intrinsics.areEqual(this.token, success.token);
            }

            public int hashCode() {
                return (this.activeCamera.hashCode() * 31) + this.token.hashCode();
            }

            public String toString() {
                return "Success(activeCamera=" + this.activeCamera + ", token=" + this.token + ')';
            }

            public Success(ActiveCamera activeCamera, Token token) {
                Intrinsics.checkNotNullParameter(activeCamera, "activeCamera");
                Intrinsics.checkNotNullParameter(token, "token");
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

        public static final class Error implements RetrieveActiveCameraResult {
            private final CameraError lastCameraError;

            public /* synthetic */ Error(CameraError cameraError, DefaultConstructorMarker defaultConstructorMarker) {
                this(cameraError);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Error) && Intrinsics.areEqual(this.lastCameraError, ((Error) obj).lastCameraError);
            }

            public int hashCode() {
                CameraError cameraError = this.lastCameraError;
                if (cameraError == null) {
                    return 0;
                }
                return CameraError.m1554hashCodeimpl(cameraError.m1557unboximpl());
            }

            public String toString() {
                return "Error(lastCameraError=" + this.lastCameraError + ')';
            }

            private Error(CameraError cameraError) {
                this.lastCameraError = cameraError;
            }

            /* JADX INFO: renamed from: getLastCameraError-mVEW8x0, reason: not valid java name */
            public final CameraError m1856getLastCameraErrormVEW8x0() {
                return this.lastCameraError;
            }
        }
    }

    private interface OpenVirtualCameraResult {

        public static final class Success implements OpenVirtualCameraResult {
            private final ActiveCamera activeCamera;

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Success) && Intrinsics.areEqual(this.activeCamera, ((Success) obj).activeCamera);
            }

            public int hashCode() {
                return this.activeCamera.hashCode();
            }

            public String toString() {
                return "Success(activeCamera=" + this.activeCamera + ')';
            }

            public Success(ActiveCamera activeCamera) {
                Intrinsics.checkNotNullParameter(activeCamera, "activeCamera");
                this.activeCamera = activeCamera;
            }

            public final ActiveCamera getActiveCamera() {
                return this.activeCamera;
            }
        }

        public static final class Error implements OpenVirtualCameraResult {
            private final CameraError lastCameraError;

            public /* synthetic */ Error(CameraError cameraError, DefaultConstructorMarker defaultConstructorMarker) {
                this(cameraError);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Error) && Intrinsics.areEqual(this.lastCameraError, ((Error) obj).lastCameraError);
            }

            public int hashCode() {
                CameraError cameraError = this.lastCameraError;
                if (cameraError == null) {
                    return 0;
                }
                return CameraError.m1554hashCodeimpl(cameraError.m1557unboximpl());
            }

            public String toString() {
                return "Error(lastCameraError=" + this.lastCameraError + ')';
            }

            private Error(CameraError cameraError) {
                this.lastCameraError = cameraError;
            }

            /* JADX INFO: renamed from: getLastCameraError-mVEW8x0, reason: not valid java name */
            public final CameraError m1855getLastCameraErrormVEW8x0() {
                return this.lastCameraError;
            }
        }
    }
}
