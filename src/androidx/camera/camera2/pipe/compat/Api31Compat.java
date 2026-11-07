package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraExtensionCharacteristics;
import android.hardware.camera2.CameraExtensionSession$StateCallback;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.ExtensionSessionConfiguration;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.OutputConfiguration;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J%\u0010\n\u001a\u00020\t2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\n\u0010\u000bJ%\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\fH\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\b\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ7\u0010&\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u001e2\u000e\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010 0\u00042\u0006\u0010#\u001a\u00020\"2\u0006\u0010%\u001a\u00020$H\u0007¢\u0006\u0004\b&\u0010'J\u001d\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001e0\u00042\u0006\u0010(\u001a\u00020\u001bH\u0007¢\u0006\u0004\b)\u0010*¨\u0006+"}, d2 = {"Landroidx/camera/camera2/pipe/compat/Api31Compat;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/compat/InputConfigData;", "inputConfigData", _UrlKt.FRAGMENT_ENCODE_SET, "cameraId", "Landroid/hardware/camera2/params/InputConfiguration;", "newInputConfiguration", "(Ljava/util/List;Ljava/lang/String;)Landroid/hardware/camera2/params/InputConfiguration;", "Landroid/hardware/camera2/TotalCaptureResult;", "totalCaptureResult", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/CaptureResult;", "getPhysicalCameraTotalResults", "(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/util/Map;", "Landroid/hardware/camera2/CameraDevice;", "cameraDevice", "Landroid/hardware/camera2/params/ExtensionSessionConfiguration;", "extensionConfiguration", _UrlKt.FRAGMENT_ENCODE_SET, "createExtensionCaptureSession", "(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/params/ExtensionSessionConfiguration;)V", "Landroid/hardware/camera2/CameraManager;", "cameraManager", "Landroid/hardware/camera2/CameraExtensionCharacteristics;", "getCameraExtensionCharacteristics", "(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Landroid/hardware/camera2/CameraExtensionCharacteristics;", _UrlKt.FRAGMENT_ENCODE_SET, "extensionMode", "Landroid/hardware/camera2/params/OutputConfiguration;", "outputs", "Ljava/util/concurrent/Executor;", "executor", "Landroid/hardware/camera2/CameraExtensionSession$StateCallback;", "stateCallback", "newExtensionSessionConfiguration", "(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;)Landroid/hardware/camera2/params/ExtensionSessionConfiguration;", "extensionCharacteristics", "getSupportedExtensions", "(Landroid/hardware/camera2/CameraExtensionCharacteristics;)Ljava/util/List;", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nApiCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiCompat.kt\nandroidx/camera/camera2/pipe/compat/Api31Compat\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,558:1\n1563#2:559\n1634#2,3:560\n*S KotlinDebug\n*F\n+ 1 ApiCompat.kt\nandroidx/camera/camera2/pipe/compat/Api31Compat\n*L\n299#1:559\n299#1:560,3\n*E\n"})
public final class Api31Compat {
    public static final Api31Compat INSTANCE = new Api31Compat();

    private Api31Compat() {
    }

    @JvmStatic
    public static final InputConfiguration newInputConfiguration(List<InputConfigData> inputConfigData, String cameraId) {
        if (inputConfigData.isEmpty()) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Call to create InputConfiguration but list of InputConfigData is empty.");
            return null;
        }
        if (inputConfigData.size() == 1) {
            InputConfigData inputConfigData2 = (InputConfigData) CollectionsKt.first((List) inputConfigData);
            return new InputConfiguration(inputConfigData2.getWidth(), inputConfigData2.getHeight(), inputConfigData2.getFormat());
        }
        List<InputConfigData> list = inputConfigData;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (InputConfigData inputConfigData3 : list) {
            Api31Compat$$ExternalSyntheticApiModelOutline3.m56m();
            arrayList.add(Api31Compat$$ExternalSyntheticApiModelOutline1.m54m(inputConfigData3.getWidth(), inputConfigData3.getHeight(), cameraId));
        }
        Api31Compat$$ExternalSyntheticApiModelOutline4.m57m();
        return Api31Compat$$ExternalSyntheticApiModelOutline2.m55m(arrayList, ((InputConfigData) CollectionsKt.first((List) inputConfigData)).getFormat());
    }

    @JvmStatic
    public static final Map<String, CaptureResult> getPhysicalCameraTotalResults(TotalCaptureResult totalCaptureResult) {
        return totalCaptureResult.getPhysicalCameraTotalResults();
    }

    @JvmStatic
    public static final void createExtensionCaptureSession(CameraDevice cameraDevice, ExtensionSessionConfiguration extensionConfiguration) throws CameraAccessException {
        cameraDevice.createExtensionSession(extensionConfiguration);
    }

    @JvmStatic
    public static final CameraExtensionCharacteristics getCameraExtensionCharacteristics(CameraManager cameraManager, String cameraId) {
        return cameraManager.getCameraExtensionCharacteristics(cameraId);
    }

    @JvmStatic
    public static final ExtensionSessionConfiguration newExtensionSessionConfiguration(int extensionMode, List<OutputConfiguration> outputs, Executor executor, CameraExtensionSession$StateCallback stateCallback) {
        return Api31Compat$$ExternalSyntheticApiModelOutline0.m53m(extensionMode, outputs, executor, stateCallback);
    }

    @JvmStatic
    public static final List<Integer> getSupportedExtensions(CameraExtensionCharacteristics extensionCharacteristics) {
        return extensionCharacteristics.getSupportedExtensions();
    }
}
