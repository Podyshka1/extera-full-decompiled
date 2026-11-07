package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Trace;
import android.view.Surface;
import androidx.camera.camera2.impl.DisplayInfoManager$$ExternalSyntheticBUOutline0;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.CameraTimestamp;
import androidx.camera.camera2.pipe.CaptureSequence;
import androidx.camera.camera2.pipe.CaptureSequences;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.SensorTimestamp;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.graph.SurfaceGraph$$ExternalSyntheticBUOutline0;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import retrofit2.Utils$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u00012\u00020\u00022\b\u0012\u0004\u0012\u00020\u00040\u0003B\u0081\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\n\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\n\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\n\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012\u0012\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00160\u0012\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u0012\u0006\u0010\u0019\u001a\u00020\u001a¢\u0006\u0004\b\u001b\u0010\u001cJ(\u00106\u001a\u00020,2\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u00042\u0006\u0010:\u001a\u00020)2\u0006\u0010;\u001a\u00020)H\u0016J \u00106\u001a\u00020,2\u0006\u00109\u001a\u00020\u00042\u0006\u0010;\u001a\u00020)2\u0006\u0010:\u001a\u00020)H\u0016J \u0010<\u001a\u00020,2\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u00042\u0006\u0010=\u001a\u00020>H\u0016J\u0018\u0010<\u001a\u00020,2\u0006\u00109\u001a\u00020\u00042\u0006\u0010=\u001a\u00020>H\u0016J(\u0010?\u001a\u00020,2\u0006\u0010@\u001a\u0002082\u0006\u00109\u001a\u00020\u00042\u0006\u0010:\u001a\u00020)2\u0006\u0010;\u001a\u00020)H\u0016J \u0010A\u001a\u00020,2\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u00042\u0006\u0010B\u001a\u00020CH\u0016J'\u0010A\u001a\u00020,2\u0006\u00109\u001a\u00020\u00042\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020EH\u0016¢\u0006\u0004\bF\u0010GJ\u0018\u0010H\u001a\u00020,2\u0006\u00109\u001a\u00020\u00042\u0006\u0010I\u001a\u00020.H\u0016J \u0010J\u001a\u00020,2\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u00042\u0006\u0010K\u001a\u00020LH\u0016J'\u0010M\u001a\u00020,2\u0006\u0010N\u001a\u00020\f2\u0006\u0010D\u001a\u00020E2\u0006\u0010O\u001a\u00020PH\u0002¢\u0006\u0004\bQ\u0010RJ\u001f\u0010J\u001a\u00020,2\u0006\u00109\u001a\u00020\u00042\u0006\u0010D\u001a\u00020EH\u0016¢\u0006\u0004\bS\u0010TJ(\u0010U\u001a\u00020,2\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u00042\u0006\u0010V\u001a\u00020\u00132\u0006\u0010W\u001a\u00020)H\u0016J\u0017\u0010X\u001a\u0004\u0018\u00010\u00142\u0006\u0010V\u001a\u00020\u0013H\u0002¢\u0006\u0002\bYJ \u0010Z\u001a\u00020,2\u0006\u00107\u001a\u0002082\u0006\u0010[\u001a\u00020.2\u0006\u0010;\u001a\u00020)H\u0016J\u0018\u0010Z\u001a\u00020,2\u0006\u0010[\u001a\u00020.2\u0006\u0010;\u001a\u00020)H\u0016J\u0018\u0010\\\u001a\u00020,2\u0006\u00107\u001a\u0002082\u0006\u0010[\u001a\u00020.H\u0016J\u0010\u0010\\\u001a\u00020,2\u0006\u0010[\u001a\u00020.H\u0016J\u0010\u0010]\u001a\u00020\f2\u0006\u00109\u001a\u00020\u0004H\u0002J\u0010\u0010^\u001a\u00020,H\u0080@¢\u0006\u0004\b_\u0010`J\b\u0010a\u001a\u00020bH\u0016R\u0016\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b\u001d\u0010\u001eR\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\nX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\nX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010#R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\nX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010#R\u0014\u0010\u000f\u001a\u00020\u0010X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00160\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010*\u001a\b\u0012\u0004\u0012\u00020,0+X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e¢\u0006\u0004\n\u0002\u0010/R$\u00101\u001a\u00020.2\u0006\u00100\u001a\u00020.8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b2\u00103\"\u0004\b4\u00105¨\u0006c"}, d2 = {"Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;", "Landroidx/camera/camera2/pipe/compat/Camera2CaptureCallback;", "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;", "Landroidx/camera/camera2/pipe/CaptureSequence;", "Landroid/hardware/camera2/CaptureRequest;", "cameraId", "Landroidx/camera/camera2/pipe/CameraId;", "repeating", _UrlKt.FRAGMENT_ENCODE_SET, "captureRequestList", _UrlKt.FRAGMENT_ENCODE_SET, "captureMetadataList", "Landroidx/camera/camera2/pipe/RequestMetadata;", "listeners", "Landroidx/camera/camera2/pipe/Request$Listener;", "sequenceListener", "Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;", "surfaceToStreamMap", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/view/Surface;", "Landroidx/camera/camera2/pipe/StreamId;", "surfaceToOutputMap", "Landroidx/camera/camera2/pipe/OutputId;", "streamGraph", "Landroidx/camera/camera2/pipe/StreamGraph;", "strictMode", "Landroidx/camera/camera2/pipe/StrictMode;", "<init>", "(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;Ljava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/StrictMode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "getCameraId-Dz_R5H8", "()Ljava/lang/String;", "Ljava/lang/String;", "getRepeating", "()Z", "getCaptureRequestList", "()Ljava/util/List;", "getCaptureMetadataList", "getListeners", "getSequenceListener", "()Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;", "debugId", _UrlKt.FRAGMENT_ENCODE_SET, "hasStarted", "Lkotlinx/coroutines/CompletableDeferred;", _UrlKt.FRAGMENT_ENCODE_SET, "_sequenceNumber", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/lang/Integer;", "value", "sequenceNumber", "getSequenceNumber", "()I", "setSequenceNumber", "(I)V", "onCaptureStarted", "captureSession", "Landroid/hardware/camera2/CameraCaptureSession;", "captureRequest", "captureTimestamp", "captureFrameNumber", "onCaptureProgressed", "partialCaptureResult", "Landroid/hardware/camera2/CaptureResult;", "onReadoutStarted", "session", "onCaptureCompleted", "captureResult", "Landroid/hardware/camera2/TotalCaptureResult;", "frameNumber", "Landroidx/camera/camera2/pipe/FrameNumber;", "onCaptureCompleted-rmrZIYk", "(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;J)V", "onCaptureProcessProgressed", "progress", "onCaptureFailed", "captureFailure", "Landroid/hardware/camera2/CaptureFailure;", "invokeCaptureFailure", PluginsConstants.REQUEST, "requestFailure", "Landroidx/camera/camera2/pipe/RequestFailure;", "invokeCaptureFailure-CcXjc1I", "(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V", "onCaptureFailed-RuT0dZU", "(Landroid/hardware/camera2/CaptureRequest;J)V", "onCaptureBufferLost", "surface", "frameId", "getStreamId", "getStreamId-Lfjdq8s", "onCaptureSequenceCompleted", "captureSequenceId", "onCaptureSequenceAborted", "readRequestMetadata", "awaitStarted", "awaitStarted$camera_camera2_pipe", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCamera2CaptureSequence.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Camera2CaptureSequence.kt\nandroidx/camera/camera2/pipe/compat/Camera2CaptureSequence\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n+ 4 CaptureSequence.kt\nandroidx/camera/camera2/pipe/CaptureSequences\n+ 5 StrictMode.kt\nandroidx/camera/camera2/pipe/StrictMode\n+ 6 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,348:1\n1#2:349\n71#3,4:350\n71#3,4:355\n78#3,4:364\n71#3,4:369\n78#3,4:378\n78#3,4:383\n71#3,4:387\n71#3,4:392\n78#3,4:401\n71#3,4:406\n78#3,4:415\n78#3,4:420\n71#3,4:424\n71#3,4:429\n78#3,4:438\n71#3,4:443\n78#3,4:452\n78#3,4:457\n71#3,4:461\n71#3,4:465\n78#3,4:469\n71#3,4:473\n71#3,4:478\n78#3,4:487\n71#3,4:492\n78#3,4:501\n78#3,4:506\n71#3,4:510\n71#3,4:515\n78#3,4:524\n71#3,4:529\n78#3,4:538\n78#3,4:543\n78#3,4:547\n71#3,4:551\n71#3,4:556\n78#3,4:565\n71#3,4:570\n78#3,4:579\n78#3,4:584\n71#3,4:588\n78#3,4:592\n71#3,4:597\n78#3,4:606\n71#3,4:619\n78#3,4:623\n71#3,4:627\n71#3,4:632\n78#3,4:641\n71#3,4:646\n78#3,4:655\n71#3,4:661\n78#3,4:670\n71#3,4:675\n78#3,4:684\n78#3,4:689\n71#3,4:693\n71#3,4:709\n78#3,4:721\n71#3,4:726\n78#3,4:738\n78#3,4:743\n71#3,4:747\n71#3,4:763\n78#3,4:775\n71#3,4:780\n78#3,4:792\n78#3,4:797\n87#4:354\n91#4,5:359\n96#4:368\n99#4,5:373\n104#4:382\n87#4:391\n91#4,5:396\n96#4:405\n99#4,5:410\n104#4:419\n87#4:428\n91#4,5:433\n96#4:442\n99#4,5:447\n104#4:456\n87#4:477\n91#4,5:482\n96#4:491\n99#4,5:496\n104#4:505\n87#4:514\n91#4,5:519\n96#4:528\n99#4,5:533\n104#4:542\n87#4:555\n91#4,5:560\n96#4:569\n99#4,5:574\n104#4:583\n87#4:596\n91#4,5:601\n96#4,9:610\n87#4:631\n91#4,5:636\n96#4:645\n99#4,5:650\n104#4:659\n87#4:660\n91#4,5:665\n96#4:674\n99#4,5:679\n104#4:688\n55#4:708\n58#4,8:713\n66#4:725\n69#4,8:730\n77#4:742\n55#4:762\n58#4,8:767\n66#4:779\n69#4,8:784\n77#4:796\n25#5,4:697\n29#5,5:703\n25#5,4:751\n29#5,5:757\n71#6,2:701\n71#6,2:755\n*S KotlinDebug\n*F\n+ 1 Camera2CaptureSequence.kt\nandroidx/camera/camera2/pipe/compat/Camera2CaptureSequence\n*L\n105#1:350,4\n115#1:355,4\n115#1:364,4\n115#1:369,4\n115#1:378,4\n116#1:383,4\n129#1:387,4\n137#1:392,4\n137#1:401,4\n137#1:406,4\n137#1:415,4\n138#1:420,4\n147#1:424,4\n155#1:429,4\n155#1:438,4\n155#1:443,4\n155#1:452,4\n156#1:457,4\n170#1:461,4\n171#1:465,4\n173#1:469,4\n180#1:473,4\n181#1:478,4\n181#1:487,4\n181#1:492,4\n181#1:501,4\n182#1:506,4\n186#1:510,4\n187#1:515,4\n187#1:524,4\n187#1:529,4\n187#1:538,4\n188#1:543,4\n189#1:547,4\n193#1:551,4\n197#1:556,4\n197#1:565,4\n197#1:570,4\n197#1:579,4\n198#1:584,4\n206#1:588,4\n219#1:592,4\n228#1:597,4\n228#1:606,4\n232#1:619,4\n247#1:623,4\n257#1:627,4\n268#1:632,4\n268#1:641,4\n268#1:646,4\n268#1:655,4\n269#1:661,4\n269#1:670,4\n269#1:675,4\n269#1:684,4\n270#1:689,4\n292#1:693,4\n302#1:709,4\n302#1:721,4\n302#1:726,4\n302#1:738,4\n305#1:743,4\n314#1:747,4\n323#1:763,4\n323#1:775,4\n323#1:780,4\n323#1:792,4\n324#1:797,4\n115#1:354\n115#1:359,5\n115#1:368\n115#1:373,5\n115#1:382\n137#1:391\n137#1:396,5\n137#1:405\n137#1:410,5\n137#1:419\n155#1:428\n155#1:433,5\n155#1:442\n155#1:447,5\n155#1:456\n181#1:477\n181#1:482,5\n181#1:491\n181#1:496,5\n181#1:505\n187#1:514\n187#1:519,5\n187#1:528\n187#1:533,5\n187#1:542\n197#1:555\n197#1:560,5\n197#1:569\n197#1:574,5\n197#1:583\n228#1:596\n228#1:601,5\n228#1:610,9\n268#1:631\n268#1:636,5\n268#1:645\n268#1:650,5\n268#1:659\n269#1:660\n269#1:665,5\n269#1:674\n269#1:679,5\n269#1:688\n302#1:708\n302#1:713,8\n302#1:725\n302#1:730,8\n302#1:742\n323#1:762\n323#1:767,8\n323#1:779\n323#1:784,8\n323#1:796\n296#1:697,4\n296#1:703,5\n318#1:751,4\n318#1:757,5\n296#1:701,2\n318#1:755,2\n*E\n"})
public final class Camera2CaptureSequence extends CameraCaptureSession.CaptureCallback implements Camera2CaptureCallback, CaptureSequence<CaptureRequest> {
    private volatile Integer _sequenceNumber;
    private final String cameraId;
    private final List<RequestMetadata> captureMetadataList;
    private final List<CaptureRequest> captureRequestList;
    private final long debugId;
    private final CompletableDeferred<Unit> hasStarted;
    private final List<Request.Listener> listeners;
    private final boolean repeating;
    private final CaptureSequence.CaptureSequenceListener sequenceListener;
    private final StreamGraph streamGraph;
    private final StrictMode strictMode;
    private final Map<Surface, OutputId> surfaceToOutputMap;
    private final Map<Surface, StreamId> surfaceToStreamMap;

    public /* synthetic */ Camera2CaptureSequence(String str, boolean z, List list, List list2, List list3, CaptureSequence.CaptureSequenceListener captureSequenceListener, Map map, Map map2, StreamGraph streamGraph, StrictMode strictMode, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, z, list, list2, list3, captureSequenceListener, map, map2, streamGraph, strictMode);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Camera2CaptureSequence(String str, boolean z, List<CaptureRequest> list, List<? extends RequestMetadata> list2, List<? extends Request.Listener> list3, CaptureSequence.CaptureSequenceListener captureSequenceListener, Map<Surface, StreamId> map, Map<Surface, OutputId> map2, StreamGraph streamGraph, StrictMode strictMode) {
        this.cameraId = str;
        this.repeating = z;
        this.captureRequestList = list;
        this.captureMetadataList = list2;
        this.listeners = list3;
        this.sequenceListener = captureSequenceListener;
        this.surfaceToStreamMap = map;
        this.surfaceToOutputMap = map2;
        this.streamGraph = streamGraph;
        this.strictMode = strictMode;
        this.debugId = Camera2CaptureSequenceProcessorKt.getCaptureSequenceDebugIds().incrementAndGet();
        this.hasStarted = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        if (getCaptureRequestList().size() == getCaptureMetadataList().size()) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("CaptureRequestList and CaptureMetadataList must have a 1:1 mapping.");
        throw null;
    }

    /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name and from getter */
    public String getCameraId() {
        return this.cameraId;
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequence
    public boolean getRepeating() {
        return this.repeating;
    }

    public List<CaptureRequest> getCaptureRequestList() {
        return this.captureRequestList;
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequence
    public List<RequestMetadata> getCaptureMetadataList() {
        return this.captureMetadataList;
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequence
    public List<Request.Listener> getListeners() {
        return this.listeners;
    }

    public CaptureSequence.CaptureSequenceListener getSequenceListener() {
        return this.sequenceListener;
    }

    public int getSequenceNumber() {
        int iIntValue;
        if (this._sequenceNumber == null) {
            synchronized (this) {
                Integer num = this._sequenceNumber;
                if (num == null) {
                    throw new IllegalStateException(("SequenceNumber has not been set for " + this + '!').toString());
                }
                iIntValue = num.intValue();
            }
            return iIntValue;
        }
        Integer num2 = this._sequenceNumber;
        if (num2 != null) {
            return num2.intValue();
        }
        DisplayInfoManager$$ExternalSyntheticBUOutline0.m30m("SequenceNumber has not been set for ", this);
        return 0;
    }

    @Override // androidx.camera.camera2.pipe.CaptureSequence
    public void setSequenceNumber(int i) {
        this._sequenceNumber = Integer.valueOf(i);
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureStarted(CameraCaptureSession captureSession, CaptureRequest captureRequest, long captureTimestamp, long captureFrameNumber) {
        onCaptureStarted(captureRequest, captureFrameNumber, captureTimestamp);
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CaptureCallback
    public void onCaptureStarted(CaptureRequest captureRequest, long captureFrameNumber, long captureTimestamp) {
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureStarted");
        long jM1313constructorimpl = CameraTimestamp.m1313constructorimpl(captureTimestamp);
        long jM1339constructorimpl = FrameNumber.m1339constructorimpl(captureFrameNumber);
        this.hasStarted.complete(Unit.INSTANCE);
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getListeners().size();
        for (int i = 0; i < size; i++) {
            getListeners().get(i).mo1123onStarteduGKBvU4(requestMetadata, jM1339constructorimpl, jM1313constructorimpl);
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = requestMetadata.getRequest().getListeners().size();
        for (int i2 = 0; i2 < size2; i2++) {
            requestMetadata.getRequest().getListeners().get(i2).mo1123onStarteduGKBvU4(requestMetadata, jM1339constructorimpl, jM1313constructorimpl);
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureProgressed(CameraCaptureSession captureSession, CaptureRequest captureRequest, CaptureResult partialCaptureResult) {
        onCaptureProgressed(captureRequest, partialCaptureResult);
    }

    public void onCaptureProgressed(CaptureRequest captureRequest, CaptureResult partialCaptureResult) {
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureProgressed");
        long jM1339constructorimpl = FrameNumber.m1339constructorimpl(partialCaptureResult.getFrameNumber());
        AndroidFrameMetadata androidFrameMetadata = new AndroidFrameMetadata(partialCaptureResult, getCameraId(), null);
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getListeners().size();
        for (int i = 0; i < size; i++) {
            getListeners().get(i).mo1120onPartialCaptureResultCcXjc1I(requestMetadata, jM1339constructorimpl, androidFrameMetadata);
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = requestMetadata.getRequest().getListeners().size();
        for (int i2 = 0; i2 < size2; i2++) {
            requestMetadata.getRequest().getListeners().get(i2).mo1120onPartialCaptureResultCcXjc1I(requestMetadata, jM1339constructorimpl, androidFrameMetadata);
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onReadoutStarted(CameraCaptureSession session, CaptureRequest captureRequest, long captureTimestamp, long captureFrameNumber) {
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onReadoutStarted");
        long jM1459constructorimpl = SensorTimestamp.m1459constructorimpl(captureTimestamp);
        long jM1339constructorimpl = FrameNumber.m1339constructorimpl(captureFrameNumber);
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getListeners().size();
        for (int i = 0; i < size; i++) {
            getListeners().get(i).mo1121onReadoutStartedmP9r9w(requestMetadata, jM1339constructorimpl, jM1459constructorimpl);
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = requestMetadata.getRequest().getListeners().size();
        for (int i2 = 0; i2 < size2; i2++) {
            requestMetadata.getRequest().getListeners().get(i2).mo1121onReadoutStartedmP9r9w(requestMetadata, jM1339constructorimpl, jM1459constructorimpl);
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureCompleted(CameraCaptureSession captureSession, CaptureRequest captureRequest, TotalCaptureResult captureResult) {
        mo1508onCaptureCompletedrmrZIYk(captureRequest, captureResult, FrameNumber.m1339constructorimpl(captureResult.getFrameNumber()));
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CaptureCallback
    /* JADX INFO: renamed from: onCaptureCompleted-rmrZIYk */
    public void mo1508onCaptureCompletedrmrZIYk(CaptureRequest captureRequest, TotalCaptureResult captureResult, long frameNumber) {
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureCompleted");
        Trace.beginSection("onCaptureSequenceComplete");
        getSequenceListener().onCaptureSequenceComplete(this);
        Trace.endSection();
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        AndroidFrameInfo androidFrameInfo = new AndroidFrameInfo(captureResult, getCameraId(), requestMetadata, null);
        Trace.beginSection("onTotalCaptureResult");
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getListeners().size();
        for (int i = 0; i < size; i++) {
            getListeners().get(i).mo1086onTotalCaptureResultCcXjc1I(requestMetadata, frameNumber, androidFrameInfo);
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = requestMetadata.getRequest().getListeners().size();
        for (int i2 = 0; i2 < size2; i2++) {
            requestMetadata.getRequest().getListeners().get(i2).mo1086onTotalCaptureResultCcXjc1I(requestMetadata, frameNumber, androidFrameInfo);
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
        Trace.beginSection("onComplete");
        CaptureSequences captureSequences2 = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size3 = getListeners().size();
        for (int i3 = 0; i3 < size3; i3++) {
            getListeners().get(i3).mo1084onCompleteCcXjc1I(requestMetadata, frameNumber, androidFrameInfo);
        }
        Debug debug4 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size4 = requestMetadata.getRequest().getListeners().size();
        for (int i4 = 0; i4 < size4; i4++) {
            requestMetadata.getRequest().getListeners().get(i4).mo1084onCompleteCcXjc1I(requestMetadata, frameNumber, androidFrameInfo);
        }
        Debug debug5 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CaptureCallback
    public void onCaptureProcessProgressed(CaptureRequest captureRequest, int progress) {
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureProcessProgressed");
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getListeners().size();
        for (int i = 0; i < size; i++) {
            getListeners().get(i).onCaptureProgress(requestMetadata, progress);
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = requestMetadata.getRequest().getListeners().size();
        for (int i2 = 0; i2 < size2; i2++) {
            requestMetadata.getRequest().getListeners().get(i2).onCaptureProgress(requestMetadata, progress);
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureFailed(CameraCaptureSession captureSession, CaptureRequest captureRequest, CaptureFailure captureFailure) {
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureFailed");
        this.hasStarted.complete(Unit.INSTANCE);
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        m1511invokeCaptureFailureCcXjc1I(requestMetadata, FrameNumber.m1339constructorimpl(captureFailure.getFrameNumber()), new AndroidCaptureFailure(requestMetadata, captureFailure));
        Trace.endSection();
    }

    /* JADX INFO: renamed from: invokeCaptureFailure-CcXjc1I, reason: not valid java name */
    private final void m1511invokeCaptureFailureCcXjc1I(RequestMetadata request, long frameNumber, RequestFailure requestFailure) {
        getSequenceListener().onCaptureSequenceComplete(this);
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getListeners().size();
        for (int i = 0; i < size; i++) {
            getListeners().get(i).mo1085onFailedCcXjc1I(request, frameNumber, requestFailure);
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = request.getRequest().getListeners().size();
        for (int i2 = 0; i2 < size2; i2++) {
            request.getRequest().getListeners().get(i2).mo1085onFailedCcXjc1I(request, frameNumber, requestFailure);
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CaptureCallback
    /* JADX INFO: renamed from: onCaptureFailed-RuT0dZU */
    public void mo1509onCaptureFailedRuT0dZU(CaptureRequest captureRequest, long frameNumber) {
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureFailed");
        this.hasStarted.complete(Unit.INSTANCE);
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        m1511invokeCaptureFailureCcXjc1I(requestMetadata, frameNumber, new ExtensionRequestFailure(requestMetadata, false, frameNumber, 0, null));
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureBufferLost(CameraCaptureSession captureSession, CaptureRequest captureRequest, Surface surface, long frameId) {
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureBufferLost");
        long jM1339constructorimpl = FrameNumber.m1339constructorimpl(frameId);
        StreamId streamIdM1510getStreamIdLfjdq8s = m1510getStreamIdLfjdq8s(surface);
        OutputId outputId = this.surfaceToOutputMap.get(surface);
        if (streamIdM1510getStreamIdLfjdq8s == null) {
            StringBuilder sb = new StringBuilder("Unable to find the streamId for ");
            sb.append(surface);
            SurfaceGraph$$ExternalSyntheticBUOutline0.m71m(sb, " on ", FrameNumber.m1343toStringimpl(jM1339constructorimpl));
            return;
        }
        if (outputId == null) {
            StringBuilder sb2 = new StringBuilder("Unable to find the outputId for ");
            sb2.append(surface);
            SurfaceGraph$$ExternalSyntheticBUOutline0.m71m(sb2, " on ", FrameNumber.m1343toStringimpl(jM1339constructorimpl));
            return;
        }
        RequestMetadata requestMetadata = readRequestMetadata(captureRequest);
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getListeners().size();
        for (int i = 0; i < size; i++) {
            getListeners().get(i).m1434onBufferLostDlC0U5Y(requestMetadata, jM1339constructorimpl, streamIdM1510getStreamIdLfjdq8s.getValue());
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size2 = requestMetadata.getRequest().getListeners().size();
        for (int i2 = 0; i2 < size2; i2++) {
            requestMetadata.getRequest().getListeners().get(i2).m1434onBufferLostDlC0U5Y(requestMetadata, jM1339constructorimpl, streamIdM1510getStreamIdLfjdq8s.getValue());
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        CaptureSequences captureSequences2 = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size3 = getListeners().size();
        for (int i3 = 0; i3 < size3; i3++) {
            getListeners().get(i3).mo1119onBufferLostiiEMlm4(requestMetadata, jM1339constructorimpl, streamIdM1510getStreamIdLfjdq8s.getValue(), outputId.getValue());
        }
        Debug debug4 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size4 = requestMetadata.getRequest().getListeners().size();
        for (int i4 = 0; i4 < size4; i4++) {
            requestMetadata.getRequest().getListeners().get(i4).mo1119onBufferLostiiEMlm4(requestMetadata, jM1339constructorimpl, streamIdM1510getStreamIdLfjdq8s.getValue(), outputId.getValue());
        }
        Debug debug5 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
    }

    /* JADX INFO: renamed from: getStreamId-Lfjdq8s, reason: not valid java name */
    private final StreamId m1510getStreamIdLfjdq8s(Surface surface) {
        CameraStream stream;
        StreamId streamId = this.surfaceToStreamMap.get(surface);
        if (streamId != null) {
            return streamId;
        }
        OutputId outputId = this.surfaceToOutputMap.get(surface);
        OutputStream outputStreamM1471getiYJqvbA = outputId != null ? this.streamGraph.m1471getiYJqvbA(outputId.getValue()) : null;
        if (outputStreamM1471getiYJqvbA == null || (stream = outputStreamM1471getiYJqvbA.getStream()) == null) {
            return null;
        }
        return StreamId.m1472boximpl(stream.getId());
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureSequenceCompleted(CameraCaptureSession captureSession, int captureSequenceId, long captureFrameNumber) {
        onCaptureSequenceCompleted(captureSequenceId, captureFrameNumber);
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CaptureCallback
    public void onCaptureSequenceCompleted(int captureSequenceId, long captureFrameNumber) {
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureSequenceCompleted");
        this.hasStarted.complete(Unit.INSTANCE);
        getSequenceListener().onCaptureSequenceComplete(this);
        StrictMode strictMode = this.strictMode;
        if (!(getSequenceNumber() == captureSequenceId)) {
            String str = "onCaptureSequenceCompleted was invoked on " + getSequenceNumber() + ", but expected " + captureSequenceId + '!';
            if (strictMode.getEnabled()) {
                Segment$$ExternalSyntheticBUOutline1.m925m(str);
                return;
            } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", str);
            }
        }
        long jM1339constructorimpl = FrameNumber.m1339constructorimpl(captureFrameNumber);
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getCaptureMetadataList().size();
        for (int i = 0; i < size; i++) {
            RequestMetadata requestMetadata = getCaptureMetadataList().get(i);
            int size2 = getListeners().size();
            for (int i2 = 0; i2 < size2; i2++) {
                getListeners().get(i2).mo1122onRequestSequenceCompletedRuT0dZU(requestMetadata, jM1339constructorimpl);
            }
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size3 = getCaptureMetadataList().size();
        for (int i3 = 0; i3 < size3; i3++) {
            RequestMetadata requestMetadata2 = getCaptureMetadataList().get(i3);
            int size4 = requestMetadata2.getRequest().getListeners().size();
            for (int i4 = 0; i4 < size4; i4++) {
                requestMetadata2.getRequest().getListeners().get(i4).mo1122onRequestSequenceCompletedRuT0dZU(requestMetadata2, jM1339constructorimpl);
            }
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
    }

    @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
    public void onCaptureSequenceAborted(CameraCaptureSession captureSession, int captureSequenceId) {
        onCaptureSequenceAborted(captureSequenceId);
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2CaptureCallback
    public void onCaptureSequenceAborted(int captureSequenceId) {
        Debug debug = Debug.INSTANCE;
        Trace.beginSection("onCaptureSequenceAborted");
        this.hasStarted.complete(Unit.INSTANCE);
        getSequenceListener().onCaptureSequenceComplete(this);
        StrictMode strictMode = this.strictMode;
        if (!(getSequenceNumber() == captureSequenceId)) {
            String str = "onCaptureSequenceAborted was invoked on " + getSequenceNumber() + ", but expected " + captureSequenceId + '!';
            if (strictMode.getEnabled()) {
                Segment$$ExternalSyntheticBUOutline1.m925m(str);
                return;
            } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", str);
            }
        }
        CaptureSequences captureSequences = CaptureSequences.INSTANCE;
        Trace.beginSection("InvokeInternalListeners");
        int size = getCaptureMetadataList().size();
        for (int i = 0; i < size; i++) {
            RequestMetadata requestMetadata = getCaptureMetadataList().get(i);
            int size2 = getListeners().size();
            for (int i2 = 0; i2 < size2; i2++) {
                getListeners().get(i2).onRequestSequenceAborted(requestMetadata);
            }
        }
        Debug debug2 = Debug.INSTANCE;
        Trace.endSection();
        Trace.beginSection("InvokeRequestListeners");
        int size3 = getCaptureMetadataList().size();
        for (int i3 = 0; i3 < size3; i3++) {
            RequestMetadata requestMetadata2 = getCaptureMetadataList().get(i3);
            int size4 = requestMetadata2.getRequest().getListeners().size();
            for (int i4 = 0; i4 < size4; i4++) {
                requestMetadata2.getRequest().getListeners().get(i4).onRequestSequenceAborted(requestMetadata2);
            }
        }
        Debug debug3 = Debug.INSTANCE;
        Trace.endSection();
        Trace.endSection();
    }

    private final RequestMetadata readRequestMetadata(CaptureRequest captureRequest) {
        int size = getCaptureRequestList().size();
        for (int i = 0; i < size; i++) {
            if (getCaptureRequestList().get(i) == captureRequest) {
                return getCaptureMetadataList().get(i);
            }
        }
        StringBuilder sb = new StringBuilder("Failed to find CaptureRequest ");
        sb.append(captureRequest);
        Utils$$ExternalSyntheticBUOutline1.m1069m(sb, " in ", getCaptureRequestList());
        return null;
    }

    public final Object awaitStarted$camera_camera2_pipe(Continuation<? super Unit> continuation) {
        Object objAwait = this.hasStarted.await(continuation);
        return objAwait == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwait : Unit.INSTANCE;
    }

    public String toString() {
        return "Camera2CaptureSequence-" + this.debugId;
    }
}
