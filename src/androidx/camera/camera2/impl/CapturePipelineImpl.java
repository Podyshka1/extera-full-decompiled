package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureResult;
import android.util.Log;
import android.view.Surface;
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
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ConvergenceUtils;
import com.android.dx.io.Opcodes;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.android.gms.cast.MediaError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.inject.Provider;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.TimeoutKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Ë\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u001c\n\u0002\b\u0006*\u0001x\b\u0007\u0018\u00002\u00020\u0001:\u0002{|B_\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0082@¢\u0006\u0004\b\u001a\u0010\u001bJN\u0010'\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010&0%0\u001c2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u001f2\b\u0010$\u001a\u0004\u0018\u00010#H\u0082@¢\u0006\u0004\b'\u0010(JF\u0010)\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010&0%0\u001c2\b\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0082@¢\u0006\u0004\b)\u0010*JF\u0010+\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010&0%0\u001c2\b\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001f2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0082@¢\u0006\u0004\b+\u0010*J>\u0010,\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010&0%0\u001c2\b\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010 \u001a\u00020\u001f2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0082@¢\u0006\u0004\b,\u0010-JN\u00102\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010&0%0\u001c2\b\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010/\u001a\u00020.2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u00101\u001a\u000200H\u0082@¢\u0006\u0004\b2\u00103JF\u00104\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010&0%0\u001c2\b\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010/\u001a\u00020.2\u0006\u0010 \u001a\u00020\u001f2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0082@¢\u0006\u0004\b4\u00105J>\u00106\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010&0%0\u001c2\b\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010 \u001a\u00020\u001f2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0082@¢\u0006\u0004\b6\u0010-J \u0010:\u001a\u0002092\u0006\u00107\u001a\u00020.2\u0006\u00108\u001a\u000200H\u0082@¢\u0006\u0004\b:\u0010;J2\u0010@\u001a\u001d\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(?\u0012\u0004\u0012\u0002000<2\u0006\u00108\u001a\u000200H\u0002¢\u0006\u0004\b@\u0010AJ\u0013\u0010C\u001a\u00020B*\u00020\u0019H\u0002¢\u0006\u0004\bC\u0010DJ\u0018\u0010E\u001a\u0002092\u0006\u0010/\u001a\u00020.H\u0082@¢\u0006\u0004\bE\u0010FJ%\u0010H\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010&0%0\u001c2\u0006\u0010G\u001a\u00020#H\u0002¢\u0006\u0004\bH\u0010IJ\u0018\u0010J\u001a\u0002002\u0006\u0010!\u001a\u00020\u001fH\u0082@¢\u0006\u0004\bJ\u0010KJ?\u0010P\u001a\u0004\u0018\u00010M2\u0006\u0010L\u001a\u00020.2#\b\u0002\u0010O\u001a\u001d\u0012\u0013\u0012\u00110M¢\u0006\f\b=\u0012\b\b>\u0012\u0004\b\b(N\u0012\u0004\u0012\u0002000<H\u0082@¢\u0006\u0004\bP\u0010QJ\u0018\u00108\u001a\u0002002\u0006\u0010\"\u001a\u00020\u001fH\u0082@¢\u0006\u0004\b8\u0010KJT\u0010Z\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010&0%0\u001c2\f\u0010S\u001a\b\u0012\u0004\u0012\u00020R0\u001c2\u0006\u0010U\u001a\u00020T2\u0006\u0010W\u001a\u00020V2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001fH\u0096@¢\u0006\u0004\bX\u0010YJ\u0018\u0010\\\u001a\u00020[2\u0006\u0010 \u001a\u00020\u001fH\u0087@¢\u0006\u0004\b\\\u0010KJ\u0018\u0010]\u001a\u00020[2\u0006\u0010 \u001a\u00020\u001fH\u0087@¢\u0006\u0004\b]\u0010KR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010^R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010_R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010`R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010aR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010bR\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010cR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010dR\u001a\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010eR\u0014\u0010\u0016\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010fR\u001b\u0010k\u001a\u0002008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bg\u0010h\u001a\u0004\bi\u0010jR#\u0010p\u001a\n l*\u0004\u0018\u00010\u00130\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bm\u0010h\u001a\u0004\bn\u0010oR\"\u0010q\u001a\u00020\u001f8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bq\u0010r\u001a\u0004\bs\u0010t\"\u0004\bu\u0010vR\u0018\u0010?\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010wR\u0014\u0010y\u001a\u00020x8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\by\u0010z¨\u0006}"}, d2 = {"Landroidx/camera/camera2/impl/CapturePipelineImpl;", "Landroidx/camera/camera2/impl/CapturePipeline;", "Landroidx/camera/camera2/adapter/CaptureConfigAdapter;", "configAdapter", "Landroidx/camera/camera2/impl/FlashControl;", "flashControl", "Landroidx/camera/camera2/impl/TorchControl;", "torchControl", "Landroidx/camera/camera2/impl/VideoUsageControl;", "videoUsageControl", "Landroidx/camera/camera2/impl/UseCaseThreads;", "threads", "Landroidx/camera/camera2/impl/ComboRequestListener;", "requestListener", "Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;", "useTorchAsFlash", "Landroidx/camera/camera2/impl/CameraProperties;", "cameraProperties", "Ljavax/inject/Provider;", "Landroidx/camera/camera2/impl/UseCaseCameraState;", "useCaseCameraStateProvider", "Landroidx/camera/camera2/config/UseCaseGraphContext;", "useCaseGraphContext", "<init>", "(Landroidx/camera/camera2/adapter/CaptureConfigAdapter;Landroidx/camera/camera2/impl/FlashControl;Landroidx/camera/camera2/impl/TorchControl;Landroidx/camera/camera2/impl/VideoUsageControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;Landroidx/camera/camera2/impl/CameraProperties;Ljavax/inject/Provider;Landroidx/camera/camera2/config/UseCaseGraphContext;)V", "Landroidx/camera/camera2/pipe/FrameMetadata;", "getFrameMetadata", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;", "pipelineTasks", _UrlKt.FRAGMENT_ENCODE_SET, "captureMode", "flashMode", "flashType", "Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;", "mainCaptureParams", "Lkotlinx/coroutines/Deferred;", "Ljava/lang/Void;", "invokeCaptureTasks", "(Ljava/util/List;IIILandroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "torchAsFlashCapture", "(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;IILjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "defaultCapture", "defaultNoFlashCapture", "(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;ILjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "timeLimitNs", _UrlKt.FRAGMENT_ENCODE_SET, "triggerAePreCapture", "torchApplyCapture", "(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;IJLjava/util/List;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "aePreCaptureApplyCapture", "(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;JILjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "screenFlashCapture", "convergedTimeLimitNs", "isTorchAsFlash", "Landroidx/camera/camera2/pipe/Result3A;", "lockAf", "(JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "frameMetadata", "getConvergeCondition", "(Z)Lkotlin/jvm/functions/Function1;", "Landroidx/camera/core/impl/CameraCaptureResult;", "toCameraCaptureResult", "(Landroidx/camera/camera2/pipe/FrameMetadata;)Landroidx/camera/core/impl/CameraCaptureResult;", "unlockAf", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", PluginsConstants.PARAMS, "submitRequestInternal", "(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;)Ljava/util/List;", "isPhysicalFlashRequired", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "waitTimeoutNanos", "Landroidx/camera/camera2/pipe/FrameInfo;", "totalCaptureResult", "checker", "waitForResult", "(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/camera/core/impl/CaptureConfig;", "configs", "Landroidx/camera/camera2/pipe/RequestTemplate;", "requestTemplate", "Landroidx/camera/core/impl/Config;", "sessionConfigOptions", "submitStillCaptures-BvXKQx0", "(Ljava/util/List;ILandroidx/camera/core/impl/Config;IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "submitStillCaptures", _UrlKt.FRAGMENT_ENCODE_SET, "invokeScreenFlashPreCaptureTasks", "invokeScreenFlashPostCaptureTasks", "Landroidx/camera/camera2/adapter/CaptureConfigAdapter;", "Landroidx/camera/camera2/impl/FlashControl;", "Landroidx/camera/camera2/impl/TorchControl;", "Landroidx/camera/camera2/impl/VideoUsageControl;", "Landroidx/camera/camera2/impl/UseCaseThreads;", "Landroidx/camera/camera2/impl/ComboRequestListener;", "Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;", "Ljavax/inject/Provider;", "Landroidx/camera/camera2/config/UseCaseGraphContext;", "hasFlashUnit$delegate", "Lkotlin/Lazy;", "getHasFlashUnit", "()Z", "hasFlashUnit", "kotlin.jvm.PlatformType", "useCaseCameraState$delegate", "getUseCaseCameraState", "()Landroidx/camera/camera2/impl/UseCaseCameraState;", "useCaseCameraState", "template", "I", "getTemplate", "()I", "setTemplate", "(I)V", "Landroidx/camera/camera2/pipe/FrameMetadata;", "androidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1", "emptyRequestMetadata", "Landroidx/camera/camera2/impl/CapturePipelineImpl$emptyRequestMetadata$1;", "PipelineTask", "MainCaptureParams", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCapturePipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CapturePipeline.kt\nandroidx/camera/camera2/impl/CapturePipelineImpl\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 UseCaseCameraConfig.kt\nandroidx/camera/camera2/config/UseCaseGraphContext\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 UseCaseThreads.kt\nandroidx/camera/camera2/impl/UseCaseThreads\n*L\n1#1,870:1\n291#1:912\n292#1,3:917\n295#1:928\n297#1,11:933\n320#1:944\n291#1:949\n292#1,3:954\n295#1:991\n297#1,11:996\n320#1:1007\n291#1:1012\n292#1,3:1017\n295#1:1034\n297#1,11:1039\n320#1:1050\n291#1:1055\n292#1,16:1060\n320#1:1076\n85#2,4:871\n85#2,4:875\n85#2,4:879\n85#2,4:884\n85#2,4:888\n85#2,4:892\n85#2,4:896\n85#2,4:900\n85#2,4:904\n85#2,4:908\n85#2,4:913\n85#2,4:920\n85#2,4:924\n85#2,4:929\n85#2,4:945\n85#2,4:950\n85#2,4:957\n85#2,4:961\n85#2,4:965\n85#2,4:971\n85#2,4:975\n85#2,4:979\n85#2,4:983\n85#2,4:987\n85#2,4:992\n85#2,4:1008\n85#2,4:1013\n85#2,4:1020\n85#2,4:1026\n85#2,4:1030\n85#2,4:1035\n85#2,4:1051\n85#2,4:1056\n85#2,4:1079\n85#2,4:1083\n85#2,4:1087\n85#2,4:1093\n85#2,4:1097\n85#2,4:1105\n112#2,4:1119\n1#3:883\n1#3:970\n1#3:1025\n1#3:1078\n1#3:1092\n1#3:1102\n1#3:1104\n1#3:1123\n242#4:969\n242#4:1024\n242#4:1077\n242#4:1091\n242#4:1101\n242#4:1103\n1617#5,9:1109\n1869#5:1118\n1870#5:1124\n1626#5:1125\n194#6:1126\n*S KotlinDebug\n*F\n+ 1 CapturePipeline.kt\nandroidx/camera/camera2/impl/CapturePipelineImpl\n*L\n373#1:912\n373#1:917,3\n373#1:928\n373#1:933,11\n373#1:944\n403#1:949\n403#1:954,3\n403#1:991\n403#1:996,11\n403#1:1007\n486#1:1012\n486#1:1017,3\n486#1:1034\n486#1:1039,11\n486#1:1050\n526#1:1055\n526#1:1060,16\n526#1:1076\n175#1:871,4\n178#1:875,4\n199#1:879,4\n291#1:884,4\n293#1:888,4\n295#1:892,4\n298#1:896,4\n300#1:900,4\n329#1:904,4\n371#1:908,4\n373#1:913,4\n377#1:920,4\n379#1:924,4\n373#1:929,4\n399#1:945,4\n403#1:950,4\n407#1:957,4\n409#1:961,4\n413#1:965,4\n423#1:971,4\n435#1:975,4\n437#1:979,4\n439#1:983,4\n446#1:987,4\n403#1:992,4\n484#1:1008,4\n486#1:1013,4\n489#1:1020,4\n493#1:1026,4\n500#1:1030,4\n486#1:1035,4\n524#1:1051,4\n526#1:1056,4\n548#1:1079,4\n557#1:1083,4\n566#1:1087,4\n568#1:1093,4\n571#1:1097,4\n652#1:1105,4\n703#1:1119,4\n415#1:970\n492#1:1025\n546#1:1078\n567#1:1092\n584#1:1102\n648#1:1104\n657#1:1123\n415#1:969\n492#1:1024\n546#1:1077\n567#1:1091\n584#1:1101\n648#1:1103\n657#1:1109,9\n657#1:1118\n657#1:1124\n657#1:1125\n723#1:1126\n*E\n"})
public final class CapturePipelineImpl implements CapturePipeline {
    private final CaptureConfigAdapter configAdapter;
    private final FlashControl flashControl;
    private FrameMetadata frameMetadata;

    /* JADX INFO: renamed from: hasFlashUnit$delegate, reason: from kotlin metadata */
    private final Lazy hasFlashUnit;
    private final ComboRequestListener requestListener;
    private final UseCaseThreads threads;
    private final TorchControl torchControl;
    private final Provider<UseCaseCameraState> useCaseCameraStateProvider;
    private final UseCaseGraphContext useCaseGraphContext;
    private final UseTorchAsFlash useTorchAsFlash;
    private final VideoUsageControl videoUsageControl;

    /* JADX INFO: renamed from: useCaseCameraState$delegate, reason: from kotlin metadata */
    private final Lazy useCaseCameraState = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return this.f$0.useCaseCameraStateProvider.get();
        }
    });
    private int template = 1;
    private final CapturePipelineImpl$emptyRequestMetadata$1 emptyRequestMetadata = new RequestMetadata() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$emptyRequestMetadata$1
        private final int template = RequestTemplate.m1442constructorimpl(0);
        private final Map<StreamId, Surface> streams = MapsKt.emptyMap();
        private final boolean repeating = true;
        private final Request request = new Request(CollectionsKt.emptyList(), null, null, null, null, null, 62, null);
        private final long requestNumber = RequestNumber.m1436constructorimpl(0);

        @Override // androidx.camera.camera2.pipe.Metadata
        public <T> T get(Metadata.Key<T> key) {
            return null;
        }

        @Override // androidx.camera.camera2.pipe.Metadata
        public <T> T getOrDefault(Metadata.Key<T> key, T t) {
            return t;
        }

        @Override // androidx.camera.camera2.pipe.UnsafeWrapper
        public <T> T unwrapAs(KClass<T> type) {
            return null;
        }

        @Override // androidx.camera.camera2.pipe.RequestMetadata
        public Map<StreamId, Surface> getStreams() {
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
        /* JADX INFO: renamed from: getRequestNumber-my6kx4g, reason: not valid java name and from getter */
        public long getRequestNumber() {
            return this.requestNumber;
        }
    };

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$aePreCaptureApplyCapture$1 */
    @kotlin.Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.impl.CapturePipelineImpl", m873f = "CapturePipeline.kt", m874i = {0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2}, m875l = {887, 494, 499}, m876m = "aePreCaptureApplyCapture", m877n = {"this_$iv", "$this$invoke$iv", "mainCaptureParams$iv", "timeLimitNs", "captureMode", "this_$iv", "$this$invoke$iv", "mainCaptureParams$iv", "captureMode", "this_$iv", "$this$invoke$iv", "mainCaptureParams$iv", "captureMode"}, m878s = {"L$0", "L$1", "L$2", "J$0", "I$0", "L$0", "L$1", "L$2", "I$0", "L$0", "L$1", "L$2", "I$0"}, m879v = 1)
    public static final class C01301 extends ContinuationImpl {
        int I$0;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        public C01301(Continuation<? super C01301> continuation) {
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
    @kotlin.Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.impl.CapturePipelineImpl", m873f = "CapturePipeline.kt", m874i = {0, 0, 0}, m875l = {352, 357, 359, 362}, m876m = "defaultCapture", m877n = {"mainCaptureParams", "pipelineTasks", "captureMode"}, m878s = {"L$0", "L$1", "I$0"}, m879v = 1)
    public static final class C01311 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C01311(Continuation<? super C01311> continuation) {
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
    @kotlin.Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.impl.CapturePipelineImpl", m873f = "CapturePipeline.kt", m874i = {0, 0, 0, 0}, m875l = {378}, m876m = "defaultNoFlashCapture", m877n = {"this_$iv", "$this$invoke$iv", "mainCaptureParams$iv", "lock3ARequired"}, m878s = {"L$0", "L$1", "L$2", "I$0"}, m879v = 1)
    public static final class C01321 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C01321(Continuation<? super C01321> continuation) {
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
    @kotlin.Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.impl.CapturePipelineImpl", m873f = "CapturePipeline.kt", m874i = {}, m875l = {176}, m876m = "getFrameMetadata", m877n = {}, m878s = {}, m879v = 1)
    public static final class C01331 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C01331(Continuation<? super C01331> continuation) {
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
    @kotlin.Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.impl.CapturePipelineImpl", m873f = "CapturePipeline.kt", m874i = {1, 1, 1, 1}, m875l = {Opcodes.ADD_INT_LIT8, Opcodes.RSUB_INT_LIT8, Opcodes.MUL_INT_LIT8, Opcodes.REM_INT_LIT8}, m876m = "invokeCaptureTasks", m877n = {"pipelineTasks", "mainCaptureParams", "captureMode", "flashMode"}, m878s = {"L$0", "L$1", "I$0", "I$1"}, m879v = 1)
    public static final class C01341 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C01341(Continuation<? super C01341> continuation) {
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
    @kotlin.Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.impl.CapturePipelineImpl", m873f = "CapturePipeline.kt", m874i = {0, 1}, m875l = {563, 875, 570}, m876m = "invokeScreenFlashPostCaptureTasks", m877n = {"captureMode", "captureMode"}, m878s = {"I$0", "I$0"}, m879v = 1)
    public static final class C01351 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C01351(Continuation<? super C01351> continuation) {
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
    @kotlin.Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.impl.CapturePipelineImpl", m873f = "CapturePipeline.kt", m874i = {0, 1}, m875l = {544, 871, 551, 556}, m876m = "invokeScreenFlashPreCaptureTasks", m877n = {"captureMode", "captureMode"}, m878s = {"I$0", "I$0"}, m879v = 1)
    public static final class C01361 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C01361(Continuation<? super C01361> continuation) {
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
    @kotlin.Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.impl.CapturePipelineImpl", m873f = "CapturePipeline.kt", m874i = {}, m875l = {772}, m876m = "isPhysicalFlashRequired", m877n = {}, m878s = {}, m879v = 1)
    public static final class C01371 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C01371(Continuation<? super C01371> continuation) {
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
    @kotlin.Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.impl.CapturePipelineImpl", m873f = "CapturePipeline.kt", m874i = {0, 0}, m875l = {871, 585, 594}, m876m = "lockAf", m877n = {"convergedTimeLimitNs", "isTorchAsFlash"}, m878s = {"J$0", "Z$0"}, m879v = 1)
    public static final class C01391 extends ContinuationImpl {
        long J$0;
        Object L$0;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        public C01391(Continuation<? super C01391> continuation) {
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
    @kotlin.Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.impl.CapturePipelineImpl", m873f = "CapturePipeline.kt", m874i = {0, 0, 0, 0}, m875l = {528}, m876m = "screenFlashCapture", m877n = {"this_$iv", "$this$invoke$iv", "mainCaptureParams$iv", "captureMode"}, m878s = {"L$0", "L$1", "L$2", "I$0"}, m879v = 1)
    public static final class C01401 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C01401(Continuation<? super C01401> continuation) {
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
    @kotlin.Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.impl.CapturePipelineImpl", m873f = "CapturePipeline.kt", m874i = {0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5}, m875l = {408, 895, 416, 421, 436, 440}, m876m = "torchApplyCapture", m877n = {"this_$iv", "$this$invoke$iv", "mainCaptureParams$iv", "captureMode", "timeLimitNs", "triggerAePreCapture", "torchOnRequired", "lock3ARequired", "this_$iv", "$this$invoke$iv", "mainCaptureParams$iv", "captureMode", "timeLimitNs", "triggerAePreCapture", "torchOnRequired", "lock3ARequired", "this_$iv", "$this$invoke$iv", "mainCaptureParams$iv", "captureMode", "triggerAePreCapture", "torchOnRequired", "lock3ARequired", "this_$iv", "$this$invoke$iv", "mainCaptureParams$iv", "captureMode", "triggerAePreCapture", "torchOnRequired", "lock3ARequired", "this_$iv", "$this$invoke$iv", "mainCaptureParams$iv", "captureMode", "triggerAePreCapture", "torchOnRequired", "lock3ARequired", "this_$iv", "$this$invoke$iv", "mainCaptureParams$iv", "captureMode", "triggerAePreCapture", "torchOnRequired", "lock3ARequired"}, m878s = {"L$0", "L$1", "L$2", "I$0", "J$0", "Z$0", "I$1", "I$2", "L$0", "L$1", "L$2", "I$0", "J$0", "Z$0", "I$1", "I$2", "L$0", "L$1", "L$2", "I$0", "Z$0", "I$1", "I$2", "L$0", "L$1", "L$2", "I$0", "Z$0", "I$1", "I$2", "L$0", "L$1", "L$2", "I$0", "Z$0", "I$1", "I$2", "L$0", "L$1", "L$2", "I$0", "Z$0", "I$1", "I$2"}, m879v = 1)
    public static final class C01421 extends ContinuationImpl {
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

        public C01421(Continuation<? super C01421> continuation) {
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
    @kotlin.Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.impl.CapturePipelineImpl", m873f = "CapturePipeline.kt", m874i = {0, 0, 0}, m875l = {330, MediaError.DetailedErrorCode.SMOOTH_NETWORK, 341}, m876m = "torchAsFlashCapture", m877n = {"mainCaptureParams", "pipelineTasks", "captureMode"}, m878s = {"L$0", "L$1", "I$0"}, m879v = 1)
    public static final class C01431 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C01431(Continuation<? super C01431> continuation) {
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
    @kotlin.Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.impl.CapturePipelineImpl", m873f = "CapturePipeline.kt", m874i = {0}, m875l = {871, 648, 649}, m876m = "unlockAf", m877n = {"timeLimitNs"}, m878s = {"J$0"}, m879v = 1)
    public static final class C01441 extends ContinuationImpl {
        long J$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C01441(Continuation<? super C01441> continuation) {
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
    @kotlin.Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.impl.CapturePipelineImpl", m873f = "CapturePipeline.kt", m874i = {0}, m875l = {793}, m876m = "waitForResult", m877n = {"resultListener"}, m878s = {"L$0"}, m879v = 1)
    public static final class C01451 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C01451(Continuation<? super C01451> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CapturePipelineImpl.this.waitForResult(0L, null, this);
        }
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.camera.camera2.impl.CapturePipelineImpl$emptyRequestMetadata$1] */
    public CapturePipelineImpl(CaptureConfigAdapter captureConfigAdapter, FlashControl flashControl, TorchControl torchControl, VideoUsageControl videoUsageControl, UseCaseThreads useCaseThreads, ComboRequestListener comboRequestListener, UseTorchAsFlash useTorchAsFlash, final CameraProperties cameraProperties, Provider<UseCaseCameraState> provider, UseCaseGraphContext useCaseGraphContext) {
        this.configAdapter = captureConfigAdapter;
        this.flashControl = flashControl;
        this.torchControl = torchControl;
        this.videoUsageControl = videoUsageControl;
        this.threads = useCaseThreads;
        this.requestListener = comboRequestListener;
        this.useTorchAsFlash = useTorchAsFlash;
        this.useCaseCameraStateProvider = provider;
        this.useCaseGraphContext = useCaseGraphContext;
        this.hasFlashUnit = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(FlashAvailabilityCheckerKt.isFlashAvailable$default(cameraProperties, false, 1, null));
            }
        });
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @kotlin.Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Landroidx/camera/camera2/impl/CapturePipelineImpl$PipelineTask;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "PRE_CAPTURE", "MAIN_CAPTURE", "POST_CAPTURE", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class PipelineTask {
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

    @kotlin.Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0082\b\u0018\u00002\u00020\u0001B%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0018\u001a\u0004\b\u0019\u0010\u0010R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/CaptureConfig;", "configs", "Landroidx/camera/camera2/pipe/RequestTemplate;", "requestTemplate", "Landroidx/camera/core/impl/Config;", "sessionConfigOptions", "<init>", "(Ljava/util/List;ILandroidx/camera/core/impl/Config;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getConfigs", "()Ljava/util/List;", "I", "getRequestTemplate-fGx8uWA", "Landroidx/camera/core/impl/Config;", "getSessionConfigOptions", "()Landroidx/camera/core/impl/Config;", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class MainCaptureParams {
        private final List<CaptureConfig> configs;
        private final int requestTemplate;
        private final Config sessionConfigOptions;

        public /* synthetic */ MainCaptureParams(List list, int i, Config config, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, i, config);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof MainCaptureParams)) {
                return false;
            }
            MainCaptureParams mainCaptureParams = (MainCaptureParams) other;
            return Intrinsics.areEqual(this.configs, mainCaptureParams.configs) && RequestTemplate.m1444equalsimpl0(this.requestTemplate, mainCaptureParams.requestTemplate) && Intrinsics.areEqual(this.sessionConfigOptions, mainCaptureParams.sessionConfigOptions);
        }

        public int hashCode() {
            return (((this.configs.hashCode() * 31) + RequestTemplate.m1446hashCodeimpl(this.requestTemplate)) * 31) + this.sessionConfigOptions.hashCode();
        }

        public String toString() {
            return "MainCaptureParams(configs=" + this.configs + ", requestTemplate=" + ((Object) RequestTemplate.m1447toStringimpl(this.requestTemplate)) + ", sessionConfigOptions=" + this.sessionConfigOptions + ')';
        }

        private MainCaptureParams(List<CaptureConfig> list, int i, Config config) {
            this.configs = list;
            this.requestTemplate = i;
            this.sessionConfigOptions = config;
        }

        public final List<CaptureConfig> getConfigs() {
            return this.configs;
        }

        /* JADX INFO: renamed from: getRequestTemplate-fGx8uWA, reason: not valid java name and from getter */
        public final int getRequestTemplate() {
            return this.requestTemplate;
        }

        public final Config getSessionConfigOptions() {
            return this.sessionConfigOptions;
        }
    }

    private final boolean getHasFlashUnit() {
        return ((Boolean) this.hasFlashUnit.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UseCaseCameraState getUseCaseCameraState() {
        return (UseCaseCameraState) this.useCaseCameraState.getValue();
    }

    public int getTemplate() {
        return this.template;
    }

    @Override // androidx.camera.camera2.impl.CapturePipeline
    public void setTemplate(int i) {
        this.template = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object getFrameMetadata(Continuation<? super FrameMetadata> continuation) {
        C01331 c01331;
        CapturePipelineImpl capturePipelineImpl;
        CapturePipelineImpl capturePipelineImpl2;
        if (continuation instanceof C01331) {
            c01331 = (C01331) continuation;
            int i = c01331.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01331.label = i - Integer.MIN_VALUE;
            } else {
                c01331 = new C01331(continuation);
            }
        }
        C01331 c013312 = c01331;
        Object objWaitForResult$default = c013312.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c013312.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objWaitForResult$default);
            if (this.frameMetadata != null) {
                capturePipelineImpl = this;
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "getFrameMetadata: frameMetadata = " + capturePipelineImpl.frameMetadata);
                }
                return capturePipelineImpl.frameMetadata;
            }
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "getFrameMetadata: waiting for result");
            }
            long j = CapturePipelineKt.CHECK_FLASH_REQUIRED_TIMEOUT_IN_NS;
            c013312.L$0 = this;
            c013312.label = 1;
            capturePipelineImpl = this;
            objWaitForResult$default = waitForResult$default(capturePipelineImpl, j, null, c013312, 2, null);
            if (objWaitForResult$default == coroutine_suspended) {
                return coroutine_suspended;
            }
            capturePipelineImpl2 = capturePipelineImpl;
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            capturePipelineImpl2 = (CapturePipelineImpl) c013312.L$0;
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
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeCaptureTasks(List<? extends PipelineTask> list, int i, int i2, int i3, MainCaptureParams mainCaptureParams, Continuation<? super List<? extends Deferred<Void>>> continuation) throws Exception {
        C01341 c01341;
        if (continuation instanceof C01341) {
            c01341 = (C01341) continuation;
            int i4 = c01341.label;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                c01341.label = i4 - Integer.MIN_VALUE;
            } else {
                c01341 = new C01341(continuation);
            }
        }
        Object objIsTorchAsFlash = c01341.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i5 = c01341.label;
        if (i5 == 0) {
            ResultKt.throwOnFailure(objIsTorchAsFlash);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#invokeCaptureTasks: tasks = " + list + ", captureMode = " + i + ", flashMode = " + i2 + ", flashType = " + i3);
            }
            this.frameMetadata = null;
            if (list.contains(PipelineTask.MAIN_CAPTURE) && mainCaptureParams == null) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Must not be null for PipelineType.MAIN_CAPTURE");
                return null;
            }
            if (i2 == 3) {
                c01341.label = 1;
                Object objScreenFlashCapture = screenFlashCapture(mainCaptureParams, i, list, c01341);
                if (objScreenFlashCapture != coroutine_suspended) {
                    return objScreenFlashCapture;
                }
            } else {
                c01341.L$0 = list;
                c01341.L$1 = mainCaptureParams;
                c01341.I$0 = i;
                c01341.I$1 = i2;
                c01341.label = 2;
                objIsTorchAsFlash = isTorchAsFlash(i3, c01341);
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
            if (i5 == 4) {
                ResultKt.throwOnFailure(objIsTorchAsFlash);
                return objIsTorchAsFlash;
            }
            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        i2 = c01341.I$1;
        i = c01341.I$0;
        mainCaptureParams = (MainCaptureParams) c01341.L$1;
        list = (List) c01341.L$0;
        ResultKt.throwOnFailure(objIsTorchAsFlash);
        List<? extends PipelineTask> list2 = list;
        MainCaptureParams mainCaptureParams2 = mainCaptureParams;
        if (((Boolean) objIsTorchAsFlash).booleanValue()) {
            c01341.L$0 = null;
            c01341.L$1 = null;
            c01341.label = 3;
            Object obj = torchAsFlashCapture(mainCaptureParams2, i, i2, list2, c01341);
            if (obj != coroutine_suspended) {
                return obj;
            }
        } else {
            C01341 c013412 = c01341;
            c013412.L$0 = null;
            c013412.L$1 = null;
            c013412.label = 4;
            Object objDefaultCapture = defaultCapture(mainCaptureParams2, i, i2, list2, c013412);
            if (objDefaultCapture != coroutine_suspended) {
                return objDefaultCapture;
            }
        }
        return coroutine_suspended;
    }

    @Override // androidx.camera.camera2.impl.CapturePipeline
    /* JADX INFO: renamed from: submitStillCaptures-BvXKQx0 */
    public Object mo1104submitStillCapturesBvXKQx0(List<CaptureConfig> list, int i, Config config, int i2, int i3, int i4, Continuation<? super List<? extends Deferred<Void>>> continuation) {
        return invokeCaptureTasks(CollectionsKt.listOf((Object[]) new PipelineTask[]{PipelineTask.PRE_CAPTURE, PipelineTask.MAIN_CAPTURE, PipelineTask.POST_CAPTURE}), i2, i4, i3, new MainCaptureParams(list, i, config, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ba A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00bb A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object torchAsFlashCapture(MainCaptureParams mainCaptureParams, int i, int i2, List<? extends PipelineTask> list, Continuation<? super List<? extends Deferred<Void>>> continuation) throws Exception {
        C01431 c01431;
        Object objDefaultNoFlashCapture;
        if (continuation instanceof C01431) {
            c01431 = (C01431) continuation;
            int i3 = c01431.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c01431.label = i3 - Integer.MIN_VALUE;
            } else {
                c01431 = new C01431(continuation);
            }
        }
        C01431 c014312 = c01431;
        Object objIsPhysicalFlashRequired = c014312.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = c014312.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(objIsPhysicalFlashRequired);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchAsFlashCapture");
            }
            if (getHasFlashUnit()) {
                c014312.L$0 = mainCaptureParams;
                c014312.L$1 = list;
                c014312.I$0 = i;
                c014312.label = 1;
                objIsPhysicalFlashRequired = isPhysicalFlashRequired(i2, c014312);
                if (objIsPhysicalFlashRequired != coroutine_suspended) {
                }
            } else {
                c014312.L$0 = null;
                c014312.L$1 = null;
                c014312.label = 3;
                objDefaultNoFlashCapture = defaultNoFlashCapture(mainCaptureParams, i, list, c014312);
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
            if (i4 == 3) {
                ResultKt.throwOnFailure(objIsPhysicalFlashRequired);
                return objIsPhysicalFlashRequired;
            }
            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        i = c014312.I$0;
        list = (List) c014312.L$1;
        mainCaptureParams = (MainCaptureParams) c014312.L$0;
        ResultKt.throwOnFailure(objIsPhysicalFlashRequired);
        List<? extends PipelineTask> list2 = list;
        if (((Boolean) objIsPhysicalFlashRequired).booleanValue()) {
            boolean z = true;
            long j = CapturePipelineKt.CHECK_3A_WITH_FLASH_TIMEOUT_IN_NS;
            if (this.useTorchAsFlash.shouldDisableAePrecapture() || this.videoUsageControl.isInVideoUsage()) {
                z = false;
            }
            boolean z2 = z;
            c014312.L$0 = null;
            c014312.L$1 = null;
            c014312.label = 2;
            Object obj = torchApplyCapture(mainCaptureParams, i, j, list2, z2, c014312);
            return obj == coroutine_suspended ? coroutine_suspended : obj;
        }
        list = list2;
        c014312.L$0 = null;
        c014312.L$1 = null;
        c014312.label = 3;
        objDefaultNoFlashCapture = defaultNoFlashCapture(mainCaptureParams, i, list, c014312);
        if (objDefaultNoFlashCapture == coroutine_suspended) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object defaultCapture(MainCaptureParams mainCaptureParams, int i, int i2, List<? extends PipelineTask> list, Continuation<? super List<? extends Deferred<Void>>> continuation) throws Exception {
        C01311 c01311;
        if (continuation instanceof C01311) {
            c01311 = (C01311) continuation;
            int i3 = c01311.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c01311.label = i3 - Integer.MIN_VALUE;
            } else {
                c01311 = new C01311(continuation);
            }
        }
        C01311 c013112 = c01311;
        Object objIsPhysicalFlashRequired = c013112.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = c013112.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(objIsPhysicalFlashRequired);
            if (getHasFlashUnit()) {
                c013112.L$0 = mainCaptureParams;
                c013112.L$1 = list;
                c013112.I$0 = i;
                c013112.label = 1;
                objIsPhysicalFlashRequired = isPhysicalFlashRequired(i2, c013112);
                if (objIsPhysicalFlashRequired != coroutine_suspended) {
                }
            } else {
                c013112.label = 4;
                Object objDefaultNoFlashCapture = defaultNoFlashCapture(mainCaptureParams, i, list, c013112);
                if (objDefaultNoFlashCapture != coroutine_suspended) {
                    return objDefaultNoFlashCapture;
                }
            }
            return coroutine_suspended;
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
            if (i4 == 4) {
                ResultKt.throwOnFailure(objIsPhysicalFlashRequired);
                return objIsPhysicalFlashRequired;
            }
            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        i = c013112.I$0;
        list = (List) c013112.L$1;
        mainCaptureParams = (MainCaptureParams) c013112.L$0;
        ResultKt.throwOnFailure(objIsPhysicalFlashRequired);
        MainCaptureParams mainCaptureParams2 = mainCaptureParams;
        int i5 = i;
        boolean zBooleanValue = ((Boolean) objIsPhysicalFlashRequired).booleanValue();
        long j = zBooleanValue ? CapturePipelineKt.CHECK_3A_WITH_FLASH_TIMEOUT_IN_NS : CapturePipelineKt.CHECK_3A_TIMEOUT_IN_NS;
        if (zBooleanValue || i5 == 0) {
            c013112.L$0 = null;
            c013112.L$1 = null;
            c013112.label = 2;
            Object objAePreCaptureApplyCapture = aePreCaptureApplyCapture(mainCaptureParams2, j, i5, list, c013112);
            if (objAePreCaptureApplyCapture != coroutine_suspended) {
                return objAePreCaptureApplyCapture;
            }
        } else {
            c013112.L$0 = null;
            c013112.L$1 = null;
            c013112.label = 3;
            Object objDefaultNoFlashCapture2 = defaultNoFlashCapture(mainCaptureParams2, i5, list, c013112);
            if (objDefaultNoFlashCapture2 != coroutine_suspended) {
                return objDefaultNoFlashCapture2;
            }
        }
        return coroutine_suspended;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object defaultNoFlashCapture(MainCaptureParams mainCaptureParams, int i, List<? extends PipelineTask> list, Continuation<? super List<? extends Deferred<Void>>> continuation) {
        C01321 c01321;
        int i2;
        CapturePipelineImpl capturePipelineImpl;
        MainCaptureParams mainCaptureParams2;
        List<Deferred<Void>> listListOf;
        List<? extends PipelineTask> list2 = list;
        if (continuation instanceof C01321) {
            c01321 = (C01321) continuation;
            int i3 = c01321.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c01321.label = i3 - Integer.MIN_VALUE;
            } else {
                c01321 = new C01321(continuation);
            }
        }
        Object obj = c01321.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = c01321.label;
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
                        Segment$$ExternalSyntheticBUOutline1.m925m("Required value was null.");
                        return null;
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
            c01321.L$0 = this;
            c01321.L$1 = list2;
            c01321.L$2 = mainCaptureParams;
            c01321.I$0 = i2;
            c01321.label = 1;
            if (lockAf(j, false, c01321) == coroutine_suspended) {
                return coroutine_suspended;
            }
            capturePipelineImpl = this;
            mainCaptureParams2 = mainCaptureParams;
        } else {
            if (i4 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            int i5 = c01321.I$0;
            mainCaptureParams2 = (MainCaptureParams) c01321.L$2;
            List<? extends PipelineTask> list3 = (List) c01321.L$1;
            capturePipelineImpl = (CapturePipelineImpl) c01321.L$0;
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
    /* JADX WARN: Removed duplicated region for block: B:111:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02b3  */
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
    public final Object torchApplyCapture(MainCaptureParams mainCaptureParams, int i, long j, List<? extends PipelineTask> list, boolean z, Continuation<? super List<? extends Deferred<Void>>> continuation) throws Exception {
        C01421 c01421;
        ?? r7;
        Throwable th;
        ?? r72;
        int i2;
        Throwable th2;
        boolean z2;
        MainCaptureParams mainCaptureParams2;
        int i3;
        List<? extends PipelineTask> list2;
        CapturePipelineImpl capturePipelineImpl;
        int i4;
        boolean z3;
        int i5;
        int i6;
        boolean z4;
        List<? extends PipelineTask> list3;
        int i7;
        long j2;
        long j3;
        boolean z5;
        int i8;
        int i9;
        MainCaptureParams mainCaptureParams3;
        List<? extends PipelineTask> list4;
        CapturePipelineImpl capturePipelineImpl2;
        long j4;
        int i10;
        MainCaptureParams mainCaptureParams4;
        int i11;
        List<? extends PipelineTask> list5;
        CapturePipelineImpl capturePipelineImpl3;
        AutoCloseable autoCloseable;
        int i12;
        Object objLock3AForCapture$default;
        AutoCloseable autoCloseable2;
        CapturePipelineImpl capturePipelineImpl4;
        boolean z6;
        List<Deferred<Void>> listListOf;
        int i13;
        boolean z7;
        int i14;
        if (!(continuation instanceof C01421) || (r7 = (i14 = (c01421 = (C01421) continuation).label) & Integer.MIN_VALUE) == 0) {
            c01421 = new C01421(continuation);
        } else {
            c01421.label = i14 - Integer.MIN_VALUE;
        }
        C01421 c014212 = c01421;
        Object objAwait = c014212.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (c014212.label) {
                case 0:
                    ResultKt.throwOnFailure(objAwait);
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture");
                    }
                    Integer value = this.torchControl.getTorchStateLiveData().getValue();
                    i2 = (value != null && value.intValue() == 0) ? 1 : 0;
                    int i15 = (i2 != 0 || i == 0) ? 1 : 0;
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: tasks = " + list);
                    }
                    if (!list.contains(PipelineTask.PRE_CAPTURE)) {
                        th2 = null;
                        z2 = true;
                        mainCaptureParams2 = mainCaptureParams;
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
                    Deferred deferredM1148setTorchAsyncOup_wC0$camera_camera2$default = TorchControl.m1148setTorchAsyncOup_wC0$camera_camera2$default(this.torchControl, TorchControl.TorchMode.INSTANCE.m1160getUSED_AS_FLASHIRs_R8(), false, false, 6, null);
                    c014212.L$0 = this;
                    c014212.L$1 = list;
                    mainCaptureParams2 = mainCaptureParams;
                    c014212.L$2 = mainCaptureParams2;
                    c014212.I$0 = i;
                    c014212.J$0 = j;
                    c014212.Z$0 = z;
                    c014212.I$1 = i2;
                    c014212.I$2 = i15;
                    c014212.label = 1;
                    if (deferredM1148setTorchAsyncOup_wC0$camera_camera2$default.join(c014212) != coroutine_suspended) {
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
                            c014212.L$0 = capturePipelineImpl;
                            c014212.L$1 = list3;
                            c014212.L$2 = mainCaptureParams2;
                            c014212.I$0 = i7;
                            c014212.J$0 = j2;
                            c014212.Z$0 = z4;
                            c014212.I$1 = i5;
                            c014212.I$2 = i6;
                            c014212.label = 2;
                            Object objAcquireSession = graph.acquireSession(c014212);
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
                                    c014212.L$0 = capturePipelineImpl3;
                                    c014212.L$1 = list5;
                                    c014212.L$2 = mainCaptureParams4;
                                    c014212.L$3 = autoCloseable;
                                    c014212.I$0 = i11;
                                    c014212.Z$0 = z4;
                                    c014212.I$1 = i10;
                                    c014212.I$2 = i4;
                                    c014212.label = 3;
                                    boolean z10 = z4;
                                    i12 = i11;
                                    boolean z11 = z9;
                                    MainCaptureParams mainCaptureParams5 = mainCaptureParams4;
                                    th2 = null;
                                    objLock3AForCapture$default = CameraGraph.Session.lock3AForCapture$default(session, z8, z11, 0, j5, c014212, 4, null);
                                    if (objLock3AForCapture$default != coroutine_suspended) {
                                        autoCloseable2 = autoCloseable;
                                        objAwait = objLock3AForCapture$default;
                                        list2 = list5;
                                        mainCaptureParams2 = mainCaptureParams5;
                                        capturePipelineImpl4 = capturePipelineImpl3;
                                        z6 = z10;
                                        c014212.L$0 = capturePipelineImpl4;
                                        c014212.L$1 = list2;
                                        c014212.L$2 = mainCaptureParams2;
                                        c014212.L$3 = autoCloseable2;
                                        c014212.I$0 = i12;
                                        c014212.Z$0 = z6;
                                        c014212.I$1 = i10;
                                        c014212.I$2 = i4;
                                        c014212.label = 4;
                                        objAwait = ((Deferred) objAwait).await(c014212);
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
                                                    Segment$$ExternalSyntheticBUOutline1.m925m("Required value was null.");
                                                    return th2;
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
                                c014212.L$0 = capturePipelineImpl;
                                c014212.L$1 = list3;
                                c014212.L$2 = mainCaptureParams2;
                                c014212.I$0 = i7;
                                c014212.Z$0 = z4;
                                c014212.I$1 = i5;
                                c014212.I$2 = i6;
                                c014212.label = 5;
                                z2 = true;
                                if (lockAf(j2, true, c014212) != coroutine_suspended) {
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
                                Function1<FrameInfo, Boolean> function1 = new Function1<FrameInfo, Boolean>() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$torchApplyCapture$3$8
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Boolean invoke(FrameInfo frameInfo) {
                                        return Boolean.valueOf(ConvergenceUtils.is3AConverged(this.this$0.toCameraCaptureResult(frameInfo.getMetadata()), true));
                                    }
                                };
                                c014212.L$0 = capturePipelineImpl;
                                c014212.L$1 = list3;
                                c014212.L$2 = mainCaptureParams2;
                                c014212.I$0 = i7;
                                c014212.Z$0 = z4;
                                c014212.I$1 = i5;
                                c014212.I$2 = i6;
                                c014212.label = 6;
                                if (waitForResult(j2, function1, c014212) != coroutine_suspended) {
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
                    int i17 = c014212.I$2;
                    int i18 = c014212.I$1;
                    z4 = c014212.Z$0;
                    long j6 = c014212.J$0;
                    i7 = c014212.I$0;
                    MainCaptureParams mainCaptureParams6 = (MainCaptureParams) c014212.L$2;
                    list3 = (List) c014212.L$1;
                    capturePipelineImpl = (CapturePipelineImpl) c014212.L$0;
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
                    i4 = c014212.I$2;
                    i10 = c014212.I$1;
                    z4 = c014212.Z$0;
                    long j7 = c014212.J$0;
                    i7 = c014212.I$0;
                    MainCaptureParams mainCaptureParams7 = (MainCaptureParams) c014212.L$2;
                    list3 = (List) c014212.L$1;
                    capturePipelineImpl = (CapturePipelineImpl) c014212.L$0;
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
                    c014212.L$0 = capturePipelineImpl3;
                    c014212.L$1 = list5;
                    c014212.L$2 = mainCaptureParams4;
                    c014212.L$3 = autoCloseable;
                    c014212.I$0 = i11;
                    c014212.Z$0 = z4;
                    c014212.I$1 = i10;
                    c014212.I$2 = i4;
                    c014212.label = 3;
                    boolean z102 = z4;
                    i12 = i11;
                    boolean z112 = z9;
                    MainCaptureParams mainCaptureParams52 = mainCaptureParams4;
                    th2 = null;
                    objLock3AForCapture$default = CameraGraph.Session.lock3AForCapture$default(session2, z8, z112, 0, j52, c014212, 4, null);
                    if (objLock3AForCapture$default != coroutine_suspended) {
                    }
                    return coroutine_suspended;
                case 3:
                    i4 = c014212.I$2;
                    i10 = c014212.I$1;
                    z6 = c014212.Z$0;
                    int i19 = c014212.I$0;
                    AutoCloseable autoCloseable3 = (AutoCloseable) c014212.L$3;
                    MainCaptureParams mainCaptureParams8 = (MainCaptureParams) c014212.L$2;
                    List<? extends PipelineTask> list6 = (List) c014212.L$1;
                    CapturePipelineImpl capturePipelineImpl5 = (CapturePipelineImpl) c014212.L$0;
                    try {
                        ResultKt.throwOnFailure(objAwait);
                        th2 = null;
                        i12 = i19;
                        autoCloseable2 = autoCloseable3;
                        mainCaptureParams2 = mainCaptureParams8;
                        list2 = list6;
                        capturePipelineImpl4 = capturePipelineImpl5;
                        c014212.L$0 = capturePipelineImpl4;
                        c014212.L$1 = list2;
                        c014212.L$2 = mainCaptureParams2;
                        c014212.L$3 = autoCloseable2;
                        c014212.I$0 = i12;
                        c014212.Z$0 = z6;
                        c014212.I$1 = i10;
                        c014212.I$2 = i4;
                        c014212.label = 4;
                        objAwait = ((Deferred) objAwait).await(c014212);
                        if (objAwait == coroutine_suspended) {
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        r72 = autoCloseable3;
                        throw th;
                    }
                    break;
                case 4:
                    i4 = c014212.I$2;
                    i10 = c014212.I$1;
                    z5 = c014212.Z$0;
                    i8 = c014212.I$0;
                    AutoCloseable autoCloseable4 = (AutoCloseable) c014212.L$3;
                    mainCaptureParams2 = (MainCaptureParams) c014212.L$2;
                    list2 = (List) c014212.L$1;
                    capturePipelineImpl4 = (CapturePipelineImpl) c014212.L$0;
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
                    i4 = c014212.I$2;
                    i9 = c014212.I$1;
                    z5 = c014212.Z$0;
                    i8 = c014212.I$0;
                    mainCaptureParams3 = (MainCaptureParams) c014212.L$2;
                    list4 = (List) c014212.L$1;
                    capturePipelineImpl2 = (CapturePipelineImpl) c014212.L$0;
                    ResultKt.throwOnFailure(objAwait);
                    th2 = null;
                    z2 = true;
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
                    i4 = c014212.I$2;
                    i9 = c014212.I$1;
                    z5 = c014212.Z$0;
                    i8 = c014212.I$0;
                    mainCaptureParams3 = (MainCaptureParams) c014212.L$2;
                    list4 = (List) c014212.L$1;
                    capturePipelineImpl2 = (CapturePipelineImpl) c014212.L$0;
                    ResultKt.throwOnFailure(objAwait);
                    th2 = null;
                    z2 = true;
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
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
            }
        } catch (Throwable th6) {
            th = th6;
            r72 = r7;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0182 A[Catch: all -> 0x004d, TryCatch #5 {all -> 0x004d, blocks: (B:15:0x0048, B:68:0x017a, B:70:0x0182, B:71:0x018b), top: B:112:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object aePreCaptureApplyCapture(MainCaptureParams mainCaptureParams, long j, int i, List<? extends PipelineTask> list, Continuation<? super List<? extends Deferred<Void>>> continuation) throws Exception {
        C01301 c01301;
        MainCaptureParams mainCaptureParams2;
        int i2;
        CapturePipelineImpl capturePipelineImpl;
        List<? extends PipelineTask> list2;
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
        List<? extends PipelineTask> list3;
        boolean z2;
        MainCaptureParams mainCaptureParams4;
        int i4;
        List<? extends PipelineTask> list4;
        List<? extends PipelineTask> list5;
        Continuation continuation2;
        List<Deferred<Void>> listListOf;
        List<? extends PipelineTask> list6 = list;
        if (continuation instanceof C01301) {
            c01301 = (C01301) continuation;
            int i5 = c01301.label;
            if ((i5 & Integer.MIN_VALUE) != 0) {
                c01301.label = i5 - Integer.MIN_VALUE;
            } else {
                c01301 = new C01301(continuation);
            }
        }
        C01301 c013012 = c01301;
        Object obj2 = c013012.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i6 = c013012.label;
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
                    c013012.L$0 = this;
                    c013012.L$1 = list6;
                    c013012.L$2 = mainCaptureParams;
                    c013012.J$0 = j;
                    c013012.I$0 = i;
                    c013012.label = 1;
                    Object objAcquireSession = graph.acquireSession(c013012);
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
                        i4 = c013012.I$0;
                        AutoCloseable autoCloseable4 = (AutoCloseable) c013012.L$3;
                        mainCaptureParams4 = (MainCaptureParams) c013012.L$2;
                        List<? extends PipelineTask> list7 = (List) c013012.L$1;
                        CapturePipelineImpl capturePipelineImpl4 = (CapturePipelineImpl) c013012.L$0;
                        try {
                            ResultKt.throwOnFailure(obj2);
                            autoCloseable2 = autoCloseable4;
                            list4 = list7;
                            capturePipelineImpl = capturePipelineImpl4;
                            c013012.L$0 = capturePipelineImpl;
                            c013012.L$1 = list4;
                            c013012.L$2 = mainCaptureParams4;
                            c013012.L$3 = autoCloseable2;
                            c013012.I$0 = i4;
                            c013012.label = 3;
                            if (((Deferred) obj2).join(c013012) != coroutine_suspended) {
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
                        Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    i4 = c013012.I$0;
                    autoCloseable3 = (AutoCloseable) c013012.L$3;
                    mainCaptureParams2 = (MainCaptureParams) c013012.L$2;
                    list5 = (List) c013012.L$1;
                    capturePipelineImpl = (CapturePipelineImpl) c013012.L$0;
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
                                Segment$$ExternalSyntheticBUOutline1.m925m("Required value was null.");
                                return null;
                            }
                            List<Deferred<Void>> listSubmitRequestInternal = capturePipelineImpl.submitRequestInternal(mainCaptureParams2);
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
                int i7 = c013012.I$0;
                long j3 = c013012.J$0;
                MainCaptureParams mainCaptureParams6 = (MainCaptureParams) c013012.L$2;
                List<? extends PipelineTask> list8 = (List) c013012.L$1;
                capturePipelineImpl2 = (CapturePipelineImpl) c013012.L$0;
                ResultKt.throwOnFailure(obj2);
                i3 = i7;
                mainCaptureParams3 = mainCaptureParams6;
                list2 = list8;
                j2 = j3;
                obj = obj2;
                Object objLock3AForCapture$default = CameraGraph.Session.lock3AForCapture$default(session, z2, z, 0, j2, c013012, 4, null);
                if (objLock3AForCapture$default == coroutine_suspended) {
                    return coroutine_suspended;
                }
                mainCaptureParams4 = mainCaptureParams3;
                i4 = i3;
                obj2 = objLock3AForCapture$default;
                capturePipelineImpl = capturePipelineImpl3;
                list4 = list3;
                c013012.L$0 = capturePipelineImpl;
                c013012.L$1 = list4;
                c013012.L$2 = mainCaptureParams4;
                c013012.L$3 = autoCloseable2;
                c013012.I$0 = i4;
                c013012.label = 3;
                if (((Deferred) obj2).join(c013012) != coroutine_suspended) {
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
            c013012.L$0 = capturePipelineImpl2;
            c013012.L$1 = list2;
            c013012.L$2 = mainCaptureParams3;
            c013012.L$3 = autoCloseable;
            c013012.I$0 = i3;
            c013012.label = 2;
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
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object screenFlashCapture(MainCaptureParams mainCaptureParams, int i, List<? extends PipelineTask> list, Continuation<? super List<? extends Deferred<Void>>> continuation) {
        C01401 c01401;
        CapturePipelineImpl capturePipelineImpl;
        List<Deferred<Void>> listListOf;
        if (continuation instanceof C01401) {
            c01401 = (C01401) continuation;
            int i2 = c01401.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c01401.label = i2 - Integer.MIN_VALUE;
            } else {
                c01401 = new C01401(continuation);
            }
        }
        Object obj = c01401.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c01401.label;
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
                        Segment$$ExternalSyntheticBUOutline1.m925m("Required value was null.");
                        return null;
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
            c01401.L$0 = this;
            c01401.L$1 = list;
            c01401.L$2 = mainCaptureParams;
            c01401.I$0 = i;
            c01401.label = 1;
            if (invokeScreenFlashPreCaptureTasks(i, c01401) == coroutine_suspended) {
                return coroutine_suspended;
            }
            capturePipelineImpl = this;
        } else {
            if (i3 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i = c01401.I$0;
            mainCaptureParams = (MainCaptureParams) c01401.L$2;
            list = (List) c01401.L$1;
            capturePipelineImpl = (CapturePipelineImpl) c01401.L$0;
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

    /* JADX WARN: Removed duplicated region for block: B:39:0x009a A[Catch: all -> 0x00a5, TryCatch #1 {all -> 0x00a5, blocks: (B:37:0x008f, B:39:0x009a, B:42:0x00a8, B:46:0x00b0), top: B:66:0x008f }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00da A[Catch: all -> 0x0044, TryCatch #0 {all -> 0x0044, blocks: (B:16:0x003f, B:54:0x00d0, B:56:0x00da, B:57:0x00ed), top: B:64:0x003f }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeScreenFlashPreCaptureTasks(int i, Continuation<? super Unit> continuation) throws Exception {
        C01361 c01361;
        int i2;
        int i3;
        AutoCloseable autoCloseable;
        AutoCloseable autoCloseable2;
        Object objLock3AForCapture$default;
        AutoCloseable autoCloseable3;
        Throwable th;
        if (continuation instanceof C01361) {
            c01361 = (C01361) continuation;
            int i4 = c01361.label;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                c01361.label = i4 - Integer.MIN_VALUE;
            } else {
                c01361 = new C01361(continuation);
            }
        }
        C01361 c013612 = c01361;
        Object objAcquireSession = c013612.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i5 = c013612.label;
        boolean z = true;
        if (i5 == 0) {
            ResultKt.throwOnFailure(objAcquireSession);
            FlashControl flashControl = this.flashControl;
            i2 = i;
            c013612.I$0 = i2;
            c013612.label = 1;
            if (flashControl.startScreenFlashCaptureTasks(c013612) != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i5 != 1) {
            if (i5 == 2) {
                i3 = c013612.I$0;
                ResultKt.throwOnFailure(objAcquireSession);
                autoCloseable = (AutoCloseable) objAcquireSession;
                try {
                    CameraGraph.Session session = (CameraGraph.Session) autoCloseable;
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPreCapture: Locking 3A for capture");
                    }
                    long j = CapturePipelineKt.CHECK_3A_WITH_SCREEN_FLASH_TIMEOUT_IN_NS;
                    if (i3 == 0) {
                        z = false;
                    }
                    c013612.L$0 = autoCloseable;
                    c013612.label = 3;
                    objLock3AForCapture$default = CameraGraph.Session.lock3AForCapture$default(session, z, true, 0, j, c013612, 4, null);
                    if (objLock3AForCapture$default != coroutine_suspended) {
                        autoCloseable3 = autoCloseable;
                        objAcquireSession = objLock3AForCapture$default;
                        c013612.L$0 = autoCloseable3;
                        c013612.label = 4;
                        objAcquireSession = ((Deferred) objAcquireSession).await(c013612);
                        if (objAcquireSession != coroutine_suspended) {
                        }
                    }
                    return coroutine_suspended;
                } catch (Throwable th2) {
                    th = th2;
                    autoCloseable2 = autoCloseable;
                    th = th;
                    throw th;
                }
            }
            if (i5 == 3) {
                autoCloseable3 = (AutoCloseable) c013612.L$0;
                try {
                    ResultKt.throwOnFailure(objAcquireSession);
                    c013612.L$0 = autoCloseable3;
                    c013612.label = 4;
                    objAcquireSession = ((Deferred) objAcquireSession).await(c013612);
                    if (objAcquireSession != coroutine_suspended) {
                        autoCloseable2 = autoCloseable3;
                        Result3A result3A = (Result3A) objAcquireSession;
                        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                        if (Logger.isDebugEnabled("CXCP")) {
                        }
                        Unit unit = Unit.INSTANCE;
                        AutoCloseableKt.closeFinally(autoCloseable2, null);
                        return Unit.INSTANCE;
                    }
                    return coroutine_suspended;
                } catch (Throwable th3) {
                    th = th3;
                    autoCloseable2 = autoCloseable3;
                    throw th;
                }
            }
            if (i5 != 4) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            autoCloseable2 = (AutoCloseable) c013612.L$0;
            try {
                ResultKt.throwOnFailure(objAcquireSession);
                Result3A result3A2 = (Result3A) objAcquireSession;
                Camera2Logger camera2Logger22 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPreCapture: Locking 3A for capture done, result3A = " + result3A2);
                }
                Unit unit2 = Unit.INSTANCE;
                AutoCloseableKt.closeFinally(autoCloseable2, null);
                return Unit.INSTANCE;
            } catch (Throwable th4) {
                th = th4;
                th = th;
                try {
                    throw th;
                } catch (Throwable th5) {
                    AutoCloseableKt.closeFinally(autoCloseable2, th);
                    throw th5;
                }
            }
        }
        i2 = c013612.I$0;
        ResultKt.throwOnFailure(objAcquireSession);
        CameraGraph graph = this.useCaseGraphContext.getGraph();
        c013612.I$0 = i2;
        c013612.label = 2;
        objAcquireSession = graph.acquireSession(c013612);
        if (objAcquireSession != coroutine_suspended) {
            i3 = i2;
            autoCloseable = (AutoCloseable) objAcquireSession;
            CameraGraph.Session session2 = (CameraGraph.Session) autoCloseable;
            Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
            }
            long j2 = CapturePipelineKt.CHECK_3A_WITH_SCREEN_FLASH_TIMEOUT_IN_NS;
            if (i3 == 0) {
            }
            c013612.L$0 = autoCloseable;
            c013612.label = 3;
            objLock3AForCapture$default = CameraGraph.Session.lock3AForCapture$default(session2, z, true, 0, j2, c013612, 4, null);
            if (objLock3AForCapture$default != coroutine_suspended) {
            }
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x008e A[Catch: all -> 0x0099, TryCatch #1 {all -> 0x0099, blocks: (B:33:0x0083, B:35:0x008e, B:41:0x00a2), top: B:57:0x0083 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b6 A[Catch: all -> 0x0037, TryCatch #0 {all -> 0x0037, blocks: (B:14:0x0032, B:45:0x00ae, B:47:0x00b6, B:48:0x00c0), top: B:55:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeScreenFlashPostCaptureTasks(int i, Continuation<? super Unit> continuation) throws Exception {
        C01351 c01351;
        int i2;
        AutoCloseable autoCloseable;
        Throwable th;
        AutoCloseable autoCloseable2;
        CameraGraph.Session session;
        if (continuation instanceof C01351) {
            c01351 = (C01351) continuation;
            int i3 = c01351.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c01351.label = i3 - Integer.MIN_VALUE;
            } else {
                c01351 = new C01351(continuation);
            }
        }
        Object objAcquireSession = c01351.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = c01351.label;
        boolean z = true;
        if (i4 == 0) {
            ResultKt.throwOnFailure(objAcquireSession);
            FlashControl flashControl = this.flashControl;
            c01351.I$0 = i;
            c01351.label = 1;
            if (flashControl.stopScreenFlashCaptureTasks(c01351) != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                autoCloseable2 = (AutoCloseable) c01351.L$0;
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
            i2 = c01351.I$0;
            ResultKt.throwOnFailure(objAcquireSession);
            autoCloseable = (AutoCloseable) objAcquireSession;
            try {
                session = (CameraGraph.Session) autoCloseable;
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPostCapture: Unlocking 3A");
                }
                if (i2 == 0) {
                    z = false;
                }
                c01351.L$0 = autoCloseable;
                c01351.label = 3;
                if (session.unlock3APostCapture(z, c01351) != coroutine_suspended) {
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
        i = c01351.I$0;
        ResultKt.throwOnFailure(objAcquireSession);
        Camera2Logger camera2Logger4 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "screenFlashPostCapture: Acquiring session for unlocking 3A");
        }
        CameraGraph graph = this.useCaseGraphContext.getGraph();
        c01351.I$0 = i;
        c01351.label = 2;
        objAcquireSession = graph.acquireSession(c01351);
        if (objAcquireSession != coroutine_suspended) {
            i2 = i;
            autoCloseable = (AutoCloseable) objAcquireSession;
            session = (CameraGraph.Session) autoCloseable;
            Camera2Logger camera2Logger22 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
            }
            if (i2 == 0) {
            }
            c01351.L$0 = autoCloseable;
            c01351.label = 3;
            if (session.unlock3APostCapture(z, c01351) != coroutine_suspended) {
            }
        }
        return coroutine_suspended;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:54:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object lockAf(long j, boolean z, Continuation<? super Result3A> continuation) throws Exception {
        C01391 c01391;
        long j2;
        boolean z2;
        long j3;
        AutoCloseable autoCloseable;
        AutoCloseable autoCloseable2;
        Object obj;
        Throwable th;
        C01391 c013912;
        AutoCloseable autoCloseable3;
        Throwable th2;
        if (continuation instanceof C01391) {
            c01391 = (C01391) continuation;
            int i = c01391.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01391.label = i - Integer.MIN_VALUE;
            } else {
                c01391 = new C01391(continuation);
            }
        }
        Object objAcquireSession = c01391.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c01391.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objAcquireSession);
                CameraGraph graph = this.useCaseGraphContext.getGraph();
                j2 = j;
                c01391.J$0 = j2;
                z2 = z;
                c01391.Z$0 = z2;
                c01391.label = 1;
                objAcquireSession = graph.acquireSession(c01391);
                if (objAcquireSession == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 == 3) {
                            ResultKt.throwOnFailure(objAcquireSession);
                            return objAcquireSession;
                        }
                        Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    autoCloseable2 = (AutoCloseable) c01391.L$0;
                    try {
                        ResultKt.throwOnFailure(objAcquireSession);
                        obj = coroutine_suspended;
                        autoCloseable3 = autoCloseable2;
                        c013912 = c01391;
                        th = null;
                        try {
                            Deferred deferred = (Deferred) objAcquireSession;
                            AutoCloseableKt.closeFinally(autoCloseable3, th);
                            c013912.L$0 = th;
                            c013912.label = 3;
                            Object objAwait = deferred.await(c013912);
                            return objAwait != obj ? obj : objAwait;
                        } catch (Throwable th3) {
                            th2 = th3;
                            autoCloseable2 = autoCloseable3;
                            try {
                                throw th2;
                            } catch (Throwable th4) {
                                AutoCloseableKt.closeFinally(autoCloseable2, th2);
                                throw th4;
                            }
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        th2 = th;
                        throw th2;
                    }
                }
                z2 = c01391.Z$0;
                j2 = c01391.J$0;
                ResultKt.throwOnFailure(objAcquireSession);
            }
            Lock3ABehavior lock3ABehaviorM1351boximpl = Lock3ABehavior.m1351boximpl(Lock3ABehavior.INSTANCE.m1358getAFTER_CURRENT_SCANhRqSH3k());
            Function1<FrameMetadata, Boolean> convergeCondition = getConvergeCondition(z2);
            long j4 = CapturePipelineKt.CHECK_3A_TIMEOUT_IN_NS;
            c01391.L$0 = autoCloseable;
            c01391.label = 2;
            obj = coroutine_suspended;
            C01391 c013913 = c01391;
            th = null;
            Object objM1295lock3AtS25XM$default = CameraGraph.Session.m1295lock3AtS25XM$default((CameraGraph.Session) autoCloseable, null, null, null, null, null, null, null, lock3ABehaviorM1351boximpl, null, null, convergeCondition, null, 0, j3, j4, c013913, 6719, null);
            c013912 = c013913;
            if (objM1295lock3AtS25XM$default == obj) {
                return obj;
            }
            autoCloseable3 = autoCloseable;
            objAcquireSession = objM1295lock3AtS25XM$default;
            Deferred deferred2 = (Deferred) objAcquireSession;
            AutoCloseableKt.closeFinally(autoCloseable3, th);
            c013912.L$0 = th;
            c013912.label = 3;
            Object objAwait2 = deferred2.await(c013912);
            if (objAwait2 != obj) {
            }
        } catch (Throwable th6) {
            th = th6;
            autoCloseable2 = autoCloseable;
            th2 = th;
            throw th2;
        }
        j3 = j2;
        autoCloseable = (AutoCloseable) objAcquireSession;
    }

    private final Function1<FrameMetadata, Boolean> getConvergeCondition(final boolean isTorchAsFlash) {
        return new Function1() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(ConvergenceUtils.is3AConverged(this.f$0.toCameraCaptureResult((FrameMetadata) obj), isTorchAsFlash));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CameraCaptureResult toCameraCaptureResult(final FrameMetadata frameMetadata) {
        return new CaptureResultAdapter(this.emptyRequestMetadata, frameMetadata.mo1337getFrameNumberUgla2oM(), new FrameInfo(frameMetadata, this) { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$toCameraCaptureResult$frameInfo$1
            private final String camera;
            private final FrameMetadata frameMetadata;
            private final long frameNumber;
            private final FrameMetadata metadata;
            private final RequestMetadata requestMetadata;

            @Override // androidx.camera.camera2.pipe.UnsafeWrapper
            public <T> T unwrapAs(KClass<T> type) {
                return null;
            }

            {
                this.frameMetadata = frameMetadata;
                this.metadata = frameMetadata;
                this.camera = frameMetadata.getCamera();
                this.frameNumber = frameMetadata.mo1337getFrameNumberUgla2oM();
                this.requestMetadata = this.emptyRequestMetadata;
            }

            @Override // androidx.camera.camera2.pipe.FrameInfo
            public FrameMetadata getMetadata() {
                return this.metadata;
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0092 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object unlockAf(long j, Continuation<? super Result3A> continuation) throws Exception {
        C01441 c01441;
        long j2;
        long j3;
        AutoCloseable autoCloseable;
        AutoCloseable autoCloseable2;
        Throwable th;
        if (continuation instanceof C01441) {
            c01441 = (C01441) continuation;
            int i = c01441.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01441.label = i - Integer.MIN_VALUE;
            } else {
                c01441 = new C01441(continuation);
            }
        }
        C01441 c014412 = c01441;
        Object objAcquireSession = c014412.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c014412.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objAcquireSession);
                CameraGraph graph = this.useCaseGraphContext.getGraph();
                j2 = j;
                c014412.J$0 = j2;
                c014412.label = 1;
                objAcquireSession = graph.acquireSession(c014412);
                if (objAcquireSession != coroutine_suspended) {
                }
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        ResultKt.throwOnFailure(objAcquireSession);
                        return objAcquireSession;
                    }
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                autoCloseable2 = (AutoCloseable) c014412.L$0;
                try {
                    ResultKt.throwOnFailure(objAcquireSession);
                    Deferred deferred = (Deferred) objAcquireSession;
                    AutoCloseableKt.closeFinally(autoCloseable2, null);
                    c014412.L$0 = null;
                    c014412.label = 3;
                    Object objAwait = deferred.await(c014412);
                    return objAwait != coroutine_suspended ? coroutine_suspended : objAwait;
                } catch (Throwable th2) {
                    th = th2;
                    th = th;
                    try {
                        throw th;
                    } catch (Throwable th3) {
                        AutoCloseableKt.closeFinally(autoCloseable2, th);
                        throw th3;
                    }
                }
            }
            j2 = c014412.J$0;
            ResultKt.throwOnFailure(objAcquireSession);
            Boolean boolBoxBoolean = Boxing.boxBoolean(true);
            c014412.L$0 = autoCloseable;
            c014412.label = 2;
            Object objUnlock3A$default = CameraGraph.Session.unlock3A$default((CameraGraph.Session) autoCloseable, null, boolBoxBoolean, null, null, 0, j3, c014412, 29, null);
            if (objUnlock3A$default != coroutine_suspended) {
                autoCloseable2 = autoCloseable;
                objAcquireSession = objUnlock3A$default;
                Deferred deferred2 = (Deferred) objAcquireSession;
                AutoCloseableKt.closeFinally(autoCloseable2, null);
                c014412.L$0 = null;
                c014412.label = 3;
                Object objAwait2 = deferred2.await(c014412);
                if (objAwait2 != coroutine_suspended) {
                }
            }
        } catch (Throwable th4) {
            th = th4;
            autoCloseable2 = autoCloseable;
            th = th;
            throw th;
        }
        j3 = j2;
        autoCloseable = (AutoCloseable) objAcquireSession;
    }

    private final List<Deferred<Void>> submitRequestInternal(MainCaptureParams params) {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#submitRequestInternal; Submitting " + params.getConfigs() + " with CameraPipe");
        }
        ArrayList arrayList = new ArrayList();
        List<CaptureConfig> configs = params.getConfigs();
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it = configs.iterator();
        while (true) {
            Request requestM1082mapToRequestnAberiA = null;
            if (!it.hasNext()) {
                break;
            }
            CaptureConfig captureConfig = (CaptureConfig) it.next();
            final CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            arrayList.add(completableDeferredCompletableDeferred$default);
            try {
                requestM1082mapToRequestnAberiA = this.configAdapter.m1082mapToRequestnAberiA(captureConfig, params.getRequestTemplate(), params.getSessionConfigOptions(), CollectionsKt.listOf(new Request.Listener() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$submitRequestInternal$requests$1$1
                    @Override // androidx.camera.camera2.pipe.Request.Listener
                    public void onAborted(Request request) {
                        completableDeferredCompletableDeferred$default.completeExceptionally(new ImageCaptureException(3, "Capture request is cancelled because camera is closed", null));
                    }

                    @Override // androidx.camera.camera2.pipe.Request.Listener
                    /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
                    public void mo1086onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long frameNumber, FrameInfo totalCaptureResult) {
                        completableDeferredCompletableDeferred$default.complete(null);
                    }

                    @Override // androidx.camera.camera2.pipe.Request.Listener
                    /* JADX INFO: renamed from: onFailed-CcXjc1I */
                    public void mo1085onFailedCcXjc1I(RequestMetadata requestMetadata, long frameNumber, RequestFailure requestFailure) {
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
            if (requestM1082mapToRequestnAberiA != null) {
                arrayList2.add(requestM1082mapToRequestnAberiA);
            }
        }
        if (arrayList2.isEmpty()) {
            return arrayList;
        }
        BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new C0141x5c55b0eb(null, this, arrayList, arrayList2), 3, null);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object isPhysicalFlashRequired(int i, Continuation<? super Boolean> continuation) {
        C01371 c01371;
        Integer num;
        if (continuation instanceof C01371) {
            c01371 = (C01371) continuation;
            int i2 = c01371.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c01371.label = i2 - Integer.MIN_VALUE;
            } else {
                c01371 = new C01371(continuation);
            }
        }
        Object frameMetadata = c01371.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c01371.label;
        boolean z = false;
        if (i3 == 0) {
            ResultKt.throwOnFailure(frameMetadata);
            if (i == 0) {
                c01371.label = 1;
                frameMetadata = getFrameMetadata(c01371);
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
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(frameMetadata);
        }
        FrameMetadata frameMetadata2 = (FrameMetadata) frameMetadata;
        if (frameMetadata2 != null && (num = (Integer) frameMetadata2.get(CaptureResult.CONTROL_AE_STATE)) != null && num.intValue() == 4) {
        }
        return Boxing.boxBoolean(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object waitForResult(long j, Function1<? super FrameInfo, Boolean> function1, Continuation<? super FrameInfo> continuation) {
        C01451 c01451;
        ResultListener resultListener;
        if (continuation instanceof C01451) {
            c01451 = (C01451) continuation;
            int i = c01451.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01451.label = i - Integer.MIN_VALUE;
            } else {
                c01451 = new C01451(continuation);
            }
        }
        Object obj = c01451.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c01451.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            ResultListener resultListener2 = new ResultListener(j, function1);
            this.requestListener.addListener(resultListener2, this.threads.getSequentialExecutor());
            BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new CapturePipelineImpl$waitForResult$resultListener$1$1(resultListener2, this, null), 3, null);
            C01463 c01463 = new C01463(resultListener2, null);
            c01451.L$0 = resultListener2;
            c01451.label = 1;
            Object objWithTimeoutOrNull = TimeoutKt.withTimeoutOrNull(j / 1000000, c01463, c01451);
            if (objWithTimeoutOrNull == coroutine_suspended) {
                return coroutine_suspended;
            }
            obj = objWithTimeoutOrNull;
            resultListener = resultListener2;
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            resultListener = (ResultListener) c01451.L$0;
            ResultKt.throwOnFailure(obj);
        }
        if (((FrameInfo) obj) == null) {
            this.requestListener.removeListener(resultListener);
        }
        return obj;
    }

    public static boolean $r8$lambda$QUMNp0tfcXRSiLsQB0i9runZEEs(FrameInfo frameInfo) {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object waitForResult$default(CapturePipelineImpl capturePipelineImpl, long j, Function1 function1, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new Function1() { // from class: androidx.camera.camera2.impl.CapturePipelineImpl$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return Boolean.valueOf(CapturePipelineImpl.$r8$lambda$QUMNp0tfcXRSiLsQB0i9runZEEs((FrameInfo) obj2));
                }
            };
        }
        return capturePipelineImpl.waitForResult(j, function1, continuation);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$waitForResult$3 */
    @kotlin.Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroidx/camera/camera2/pipe/FrameInfo;", "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.impl.CapturePipelineImpl$waitForResult$3", m873f = "CapturePipeline.kt", m874i = {}, m875l = {796}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
    public static final class C01463 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super FrameInfo>, Object> {
        final /* synthetic */ ResultListener $resultListener;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C01463(ResultListener resultListener, Continuation<? super C01463> continuation) {
            super(2, continuation);
            this.$resultListener = resultListener;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C01463(this.$resultListener, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super FrameInfo> continuation) {
            return ((C01463) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            Deferred<FrameInfo> result = this.$resultListener.getResult();
            this.label = 1;
            Object objAwait = result.await(this);
            return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
        }
    }

    private final Object isTorchAsFlash(int i, Continuation<? super Boolean> continuation) {
        if (getTemplate() != 3 && i != 1) {
            return this.useTorchAsFlash.shouldUseTorchAsFlash(new C01382(null), continuation);
        }
        return Boxing.boxBoolean(true);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$isTorchAsFlash$2 */
    @kotlin.Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n"}, d2 = {"<anonymous>", "Landroidx/camera/camera2/pipe/FrameMetadata;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.impl.CapturePipelineImpl$isTorchAsFlash$2", m873f = "CapturePipeline.kt", m874i = {}, m875l = {808}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
    public static final class C01382 extends SuspendLambda implements Function1<Continuation<? super FrameMetadata>, Object> {
        int label;

        public C01382(Continuation<? super C01382> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return CapturePipelineImpl.this.new C01382(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super FrameMetadata> continuation) {
            return ((C01382) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            CapturePipelineImpl capturePipelineImpl = CapturePipelineImpl.this;
            this.label = 1;
            Object frameMetadata = capturePipelineImpl.getFrameMetadata(this);
            return frameMetadata == coroutine_suspended ? coroutine_suspended : frameMetadata;
        }
    }
}
