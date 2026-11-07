package androidx.camera.camera2.pipe.compat;

import android.graphics.ColorSpace;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.ExtensionSessionConfiguration;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import android.os.Build;
import android.os.Trace;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraColorSpace;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraInterop;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.RequestsKt;
import androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper;
import androidx.camera.camera2.pipe.compat.CameraExtensionSessionWrapper;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.DurationNs;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.Timestamps;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Ä\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ%\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0013\u0010\u0017\u001a\u00020\u0016*\u00020\u0010H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u0016*\u00020\u0010H\u0002¢\u0006\u0004\b\u0019\u0010\u0018J%\u0010\u001e\u001a\u00020\u00132\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u0010\u0011\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010\"\u001a\u00020\u00132\u0006\u0010!\u001a\u00020 H\u0017¢\u0006\u0004\b\"\u0010#J-\u0010&\u001a\u00020\u00132\u0006\u0010%\u001a\u00020$2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u0010\u0011\u001a\u00020\u001dH\u0016¢\u0006\u0004\b&\u0010'J%\u0010(\u001a\u00020\u00132\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u0010\u0011\u001a\u00020\u001dH\u0016¢\u0006\u0004\b(\u0010\u001fJ%\u0010+\u001a\u00020\u00132\f\u0010*\u001a\b\u0012\u0004\u0012\u00020)0\u001a2\u0006\u0010\u0011\u001a\u00020\u001dH\u0017¢\u0006\u0004\b+\u0010\u001fJ-\u0010.\u001a\u00020\u00132\u0006\u0010-\u001a\u00020,2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020)0\u001a2\u0006\u0010\u0011\u001a\u00020\u001dH\u0017¢\u0006\u0004\b.\u0010/J\u0017\u0010\u001e\u001a\u00020\u00132\u0006\u0010!\u001a\u000200H\u0017¢\u0006\u0004\b\u001e\u00101J\u0019\u00107\u001a\u0004\u0018\u0001042\u0006\u00103\u001a\u000202H\u0016¢\u0006\u0004\b5\u00106J\u0019\u0010:\u001a\u0004\u0018\u0001042\u0006\u00109\u001a\u000208H\u0016¢\u0006\u0004\b:\u0010;J\u0017\u0010@\u001a\u00020\u00162\u0006\u0010=\u001a\u00020<H\u0017¢\u0006\u0004\b>\u0010?J\u000f\u0010A\u001a\u00020\u0016H\u0016¢\u0006\u0004\bA\u0010BJ\u000f\u0010C\u001a\u00020\u0016H\u0016¢\u0006\u0004\bC\u0010BJ)\u0010H\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010E*\u00020D2\f\u0010G\u001a\b\u0012\u0004\u0012\u00028\u00000FH\u0016¢\u0006\u0004\bH\u0010IJ\u000f\u0010K\u001a\u00020JH\u0016¢\u0006\u0004\bK\u0010LR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010MR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010NR\u001a\u0010\u0007\u001a\u00020\u00068\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0007\u0010O\u001a\u0004\bP\u0010LR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010QR\u0016\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010RR\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010SR\u0014\u0010U\u001a\u00020T8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bU\u0010VR\u001c\u0010X\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100W8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bX\u0010Y¨\u0006Z"}, d2 = {"Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;", "Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;", "Landroidx/camera/camera2/pipe/CameraMetadata;", "cameraMetadata", "Landroid/hardware/camera2/CameraDevice;", "cameraDevice", "Landroidx/camera/camera2/pipe/CameraId;", "cameraId", "Landroidx/camera/camera2/pipe/internal/CameraErrorListener;", "cameraErrorListener", "Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;", "interopCaptureSessionListener", "Landroidx/camera/camera2/pipe/core/Threads;", "threads", "<init>", "(Landroidx/camera/camera2/pipe/CameraMetadata;Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Landroidx/camera/camera2/pipe/core/Threads;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Landroidx/camera/camera2/pipe/compat/SessionStateCallback;", "stateCallback", "Lkotlin/Pair;", _UrlKt.FRAGMENT_ENCODE_SET, "checkAndSetStateCallback", "(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)Lkotlin/Pair;", _UrlKt.FRAGMENT_ENCODE_SET, "onSessionDisconnectedWithTrace", "(Landroidx/camera/camera2/pipe/compat/SessionStateCallback;)V", "onSessionFinalizedWithTrace", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/view/Surface;", "outputs", "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;", "createCaptureSession", "(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z", "Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;", "config", "createExtensionSession", "(Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;)Z", "Landroid/hardware/camera2/params/InputConfiguration;", PluginsConstants.Settings.TYPE_INPUT, "createReprocessableCaptureSession", "(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z", "createConstrainedHighSpeedCaptureSession", "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;", "outputConfigurations", "createCaptureSessionByOutputConfigurations", "Landroidx/camera/camera2/pipe/compat/InputConfigData;", "inputConfig", "createReprocessableCaptureSessionByConfigurations", "(Landroidx/camera/camera2/pipe/compat/InputConfigData;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z", "Landroidx/camera/camera2/pipe/compat/SessionConfigData;", "(Landroidx/camera/camera2/pipe/compat/SessionConfigData;)Z", "Landroidx/camera/camera2/pipe/RequestTemplate;", "template", "Landroid/hardware/camera2/CaptureRequest$Builder;", "createCaptureRequest-2PPcXtw", "(I)Landroid/hardware/camera2/CaptureRequest$Builder;", "createCaptureRequest", "Landroid/hardware/camera2/TotalCaptureResult;", "inputResult", "createReprocessCaptureRequest", "(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;", "Landroidx/camera/camera2/pipe/AudioRestrictionMode;", "mode", "onCameraAudioRestrictionUpdated-LwUUkyU", "(I)V", "onCameraAudioRestrictionUpdated", "onDeviceClosing", "()V", "onDeviceClosed", _UrlKt.FRAGMENT_ENCODE_SET, "T", "Lkotlin/reflect/KClass;", "type", "unwrapAs", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Landroidx/camera/camera2/pipe/CameraMetadata;", "Landroid/hardware/camera2/CameraDevice;", "Ljava/lang/String;", "getCameraId-Dz_R5H8", "Landroidx/camera/camera2/pipe/internal/CameraErrorListener;", "Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;", "Landroidx/camera/camera2/pipe/core/Threads;", "Lkotlinx/atomicfu/AtomicBoolean;", "closed", "Lkotlinx/atomicfu/AtomicBoolean;", "Lkotlinx/atomicfu/AtomicRef;", "_lastStateCallback", "Lkotlinx/atomicfu/AtomicRef;", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCameraDeviceWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraDeviceWrapper.kt\nandroidx/camera/camera2/pipe/compat/AndroidCameraDevice\n+ 2 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n+ 3 Exceptions.kt\nandroidx/camera/camera2/pipe/compat/ExceptionsKt\n+ 4 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 5 Timestamps.kt\nandroidx/camera/camera2/pipe/core/TimestampNs\n+ 6 Timestamps.kt\nandroidx/camera/camera2/pipe/core/Timestamps\n+ 7 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 8 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,714:1\n528#1:715\n529#1:724\n530#1:772\n528#1:775\n529#1:784\n530#1:837\n528#1:840\n529#1:849\n530#1:897\n528#1:900\n529#1:909\n530#1:957\n528#1:960\n529#1:969\n530#1:1021\n528#1:1024\n529#1:1033\n530#1:1085\n528#1:1088\n529#1:1097\n530#1:1183\n528#1:1186\n529#1:1195\n530#1:1243\n528#1:1244\n529#1:1253\n530#1:1301\n58#2,3:716\n71#2,4:719\n61#2:723\n63#2:762\n78#2,4:763\n64#2:767\n65#2:769\n58#2,3:776\n71#2,4:779\n61#2:783\n63#2:827\n78#2,4:828\n64#2:832\n65#2:834\n58#2,3:841\n71#2,4:844\n61#2:848\n63#2:887\n78#2,4:888\n64#2:892\n65#2:894\n58#2,3:901\n71#2,4:904\n61#2:908\n63#2:947\n78#2,4:948\n64#2:952\n65#2:954\n58#2,3:961\n71#2,4:964\n61#2:968\n63#2:1011\n78#2,4:1012\n64#2:1016\n65#2:1018\n58#2,3:1025\n71#2,4:1028\n61#2:1032\n63#2:1075\n78#2,4:1076\n64#2:1080\n65#2:1082\n58#2,3:1089\n71#2,4:1092\n61#2:1096\n48#2,2:1108\n71#2,4:1110\n50#2,3:1114\n78#2,4:1117\n48#2,2:1125\n71#2,4:1127\n50#2,3:1131\n78#2,4:1134\n63#2:1173\n78#2,4:1174\n64#2:1178\n65#2:1180\n58#2,3:1187\n71#2,4:1190\n61#2:1194\n63#2:1233\n78#2,4:1234\n64#2:1238\n65#2:1240\n58#2,3:1245\n71#2,4:1248\n61#2:1252\n63#2:1291\n78#2,4:1292\n64#2:1296\n65#2:1298\n48#2,2:1302\n71#2,4:1304\n50#2,3:1308\n78#2,4:1311\n48#2,2:1315\n71#2,4:1317\n50#2:1321\n52#2:1359\n78#2,4:1360\n58#2,3:1364\n71#2,4:1367\n61#2:1371\n63#2:1409\n78#2,4:1410\n64#2:1414\n65#2:1416\n48#2,2:1421\n71#2,4:1423\n50#2,3:1427\n78#2,4:1430\n48#2,2:1434\n71#2,4:1436\n50#2,3:1440\n78#2,4:1443\n53#3,6:725\n59#3,24:733\n83#3,3:759\n53#3,2:785\n55#3,4:792\n59#3,24:798\n83#3,3:824\n53#3,6:850\n59#3,24:858\n83#3,3:884\n53#3,6:910\n59#3,24:918\n83#3,3:944\n53#3,2:970\n55#3,4:976\n59#3,24:982\n83#3,3:1008\n53#3,2:1034\n55#3,4:1040\n59#3,24:1046\n83#3,3:1072\n53#3,2:1098\n55#3,4:1138\n59#3,24:1144\n83#3,3:1170\n53#3,6:1196\n59#3,24:1204\n83#3,3:1230\n53#3,6:1254\n59#3,24:1262\n83#3,3:1288\n53#3,6:1322\n59#3,24:1330\n83#3,3:1356\n53#3,6:1372\n59#3,24:1380\n83#3,3:1406\n71#4,2:731\n50#4,2:757\n71#4,2:773\n71#4,2:796\n50#4,2:822\n71#4,2:838\n71#4,2:856\n50#4,2:882\n71#4,2:898\n71#4,2:916\n50#4,2:942\n71#4,2:958\n71#4,2:980\n50#4,2:1006\n71#4,2:1022\n71#4,2:1044\n50#4,2:1070\n71#4,2:1086\n71#4,2:1104\n71#4,2:1106\n71#4,2:1142\n50#4,2:1168\n71#4,2:1184\n71#4,2:1202\n50#4,2:1228\n71#4,2:1260\n50#4,2:1286\n71#4,2:1328\n50#4,2:1354\n71#4,2:1378\n50#4,2:1404\n50#4:1417\n51#4:1420\n29#5:768\n29#5:833\n29#5:893\n29#5:953\n29#5:1017\n29#5:1081\n29#5:1179\n29#5:1239\n29#5:1297\n29#5:1415\n74#6,2:770\n74#6,2:835\n74#6,2:895\n74#6,2:955\n74#6,2:1019\n74#6,2:1083\n74#6,2:1181\n74#6,2:1241\n74#6,2:1299\n74#6,2:1418\n1563#7:787\n1634#7,3:788\n1563#7:972\n1634#7,3:973\n1563#7:1036\n1634#7,3:1037\n1563#7:1100\n1634#7,3:1101\n1563#7:1121\n1634#7,3:1122\n1#8:791\n*S KotlinDebug\n*F\n+ 1 CameraDeviceWrapper.kt\nandroidx/camera/camera2/pipe/compat/AndroidCameraDevice\n*L\n142#1:715\n142#1:724\n142#1:772\n184#1:775\n184#1:784\n184#1:837\n234#1:840\n234#1:849\n234#1:897\n272#1:900\n272#1:909\n272#1:957\n310#1:960\n310#1:969\n310#1:1021\n350#1:1024\n350#1:1033\n350#1:1085\n386#1:1088\n386#1:1097\n386#1:1183\n477#1:1186\n477#1:1195\n477#1:1243\n484#1:1244\n484#1:1253\n484#1:1301\n142#1:716,3\n142#1:719,4\n142#1:723\n142#1:762\n142#1:763,4\n142#1:767\n142#1:769\n184#1:776,3\n184#1:779,4\n184#1:783\n184#1:827\n184#1:828,4\n184#1:832\n184#1:834\n234#1:841,3\n234#1:844,4\n234#1:848\n234#1:887\n234#1:888,4\n234#1:892\n234#1:894\n272#1:901,3\n272#1:904,4\n272#1:908\n272#1:947\n272#1:948,4\n272#1:952\n272#1:954\n310#1:961,3\n310#1:964,4\n310#1:968\n310#1:1011\n310#1:1012,4\n310#1:1016\n310#1:1018\n350#1:1025,3\n350#1:1028,4\n350#1:1032\n350#1:1075\n350#1:1076,4\n350#1:1080\n350#1:1082\n386#1:1089,3\n386#1:1092,4\n386#1:1096\n442#1:1108,2\n442#1:1110,4\n442#1:1114,3\n442#1:1117,4\n460#1:1125,2\n460#1:1127,4\n460#1:1131,3\n460#1:1134,4\n386#1:1173\n386#1:1174,4\n386#1:1178\n386#1:1180\n477#1:1187,3\n477#1:1190,4\n477#1:1194\n477#1:1233\n477#1:1234,4\n477#1:1238\n477#1:1240\n484#1:1245,3\n484#1:1248,4\n484#1:1252\n484#1:1291\n484#1:1292,4\n484#1:1296\n484#1:1298\n490#1:1302,2\n490#1:1304,4\n490#1:1308,3\n490#1:1311,4\n496#1:1315,2\n496#1:1317,4\n496#1:1321\n496#1:1359\n496#1:1360,4\n528#1:1364,3\n528#1:1367,4\n528#1:1371\n528#1:1409\n528#1:1410,4\n528#1:1414\n528#1:1416\n543#1:1421,2\n543#1:1423,4\n543#1:1427,3\n543#1:1430,4\n547#1:1434,2\n547#1:1436,4\n547#1:1440,3\n547#1:1443,4\n142#1:725,6\n142#1:733,24\n142#1:759,3\n184#1:785,2\n184#1:792,4\n184#1:798,24\n184#1:824,3\n234#1:850,6\n234#1:858,24\n234#1:884,3\n272#1:910,6\n272#1:918,24\n272#1:944,3\n310#1:970,2\n310#1:976,4\n310#1:982,24\n310#1:1008,3\n350#1:1034,2\n350#1:1040,4\n350#1:1046,24\n350#1:1072,3\n386#1:1098,2\n386#1:1138,4\n386#1:1144,24\n386#1:1170,3\n477#1:1196,6\n477#1:1204,24\n477#1:1230,3\n484#1:1254,6\n484#1:1262,24\n484#1:1288,3\n497#1:1322,6\n497#1:1330,24\n497#1:1356,3\n529#1:1372,6\n529#1:1380,24\n529#1:1406,3\n142#1:731,2\n142#1:757,2\n163#1:773,2\n184#1:796,2\n184#1:822,2\n216#1:838,2\n234#1:856,2\n234#1:882,2\n255#1:898,2\n272#1:916,2\n272#1:942,2\n293#1:958,2\n310#1:980,2\n310#1:1006,2\n332#1:1022,2\n350#1:1044,2\n350#1:1070,2\n372#1:1086,2\n431#1:1104,2\n436#1:1106,2\n386#1:1142,2\n386#1:1168,2\n468#1:1184,2\n477#1:1202,2\n477#1:1228,2\n484#1:1260,2\n484#1:1286,2\n497#1:1328,2\n497#1:1354,2\n529#1:1378,2\n529#1:1404,2\n528#1:1417\n528#1:1420\n142#1:768\n184#1:833\n234#1:893\n272#1:953\n310#1:1017\n350#1:1081\n386#1:1179\n477#1:1239\n484#1:1297\n528#1:1415\n142#1:770,2\n184#1:835,2\n234#1:895,2\n272#1:955,2\n310#1:1019,2\n350#1:1083,2\n386#1:1181,2\n477#1:1241,2\n484#1:1299,2\n528#1:1418,2\n188#1:787\n188#1:788,3\n316#1:972\n316#1:973,3\n356#1:1036\n356#1:1037,3\n390#1:1100\n390#1:1101,3\n449#1:1121\n449#1:1122,3\n*E\n"})
public final class AndroidCameraDevice implements CameraDeviceWrapper {
    private final AtomicRef<SessionStateCallback> _lastStateCallback;
    private final CameraDevice cameraDevice;
    private final CameraErrorListener cameraErrorListener;
    private final String cameraId;
    private final CameraMetadata cameraMetadata;
    private final AtomicBoolean closed;
    private final CameraInterop.CaptureSessionListener interopCaptureSessionListener;
    private final Threads threads;

    public /* synthetic */ AndroidCameraDevice(CameraMetadata cameraMetadata, CameraDevice cameraDevice, String str, CameraErrorListener cameraErrorListener, CameraInterop.CaptureSessionListener captureSessionListener, Threads threads, DefaultConstructorMarker defaultConstructorMarker) {
        this(cameraMetadata, cameraDevice, str, cameraErrorListener, captureSessionListener, threads);
    }

    private AndroidCameraDevice(CameraMetadata cameraMetadata, CameraDevice cameraDevice, String str, CameraErrorListener cameraErrorListener, CameraInterop.CaptureSessionListener captureSessionListener, Threads threads) {
        this.cameraMetadata = cameraMetadata;
        this.cameraDevice = cameraDevice;
        this.cameraId = str;
        this.cameraErrorListener = cameraErrorListener;
        this.interopCaptureSessionListener = captureSessionListener;
        this.threads = threads;
        this.closed = AtomicFU.atomic(false);
        this._lastStateCallback = AtomicFU.atomic((Object) null);
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name and from getter */
    public String getCameraId() {
        return this.cameraId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v2, types: [int] */
    /* JADX WARN: Type inference failed for: r7v7, types: [int] */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createCaptureSession(List<? extends Surface> outputs, CameraCaptureSessionWrapper.StateCallback stateCallback) throws Throwable {
        String str;
        Debug debug;
        long j;
        ?? r7;
        String str2;
        boolean z;
        String str3;
        SessionStateCallback sessionStateCallback;
        boolean z2;
        Unit unit;
        ?? r72;
        Pair<Boolean, SessionStateCallback> pairCheckAndSetStateCallback = checkAndSetStateCallback(stateCallback);
        boolean zBooleanValue = pairCheckAndSetStateCallback.component1().booleanValue();
        SessionStateCallback sessionStateCallbackComponent2 = pairCheckAndSetStateCallback.component2();
        if (!zBooleanValue) {
            return false;
        }
        if (sessionStateCallbackComponent2 != null) {
            onSessionDisconnectedWithTrace(sessionStateCallbackComponent2);
        }
        Debug debug2 = Debug.INSTANCE;
        String str4 = "CXCP#createCaptureSession-" + getCameraId();
        long jMo1575nowvQl9yQU = debug2.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU();
        try {
            Trace.beginSection(str4);
            String cameraId = getCameraId();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            try {
                sessionStateCallback = sessionStateCallbackComponent2;
                try {
                    debug = debug2;
                    str3 = cameraId;
                    str2 = "%.3f ms";
                    z = true;
                    j = jMo1575nowvQl9yQU;
                    try {
                        try {
                            this.cameraDevice.createCaptureSession(outputs, new AndroidCaptureSessionStateCallback(this, stateCallback, sessionStateCallback, this.cameraErrorListener, this.interopCaptureSessionListener, this.threads.getCamera2Handler()), this.threads.getCamera2Handler());
                            unit = Unit.INSTANCE;
                            z2 = false;
                            r72 = z;
                        } catch (Exception e) {
                            e = e;
                            if (e instanceof CameraAccessException) {
                                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                    android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                                }
                                cameraErrorListener.mo1518onCameraError3M5Xam4(str3, CameraError.INSTANCE.m1255fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z);
                            } else {
                                if (!(e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                                    if (!(e instanceof IllegalStateException)) {
                                        throw e;
                                    }
                                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                        android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                                    }
                                }
                                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                    android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                                }
                                z2 = false;
                                cameraErrorListener.mo1518onCameraError3M5Xam4(str3, CameraError.INSTANCE.m1266getERROR_GRAPH_CONFIGv7Vf74A(), false);
                                unit = null;
                                r72 = z;
                            }
                            z2 = false;
                            unit = null;
                            r72 = z;
                        }
                    } catch (Throwable th) {
                        th = th;
                        str = str2;
                        r7 = z;
                        Trace.endSection();
                        long jM1567constructorimpl = DurationNs.m1567constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j);
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(str4);
                            sb.append(" - ");
                            Timestamps timestamps = Timestamps.INSTANCE;
                            sb.append(String.format(null, str, Arrays.copyOf(new Object[]{Double.valueOf(jM1567constructorimpl / 1000000.0d)}, (int) r7)));
                            android.util.Log.d("CXCP", sb.toString());
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                    str2 = "%.3f ms";
                    z = true;
                    j = jMo1575nowvQl9yQU;
                    debug = debug2;
                    str3 = cameraId;
                } catch (Throwable th2) {
                    th = th2;
                    str2 = "%.3f ms";
                    z = true;
                    j = jMo1575nowvQl9yQU;
                    debug = debug2;
                }
            } catch (Exception e3) {
                e = e3;
                debug = debug2;
                j = jMo1575nowvQl9yQU;
                str3 = cameraId;
                str2 = "%.3f ms";
                z = true;
                sessionStateCallback = sessionStateCallbackComponent2;
            } catch (Throwable th3) {
                th = th3;
                debug = debug2;
                j = jMo1575nowvQl9yQU;
                str2 = "%.3f ms";
                z = true;
            }
            Trace.endSection();
            long jM1567constructorimpl2 = DurationNs.m1567constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j);
            Log log = Log.INSTANCE;
            if (log.getDEBUG_LOGGABLE()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str4);
                sb2.append(" - ");
                Timestamps timestamps2 = Timestamps.INSTANCE;
                sb2.append(String.format(null, str2, Arrays.copyOf(new Object[]{Double.valueOf(jM1567constructorimpl2 / 1000000.0d)}, (int) r72)));
                android.util.Log.d("CXCP", sb2.toString());
            }
            if (unit == null) {
                if (log.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to create capture session from " + this.cameraDevice + ". Finalizing previous session");
                }
                if (sessionStateCallback != null) {
                    onSessionFinalizedWithTrace(sessionStateCallback);
                }
            }
            return unit != null ? r72 : z2;
        } catch (Throwable th4) {
            th = th4;
            str = "%.3f ms";
            debug = debug2;
            j = jMo1575nowvQl9yQU;
            r7 = 1;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0138 A[Catch: all -> 0x0103, TryCatch #0 {all -> 0x0103, blocks: (B:33:0x00dc, B:35:0x00e9, B:37:0x00ef, B:39:0x00ff, B:44:0x010a, B:45:0x0111, B:46:0x0112, B:54:0x0134, B:56:0x0138, B:58:0x0140, B:59:0x0158, B:61:0x0165, B:63:0x0169, B:65:0x016d, B:67:0x0171, B:70:0x0176, B:72:0x017a, B:74:0x0182, B:75:0x0188, B:76:0x0189, B:78:0x0191, B:79:0x01a9), top: B:104:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0165 A[Catch: all -> 0x0103, TryCatch #0 {all -> 0x0103, blocks: (B:33:0x00dc, B:35:0x00e9, B:37:0x00ef, B:39:0x00ff, B:44:0x010a, B:45:0x0111, B:46:0x0112, B:54:0x0134, B:56:0x0138, B:58:0x0140, B:59:0x0158, B:61:0x0165, B:63:0x0169, B:65:0x016d, B:67:0x0171, B:70:0x0176, B:72:0x017a, B:74:0x0182, B:75:0x0188, B:76:0x0189, B:78:0x0191, B:79:0x01a9), top: B:104:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0225 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x024c  */
    /* JADX WARN: Type inference failed for: r10v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v2, types: [int] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v8, types: [int] */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean createExtensionSession(ExtensionSessionConfigData config) throws Throwable {
        String str;
        Debug debug;
        long j;
        ?? r7;
        double d;
        String cameraId;
        CameraErrorListener cameraErrorListener;
        SessionStateCallback sessionStateCallback;
        String str2;
        Debug debug2;
        long j2;
        boolean z;
        String str3;
        Unit unit;
        ?? r72;
        Log log;
        int iIntValue;
        ArrayList arrayList;
        ?? r73 = "%.3f ms";
        CameraExtensionSessionWrapper.StateCallback extensionStateCallback = config.getExtensionStateCallback();
        if (extensionStateCallback == null) {
            Segment$$ExternalSyntheticBUOutline1.m925m("extensionStateCallback must be set to create Extension session");
            return false;
        }
        if (config.getExtensionMode() == null) {
            Segment$$ExternalSyntheticBUOutline1.m925m("extensionMode must be set to create Extension session");
            return false;
        }
        Pair<Boolean, SessionStateCallback> pairCheckAndSetStateCallback = checkAndSetStateCallback(extensionStateCallback);
        boolean zBooleanValue = pairCheckAndSetStateCallback.component1().booleanValue();
        SessionStateCallback sessionStateCallbackComponent2 = pairCheckAndSetStateCallback.component2();
        if (!zBooleanValue) {
            return false;
        }
        if (sessionStateCallbackComponent2 != null) {
            onSessionDisconnectedWithTrace(sessionStateCallbackComponent2);
        }
        Debug debug3 = Debug.INSTANCE;
        String str4 = "CXCP#createExtensionSession-" + getCameraId();
        long jMo1575nowvQl9yQU = debug3.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU();
        try {
            Trace.beginSection(str4);
            cameraId = getCameraId();
            d = 1000000.0d;
        } catch (Throwable th) {
            th = th;
            str = "%.3f ms";
            debug = debug3;
            j = jMo1575nowvQl9yQU;
            r7 = 1;
            d = 1000000.0d;
        }
        try {
            try {
                cameraErrorListener = this.cameraErrorListener;
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                try {
                    iIntValue = config.getExtensionMode().intValue();
                    List<OutputConfigurationWrapper> outputConfigurations = config.getOutputConfigurations();
                    arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(outputConfigurations, 10));
                    Iterator it = outputConfigurations.iterator();
                    while (it.hasNext()) {
                        int i = iIntValue;
                        arrayList.add((OutputConfiguration) ((OutputConfigurationWrapper) it.next()).unwrapAs(Reflection.getOrCreateKotlinClass(OutputConfiguration.class)));
                        iIntValue = i;
                    }
                    sessionStateCallback = sessionStateCallbackComponent2;
                } catch (Exception e) {
                    e = e;
                    sessionStateCallback = sessionStateCallbackComponent2;
                }
                try {
                    try {
                        str2 = "%.3f ms";
                        debug2 = debug3;
                        str3 = cameraId;
                        z = true;
                        r72 = 1;
                        j2 = jMo1575nowvQl9yQU;
                        try {
                            ExtensionSessionConfiguration extensionSessionConfigurationNewExtensionSessionConfiguration = Api31Compat.newExtensionSessionConfiguration(iIntValue, arrayList, config.getExecutor(), new AndroidExtensionSessionStateCallback(this, extensionStateCallback, sessionStateCallback, this.cameraErrorListener, this.interopCaptureSessionListener, config.getExecutor()));
                            if (config.getPostviewOutputConfiguration() != null && Build.VERSION.SDK_INT >= 34) {
                                OutputConfiguration outputConfiguration = (OutputConfiguration) config.getPostviewOutputConfiguration().unwrapAs(Reflection.getOrCreateKotlinClass(OutputConfiguration.class));
                                if (outputConfiguration == null) {
                                    throw new IllegalStateException("Failed to unwrap Postview OutputConfiguration");
                                }
                                Api34Compat.setPostviewOutputConfiguration(extensionSessionConfigurationNewExtensionSessionConfiguration, outputConfiguration);
                            }
                            Api31Compat.createExtensionCaptureSession(this.cameraDevice, extensionSessionConfigurationNewExtensionSessionConfiguration);
                            unit = Unit.INSTANCE;
                        } catch (Exception e2) {
                            e = e2;
                            if (!(e instanceof CameraAccessException)) {
                                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                    android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                                }
                                cameraErrorListener.mo1518onCameraError3M5Xam4(str3, CameraError.INSTANCE.m1255fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z);
                            } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                    android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                                }
                                cameraErrorListener.mo1518onCameraError3M5Xam4(str3, CameraError.INSTANCE.m1266getERROR_GRAPH_CONFIGv7Vf74A(), false);
                            } else {
                                if (!(e instanceof IllegalStateException)) {
                                    throw e;
                                }
                                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                    android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                                }
                            }
                            unit = null;
                            r72 = z;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        str2 = "%.3f ms";
                        debug2 = debug3;
                        j2 = jMo1575nowvQl9yQU;
                        str3 = cameraId;
                        z = true;
                    }
                } catch (Exception e4) {
                    e = e4;
                    str2 = "%.3f ms";
                    debug2 = debug3;
                    j2 = jMo1575nowvQl9yQU;
                    z = true;
                    str3 = cameraId;
                    if (!(e instanceof CameraAccessException)) {
                    }
                    unit = null;
                    r72 = z;
                    Trace.endSection();
                    long jM1567constructorimpl = DurationNs.m1567constructorimpl(debug2.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j2);
                    log = Log.INSTANCE;
                    if (log.getDEBUG_LOGGABLE()) {
                    }
                    if (unit == null) {
                    }
                    if (unit == null) {
                    }
                }
                Trace.endSection();
                long jM1567constructorimpl2 = DurationNs.m1567constructorimpl(debug2.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j2);
                log = Log.INSTANCE;
                if (log.getDEBUG_LOGGABLE()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str4);
                    sb.append(" - ");
                    Timestamps timestamps = Timestamps.INSTANCE;
                    sb.append(String.format(null, str2, Arrays.copyOf(new Object[]{Double.valueOf(jM1567constructorimpl2 / 1000000.0d)}, (int) r72)));
                    android.util.Log.d("CXCP", sb.toString());
                }
                if (unit == null) {
                    if (log.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to create extension session from " + this.cameraDevice + ". Finalizing previous session");
                    }
                    if (sessionStateCallback != null) {
                        onSessionFinalizedWithTrace(sessionStateCallback);
                    }
                }
                if (unit == null) {
                    return r72;
                }
                return false;
            } catch (Throwable th3) {
                th = th3;
                debug = debug3;
                j = jMo1575nowvQl9yQU;
                r73 = 1;
                str = "%.3f ms";
                r7 = r73;
                Trace.endSection();
                long jM1567constructorimpl3 = DurationNs.m1567constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str4);
                    sb2.append(" - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    sb2.append(String.format(null, str, Arrays.copyOf(new Object[]{Double.valueOf(jM1567constructorimpl3 / d)}, (int) r7)));
                    android.util.Log.d("CXCP", sb2.toString());
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            str = "%.3f ms";
            debug = debug3;
            j = jMo1575nowvQl9yQU;
            r7 = 1;
            Trace.endSection();
            long jM1567constructorimpl32 = DurationNs.m1567constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01da  */
    /* JADX WARN: Type inference failed for: r12v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v2, types: [int] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v7, types: [int] */
    /* JADX WARN: Type inference failed for: r7v8 */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean createReprocessableCaptureSession(InputConfiguration input, List<? extends Surface> outputs, CameraCaptureSessionWrapper.StateCallback stateCallback) throws Throwable {
        String str;
        Debug debug;
        long j;
        ?? r7;
        String str2;
        Debug debug2;
        long j2;
        String str3;
        String str4;
        boolean z;
        SessionStateCallback sessionStateCallback;
        boolean z2;
        Unit unit;
        ?? r72;
        ?? r73 = "%.3f ms";
        Pair<Boolean, SessionStateCallback> pairCheckAndSetStateCallback = checkAndSetStateCallback(stateCallback);
        boolean zBooleanValue = pairCheckAndSetStateCallback.component1().booleanValue();
        SessionStateCallback sessionStateCallbackComponent2 = pairCheckAndSetStateCallback.component2();
        if (!zBooleanValue) {
            return false;
        }
        if (sessionStateCallbackComponent2 != null) {
            onSessionDisconnectedWithTrace(sessionStateCallbackComponent2);
        }
        Debug debug3 = Debug.INSTANCE;
        String str5 = "CXCP#createReprocessableCaptureSession-" + getCameraId();
        long jMo1575nowvQl9yQU = debug3.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU();
        try {
            try {
                Trace.beginSection(str5);
                String cameraId = getCameraId();
                CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                try {
                    sessionStateCallback = sessionStateCallbackComponent2;
                    try {
                        debug2 = debug3;
                        str3 = cameraId;
                        str4 = "%.3f ms";
                        z = true;
                        j2 = jMo1575nowvQl9yQU;
                        try {
                            this.cameraDevice.createReprocessableCaptureSession(input, outputs, new AndroidCaptureSessionStateCallback(this, stateCallback, sessionStateCallback, this.cameraErrorListener, this.interopCaptureSessionListener, this.threads.getCamera2Handler()), this.threads.getCamera2Handler());
                            unit = Unit.INSTANCE;
                            z2 = false;
                            r72 = z;
                        } catch (Exception e) {
                            e = e;
                            if (e instanceof CameraAccessException) {
                                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                    android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                                }
                                cameraErrorListener.mo1518onCameraError3M5Xam4(str3, CameraError.INSTANCE.m1255fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z);
                            } else {
                                if (!(e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                                    if (!(e instanceof IllegalStateException)) {
                                        throw e;
                                    }
                                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                        android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                                    }
                                }
                                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                    android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                                }
                                z2 = false;
                                cameraErrorListener.mo1518onCameraError3M5Xam4(str3, CameraError.INSTANCE.m1266getERROR_GRAPH_CONFIGv7Vf74A(), false);
                                unit = null;
                                r72 = z;
                            }
                            z2 = false;
                            unit = null;
                            r72 = z;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        str4 = "%.3f ms";
                        z = true;
                        j2 = jMo1575nowvQl9yQU;
                        debug2 = debug3;
                        str3 = cameraId;
                    } catch (Throwable th) {
                        th = th;
                        str2 = "%.3f ms";
                        r73 = 1;
                        j = jMo1575nowvQl9yQU;
                        debug = debug3;
                        str = str2;
                        r7 = r73;
                        Trace.endSection();
                        long jM1567constructorimpl = DurationNs.m1567constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j);
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        }
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                    debug2 = debug3;
                    j2 = jMo1575nowvQl9yQU;
                    str3 = cameraId;
                    str4 = "%.3f ms";
                    z = true;
                    sessionStateCallback = sessionStateCallbackComponent2;
                } catch (Throwable th2) {
                    th = th2;
                    debug = debug3;
                    j = jMo1575nowvQl9yQU;
                    str2 = "%.3f ms";
                    r73 = 1;
                }
                Trace.endSection();
                long jM1567constructorimpl2 = DurationNs.m1567constructorimpl(debug2.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j2);
                Log log = Log.INSTANCE;
                if (log.getDEBUG_LOGGABLE()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str5);
                    sb.append(" - ");
                    Timestamps timestamps = Timestamps.INSTANCE;
                    sb.append(String.format(null, str4, Arrays.copyOf(new Object[]{Double.valueOf(jM1567constructorimpl2 / 1000000.0d)}, (int) r72)));
                    android.util.Log.d("CXCP", sb.toString());
                }
                if (unit == null) {
                    if (log.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to create reprocess session from " + this.cameraDevice + ". Finalizing previous session");
                    }
                    if (sessionStateCallback != null) {
                        onSessionFinalizedWithTrace(sessionStateCallback);
                    }
                }
                return unit != null ? r72 : z2;
            } catch (Throwable th3) {
                th = th3;
                str = "%.3f ms";
                debug = debug3;
                j = jMo1575nowvQl9yQU;
                r7 = 1;
                Trace.endSection();
                long jM1567constructorimpl3 = DurationNs.m1567constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str5);
                    sb2.append(" - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    sb2.append(String.format(null, str, Arrays.copyOf(new Object[]{Double.valueOf(jM1567constructorimpl3 / 1000000.0d)}, (int) r7)));
                    android.util.Log.d("CXCP", sb2.toString());
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v2, types: [int] */
    /* JADX WARN: Type inference failed for: r7v7, types: [int] */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createConstrainedHighSpeedCaptureSession(List<? extends Surface> outputs, CameraCaptureSessionWrapper.StateCallback stateCallback) throws Throwable {
        String str;
        Debug debug;
        long j;
        ?? r7;
        String str2;
        boolean z;
        String str3;
        SessionStateCallback sessionStateCallback;
        boolean z2;
        Unit unit;
        ?? r72;
        Pair<Boolean, SessionStateCallback> pairCheckAndSetStateCallback = checkAndSetStateCallback(stateCallback);
        boolean zBooleanValue = pairCheckAndSetStateCallback.component1().booleanValue();
        SessionStateCallback sessionStateCallbackComponent2 = pairCheckAndSetStateCallback.component2();
        if (!zBooleanValue) {
            return false;
        }
        if (sessionStateCallbackComponent2 != null) {
            onSessionDisconnectedWithTrace(sessionStateCallbackComponent2);
        }
        Debug debug2 = Debug.INSTANCE;
        String str4 = "CXCP#createConstrainedHighSpeedCaptureSession-" + getCameraId();
        long jMo1575nowvQl9yQU = debug2.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU();
        try {
            Trace.beginSection(str4);
            String cameraId = getCameraId();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            try {
                sessionStateCallback = sessionStateCallbackComponent2;
                try {
                    debug = debug2;
                    str3 = cameraId;
                    str2 = "%.3f ms";
                    z = true;
                    j = jMo1575nowvQl9yQU;
                    try {
                        try {
                            this.cameraDevice.createConstrainedHighSpeedCaptureSession(outputs, new AndroidCaptureSessionStateCallback(this, stateCallback, sessionStateCallback, this.cameraErrorListener, this.interopCaptureSessionListener, this.threads.getCamera2Handler()), this.threads.getCamera2Handler());
                            unit = Unit.INSTANCE;
                            z2 = false;
                            r72 = z;
                        } catch (Exception e) {
                            e = e;
                            if (e instanceof CameraAccessException) {
                                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                    android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                                }
                                cameraErrorListener.mo1518onCameraError3M5Xam4(str3, CameraError.INSTANCE.m1255fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z);
                            } else {
                                if (!(e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                                    if (!(e instanceof IllegalStateException)) {
                                        throw e;
                                    }
                                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                        android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                                    }
                                }
                                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                    android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                                }
                                z2 = false;
                                cameraErrorListener.mo1518onCameraError3M5Xam4(str3, CameraError.INSTANCE.m1266getERROR_GRAPH_CONFIGv7Vf74A(), false);
                                unit = null;
                                r72 = z;
                            }
                            z2 = false;
                            unit = null;
                            r72 = z;
                        }
                    } catch (Throwable th) {
                        th = th;
                        str = str2;
                        r7 = z;
                        Trace.endSection();
                        long jM1567constructorimpl = DurationNs.m1567constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j);
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(str4);
                            sb.append(" - ");
                            Timestamps timestamps = Timestamps.INSTANCE;
                            sb.append(String.format(null, str, Arrays.copyOf(new Object[]{Double.valueOf(jM1567constructorimpl / 1000000.0d)}, (int) r7)));
                            android.util.Log.d("CXCP", sb.toString());
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                    str2 = "%.3f ms";
                    z = true;
                    j = jMo1575nowvQl9yQU;
                    debug = debug2;
                    str3 = cameraId;
                } catch (Throwable th2) {
                    th = th2;
                    str2 = "%.3f ms";
                    z = true;
                    j = jMo1575nowvQl9yQU;
                    debug = debug2;
                }
            } catch (Exception e3) {
                e = e3;
                debug = debug2;
                j = jMo1575nowvQl9yQU;
                str3 = cameraId;
                str2 = "%.3f ms";
                z = true;
                sessionStateCallback = sessionStateCallbackComponent2;
            } catch (Throwable th3) {
                th = th3;
                debug = debug2;
                j = jMo1575nowvQl9yQU;
                str2 = "%.3f ms";
                z = true;
            }
            Trace.endSection();
            long jM1567constructorimpl2 = DurationNs.m1567constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j);
            Log log = Log.INSTANCE;
            if (log.getDEBUG_LOGGABLE()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str4);
                sb2.append(" - ");
                Timestamps timestamps2 = Timestamps.INSTANCE;
                sb2.append(String.format(null, str2, Arrays.copyOf(new Object[]{Double.valueOf(jM1567constructorimpl2 / 1000000.0d)}, (int) r72)));
                android.util.Log.d("CXCP", sb2.toString());
            }
            if (unit == null) {
                if (log.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to create capture session from " + this.cameraDevice + ". Finalizing previous session");
                }
                if (sessionStateCallback != null) {
                    onSessionFinalizedWithTrace(sessionStateCallback);
                }
            }
            return unit != null ? r72 : z2;
        } catch (Throwable th4) {
            th = th4;
            str = "%.3f ms";
            debug = debug2;
            j = jMo1575nowvQl9yQU;
            r7 = 1;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00db A[Catch: all -> 0x00d0, TryCatch #0 {all -> 0x00d0, blocks: (B:24:0x00bd, B:32:0x00d7, B:34:0x00db, B:36:0x00e3, B:37:0x00fb, B:40:0x0109, B:42:0x010d, B:44:0x0111, B:46:0x0115, B:49:0x011a, B:51:0x011e, B:53:0x0126, B:54:0x012c, B:55:0x012d, B:57:0x0135, B:58:0x014d), top: B:79:0x0050 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0109 A[Catch: all -> 0x00d0, TryCatch #0 {all -> 0x00d0, blocks: (B:24:0x00bd, B:32:0x00d7, B:34:0x00db, B:36:0x00e3, B:37:0x00fb, B:40:0x0109, B:42:0x010d, B:44:0x0111, B:46:0x0115, B:49:0x011a, B:51:0x011e, B:53:0x0126, B:54:0x012c, B:55:0x012d, B:57:0x0135, B:58:0x014d), top: B:79:0x0050 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01ed  */
    /* JADX WARN: Type inference failed for: r10v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r14v5, types: [int] */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean createCaptureSessionByOutputConfigurations(List<? extends OutputConfigurationWrapper> outputConfigurations, CameraCaptureSessionWrapper.StateCallback stateCallback) throws Throwable {
        Debug debug;
        long j;
        int i;
        double d;
        String cameraId;
        SessionStateCallback sessionStateCallback;
        Debug debug2;
        long j2;
        boolean z;
        String str;
        boolean z2;
        Unit unit;
        ?? r14;
        Log log;
        Pair<Boolean, SessionStateCallback> pairCheckAndSetStateCallback = checkAndSetStateCallback(stateCallback);
        boolean zBooleanValue = pairCheckAndSetStateCallback.component1().booleanValue();
        SessionStateCallback sessionStateCallbackComponent2 = pairCheckAndSetStateCallback.component2();
        if (!zBooleanValue) {
            return false;
        }
        if (sessionStateCallbackComponent2 != null) {
            onSessionDisconnectedWithTrace(sessionStateCallbackComponent2);
        }
        Debug debug3 = Debug.INSTANCE;
        String str2 = "CXCP#createCaptureSessionByOutputConfigurations-" + getCameraId();
        long jMo1575nowvQl9yQU = debug3.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU();
        try {
            Trace.beginSection(str2);
            cameraId = getCameraId();
            d = 1000000.0d;
        } catch (Throwable th) {
            th = th;
            debug = debug3;
            j = jMo1575nowvQl9yQU;
            i = 1;
            d = 1000000.0d;
        }
        try {
            try {
                CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                try {
                    CameraDevice cameraDevice = this.cameraDevice;
                    List<? extends OutputConfigurationWrapper> list = outputConfigurations;
                    ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add((OutputConfiguration) ((OutputConfigurationWrapper) it.next()).unwrapAs(Reflection.getOrCreateKotlinClass(OutputConfiguration.class)));
                        cameraDevice = cameraDevice;
                    }
                    sessionStateCallback = sessionStateCallbackComponent2;
                    try {
                        debug2 = debug3;
                        str = cameraId;
                        j2 = jMo1575nowvQl9yQU;
                        z = true;
                        r14 = 1;
                    } catch (Exception e) {
                        e = e;
                        debug2 = debug3;
                        j2 = jMo1575nowvQl9yQU;
                        z = true;
                        str = cameraId;
                        if (e instanceof CameraAccessException) {
                            if (!(e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                                if (!(e instanceof IllegalStateException)) {
                                    throw e;
                                }
                                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                    android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                                }
                            }
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                            }
                            z2 = false;
                            cameraErrorListener.mo1518onCameraError3M5Xam4(str, CameraError.INSTANCE.m1266getERROR_GRAPH_CONFIGv7Vf74A(), false);
                            unit = null;
                            r14 = z;
                            Trace.endSection();
                            long jM1567constructorimpl = DurationNs.m1567constructorimpl(debug2.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j2);
                            log = Log.INSTANCE;
                            if (log.getDEBUG_LOGGABLE()) {
                            }
                            if (unit == null) {
                            }
                            if (unit != null) {
                            }
                        } else {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                            }
                            cameraErrorListener.mo1518onCameraError3M5Xam4(str, CameraError.INSTANCE.m1255fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z);
                        }
                        z2 = false;
                        unit = null;
                        r14 = z;
                        Trace.endSection();
                        long jM1567constructorimpl2 = DurationNs.m1567constructorimpl(debug2.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j2);
                        log = Log.INSTANCE;
                        if (log.getDEBUG_LOGGABLE()) {
                        }
                        if (unit == null) {
                        }
                        if (unit != null) {
                        }
                    }
                    try {
                        Api24Compat.createCaptureSessionByOutputConfigurations(cameraDevice, arrayList, new AndroidCaptureSessionStateCallback(this, stateCallback, sessionStateCallback, this.cameraErrorListener, this.interopCaptureSessionListener, this.threads.getCamera2Handler()), this.threads.getCamera2Handler());
                        unit = Unit.INSTANCE;
                        z2 = false;
                    } catch (Exception e2) {
                        e = e2;
                        if (e instanceof CameraAccessException) {
                        }
                        z2 = false;
                        unit = null;
                        r14 = z;
                    }
                } catch (Exception e3) {
                    e = e3;
                    sessionStateCallback = sessionStateCallbackComponent2;
                }
                Trace.endSection();
                long jM1567constructorimpl22 = DurationNs.m1567constructorimpl(debug2.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j2);
                log = Log.INSTANCE;
                if (log.getDEBUG_LOGGABLE()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str2);
                    sb.append(" - ");
                    Timestamps timestamps = Timestamps.INSTANCE;
                    sb.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1567constructorimpl22 / 1000000.0d)}, (int) r14)));
                    android.util.Log.d("CXCP", sb.toString());
                }
                if (unit == null) {
                    if (log.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to create capture session from " + this.cameraDevice + ". Finalizing previous session");
                    }
                    if (sessionStateCallback != null) {
                        onSessionFinalizedWithTrace(sessionStateCallback);
                    }
                }
                return unit != null ? r14 : z2;
            } catch (Throwable th2) {
                th = th2;
                Trace.endSection();
                long jM1567constructorimpl3 = DurationNs.m1567constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str2);
                    sb2.append(" - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    sb2.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1567constructorimpl3 / d)}, i)));
                    android.util.Log.d("CXCP", sb2.toString());
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            debug = debug3;
            j = jMo1575nowvQl9yQU;
            i = 1;
            Trace.endSection();
            long jM1567constructorimpl32 = DurationNs.m1567constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0101 A[Catch: all -> 0x00eb, TryCatch #5 {all -> 0x00eb, blocks: (B:25:0x00d8, B:35:0x00fd, B:37:0x0101, B:39:0x0109, B:40:0x0121, B:43:0x012f, B:45:0x0133, B:47:0x0137, B:49:0x013b, B:52:0x0140, B:54:0x0144, B:56:0x014c, B:57:0x0152, B:58:0x0153, B:60:0x015b, B:61:0x0173), top: B:82:0x00d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x012f A[Catch: all -> 0x00eb, TryCatch #5 {all -> 0x00eb, blocks: (B:25:0x00d8, B:35:0x00fd, B:37:0x0101, B:39:0x0109, B:40:0x0121, B:43:0x012f, B:45:0x0133, B:47:0x0137, B:49:0x013b, B:52:0x0140, B:54:0x0144, B:56:0x014c, B:57:0x0152, B:58:0x0153, B:60:0x015b, B:61:0x0173), top: B:82:0x00d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01ef  */
    /* JADX WARN: Type inference failed for: r10v9, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v8, types: [int] */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean createReprocessableCaptureSessionByConfigurations(InputConfigData inputConfig, List<? extends OutputConfigurationWrapper> outputs, CameraCaptureSessionWrapper.StateCallback stateCallback) throws Throwable {
        String str;
        Debug debug;
        long j;
        int i;
        double d;
        SessionStateCallback sessionStateCallback;
        String str2;
        boolean z;
        String str3;
        boolean z2;
        Unit unit;
        ?? r7;
        Log log;
        CameraDevice cameraDevice;
        InputConfiguration inputConfiguration;
        ArrayList arrayList;
        Pair<Boolean, SessionStateCallback> pairCheckAndSetStateCallback = checkAndSetStateCallback(stateCallback);
        boolean zBooleanValue = pairCheckAndSetStateCallback.component1().booleanValue();
        SessionStateCallback sessionStateCallbackComponent2 = pairCheckAndSetStateCallback.component2();
        if (!zBooleanValue) {
            return false;
        }
        if (sessionStateCallbackComponent2 != null) {
            onSessionDisconnectedWithTrace(sessionStateCallbackComponent2);
        }
        Debug debug2 = Debug.INSTANCE;
        String str4 = "CXCP#createReprocessableCaptureSessionByConfigurations-" + getCameraId();
        long jMo1575nowvQl9yQU = debug2.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU();
        try {
            Trace.beginSection(str4);
            String cameraId = getCameraId();
            d = 1000000.0d;
            try {
                CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                try {
                    try {
                        cameraDevice = this.cameraDevice;
                        inputConfiguration = new InputConfiguration(inputConfig.getWidth(), inputConfig.getHeight(), inputConfig.getFormat());
                        List<? extends OutputConfigurationWrapper> list = outputs;
                        arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            Iterator it2 = it;
                            arrayList.add((OutputConfiguration) ((OutputConfigurationWrapper) it.next()).unwrapAs(Reflection.getOrCreateKotlinClass(OutputConfiguration.class)));
                            it = it2;
                        }
                        sessionStateCallback = sessionStateCallbackComponent2;
                        try {
                            str2 = "%.3f ms";
                            debug = debug2;
                            i = 1;
                            r7 = 1;
                            z = true;
                            str3 = cameraId;
                            j = jMo1575nowvQl9yQU;
                        } catch (Exception e) {
                            e = e;
                            str2 = "%.3f ms";
                            debug = debug2;
                            j = jMo1575nowvQl9yQU;
                            z = true;
                            str3 = cameraId;
                            if (e instanceof CameraAccessException) {
                            }
                            z2 = false;
                            unit = null;
                            r7 = z;
                            Trace.endSection();
                            long jM1567constructorimpl = DurationNs.m1567constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j);
                            log = Log.INSTANCE;
                            if (log.getDEBUG_LOGGABLE()) {
                            }
                            if (unit == null) {
                            }
                            if (unit == null) {
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        str2 = "%.3f ms";
                        debug = debug2;
                        j = jMo1575nowvQl9yQU;
                        i = 1;
                    }
                } catch (Exception e2) {
                    e = e2;
                    sessionStateCallback = sessionStateCallbackComponent2;
                }
                try {
                    try {
                        Api24Compat.createReprocessableCaptureSessionByConfigurations(cameraDevice, inputConfiguration, arrayList, new AndroidCaptureSessionStateCallback(this, stateCallback, sessionStateCallback, this.cameraErrorListener, this.interopCaptureSessionListener, this.threads.getCamera2Handler()), this.threads.getCamera2Handler());
                        unit = Unit.INSTANCE;
                        z2 = false;
                    } catch (Exception e3) {
                        e = e3;
                        if (e instanceof CameraAccessException) {
                            if (!(e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                                if (!(e instanceof IllegalStateException)) {
                                    throw e;
                                }
                                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                    android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                                }
                            }
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                            }
                            z2 = false;
                            cameraErrorListener.mo1518onCameraError3M5Xam4(str3, CameraError.INSTANCE.m1266getERROR_GRAPH_CONFIGv7Vf74A(), false);
                            unit = null;
                            r7 = z;
                        } else {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                            }
                            cameraErrorListener.mo1518onCameraError3M5Xam4(str3, CameraError.INSTANCE.m1255fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z);
                        }
                        z2 = false;
                        unit = null;
                        r7 = z;
                    }
                    Trace.endSection();
                    long jM1567constructorimpl2 = DurationNs.m1567constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j);
                    log = Log.INSTANCE;
                    if (log.getDEBUG_LOGGABLE()) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(str4);
                        sb.append(" - ");
                        Timestamps timestamps = Timestamps.INSTANCE;
                        sb.append(String.format(null, str2, Arrays.copyOf(new Object[]{Double.valueOf(jM1567constructorimpl2 / 1000000.0d)}, (int) r7)));
                        android.util.Log.d("CXCP", sb.toString());
                    }
                    if (unit == null) {
                        if (log.getWARN_LOGGABLE()) {
                            android.util.Log.w("CXCP", "Failed to create reprocess session from " + this.cameraDevice + ". Finalizing previous session");
                        }
                        if (sessionStateCallback != null) {
                            onSessionFinalizedWithTrace(sessionStateCallback);
                        }
                    }
                    return unit == null ? r7 : z2;
                } catch (Throwable th2) {
                    th = th2;
                    str = str2;
                    Trace.endSection();
                    long jM1567constructorimpl3 = DurationNs.m1567constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j);
                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(str4);
                        sb2.append(" - ");
                        Timestamps timestamps2 = Timestamps.INSTANCE;
                        sb2.append(String.format(null, str, Arrays.copyOf(new Object[]{Double.valueOf(jM1567constructorimpl3 / d)}, i)));
                        android.util.Log.d("CXCP", sb2.toString());
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                str = "%.3f ms";
                debug = debug2;
                j = jMo1575nowvQl9yQU;
                i = 1;
            }
        } catch (Throwable th4) {
            th = th4;
            str = "%.3f ms";
            debug = debug2;
            j = jMo1575nowvQl9yQU;
            i = 1;
            d = 1000000.0d;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0355  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0265 A[Catch: all -> 0x00f9, TryCatch #7 {all -> 0x00f9, blocks: (B:26:0x00d6, B:28:0x00e3, B:30:0x00e9, B:35:0x0101, B:36:0x0133, B:39:0x013f, B:41:0x0145, B:49:0x018e, B:51:0x01a1, B:52:0x01bb, B:54:0x01c1, B:55:0x01cf, B:56:0x01db, B:58:0x01e1, B:60:0x01f3, B:62:0x0200, B:63:0x0204, B:65:0x021b, B:67:0x0224, B:68:0x0227, B:70:0x0229, B:71:0x022c, B:42:0x0149, B:44:0x0151, B:46:0x016d, B:48:0x0175, B:80:0x0261, B:82:0x0265, B:84:0x026d, B:85:0x0285, B:88:0x0293, B:90:0x0297, B:92:0x029b, B:94:0x029f, B:97:0x02a4, B:99:0x02a8, B:101:0x02b0, B:102:0x02b6, B:103:0x02b7, B:105:0x02bf, B:106:0x02d7), top: B:134:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0293 A[Catch: all -> 0x00f9, TryCatch #7 {all -> 0x00f9, blocks: (B:26:0x00d6, B:28:0x00e3, B:30:0x00e9, B:35:0x0101, B:36:0x0133, B:39:0x013f, B:41:0x0145, B:49:0x018e, B:51:0x01a1, B:52:0x01bb, B:54:0x01c1, B:55:0x01cf, B:56:0x01db, B:58:0x01e1, B:60:0x01f3, B:62:0x0200, B:63:0x0204, B:65:0x021b, B:67:0x0224, B:68:0x0227, B:70:0x0229, B:71:0x022c, B:42:0x0149, B:44:0x0151, B:46:0x016d, B:48:0x0175, B:80:0x0261, B:82:0x0265, B:84:0x026d, B:85:0x0285, B:88:0x0293, B:90:0x0297, B:92:0x029b, B:94:0x029f, B:97:0x02a4, B:99:0x02a8, B:101:0x02b0, B:102:0x02b6, B:103:0x02b7, B:105:0x02bf, B:106:0x02d7), top: B:134:0x0048 }] */
    /* JADX WARN: Type inference failed for: r10v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [int] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v9, types: [int] */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean createCaptureSession(SessionConfigData config) throws Throwable {
        String str;
        Debug debug;
        long j;
        ?? r7;
        double d;
        String str2;
        String str3;
        Debug debug2;
        long j2;
        boolean z;
        String str4;
        boolean z2;
        CameraErrorListener cameraErrorListener;
        boolean z3;
        boolean z4;
        Unit unit;
        ?? r72;
        Log log;
        ArrayList arrayList;
        ?? r73 = "%.3f ms";
        Pair<Boolean, SessionStateCallback> pairCheckAndSetStateCallback = checkAndSetStateCallback(config.getStateCallback());
        boolean zBooleanValue = pairCheckAndSetStateCallback.component1().booleanValue();
        SessionStateCallback sessionStateCallbackComponent2 = pairCheckAndSetStateCallback.component2();
        if (!zBooleanValue) {
            return false;
        }
        if (sessionStateCallbackComponent2 != null) {
            onSessionDisconnectedWithTrace(sessionStateCallbackComponent2);
            Unit unit2 = Unit.INSTANCE;
        }
        Debug debug3 = Debug.INSTANCE;
        String str5 = "CXCP#createCaptureSession-" + getCameraId();
        long jMo1575nowvQl9yQU = debug3.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU();
        try {
            try {
                Trace.beginSection(str5);
                String cameraId = getCameraId();
                CameraErrorListener cameraErrorListener2 = this.cameraErrorListener;
                try {
                    int sessionType = config.getSessionType();
                    List<OutputConfigurationWrapper> outputConfigurations = config.getOutputConfigurations();
                    d = 1000000.0d;
                    try {
                        try {
                            arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(outputConfigurations, 10));
                            Iterator it = outputConfigurations.iterator();
                            while (it.hasNext()) {
                                try {
                                    arrayList.add((OutputConfiguration) ((OutputConfigurationWrapper) it.next()).unwrapAs(Reflection.getOrCreateKotlinClass(OutputConfiguration.class)));
                                } catch (Throwable th) {
                                    th = th;
                                    str = "%.3f ms";
                                    debug = debug3;
                                    j = jMo1575nowvQl9yQU;
                                    r7 = 1;
                                    Trace.endSection();
                                    long jM1567constructorimpl = DurationNs.m1567constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j);
                                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(str5);
                                        sb.append(" - ");
                                        Timestamps timestamps = Timestamps.INSTANCE;
                                        sb.append(String.format(null, str, Arrays.copyOf(new Object[]{Double.valueOf(jM1567constructorimpl / d)}, (int) r7)));
                                        android.util.Log.d("CXCP", sb.toString());
                                    }
                                    throw th;
                                }
                            }
                        } catch (Exception e) {
                            e = e;
                            str3 = "%.3f ms";
                            debug2 = debug3;
                            j2 = jMo1575nowvQl9yQU;
                            z = true;
                            str4 = cameraId;
                            z2 = z;
                            cameraErrorListener = cameraErrorListener2;
                            z3 = z2;
                            if (e instanceof CameraAccessException) {
                            }
                            z4 = false;
                            unit = null;
                            r72 = z3;
                            Trace.endSection();
                            long jM1567constructorimpl2 = DurationNs.m1567constructorimpl(debug2.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j2);
                            log = Log.INSTANCE;
                            if (log.getDEBUG_LOGGABLE()) {
                            }
                            if (unit == null) {
                            }
                            if (unit != null) {
                            }
                        }
                        try {
                            str3 = "%.3f ms";
                            debug2 = debug3;
                            str4 = cameraId;
                            z3 = true;
                            r72 = 1;
                            cameraErrorListener = cameraErrorListener2;
                            j2 = jMo1575nowvQl9yQU;
                            try {
                                SessionConfiguration sessionConfigurationNewSessionConfiguration = Api28Compat.newSessionConfiguration(sessionType, arrayList, config.getExecutor(), new AndroidCaptureSessionStateCallback(this, config.getStateCallback(), sessionStateCallbackComponent2, this.cameraErrorListener, this.interopCaptureSessionListener, this.threads.getCamera2Handler()));
                                if (config.getInputConfiguration() != null) {
                                    if (Build.VERSION.SDK_INT >= 31) {
                                        Api28Compat.setInputConfiguration(sessionConfigurationNewSessionConfiguration, Api31Compat.newInputConfiguration(config.getInputConfiguration(), getCameraId()));
                                    } else {
                                        Api28Compat.setInputConfiguration(sessionConfigurationNewSessionConfiguration, new InputConfiguration(((InputConfigData) CollectionsKt.single((List) config.getInputConfiguration())).getWidth(), ((InputConfigData) CollectionsKt.single((List) config.getInputConfiguration())).getHeight(), ((InputConfigData) CollectionsKt.single((List) config.getInputConfiguration())).getFormat()));
                                    }
                                }
                                String sessionColorSpace = config.getSessionColorSpace();
                                if (Build.VERSION.SDK_INT >= 34 && sessionColorSpace != null) {
                                    ColorSpace.Named namedM1233toColorSpaceNamedimpl = CameraColorSpace.m1233toColorSpaceNamedimpl(sessionColorSpace);
                                    if (namedM1233toColorSpaceNamedimpl != null) {
                                        Api34Compat.setColorSpace(sessionConfigurationNewSessionConfiguration, namedM1233toColorSpaceNamedimpl);
                                    } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                        android.util.Log.w("CXCP", "Provided session color space " + sessionColorSpace + " is not supported");
                                    }
                                } else if (sessionColorSpace != null && Log.INSTANCE.getWARN_LOGGABLE()) {
                                    android.util.Log.w("CXCP", "Failed to set session color space to " + sessionColorSpace + ", at least API level 34 is required");
                                }
                                Debug debug4 = Debug.INSTANCE;
                                try {
                                    Trace.beginSection("createCaptureRequest");
                                    CaptureRequest.Builder builderCreateCaptureRequest = this.cameraDevice.createCaptureRequest(config.getSessionTemplateId());
                                    Trace.endSection();
                                    Set<CaptureRequest.Key<?>> sessionKeys = this.cameraMetadata.getSessionKeys();
                                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(sessionKeys, 10));
                                    Iterator it2 = sessionKeys.iterator();
                                    while (it2.hasNext()) {
                                        arrayList2.add(((CaptureRequest.Key) it2.next()).getName());
                                    }
                                    for (Map.Entry<?, Object> entry : config.getSessionParameters().entrySet()) {
                                        Object key = entry.getKey();
                                        Object value = entry.getValue();
                                        if ((key instanceof CaptureRequest.Key) && arrayList2.contains(((CaptureRequest.Key) key).getName())) {
                                            RequestsKt.writeParameter(builderCreateCaptureRequest, key, value);
                                        }
                                    }
                                    Api28Compat.setSessionParameters(sessionConfigurationNewSessionConfiguration, builderCreateCaptureRequest.build());
                                    Debug debug5 = Debug.INSTANCE;
                                    try {
                                        Trace.beginSection("Api28Compat.createCaptureSession");
                                        Api28Compat.createCaptureSession(this.cameraDevice, sessionConfigurationNewSessionConfiguration);
                                        Unit unit3 = Unit.INSTANCE;
                                        Trace.endSection();
                                        unit = Unit.INSTANCE;
                                        z4 = false;
                                    } finally {
                                    }
                                } finally {
                                }
                            } catch (Exception e2) {
                                e = e2;
                                if (e instanceof CameraAccessException) {
                                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                        android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                                    }
                                    cameraErrorListener.mo1518onCameraError3M5Xam4(str4, CameraError.INSTANCE.m1255fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z3);
                                } else {
                                    if (!(e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                                        if (!(e instanceof IllegalStateException)) {
                                            throw e;
                                        }
                                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                            android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                                        }
                                    }
                                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                        android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                                    }
                                    z4 = false;
                                    cameraErrorListener.mo1518onCameraError3M5Xam4(str4, CameraError.INSTANCE.m1266getERROR_GRAPH_CONFIGv7Vf74A(), false);
                                    unit = null;
                                    r72 = z3;
                                }
                                z4 = false;
                                unit = null;
                                r72 = z3;
                            }
                        } catch (Exception e3) {
                            e = e3;
                            str3 = "%.3f ms";
                            debug2 = debug3;
                            str4 = cameraId;
                            z2 = true;
                            j2 = jMo1575nowvQl9yQU;
                            cameraErrorListener = cameraErrorListener2;
                            z3 = z2;
                            if (e instanceof CameraAccessException) {
                            }
                            z4 = false;
                            unit = null;
                            r72 = z3;
                            Trace.endSection();
                            long jM1567constructorimpl22 = DurationNs.m1567constructorimpl(debug2.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j2);
                            log = Log.INSTANCE;
                            if (log.getDEBUG_LOGGABLE()) {
                            }
                            if (unit == null) {
                            }
                            if (unit != null) {
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        str2 = "%.3f ms";
                        debug = debug3;
                        j = jMo1575nowvQl9yQU;
                        r73 = 1;
                        str = str2;
                        r7 = r73;
                        Trace.endSection();
                        long jM1567constructorimpl3 = DurationNs.m1567constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j);
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        }
                        throw th;
                    }
                } catch (Exception e4) {
                    e = e4;
                    str3 = "%.3f ms";
                    debug2 = debug3;
                    j2 = jMo1575nowvQl9yQU;
                    z = true;
                    d = 1000000.0d;
                } catch (Throwable th3) {
                    th = th3;
                    str2 = "%.3f ms";
                    debug = debug3;
                    j = jMo1575nowvQl9yQU;
                    r73 = 1;
                    d = 1000000.0d;
                }
                Trace.endSection();
                long jM1567constructorimpl222 = DurationNs.m1567constructorimpl(debug2.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - j2);
                log = Log.INSTANCE;
                if (log.getDEBUG_LOGGABLE()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str5);
                    sb2.append(" - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    sb2.append(String.format(null, str3, Arrays.copyOf(new Object[]{Double.valueOf(jM1567constructorimpl222 / d)}, (int) r72)));
                    android.util.Log.d("CXCP", sb2.toString());
                }
                if (unit == null) {
                    if (log.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to create capture session from " + this.cameraDevice + ". Finalizing previous session");
                    }
                    if (sessionStateCallbackComponent2 != null) {
                        onSessionFinalizedWithTrace(sessionStateCallbackComponent2);
                        Unit unit4 = Unit.INSTANCE;
                    }
                }
                return unit != null ? r72 : z4;
            } catch (Throwable th4) {
                th = th4;
                str = "%.3f ms";
                debug = debug3;
                j = jMo1575nowvQl9yQU;
                r7 = 1;
                d = 1000000.0d;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0127  */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /* JADX INFO: renamed from: createCaptureRequest-2PPcXtw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CaptureRequest.Builder mo1482createCaptureRequest2PPcXtw(int template) throws Throwable {
        double d;
        CaptureRequest.Builder builderCreateCaptureRequest;
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#createCaptureRequest-" + getCameraId();
        long jMo1575nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU();
        try {
            try {
                Trace.beginSection(str);
                String cameraId = getCameraId();
                CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                try {
                    d = 1000000.0d;
                    try {
                        builderCreateCaptureRequest = this.cameraDevice.createCaptureRequest(template);
                    } catch (Exception e) {
                        e = e;
                        if (e instanceof CameraAccessException) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                            }
                            cameraErrorListener.mo1518onCameraError3M5Xam4(cameraId, CameraError.INSTANCE.m1255fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                        } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                            }
                            cameraErrorListener.mo1518onCameraError3M5Xam4(cameraId, CameraError.INSTANCE.m1266getERROR_GRAPH_CONFIGv7Vf74A(), false);
                        } else {
                            if (!(e instanceof IllegalStateException)) {
                                throw e;
                            }
                            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                            }
                        }
                        builderCreateCaptureRequest = null;
                    }
                } catch (Exception e2) {
                    e = e2;
                    d = 1000000.0d;
                }
                Trace.endSection();
                long jM1567constructorimpl = DurationNs.m1567constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - jMo1575nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(" - ");
                    Timestamps timestamps = Timestamps.INSTANCE;
                    sb.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1567constructorimpl / d)}, 1)));
                    android.util.Log.d("CXCP", sb.toString());
                }
                return builderCreateCaptureRequest;
            } catch (Throwable th) {
                th = th;
                Trace.endSection();
                long jM1567constructorimpl2 = DurationNs.m1567constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - jMo1575nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append(" - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    sb2.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1567constructorimpl2 / 1000000.0d)}, 1)));
                    android.util.Log.d("CXCP", sb2.toString());
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            Trace.endSection();
            long jM1567constructorimpl22 = DurationNs.m1567constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - jMo1575nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            }
            throw th;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.AudioRestrictionController.Listener
    /* JADX INFO: renamed from: onCameraAudioRestrictionUpdated-LwUUkyU, reason: not valid java name */
    public void mo1484onCameraAudioRestrictionUpdatedLwUUkyU(int mode) {
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection("setCameraAudioRestriction");
            String cameraId = getCameraId();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            try {
                Api30Compat.setCameraAudioRestriction(this.cameraDevice, mode);
                Unit unit = Unit.INSTANCE;
            } catch (Exception e) {
                if (e instanceof CameraAccessException) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                    }
                    cameraErrorListener.mo1518onCameraError3M5Xam4(cameraId, CameraError.INSTANCE.m1255fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                    }
                    cameraErrorListener.mo1518onCameraError3M5Xam4(cameraId, CameraError.INSTANCE.m1266getERROR_GRAPH_CONFIGv7Vf74A(), false);
                } else {
                    if (!(e instanceof IllegalStateException)) {
                        throw e;
                    }
                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                    }
                }
            }
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public void onDeviceClosing() {
        SessionStateCallback value;
        if (!this.closed.compareAndSet(false, true) || (value = this._lastStateCallback.getValue()) == null) {
            return;
        }
        onSessionDisconnectedWithTrace(value);
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public void onDeviceClosed() {
        if (!this.closed.getValue()) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Check failed.");
            return;
        }
        SessionStateCallback andSet = this._lastStateCallback.getAndSet(null);
        if (andSet != null) {
            onSessionFinalizedWithTrace(andSet);
        }
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(KClass<T> type) {
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CameraDevice.class))) {
            return (T) this.cameraDevice;
        }
        return null;
    }

    public String toString() {
        return "AndroidCameraDevice(camera=" + ((Object) CameraId.m1303toStringimpl(getCameraId())) + ')';
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0127  */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CaptureRequest.Builder createReprocessCaptureRequest(TotalCaptureResult inputResult) throws Throwable {
        double d;
        CaptureRequest.Builder builderCreateReprocessCaptureRequest;
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#createReprocessCaptureRequest-" + getCameraId();
        long jMo1575nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU();
        try {
            try {
                Trace.beginSection(str);
                String cameraId = getCameraId();
                CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                try {
                    d = 1000000.0d;
                    try {
                        builderCreateReprocessCaptureRequest = this.cameraDevice.createReprocessCaptureRequest(inputResult);
                    } catch (Exception e) {
                        e = e;
                        if (e instanceof CameraAccessException) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                            }
                            cameraErrorListener.mo1518onCameraError3M5Xam4(cameraId, CameraError.INSTANCE.m1255fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                        } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                            }
                            cameraErrorListener.mo1518onCameraError3M5Xam4(cameraId, CameraError.INSTANCE.m1266getERROR_GRAPH_CONFIGv7Vf74A(), false);
                        } else {
                            if (!(e instanceof IllegalStateException)) {
                                throw e;
                            }
                            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                            }
                        }
                        builderCreateReprocessCaptureRequest = null;
                    }
                } catch (Exception e2) {
                    e = e2;
                    d = 1000000.0d;
                }
                Trace.endSection();
                long jM1567constructorimpl = DurationNs.m1567constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - jMo1575nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(" - ");
                    Timestamps timestamps = Timestamps.INSTANCE;
                    sb.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1567constructorimpl / d)}, 1)));
                    android.util.Log.d("CXCP", sb.toString());
                }
                return builderCreateReprocessCaptureRequest;
            } catch (Throwable th) {
                th = th;
                Trace.endSection();
                long jM1567constructorimpl2 = DurationNs.m1567constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - jMo1575nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append(" - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    sb2.append(String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1567constructorimpl2 / 1000000.0d)}, 1)));
                    android.util.Log.d("CXCP", sb2.toString());
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            Trace.endSection();
            long jM1567constructorimpl22 = DurationNs.m1567constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1575nowvQl9yQU() - jMo1575nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            }
            throw th;
        }
    }

    private final Pair<Boolean, SessionStateCallback> checkAndSetStateCallback(SessionStateCallback stateCallback) {
        if (this.closed.getValue()) {
            onSessionFinalizedWithTrace(stateCallback);
            return new Pair<>(Boolean.FALSE, null);
        }
        return new Pair<>(Boolean.TRUE, this._lastStateCallback.getAndSet(stateCallback));
    }

    private final void onSessionDisconnectedWithTrace(SessionStateCallback sessionStateCallback) {
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection(this + "#onSessionDisconnected");
            sessionStateCallback.onSessionDisconnected();
            Unit unit = Unit.INSTANCE;
        } finally {
            Trace.endSection();
        }
    }

    private final void onSessionFinalizedWithTrace(SessionStateCallback sessionStateCallback) {
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection(this + "#onSessionFinalized");
            sessionStateCallback.onSessionFinalized();
            Unit unit = Unit.INSTANCE;
        } finally {
            Trace.endSection();
        }
    }
}
