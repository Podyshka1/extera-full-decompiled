package androidx.camera.camera2.adapter;

import android.hardware.camera2.CaptureRequest;
import android.media.Image;
import androidx.camera.camera2.compat.workaround.TemplateParamsOverride;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.impl.Camera2ImplConfigKt;
import androidx.camera.camera2.impl.CameraCallbackMap;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.TagsKt;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.InputRequest;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.media.AndroidImage;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CameraCaptureResults;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
public final class CaptureConfigAdapter {
    public static final Companion Companion = new Companion(null);
    private final boolean isLegacyDevice;
    private final TemplateParamsOverride templateParamsOverride;
    private final UseCaseThreads threads;
    private final UseCaseGraphContext useCaseGraphContext;
    private final ZslControl zslControl;

    public CaptureConfigAdapter(CameraProperties cameraProperties, UseCaseGraphContext useCaseGraphContext, ZslControl zslControl, UseCaseThreads threads, TemplateParamsOverride templateParamsOverride) {
        Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
        Intrinsics.checkNotNullParameter(useCaseGraphContext, "useCaseGraphContext");
        Intrinsics.checkNotNullParameter(zslControl, "zslControl");
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(templateParamsOverride, "templateParamsOverride");
        this.useCaseGraphContext = useCaseGraphContext;
        this.zslControl = zslControl;
        this.threads = threads;
        this.templateParamsOverride = templateParamsOverride;
        this.isLegacyDevice = CameraMetadata.Companion.isHardwareLevelLegacy(cameraProperties.getMetadata());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: mapToRequest-nAberiA, reason: not valid java name */
    public final Request m1385mapToRequestnAberiA(CaptureConfig captureConfig, int i, Config sessionConfigOptions, List additionalListeners) {
        InputRequest inputRequest;
        ImageProxy imageProxyDequeueImageFromBuffer;
        Request.Listener listenerBuildImageClosingRequestListener;
        Intrinsics.checkNotNullParameter(captureConfig, "captureConfig");
        Intrinsics.checkNotNullParameter(sessionConfigOptions, "sessionConfigOptions");
        Intrinsics.checkNotNullParameter(additionalListeners, "additionalListeners");
        List surfaces = captureConfig.getSurfaces();
        Intrinsics.checkNotNullExpressionValue(surfaces, "getSurfaces(...)");
        if (surfaces.isEmpty()) {
            throw new IllegalStateException(("Attempted to issue a capture without surfaces using " + captureConfig).toString());
        }
        List<DeferrableSurface> list = surfaces;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (DeferrableSurface deferrableSurface : list) {
            Object obj = this.useCaseGraphContext.getSurfaceToStreamMap().get(deferrableSurface);
            if (obj == null) {
                throw new IllegalStateException(("Attempted to issue a capture with an unrecognized surface: " + deferrableSurface).toString());
            }
            arrayList.add(StreamId.m1786boximpl(((StreamId) obj).m1792unboximpl()));
        }
        CameraCallbackMap cameraCallbackMap = new CameraCallbackMap();
        List<CameraCaptureCallback> cameraCaptureCallbacks = captureConfig.getCameraCaptureCallbacks();
        Intrinsics.checkNotNullExpressionValue(cameraCaptureCallbacks, "getCameraCaptureCallbacks(...)");
        for (CameraCaptureCallback cameraCaptureCallback : cameraCaptureCallbacks) {
            Intrinsics.checkNotNull(cameraCaptureCallback);
            cameraCallbackMap.addCaptureCallback(cameraCaptureCallback, this.threads.getSequentialExecutor());
        }
        Config implementationOptions = captureConfig.getImplementationOptions();
        Intrinsics.checkNotNullExpressionValue(implementationOptions, "getImplementationOptions(...)");
        Camera2ImplConfig.Builder builder = new Camera2ImplConfig.Builder();
        builder.insertAllOptions(sessionConfigOptions);
        builder.insertAllOptions(implementationOptions);
        Config.Option option = CaptureConfig.OPTION_ROTATION;
        if (implementationOptions.containsOption(option)) {
            CaptureRequest.Key JPEG_ORIENTATION = CaptureRequest.JPEG_ORIENTATION;
            Intrinsics.checkNotNullExpressionValue(JPEG_ORIENTATION, "JPEG_ORIENTATION");
            Object objRetrieveOption = implementationOptions.retrieveOption(option);
            Intrinsics.checkNotNull(objRetrieveOption);
            builder.setCaptureRequestOption(JPEG_ORIENTATION, objRetrieveOption);
        }
        Config.Option option2 = CaptureConfig.OPTION_JPEG_QUALITY;
        if (implementationOptions.containsOption(option2)) {
            CaptureRequest.Key JPEG_QUALITY = CaptureRequest.JPEG_QUALITY;
            Intrinsics.checkNotNullExpressionValue(JPEG_QUALITY, "JPEG_QUALITY");
            Object objRetrieveOption2 = implementationOptions.retrieveOption(option2);
            Intrinsics.checkNotNull(objRetrieveOption2);
            builder.setCaptureRequestOption(JPEG_QUALITY, Byte.valueOf((byte) ((Number) objRetrieveOption2).intValue()));
        }
        int iM1754constructorimpl = RequestTemplate.m1754constructorimpl(captureConfig.getTemplateType());
        Object obj2 = null;
        if (captureConfig.getTemplateType() != 5 || this.zslControl.isZslDisabledByUserCaseConfig() || this.zslControl.isZslDisabledByFlashMode() || (imageProxyDequeueImageFromBuffer = this.zslControl.dequeueImageFromBuffer()) == null) {
            inputRequest = 0;
        } else {
            CameraCaptureResult cameraCaptureResultRetrieveCameraCaptureResult = CameraCaptureResults.retrieveCameraCaptureResult(imageProxyDequeueImageFromBuffer.getImageInfo());
            if (cameraCaptureResultRetrieveCameraCaptureResult == null) {
                listenerBuildImageClosingRequestListener = null;
            } else {
                if (!(cameraCaptureResultRetrieveCameraCaptureResult instanceof CaptureResultAdapter)) {
                    throw new IllegalStateException(("Unexpected capture result type: " + cameraCaptureResultRetrieveCameraCaptureResult.getClass()).toString());
                }
                Image image = imageProxyDequeueImageFromBuffer.getImage();
                if (image != null) {
                    AndroidImage androidImage = new AndroidImage(image);
                    Object objUnwrapAs = ((CaptureResultAdapter) cameraCaptureResultRetrieveCameraCaptureResult).unwrapAs(Reflection.getOrCreateKotlinClass(FrameInfo.class));
                    if (objUnwrapAs == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    InputRequest inputRequest2 = new InputRequest(androidImage, (FrameInfo) objUnwrapAs);
                    listenerBuildImageClosingRequestListener = buildImageClosingRequestListener(imageProxyDequeueImageFromBuffer);
                    obj2 = inputRequest2;
                } else {
                    throw new IllegalStateException("Required value was null.");
                }
            }
            inputRequest = obj2;
            obj2 = listenerBuildImageClosingRequestListener;
        }
        if (inputRequest == 0) {
            iM1754constructorimpl = Companion.m1386getStillCaptureTemplateCMLptTo$camera_camera2(captureConfig, i, this.isLegacyDevice);
        }
        Map mapPlus = MapsKt.plus(this.templateParamsOverride.mo1415getOverrideParamsxlOpshk(RequestTemplate.m1753boximpl(iM1754constructorimpl)), Camera2ImplConfigKt.toParameters(builder.build()));
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        listCreateListBuilder.add(cameraCallbackMap);
        if (obj2 != null) {
            listCreateListBuilder.add(obj2);
        }
        listCreateListBuilder.addAll(additionalListeners);
        return new Request(arrayList, mapPlus, MapsKt.mapOf(TuplesKt.m1081to(TagsKt.getCAMERAX_TAG_BUNDLE(), captureConfig.getTagBundle())), CollectionsKt.build(listCreateListBuilder), RequestTemplate.m1753boximpl(iM1754constructorimpl), inputRequest, null);
    }

    private final Request.Listener buildImageClosingRequestListener(ImageProxy imageProxy) {
        final AtomicReference atomicReference = new AtomicReference(imageProxy);
        return new Request.Listener() { // from class: androidx.camera.camera2.adapter.CaptureConfigAdapter.buildImageClosingRequestListener.1
            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onBufferLost-DlC0U5Y, reason: not valid java name */
            public /* synthetic */ void mo1387onBufferLostDlC0U5Y(RequestMetadata requestMetadata, long j, int i) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onBufferLost-iiEMlm4, reason: not valid java name */
            public /* synthetic */ void mo1388onBufferLostiiEMlm4(RequestMetadata requestMetadata, long j, int i, int i2) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            public /* synthetic */ void onCaptureProgress(RequestMetadata requestMetadata, int i) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onPartialCaptureResult-CcXjc1I, reason: not valid java name */
            public /* synthetic */ void mo1391onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameMetadata frameMetadata) {
                Request.Listener.CC.m1742$default$onPartialCaptureResultCcXjc1I(this, requestMetadata, j, frameMetadata);
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onReadoutStarted-mP9r-9w, reason: not valid java name */
            public /* synthetic */ void mo1392onReadoutStartedmP9r9w(RequestMetadata requestMetadata, long j, long j2) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            public /* synthetic */ void onRequestSequenceAborted(RequestMetadata requestMetadata) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onRequestSequenceCompleted-RuT0dZU, reason: not valid java name */
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
            /* JADX INFO: renamed from: onStarted-uGKBvU4, reason: not valid java name */
            public /* synthetic */ void mo1394onStarteduGKBvU4(RequestMetadata requestMetadata, long j, long j2) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onComplete-CcXjc1I, reason: not valid java name */
            public void mo1389onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo result) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
                Intrinsics.checkNotNullParameter(result, "result");
                CaptureConfigAdapter.buildImageClosingRequestListener$closeImageProxy(atomicReference);
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onFailed-CcXjc1I, reason: not valid java name */
            public void mo1390onFailedCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
                Intrinsics.checkNotNullParameter(requestFailure, "requestFailure");
                CaptureConfigAdapter.buildImageClosingRequestListener$closeImageProxy(atomicReference);
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            public void onAborted(Request request) {
                Intrinsics.checkNotNullParameter(request, "request");
                CaptureConfigAdapter.buildImageClosingRequestListener$closeImageProxy(atomicReference);
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I, reason: not valid java name */
            public void mo1395onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo totalCaptureResult) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
                Intrinsics.checkNotNullParameter(totalCaptureResult, "totalCaptureResult");
                CaptureConfigAdapter.buildImageClosingRequestListener$closeImageProxy(atomicReference);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void buildImageClosingRequestListener$closeImageProxy(AtomicReference atomicReference) {
        ImageProxy imageProxy = (ImageProxy) atomicReference.getAndSet(null);
        if (imageProxy != null) {
            imageProxy.close();
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getStillCaptureTemplate-CMLptTo$camera_camera2, reason: not valid java name */
        public final int m1386getStillCaptureTemplateCMLptTo$camera_camera2(CaptureConfig getStillCaptureTemplate, int i, boolean z) {
            int i2;
            Intrinsics.checkNotNullParameter(getStillCaptureTemplate, "$this$getStillCaptureTemplate");
            if (!RequestTemplate.m1756equalsimpl0(i, RequestTemplate.m1754constructorimpl(3)) || z) {
                i2 = (getStillCaptureTemplate.getTemplateType() == -1 || getStillCaptureTemplate.getTemplateType() == 5) ? 2 : -1;
            } else {
                i2 = 4;
            }
            if (i2 != -1) {
                return RequestTemplate.m1754constructorimpl(i2);
            }
            return RequestTemplate.m1754constructorimpl(getStillCaptureTemplate.getTemplateType());
        }
    }
}
