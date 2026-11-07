package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
import android.util.Log;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.interop.Camera2CaptureRequestConfiguratorKt;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.Lock3ABehavior;
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
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
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.messenger.NotificationBadge;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000ö\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010%\n\u0002\b\u0005\b\u0007\u0018\u0000 \u0090\u00012\u00020\u0001:\u0004\u0091\u0001\u0090\u0001BO\b\u0007\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0002\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010J=\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0016\u0010\u0014\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0012\u0012\u0004\u0012\u00020\u00130\u00112\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ=\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0016\u0010\u0014\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0012\u0012\u0004\u0012\u00020\u00130\u00112\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001d\u0010\u001cJ/\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0010\u0010\u001f\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00120\u001e2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b \u0010!J+\u0010'\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010#\u001a\u00020\"2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020%0$H\u0016¢\u0006\u0004\b'\u0010(J1\u0010-\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010*\u001a\u00020)2\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u00130\u0011H\u0016¢\u0006\u0004\b-\u0010.J\u0015\u00100\u001a\b\u0012\u0004\u0012\u00020/0\u0019H\u0016¢\u0006\u0004\b0\u00101J\u001d\u00106\u001a\b\u0012\u0004\u0012\u00020/0\u00192\u0006\u00103\u001a\u000202H\u0016¢\u0006\u0004\b4\u00105Ju\u0010D\u001a\b\u0012\u0004\u0012\u00020/0\u00192\u000e\u00108\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u001e2\u000e\u00109\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u001e2\u000e\u0010:\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u001e2\b\u0010<\u001a\u0004\u0018\u00010;2\b\u0010=\u001a\u0004\u0018\u00010;2\b\u0010>\u001a\u0004\u0018\u00010;2\b\u0010?\u001a\u0004\u0018\u0001022\u0006\u0010A\u001a\u00020@H\u0016¢\u0006\u0004\bB\u0010CJ\u0015\u0010E\u001a\b\u0012\u0004\u0012\u00020/0\u0019H\u0016¢\u0006\u0004\bE\u00101JC\u0010M\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010L0\u00190\u001e2\f\u0010G\u001a\b\u0012\u0004\u0012\u00020F0\u001e2\u0006\u0010I\u001a\u00020H2\u0006\u0010J\u001a\u00020H2\u0006\u0010K\u001a\u00020HH\u0016¢\u0006\u0004\bM\u0010NJE\u0010O\u001a\b\u0012\u0004\u0012\u00020/0\u00192\u000e\u00108\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u001e2\u000e\u00109\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u001e2\u000e\u0010:\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\u001eH\u0016¢\u0006\u0004\bO\u0010PJ\u0010\u0010Q\u001a\u00020\"H\u0096@¢\u0006\u0004\bQ\u0010RJ\u000f\u0010S\u001a\u00020\u001aH\u0016¢\u0006\u0004\bS\u0010TJ\u0013\u0010X\u001a\u00020U*\u00020\u000bH\u0000¢\u0006\u0004\bV\u0010WJ3\u0010Z\u001a\u00020Y*\u00020Y2\u0016\u0010\u0014\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0012\u0012\u0004\u0012\u00020\u00130\u00112\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\bZ\u0010[J%\u0010\\\u001a\u00020Y*\u00020Y2\u0010\u0010\u001f\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00120\u001eH\u0002¢\u0006\u0004\b\\\u0010]J>\u0010^\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u0016\u001a\u00020\u00152\u0016\u0010\u0014\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0012\u0012\u0004\u0012\u00020\u00130\u00112\u0006\u0010\u0018\u001a\u00020\u0017H\u0082@¢\u0006\u0004\b^\u0010_J-\u0010b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010L0\u00190\u001e2\u0006\u0010`\u001a\u00020H2\u0006\u0010a\u001a\u00020+H\u0002¢\u0006\u0004\bb\u0010cJ\u0019\u0010d\u001a\u00020\"*\b\u0012\u0004\u0012\u00020F0\u001eH\u0002¢\u0006\u0004\bd\u0010eJ\u001f\u0010f\u001a\u00020Y*\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020Y0\u0011H\u0002¢\u0006\u0004\bf\u0010gJ\u0013\u0010i\u001a\u00020h*\u00020YH\u0002¢\u0006\u0004\bi\u0010jJ,\u0010n\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019*\u00020Y2\u0010\b\u0002\u0010m\u001a\n\u0012\u0004\u0012\u00020l\u0018\u00010kH\u0082@¢\u0006\u0004\bn\u0010oJ?\u0010t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019\"\u0004\b\u0000\u0010p2\"\u0010s\u001a\u001e\b\u0001\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00190r\u0012\u0006\u0012\u0004\u0018\u00010\u00130qH\u0002¢\u0006\u0004\bt\u0010uJS\u0010w\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00190\u001e\"\u0004\b\u0000\u0010p2\u0006\u0010v\u001a\u00020H2(\u0010s\u001a$\b\u0001\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00190\u001e0r\u0012\u0006\u0012\u0004\u0018\u00010\u00130qH\u0002¢\u0006\u0004\bw\u0010xR\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010yR\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010yR\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010zR\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010yR\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010{R\u0016\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010|R\u0016\u0010}\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010~R(\u0010\u0084\u0001\u001a\n \u007f*\u0004\u0018\u00010\u00030\u00038BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0080\u0001\u0010\u0081\u0001\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001R(\u0010\u0088\u0001\u001a\n \u007f*\u0004\u0018\u00010\t0\t8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0085\u0001\u0010\u0081\u0001\u001a\u0006\b\u0086\u0001\u0010\u0087\u0001R(\u0010\u008c\u0001\u001a\n \u007f*\u0004\u0018\u00010\u00050\u00058BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0089\u0001\u0010\u0081\u0001\u001a\u0006\b\u008a\u0001\u0010\u008b\u0001R$\u0010\u008e\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020Y0\u008d\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008e\u0001\u0010\u008f\u0001¨\u0006\u0092\u0001"}, d2 = {"Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "Ljavax/inject/Provider;", "Landroidx/camera/camera2/impl/CapturePipeline;", "capturePipelineProvider", "Landroidx/camera/camera2/impl/UseCaseCameraState;", "useCaseCameraStateProvider", "Landroidx/camera/camera2/config/UseCaseGraphContext;", "useCaseGraphContext", "Landroidx/camera/camera2/impl/UseCaseSurfaceManager;", "useCaseSurfaceManagerProvider", "Landroidx/camera/camera2/impl/UseCaseThreads;", "threads", "Landroidx/camera/core/CameraXConfig;", "cameraXConfig", "<init>", "(Ljavax/inject/Provider;Ljavax/inject/Provider;Landroidx/camera/camera2/config/UseCaseGraphContext;Ljavax/inject/Provider;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/core/CameraXConfig;)V", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/CaptureRequest$Key;", _UrlKt.FRAGMENT_ENCODE_SET, "values", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;", "type", "Landroidx/camera/core/impl/Config$OptionPriority;", "optionPriority", "Lkotlinx/coroutines/Deferred;", _UrlKt.FRAGMENT_ENCODE_SET, "setParametersAsync", "(Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;)Lkotlinx/coroutines/Deferred;", "submitParameters", _UrlKt.FRAGMENT_ENCODE_SET, "keys", "removeParametersAsync", "(Ljava/util/List;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;)Lkotlinx/coroutines/Deferred;", _UrlKt.FRAGMENT_ENCODE_SET, "isPrimary", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/UseCase;", "runningUseCases", "updateRepeatingRequestAsync", "(ZLjava/util/Collection;)Lkotlinx/coroutines/Deferred;", "Landroidx/camera/core/impl/Config;", "config", _UrlKt.FRAGMENT_ENCODE_SET, "tags", "updateCamera2ConfigAsync", "(Landroidx/camera/core/impl/Config;Ljava/util/Map;)Lkotlinx/coroutines/Deferred;", "Landroidx/camera/camera2/pipe/Result3A;", "setTorchOnAsync", "()Lkotlinx/coroutines/Deferred;", "Landroidx/camera/camera2/pipe/AeMode;", "aeMode", "setTorchOffAsync-MtizInI", "(I)Lkotlinx/coroutines/Deferred;", "setTorchOffAsync", "Landroid/hardware/camera2/params/MeteringRectangle;", "aeRegions", "afRegions", "awbRegions", "Landroidx/camera/camera2/pipe/Lock3ABehavior;", "aeLockBehavior", "afLockBehavior", "awbLockBehavior", "afTriggerStartAeMode", _UrlKt.FRAGMENT_ENCODE_SET, "timeLimitNs", "startFocusAndMeteringAsync-NxRnBj4", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;J)Lkotlinx/coroutines/Deferred;", "startFocusAndMeteringAsync", "cancelFocusAndMeteringAsync", "Landroidx/camera/core/impl/CaptureConfig;", "captureSequence", _UrlKt.FRAGMENT_ENCODE_SET, "captureMode", "flashType", "flashMode", "Ljava/lang/Void;", "issueSingleCaptureAsync", "(Ljava/util/List;III)Ljava/util/List;", "update3aRegions", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lkotlinx/coroutines/Deferred;", "awaitSurfaceSetup", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "close", "()V", "Lkotlinx/coroutines/CoroutineStart;", "determineStartStrategy$camera_camera2", "(Landroidx/camera/camera2/impl/UseCaseThreads;)Lkotlinx/coroutines/CoroutineStart;", "determineStartStrategy", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;", "withParameters", "(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Ljava/util/Map;Landroidx/camera/core/impl/Config$OptionPriority;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;", "withoutParameters", "(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Ljava/util/List;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;", "setParametersInternal", "(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Ljava/util/Map;Landroidx/camera/core/impl/Config$OptionPriority;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", NotificationBadge.NewHtcHomeBadger.COUNT, "message", "failedResults", "(ILjava/lang/String;)Ljava/util/List;", "hasInvalidSurface", "(Ljava/util/List;)Z", "merge", "(Ljava/util/Map;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;", "Landroidx/camera/core/impl/TagBundle;", "toTagBundle", "(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;)Landroidx/camera/core/impl/TagBundle;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/StreamId;", "streams", "updateCameraStateAsync", "(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "T", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "block", "runOnSequential", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Deferred;", "size", "runOnSequentialList", "(ILkotlin/jvm/functions/Function1;)Ljava/util/List;", "Ljavax/inject/Provider;", "Landroidx/camera/camera2/config/UseCaseGraphContext;", "Landroidx/camera/camera2/impl/UseCaseThreads;", "Landroidx/camera/core/CameraXConfig;", "closed", "Z", "kotlin.jvm.PlatformType", "capturePipeline$delegate", "Lkotlin/Lazy;", "getCapturePipeline", "()Landroidx/camera/camera2/impl/CapturePipeline;", "capturePipeline", "useCaseSurfaceManager$delegate", "getUseCaseSurfaceManager", "()Landroidx/camera/camera2/impl/UseCaseSurfaceManager;", "useCaseSurfaceManager", "useCaseCameraState$delegate", "getUseCaseCameraState", "()Landroidx/camera/camera2/impl/UseCaseCameraState;", "useCaseCameraState", _UrlKt.FRAGMENT_ENCODE_SET, "infoBundleMap", "Ljava/util/Map;", "Companion", "InfoBundle", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nUseCaseCameraRequestControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 7 UseCaseCameraConfig.kt\nandroidx/camera/camera2/config/UseCaseGraphContext\n+ 8 UseCaseThreads.kt\nandroidx/camera/camera2/impl/UseCaseThreads\n*L\n1#1,742:1\n650#1:747\n650#1:759\n650#1:760\n650#1:761\n650#1:762\n650#1:763\n650#1:764\n650#1:765\n650#1:766\n650#1:767\n650#1:781\n85#2,4:743\n85#2,4:748\n85#2,4:768\n95#2,4:784\n384#3,7:752\n1869#4:772\n1869#4,2:773\n1870#4:775\n1869#4:776\n1870#4:778\n1#5:777\n1#5:783\n1#5:792\n216#6,2:779\n242#7:782\n151#8,3:788\n177#8:791\n178#8,4:793\n*S KotlinDebug\n*F\n+ 1 UseCaseCameraRequestControl.kt\nandroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl\n*L\n350#1:747\n387#1:759\n402#1:760\n433#1:761\n446#1:762\n454#1:763\n471#1:764\n491#1:765\n515#1:766\n551#1:767\n626#1:781\n287#1:743,4\n374#1:748,4\n568#1:768,4\n659#1:784,4\n378#1:752,7\n582#1:772\n586#1:773,2\n582#1:775\n605#1:776\n605#1:778\n657#1:783\n673#1:792\n620#1:779,2\n657#1:782\n665#1:788,3\n673#1:791\n673#1:793,4\n*E\n"})
public final class UseCaseCameraRequestControlImpl implements UseCaseCameraRequestControl {
    private static final CompletableDeferred<Unit> canceledResult;
    private final CameraXConfig cameraXConfig;

    /* JADX INFO: renamed from: capturePipeline$delegate, reason: from kotlin metadata */
    private final Lazy capturePipeline;
    private final Provider<CapturePipeline> capturePipelineProvider;
    private volatile boolean closed;
    private final Map<UseCaseCameraRequestControl.Type, InfoBundle> infoBundleMap;
    private final UseCaseThreads threads;

    /* JADX INFO: renamed from: useCaseCameraState$delegate, reason: from kotlin metadata */
    private final Lazy useCaseCameraState;
    private final Provider<UseCaseCameraState> useCaseCameraStateProvider;
    private final UseCaseGraphContext useCaseGraphContext;

    /* JADX INFO: renamed from: useCaseSurfaceManager$delegate, reason: from kotlin metadata */
    private final Lazy useCaseSurfaceManager;
    private final Provider<UseCaseSurfaceManager> useCaseSurfaceManagerProvider;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final CompletableDeferred<Result3A> submitFailedResult = CompletableDeferredKt.CompletableDeferred(new Result3A(Result3A.Status.INSTANCE.m1457getSUBMIT_FAILEDJvTi9ms(), null, 2, null));

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$updateCameraStateAsync$1 */
    @Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl", m873f = "UseCaseCameraRequestControl.kt", m874i = {}, m875l = {638}, m876m = "updateCameraStateAsync", m877n = {}, m878s = {}, m879v = 1)
    public static final class C01801 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C01801(Continuation<? super C01801> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return UseCaseCameraRequestControlImpl.this.updateCameraStateAsync(null, null, this);
        }
    }

    public UseCaseCameraRequestControlImpl(Provider<CapturePipeline> provider, Provider<UseCaseCameraState> provider2, UseCaseGraphContext useCaseGraphContext, Provider<UseCaseSurfaceManager> provider3, UseCaseThreads useCaseThreads, CameraXConfig cameraXConfig) {
        this.capturePipelineProvider = provider;
        this.useCaseCameraStateProvider = provider2;
        this.useCaseGraphContext = useCaseGraphContext;
        this.useCaseSurfaceManagerProvider = provider3;
        this.threads = useCaseThreads;
        this.cameraXConfig = cameraXConfig;
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Configured " + this);
        }
        this.capturePipeline = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.capturePipelineProvider.get();
            }
        });
        this.useCaseSurfaceManager = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.useCaseSurfaceManagerProvider.get();
            }
        });
        this.useCaseCameraState = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.useCaseCameraStateProvider.get();
            }
        });
        this.infoBundleMap = new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CapturePipeline getCapturePipeline() {
        return (CapturePipeline) this.capturePipeline.getValue();
    }

    private final UseCaseSurfaceManager getUseCaseSurfaceManager() {
        return (UseCaseSurfaceManager) this.useCaseSurfaceManager.getValue();
    }

    private final UseCaseCameraState getUseCaseCameraState() {
        return (UseCaseCameraState) this.useCaseCameraState.getValue();
    }

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0082\b\u0018\u00002\u00020\u0001BC\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rJL\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00042\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0018\u001a\u00020\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0018\u0010\u0019R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR#\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u001d\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006¢\u0006\f\n\u0004\b\t\u0010 \u001a\u0004\b!\u0010\"R$\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006("}, d2 = {"Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;", "options", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "tags", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/Request$Listener;", "listeners", "Landroidx/camera/camera2/pipe/RequestTemplate;", "template", "<init>", "(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "copy-0am55g4", "(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;", "copy", "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;", "getOptions", "()Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;", "Ljava/util/Map;", "getTags", "()Ljava/util/Map;", "Ljava/util/Set;", "getListeners", "()Ljava/util/Set;", "Landroidx/camera/camera2/pipe/RequestTemplate;", "getTemplate-ejQnlcg", "()Landroidx/camera/camera2/pipe/RequestTemplate;", "setTemplate-xlOpshk", "(Landroidx/camera/camera2/pipe/RequestTemplate;)V", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class InfoBundle {
        private final Set<Request.Listener> listeners;
        private final Camera2ImplConfig.Builder options;
        private final Map<String, Object> tags;
        private RequestTemplate template;

        public /* synthetic */ InfoBundle(Camera2ImplConfig.Builder builder, Map map, Set set, RequestTemplate requestTemplate, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder, map, set, requestTemplate);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: copy-0am55g4$default, reason: not valid java name */
        public static /* synthetic */ InfoBundle m1171copy0am55g4$default(InfoBundle infoBundle, Camera2ImplConfig.Builder builder, Map map, Set set, RequestTemplate requestTemplate, int i, Object obj) {
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
            return infoBundle.m1172copy0am55g4(builder, map, set, requestTemplate);
        }

        /* JADX INFO: renamed from: copy-0am55g4, reason: not valid java name */
        public final InfoBundle m1172copy0am55g4(Camera2ImplConfig.Builder options, Map<String, Object> tags, Set<Request.Listener> listeners, RequestTemplate template) {
            return new InfoBundle(options, tags, listeners, template, null);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof InfoBundle)) {
                return false;
            }
            InfoBundle infoBundle = (InfoBundle) other;
            return Intrinsics.areEqual(this.options, infoBundle.options) && Intrinsics.areEqual(this.tags, infoBundle.tags) && Intrinsics.areEqual(this.listeners, infoBundle.listeners) && Intrinsics.areEqual(this.template, infoBundle.template);
        }

        public int hashCode() {
            int iHashCode = ((((this.options.hashCode() * 31) + this.tags.hashCode()) * 31) + this.listeners.hashCode()) * 31;
            RequestTemplate requestTemplate = this.template;
            return iHashCode + (requestTemplate == null ? 0 : RequestTemplate.m1446hashCodeimpl(requestTemplate.getValue()));
        }

        public String toString() {
            return "InfoBundle(options=" + this.options + ", tags=" + this.tags + ", listeners=" + this.listeners + ", template=" + this.template + ')';
        }

        private InfoBundle(Camera2ImplConfig.Builder builder, Map<String, Object> map, Set<Request.Listener> set, RequestTemplate requestTemplate) {
            this.options = builder;
            this.tags = map;
            this.listeners = set;
            this.template = requestTemplate;
        }

        public /* synthetic */ InfoBundle(Camera2ImplConfig.Builder builder, Map map, Set set, RequestTemplate requestTemplate, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? new Camera2ImplConfig.Builder() : builder, (i & 2) != 0 ? new LinkedHashMap() : map, (i & 4) != 0 ? new LinkedHashSet() : set, (i & 8) != 0 ? null : requestTemplate, null);
        }

        public final Camera2ImplConfig.Builder getOptions() {
            return this.options;
        }

        public final Map<String, Object> getTags() {
            return this.tags;
        }

        public final Set<Request.Listener> getListeners() {
            return this.listeners;
        }

        /* JADX INFO: renamed from: getTemplate-ejQnlcg, reason: not valid java name and from getter */
        public final RequestTemplate getTemplate() {
            return this.template;
        }

        /* JADX INFO: renamed from: setTemplate-xlOpshk, reason: not valid java name */
        public final void m1174setTemplatexlOpshk(RequestTemplate requestTemplate) {
            this.template = requestTemplate;
        }
    }

    private final InfoBundle withParameters(InfoBundle infoBundle, Map<CaptureRequest.Key<?>, ? extends Object> map, Config.OptionPriority optionPriority) {
        Camera2ImplConfig.Builder builder = new Camera2ImplConfig.Builder();
        builder.insertAllOptions(infoBundle.getOptions().getMutableConfig());
        builder.addAllCaptureRequestOptionsWithPriority(map, optionPriority);
        return InfoBundle.m1171copy0am55g4$default(infoBundle, builder, MapsKt.toMutableMap(infoBundle.getTags()), CollectionsKt.toMutableSet(infoBundle.getListeners()), null, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final InfoBundle withoutParameters(InfoBundle infoBundle, List<? extends CaptureRequest.Key<?>> list) {
        Camera2ImplConfig.Builder builder = new Camera2ImplConfig.Builder();
        builder.insertAllOptions(infoBundle.getOptions().getMutableConfig());
        builder.removeCaptureRequestOptions(list);
        return InfoBundle.m1171copy0am55g4$default(infoBundle, builder, MapsKt.toMutableMap(infoBundle.getTags()), CollectionsKt.toMutableSet(infoBundle.getListeners()), null, 8, null);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred<Unit> submitParameters(Map<CaptureRequest.Key<?>, ? extends Object> values, UseCaseCameraRequestControl.Type type, Config.OptionPriority optionPriority) {
        if (this.closed) {
            return canceledResult;
        }
        this.threads.checkOnSequentialThread();
        return BuildersKt__Builders_commonKt.async$default(this.threads.getSequentialScope(), null, CoroutineStart.UNDISPATCHED, new C01791(type, values, optionPriority, null), 1, null);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$submitParameters$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m862k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m872c = "androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$submitParameters$1", m873f = "UseCaseCameraRequestControl.kt", m874i = {}, m875l = {365, 365}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
    public static final class C01791 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Config.OptionPriority $optionPriority;
        final /* synthetic */ UseCaseCameraRequestControl.Type $type;
        final /* synthetic */ Map<CaptureRequest.Key<?>, Object> $values;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C01791(UseCaseCameraRequestControl.Type type, Map<CaptureRequest.Key<?>, ? extends Object> map, Config.OptionPriority optionPriority, Continuation<? super C01791> continuation) {
            super(2, continuation);
            this.$type = type;
            this.$values = map;
            this.$optionPriority = optionPriority;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return UseCaseCameraRequestControlImpl.this.new C01791(this.$type, this.$values, this.$optionPriority, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C01791) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0039, code lost:
        
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
                Map<CaptureRequest.Key<?>, Object> map = this.$values;
                Config.OptionPriority optionPriority = this.$optionPriority;
                this.label = 1;
                obj = useCaseCameraRequestControlImpl.setParametersInternal(type, map, optionPriority, this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i == 2) {
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            this.label = 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object setParametersInternal(UseCaseCameraRequestControl.Type type, Map<CaptureRequest.Key<?>, ? extends Object> map, Config.OptionPriority optionPriority, Continuation<? super Deferred<Unit>> continuation) {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl#setParametersAsync: [" + type + "] values = " + map + ", optionPriority = " + optionPriority);
        }
        Map<UseCaseCameraRequestControl.Type, InfoBundle> map2 = this.infoBundleMap;
        InfoBundle infoBundle = map2.get(type);
        if (infoBundle == null) {
            InfoBundle infoBundle2 = new InfoBundle(null, null, null, null, 15, null);
            map2.put(type, infoBundle2);
            infoBundle = infoBundle2;
        }
        this.infoBundleMap.put(type, withParameters(infoBundle, map, optionPriority));
        return updateCameraStateAsync$default(this, merge(this.infoBundleMap), null, continuation, 1, null);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Object awaitSurfaceSetup(Continuation<? super Boolean> continuation) {
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
    public final List<Deferred<Void>> failedResults(int count, String message) {
        ArrayList arrayList = new ArrayList(count);
        for (int i = 0; i < count; i++) {
            CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            completableDeferredCompletableDeferred$default.completeExceptionally(new ImageCaptureException(2, message, null));
            arrayList.add(completableDeferredCompletableDeferred$default);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean hasInvalidSurface(List<CaptureConfig> list) {
        for (CaptureConfig captureConfig : list) {
            if (captureConfig.getSurfaces().isEmpty()) {
                return true;
            }
            Iterator<T> it = captureConfig.getSurfaces().iterator();
            while (it.hasNext()) {
                if (this.useCaseGraphContext.getSurfaceToStreamMap().get((DeferrableSurface) it.next()) == null) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final InfoBundle merge(Map<UseCaseCameraRequestControl.Type, InfoBundle> map) {
        InfoBundle infoBundle = new InfoBundle(null, null, null, RequestTemplate.m1441boximpl(RequestTemplate.m1442constructorimpl(1)), 7, null);
        Iterator<UseCaseCameraRequestControl.Type> it = UseCaseCameraRequestControl.Type.getEntries().iterator();
        while (it.hasNext()) {
            InfoBundle infoBundle2 = map.get(it.next());
            if (infoBundle2 != null) {
                infoBundle.getOptions().insertAllOptions(infoBundle2.getOptions().getMutableConfig());
                infoBundle.getTags().putAll(infoBundle2.getTags());
                infoBundle.getListeners().addAll(infoBundle2.getListeners());
                RequestTemplate template = infoBundle2.getTemplate();
                if (template != null) {
                    infoBundle.m1174setTemplatexlOpshk(RequestTemplate.m1441boximpl(template.getValue()));
                }
            }
        }
        return infoBundle;
    }

    private final TagBundle toTagBundle(InfoBundle infoBundle) {
        MutableTagBundle mutableTagBundleCreate = MutableTagBundle.create();
        for (Map.Entry<String, Object> entry : infoBundle.getTags().entrySet()) {
            mutableTagBundleCreate.putTag(entry.getKey(), entry.getValue());
        }
        return mutableTagBundleCreate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0098 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object updateCameraStateAsync(InfoBundle infoBundle, Set<StreamId> set, Continuation<? super Deferred<Unit>> continuation) {
        C01801 c01801;
        if (continuation instanceof C01801) {
            c01801 = (C01801) continuation;
            int i = c01801.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c01801.label = i - Integer.MIN_VALUE;
            } else {
                c01801 = new C01801(continuation);
            }
        }
        C01801 c018012 = c01801;
        Object objM1175updateAsyncTp9XwKQ = c018012.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c018012.label;
        Deferred deferred = null;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objM1175updateAsyncTp9XwKQ);
            if (!this.closed) {
                CameraXConfig cameraXConfig = this.cameraXConfig;
                if (cameraXConfig != null) {
                    Camera2CaptureRequestConfiguratorKt.getCamera2CaptureRequestConfigurator(cameraXConfig);
                }
                getCapturePipeline().setTemplate(infoBundle.getTemplate().getValue() != -1 ? infoBundle.getTemplate().getValue() : 1);
                UseCaseCameraState useCaseCameraState = getUseCaseCameraState();
                Map<CaptureRequest.Key<?>, ? extends Object> parameters = Camera2ImplConfigKt.toParameters(infoBundle.getOptions().build());
                Map<Metadata.Key<?>, ? extends Object> mapMapOf = MapsKt.mapOf(TuplesKt.to(TagsKt.getCAMERAX_TAG_BUNDLE(), toTagBundle(infoBundle)));
                RequestTemplate template = infoBundle.getTemplate();
                Set<Request.Listener> listeners = infoBundle.getListeners();
                c018012.label = 1;
                objM1175updateAsyncTp9XwKQ = useCaseCameraState.m1175updateAsyncTp9XwKQ(parameters, false, mapMapOf, false, set, template, listeners, c018012);
                if (objM1175updateAsyncTp9XwKQ == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return deferred != null ? canceledResult : deferred;
        }
        if (i2 != 1) {
            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(objM1175updateAsyncTp9XwKQ);
        deferred = (Deferred) objM1175updateAsyncTp9XwKQ;
        if (deferred != null) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object updateCameraStateAsync$default(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, InfoBundle infoBundle, Set set, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            set = null;
        }
        return useCaseCameraRequestControlImpl.updateCameraStateAsync(infoBundle, set, continuation);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred<Result3A> cancelFocusAndMeteringAsync() {
        Deferred<Result3A> deferredRunOnSequential = this.closed ? null : runOnSequential(new UseCaseCameraRequestControlImpl$cancelFocusAndMeteringAsync$1$1(this, null));
        return deferredRunOnSequential == null ? submitFailedResult : deferredRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public List<Deferred<Void>> issueSingleCaptureAsync(List<CaptureConfig> captureSequence, int captureMode, int flashType, int flashMode) {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl;
        List<CaptureConfig> list;
        List<Deferred<Void>> listRunOnSequentialList;
        if (this.closed) {
            useCaseCameraRequestControlImpl = this;
            list = captureSequence;
            listRunOnSequentialList = null;
        } else {
            useCaseCameraRequestControlImpl = this;
            list = captureSequence;
            listRunOnSequentialList = useCaseCameraRequestControlImpl.runOnSequentialList(captureSequence.size(), new UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1(useCaseCameraRequestControlImpl, list, captureMode, flashType, flashMode, null));
        }
        return listRunOnSequentialList == null ? useCaseCameraRequestControlImpl.failedResults(list.size(), "Capture request is cancelled on closed CameraGraph") : listRunOnSequentialList;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred<Unit> removeParametersAsync(List<? extends CaptureRequest.Key<?>> keys, UseCaseCameraRequestControl.Type type) {
        Deferred<Unit> deferredRunOnSequential = this.closed ? null : runOnSequential(new UseCaseCameraRequestControlImpl$removeParametersAsync$1$1(this, type, keys, null));
        return deferredRunOnSequential == null ? canceledResult : deferredRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred<Unit> setParametersAsync(Map<CaptureRequest.Key<?>, ? extends Object> values, UseCaseCameraRequestControl.Type type, Config.OptionPriority optionPriority) {
        Deferred<Unit> deferredRunOnSequential = !this.closed ? runOnSequential(new UseCaseCameraRequestControlImpl$setParametersAsync$1$1(this, type, values, optionPriority, null)) : null;
        return deferredRunOnSequential == null ? canceledResult : deferredRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    /* JADX INFO: renamed from: setTorchOffAsync-MtizInI */
    public Deferred<Result3A> mo1140setTorchOffAsyncMtizInI(int aeMode) {
        Deferred<Result3A> deferredRunOnSequential = this.closed ? null : runOnSequential(new UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1(this, aeMode, null));
        return deferredRunOnSequential == null ? submitFailedResult : deferredRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred<Result3A> setTorchOnAsync() {
        Deferred<Result3A> deferredRunOnSequential = this.closed ? null : runOnSequential(new UseCaseCameraRequestControlImpl$setTorchOnAsync$1$1(this, null));
        return deferredRunOnSequential == null ? submitFailedResult : deferredRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    /* JADX INFO: renamed from: startFocusAndMeteringAsync-NxRnBj4 */
    public Deferred<Result3A> mo1141startFocusAndMeteringAsyncNxRnBj4(List<MeteringRectangle> aeRegions, List<MeteringRectangle> afRegions, List<MeteringRectangle> awbRegions, Lock3ABehavior aeLockBehavior, Lock3ABehavior afLockBehavior, Lock3ABehavior awbLockBehavior, AeMode afTriggerStartAeMode, long timeLimitNs) {
        Deferred<Result3A> deferredRunOnSequential = !this.closed ? runOnSequential(new UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1(this, aeRegions, afRegions, awbRegions, aeLockBehavior, afLockBehavior, awbLockBehavior, afTriggerStartAeMode, timeLimitNs, null)) : null;
        return deferredRunOnSequential == null ? submitFailedResult : deferredRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred<Result3A> update3aRegions(List<MeteringRectangle> aeRegions, List<MeteringRectangle> afRegions, List<MeteringRectangle> awbRegions) {
        Deferred<Result3A> deferredRunOnSequential = !this.closed ? runOnSequential(new UseCaseCameraRequestControlImpl$update3aRegions$1$1(this, aeRegions, afRegions, awbRegions, null)) : null;
        return deferredRunOnSequential == null ? submitFailedResult : deferredRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred<Unit> updateCamera2ConfigAsync(Config config, Map<String, ? extends Object> tags) {
        Deferred<Unit> deferredRunOnSequential = this.closed ? null : runOnSequential(new UseCaseCameraRequestControlImpl$updateCamera2ConfigAsync$1$1(this, config, tags, null));
        return deferredRunOnSequential == null ? canceledResult : deferredRunOnSequential;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred<Unit> updateRepeatingRequestAsync(boolean isPrimary, Collection<? extends UseCase> runningUseCases) {
        Deferred<Unit> deferredRunOnSequential = this.closed ? null : runOnSequential(new UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1(runningUseCases, isPrimary, this, null));
        return deferredRunOnSequential == null ? canceledResult : deferredRunOnSequential;
    }

    private final <T> Deferred<T> runOnSequential(Function1<? super Continuation<? super Deferred<? extends T>>, ? extends Object> block) {
        CoroutineStart coroutineStartDetermineStartStrategy$camera_camera2 = determineStartStrategy$camera_camera2(this.threads);
        UseCaseThreads useCaseThreads = this.threads;
        CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        BuildersKt__Builders_commonKt.launch$default(useCaseThreads.getSequentialScope(), null, coroutineStartDetermineStartStrategy$camera_camera2, new C0177x5900dd56(block, completableDeferredCompletableDeferred$default, null), 1, null);
        return completableDeferredCompletableDeferred$default;
    }

    private final <T> List<Deferred<T>> runOnSequentialList(int size, Function1<? super Continuation<? super List<? extends Deferred<? extends T>>>, ? extends Object> block) {
        CoroutineStart coroutineStartDetermineStartStrategy$camera_camera2 = determineStartStrategy$camera_camera2(this.threads);
        UseCaseThreads useCaseThreads = this.threads;
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(CompletableDeferredKt.CompletableDeferred$default(null, 1, null));
        }
        BuildersKt__Builders_commonKt.launch$default(useCaseThreads.getSequentialScope(), null, coroutineStartDetermineStartStrategy$camera_camera2, new C0178x371fa696(block, arrayList, null), 1, null);
        return arrayList;
    }

    public final CoroutineStart determineStartStrategy$camera_camera2(UseCaseThreads useCaseThreads) {
        return useCaseThreads.isOnSequentialThread() ? CoroutineStart.UNDISPATCHED : CoroutineStart.DEFAULT;
    }

    @kotlin.Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\n\u0010\t\u001a\u00020\n*\u00020\u000bJ\u0016\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00010\r*\u00020\u000bJ\u0018\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010*\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013J\u0011\u0010\u0014\u001a\u00020\u0015*\u00020\u000b¢\u0006\u0004\b\u0016\u0010\u0017J\u0014\u0010\u0018\u001a\u00020\u0019*\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\f\u0010\t\u001a\u00020\n*\u00020\u001aH\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "submitFailedResult", "Lkotlinx/coroutines/CompletableDeferred;", "Landroidx/camera/camera2/pipe/Result3A;", "canceledResult", _UrlKt.FRAGMENT_ENCODE_SET, "extractCamera2ImplConfigBuilder", "Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;", "Landroidx/camera/core/impl/SessionConfig;", "extractTags", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "extractListeners", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/Request$Listener;", "callbackExecutor", "Ljava/util/concurrent/Executor;", "extractTemplate", "Landroidx/camera/camera2/pipe/RequestTemplate;", "extractTemplate-ARED-Gk", "(Landroidx/camera/core/impl/SessionConfig;)I", "toInfoBundle", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;", "Landroidx/camera/core/impl/Config;", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Camera2ImplConfig.Builder extractCamera2ImplConfigBuilder(SessionConfig sessionConfig) {
            Camera2ImplConfig.Builder builder = new Camera2ImplConfig.Builder();
            if (!Intrinsics.areEqual(sessionConfig.getExpectedFrameRateRange(), StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED)) {
                builder.setCaptureRequestOption(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, sessionConfig.getExpectedFrameRateRange());
            }
            builder.insertAllOptions(sessionConfig.getImplementationOptions());
            return builder;
        }

        public final Map<String, Object> extractTags(SessionConfig sessionConfig) {
            return MapsKt.toMutableMap(UseCaseCameraRequestControlKt.toMap(sessionConfig.getRepeatingCaptureConfig().getTagBundle()));
        }

        public final Set<Request.Listener> extractListeners(SessionConfig sessionConfig, Executor executor) {
            return SetsKt.mutableSetOf(CameraCallbackMap.INSTANCE.createFor(sessionConfig.getRepeatingCameraCaptureCallbacks(), executor));
        }

        /* JADX INFO: renamed from: extractTemplate-ARED-Gk, reason: not valid java name */
        public final int m1170extractTemplateAREDGk(SessionConfig sessionConfig) {
            return RequestTemplate.m1442constructorimpl(sessionConfig.getTemplateType());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final InfoBundle toInfoBundle(SessionConfig sessionConfig, Executor executor) {
            return new InfoBundle(extractCamera2ImplConfigBuilder(sessionConfig), extractTags(sessionConfig), extractListeners(sessionConfig, executor), RequestTemplate.m1441boximpl(m1170extractTemplateAREDGk(sessionConfig)), null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Camera2ImplConfig.Builder extractCamera2ImplConfigBuilder(Config config) {
            Camera2ImplConfig.Builder builder = new Camera2ImplConfig.Builder();
            builder.insertAllOptions(config);
            return builder;
        }
    }

    static {
        CompletableDeferred<Unit> completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        Job.cancel$default(completableDeferredCompletableDeferred$default, null, 1, null);
        canceledResult = completableDeferredCompletableDeferred$default;
    }
}
