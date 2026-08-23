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
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidCameraDevice implements CameraDeviceWrapper {
    private final AtomicRef _lastStateCallback;
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

    private AndroidCameraDevice(CameraMetadata cameraMetadata, CameraDevice cameraDevice, String cameraId, CameraErrorListener cameraErrorListener, CameraInterop.CaptureSessionListener captureSessionListener, Threads threads) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
        Intrinsics.checkNotNullParameter(cameraDevice, "cameraDevice");
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        Intrinsics.checkNotNullParameter(cameraErrorListener, "cameraErrorListener");
        Intrinsics.checkNotNullParameter(threads, "threads");
        this.cameraMetadata = cameraMetadata;
        this.cameraDevice = cameraDevice;
        this.cameraId = cameraId;
        this.cameraErrorListener = cameraErrorListener;
        this.interopCaptureSessionListener = captureSessionListener;
        this.threads = threads;
        this.closed = AtomicFU.atomic(false);
        this._lastStateCallback = AtomicFU.atomic((Object) null);
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
    public String mo1797getCameraIdDz_R5H8() {
        return this.cameraId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v2, types: [int] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v8, types: [int] */
    /* JADX WARN: Type inference failed for: r9v9 */
    /*  JADX ERROR: JadxRuntimeException in pass: CodeShrinkVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type int to ?? for r9v8 ??
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.instructions.args.InsnArg.wrapInstruction(InsnArg.java:138)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.inline(CodeShrinkVisitor.java:213)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.checkInline(CodeShrinkVisitor.java:143)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.shrinkBlock(CodeShrinkVisitor.java:68)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.shrinkMethod(CodeShrinkVisitor.java:48)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.visit(CodeShrinkVisitor.java:39)
        */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createCaptureSession(java.util.List r29, androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback r30) {
        /*
            Method dump skipped, instruction units count: 600
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.AndroidCameraDevice.createCaptureSession(java.util.List, androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper$StateCallback):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x015e A[Catch: all -> 0x011b, TryCatch #5 {all -> 0x011b, blocks: (B:32:0x00ee, B:34:0x00fb, B:36:0x0101, B:38:0x0117, B:43:0x0125, B:44:0x012c, B:45:0x012d, B:56:0x015a, B:58:0x015e, B:60:0x0166, B:61:0x017e, B:63:0x018b, B:65:0x018f, B:67:0x0193, B:69:0x0197, B:72:0x019c, B:74:0x01a0, B:76:0x01a8, B:77:0x01ae, B:78:0x01af, B:80:0x01b7, B:81:0x01cf), top: B:111:0x006b }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x018b A[Catch: all -> 0x011b, TryCatch #5 {all -> 0x011b, blocks: (B:32:0x00ee, B:34:0x00fb, B:36:0x0101, B:38:0x0117, B:43:0x0125, B:44:0x012c, B:45:0x012d, B:56:0x015a, B:58:0x015e, B:60:0x0166, B:61:0x017e, B:63:0x018b, B:65:0x018f, B:67:0x0193, B:69:0x0197, B:72:0x019c, B:74:0x01a0, B:76:0x01a8, B:77:0x01ae, B:78:0x01af, B:80:0x01b7, B:81:0x01cf), top: B:111:0x006b }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x026a A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v4 */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean createExtensionSession(ExtensionSessionConfigData config) throws Throwable {
        String str;
        String str2;
        String str3;
        Debug debug;
        int i;
        String str4;
        String str5;
        String str6;
        SessionStateCallback sessionStateCallback;
        String str7;
        String str8;
        String str9;
        boolean z;
        Unit unit;
        int i2;
        Log log;
        ArrayList arrayList;
        ?? r9 = "%.";
        Intrinsics.checkNotNullParameter(config, "config");
        CameraExtensionSessionWrapper.StateCallback extensionStateCallback = config.getExtensionStateCallback();
        if (extensionStateCallback == null) {
            throw new IllegalStateException("extensionStateCallback must be set to create Extension session");
        }
        if (config.getExtensionMode() == null) {
            throw new IllegalStateException("extensionMode must be set to create Extension session");
        }
        Pair pairCheckAndSetStateCallback = checkAndSetStateCallback(extensionStateCallback);
        boolean zBooleanValue = ((Boolean) pairCheckAndSetStateCallback.component1()).booleanValue();
        SessionStateCallback sessionStateCallback2 = (SessionStateCallback) pairCheckAndSetStateCallback.component2();
        if (!zBooleanValue) {
            return false;
        }
        if (sessionStateCallback2 != null) {
            onSessionDisconnectedWithTrace(sessionStateCallback2);
        }
        Debug debug2 = Debug.INSTANCE;
        String str10 = "CXCP#createExtensionSession" + SignatureVisitor.SUPER + mo1797getCameraIdDz_R5H8();
        long jMo1888nowvQl9yQU = debug2.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU();
        try {
            try {
                Trace.beginSection(str10);
                String strMo1797getCameraIdDz_R5H8 = mo1797getCameraIdDz_R5H8();
                CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                try {
                    int iIntValue = config.getExtensionMode().intValue();
                    List outputConfigurations = config.getOutputConfigurations();
                    debug = debug2;
                    try {
                        try {
                            arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(outputConfigurations, 10));
                            Iterator it = outputConfigurations.iterator();
                            while (it.hasNext()) {
                                try {
                                    arrayList.add(AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline1.m49m(((OutputConfigurationWrapper) it.next()).unwrapAs(Reflection.getOrCreateKotlinClass(AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline0.m48m()))));
                                } catch (Throwable th) {
                                    th = th;
                                    str = "format(...)";
                                    str2 = "f ms";
                                    str3 = "%.";
                                    i = 1;
                                    Trace.endSection();
                                    long jM1880constructorimpl = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(str10);
                                        sb.append(" - ");
                                        Timestamps timestamps = Timestamps.INSTANCE;
                                        Object[] objArr = new Object[i];
                                        objArr[0] = Double.valueOf(jM1880constructorimpl / 1000000.0d);
                                        String str11 = String.format(null, str3 + 3 + str2, Arrays.copyOf(objArr, i));
                                        Intrinsics.checkNotNullExpressionValue(str11, str);
                                        sb.append(str11);
                                        android.util.Log.d("CXCP", sb.toString());
                                    }
                                    throw th;
                                }
                            }
                            sessionStateCallback = sessionStateCallback2;
                        } catch (Exception e) {
                            e = e;
                            sessionStateCallback = sessionStateCallback2;
                        }
                        try {
                            str7 = "format(...)";
                            str8 = "f ms";
                            str9 = "%.";
                            z = true;
                            i2 = 1;
                            try {
                                ExtensionSessionConfiguration extensionSessionConfigurationNewExtensionSessionConfiguration = Api31Compat.newExtensionSessionConfiguration(iIntValue, arrayList, config.getExecutor(), new AndroidExtensionSessionStateCallback(this, extensionStateCallback, sessionStateCallback, this.cameraErrorListener, this.interopCaptureSessionListener, config.getExecutor()));
                                if (config.getPostviewOutputConfiguration() != null && Build.VERSION.SDK_INT >= 34) {
                                    OutputConfiguration outputConfigurationM49m = AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline1.m49m(config.getPostviewOutputConfiguration().unwrapAs(Reflection.getOrCreateKotlinClass(AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline0.m48m())));
                                    if (outputConfigurationM49m == null) {
                                        throw new IllegalStateException("Failed to unwrap Postview OutputConfiguration");
                                    }
                                    Api34Compat.setPostviewOutputConfiguration(extensionSessionConfigurationNewExtensionSessionConfiguration, outputConfigurationM49m);
                                }
                                Api31Compat.createExtensionCaptureSession(this.cameraDevice, extensionSessionConfigurationNewExtensionSessionConfiguration);
                                unit = Unit.INSTANCE;
                            } catch (Exception e2) {
                                e = e2;
                                if (!(e instanceof CameraAccessException)) {
                                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                        android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                                    }
                                    cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1559fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z);
                                } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                        android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                                    }
                                    cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1570getERROR_GRAPH_CONFIGv7Vf74A(), false);
                                } else {
                                    if (!(e instanceof IllegalStateException)) {
                                        throw e;
                                    }
                                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                        android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                                    }
                                }
                                unit = null;
                                i2 = z;
                            }
                        } catch (Exception e3) {
                            e = e3;
                            str7 = "format(...)";
                            str8 = "f ms";
                            str9 = "%.";
                            z = true;
                            if (!(e instanceof CameraAccessException)) {
                            }
                            unit = null;
                            i2 = z;
                            Trace.endSection();
                            long jM1880constructorimpl2 = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                            log = Log.INSTANCE;
                            if (log.getDEBUG_LOGGABLE()) {
                            }
                            if (unit == null) {
                            }
                            if (unit == null) {
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        str4 = "format(...)";
                        str5 = "f ms";
                        str6 = "%.";
                        r9 = 1;
                        str2 = str5;
                        str3 = str6;
                        str = str4;
                        i = r9;
                        Trace.endSection();
                        long jM1880constructorimpl3 = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        }
                        throw th;
                    }
                } catch (Exception e4) {
                    e = e4;
                    sessionStateCallback = sessionStateCallback2;
                    str7 = "format(...)";
                    str8 = "f ms";
                    str9 = "%.";
                    debug = debug2;
                } catch (Throwable th3) {
                    th = th3;
                    str4 = "format(...)";
                    str5 = "f ms";
                    str6 = "%.";
                    debug = debug2;
                }
                Trace.endSection();
                long jM1880constructorimpl22 = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                log = Log.INSTANCE;
                if (log.getDEBUG_LOGGABLE()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str10);
                    sb2.append(" - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    Object[] objArr2 = new Object[i2];
                    objArr2[0] = Double.valueOf(jM1880constructorimpl22 / 1000000.0d);
                    String str12 = String.format(null, str9 + 3 + str8, Arrays.copyOf(objArr2, i2));
                    Intrinsics.checkNotNullExpressionValue(str12, str7);
                    sb2.append(str12);
                    android.util.Log.d("CXCP", sb2.toString());
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
                    return i2;
                }
                return false;
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            th = th5;
            str = "format(...)";
            str2 = "f ms";
            str3 = "%.";
            debug = debug2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f4 A[Catch: all -> 0x00bb, TryCatch #5 {all -> 0x00bb, blocks: (B:15:0x00a9, B:31:0x00f0, B:33:0x00f4, B:35:0x00fc, B:36:0x0114, B:38:0x0121, B:40:0x0125, B:42:0x0129, B:44:0x012d, B:47:0x0132, B:49:0x0136, B:51:0x013e, B:52:0x0144, B:53:0x0145, B:55:0x014d, B:56:0x0165), top: B:84:0x00a9 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0121 A[Catch: all -> 0x00bb, TryCatch #5 {all -> 0x00bb, blocks: (B:15:0x00a9, B:31:0x00f0, B:33:0x00f4, B:35:0x00fc, B:36:0x0114, B:38:0x0121, B:40:0x0125, B:42:0x0129, B:44:0x012d, B:47:0x0132, B:49:0x0136, B:51:0x013e, B:52:0x0144, B:53:0x0145, B:55:0x014d, B:56:0x0165), top: B:84:0x00a9 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0200 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0229  */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean createReprocessableCaptureSession(InputConfiguration input, List outputs, CameraCaptureSessionWrapper.StateCallback stateCallback) throws Throwable {
        String str;
        String str2;
        Debug debug;
        int i;
        int i2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        SessionStateCallback sessionStateCallback;
        boolean z;
        Unit unit;
        int i3;
        Log log;
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(outputs, "outputs");
        Intrinsics.checkNotNullParameter(stateCallback, "stateCallback");
        Pair pairCheckAndSetStateCallback = checkAndSetStateCallback(stateCallback);
        boolean zBooleanValue = ((Boolean) pairCheckAndSetStateCallback.component1()).booleanValue();
        SessionStateCallback sessionStateCallback2 = (SessionStateCallback) pairCheckAndSetStateCallback.component2();
        if (!zBooleanValue) {
            return false;
        }
        if (sessionStateCallback2 != null) {
            onSessionDisconnectedWithTrace(sessionStateCallback2);
        }
        Debug debug2 = Debug.INSTANCE;
        String str8 = "CXCP#createReprocessableCaptureSession" + SignatureVisitor.SUPER + mo1797getCameraIdDz_R5H8();
        long jMo1888nowvQl9yQU = debug2.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU();
        try {
            Trace.beginSection(str8);
            String strMo1797getCameraIdDz_R5H8 = mo1797getCameraIdDz_R5H8();
            debug = debug2;
            try {
                CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                try {
                    sessionStateCallback = sessionStateCallback2;
                    try {
                        str6 = "f ms";
                        str5 = "format(...)";
                        str4 = str8;
                        str7 = "%.";
                        z = true;
                        try {
                            try {
                                this.cameraDevice.createReprocessableCaptureSession(input, outputs, new AndroidCaptureSessionStateCallback(this, stateCallback, sessionStateCallback, this.cameraErrorListener, this.interopCaptureSessionListener, this.threads.getCamera2Handler()), this.threads.getCamera2Handler());
                                unit = Unit.INSTANCE;
                                i3 = z;
                            } catch (Exception e) {
                                e = e;
                                if (!(e instanceof CameraAccessException)) {
                                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                        android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                                    }
                                    cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1559fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z);
                                } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                        android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                                    }
                                    cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1570getERROR_GRAPH_CONFIGv7Vf74A(), false);
                                } else {
                                    if (!(e instanceof IllegalStateException)) {
                                        throw e;
                                    }
                                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                        android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                                    }
                                }
                                unit = null;
                                i3 = z;
                            }
                        } catch (Throwable th) {
                            th = th;
                            str = str6;
                            str2 = str7;
                            str3 = str5;
                            i = 3;
                            i2 = z;
                            Trace.endSection();
                            long jM1880constructorimpl = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                            }
                            throw th;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        str5 = "format(...)";
                        str6 = "f ms";
                        str4 = str8;
                        str7 = "%.";
                        z = true;
                        if (!(e instanceof CameraAccessException)) {
                        }
                        unit = null;
                        i3 = z;
                        Trace.endSection();
                        long jM1880constructorimpl2 = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                        log = Log.INSTANCE;
                        if (log.getDEBUG_LOGGABLE()) {
                        }
                        if (unit == null) {
                        }
                        if (unit == null) {
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        str5 = "format(...)";
                        str6 = "f ms";
                        str4 = str8;
                        str7 = "%.";
                        z = true;
                        str = str6;
                        str2 = str7;
                        str3 = str5;
                        i = 3;
                        i2 = z;
                        Trace.endSection();
                        long jM1880constructorimpl3 = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        }
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                    str5 = "format(...)";
                    str6 = "f ms";
                    str7 = "%.";
                    str4 = str8;
                    sessionStateCallback = sessionStateCallback2;
                } catch (Throwable th3) {
                    th = th3;
                    str5 = "format(...)";
                    str6 = "f ms";
                    str7 = "%.";
                    str4 = str8;
                }
                Trace.endSection();
                long jM1880constructorimpl22 = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                log = Log.INSTANCE;
                if (log.getDEBUG_LOGGABLE()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str4);
                    sb.append(" - ");
                    Timestamps timestamps = Timestamps.INSTANCE;
                    Object[] objArr = new Object[i3];
                    objArr[0] = Double.valueOf(jM1880constructorimpl22 / 1000000.0d);
                    String str9 = String.format(null, str7 + 3 + str6, Arrays.copyOf(objArr, i3));
                    Intrinsics.checkNotNullExpressionValue(str9, str5);
                    sb.append(str9);
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
                if (unit == null) {
                    return i3;
                }
                return false;
            } catch (Throwable th4) {
                th = th4;
                str = "f ms";
                str2 = "%.";
                i = 3;
                i2 = 1;
                str3 = "format(...)";
                str4 = str8;
                Trace.endSection();
                long jM1880constructorimpl32 = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str4);
                    sb2.append(" - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    Object[] objArr2 = new Object[i2];
                    objArr2[0] = Double.valueOf(jM1880constructorimpl32 / 1000000.0d);
                    String str10 = String.format(null, str2 + i + str, Arrays.copyOf(objArr2, i2));
                    Intrinsics.checkNotNullExpressionValue(str10, str3);
                    sb2.append(str10);
                    android.util.Log.d("CXCP", sb2.toString());
                }
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            str = "f ms";
            str2 = "%.";
            debug = debug2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v2, types: [int] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v8, types: [int] */
    /* JADX WARN: Type inference failed for: r9v9 */
    /*  JADX ERROR: JadxRuntimeException in pass: CodeShrinkVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type int to ?? for r9v8 ??
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.instructions.args.InsnArg.wrapInstruction(InsnArg.java:138)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.inline(CodeShrinkVisitor.java:213)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.checkInline(CodeShrinkVisitor.java:143)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.shrinkBlock(CodeShrinkVisitor.java:68)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.shrinkMethod(CodeShrinkVisitor.java:48)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.visit(CodeShrinkVisitor.java:39)
        */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createConstrainedHighSpeedCaptureSession(java.util.List r29, androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback r30) {
        /*
            Method dump skipped, instruction units count: 600
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.AndroidCameraDevice.createConstrainedHighSpeedCaptureSession(java.util.List, androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper$StateCallback):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v9, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v1, types: [int] */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v8, types: [int] */
    /* JADX WARN: Type inference failed for: r8v9 */
    /*  JADX ERROR: JadxRuntimeException in pass: CodeShrinkVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type int to ?? for r8v8 ??
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.instructions.args.InsnArg.wrapInstruction(InsnArg.java:138)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.inline(CodeShrinkVisitor.java:213)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.checkInline(CodeShrinkVisitor.java:143)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.shrinkBlock(CodeShrinkVisitor.java:68)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.shrinkMethod(CodeShrinkVisitor.java:48)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.visit(CodeShrinkVisitor.java:39)
        */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createCaptureSessionByOutputConfigurations(java.util.List r26, androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback r27) {
        /*
            Method dump skipped, instruction units count: 630
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.AndroidCameraDevice.createCaptureSessionByOutputConfigurations(java.util.List, androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper$StateCallback):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v6, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v2, types: [int] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v9, types: [int] */
    /*  JADX ERROR: JadxRuntimeException in pass: CodeShrinkVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type int to ?? for r9v9 ??
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.instructions.args.InsnArg.wrapInstruction(InsnArg.java:138)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.inline(CodeShrinkVisitor.java:213)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.checkInline(CodeShrinkVisitor.java:143)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.shrinkBlock(CodeShrinkVisitor.java:68)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.shrinkMethod(CodeShrinkVisitor.java:48)
        	at jadx.core.dex.visitors.shrink.CodeShrinkVisitor.visit(CodeShrinkVisitor.java:39)
        */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createReprocessableCaptureSessionByConfigurations(androidx.camera.camera2.pipe.compat.InputConfigData r27, java.util.List r28, androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper.StateCallback r29) {
        /*
            Method dump skipped, instruction units count: 667
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.AndroidCameraDevice.createReprocessableCaptureSessionByConfigurations(androidx.camera.camera2.pipe.compat.InputConfigData, java.util.List, androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper$StateCallback):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x037e A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x026e A[Catch: all -> 0x010e, TryCatch #8 {all -> 0x010e, blocks: (B:24:0x00eb, B:26:0x00f8, B:28:0x00fe, B:33:0x0119, B:34:0x014b, B:37:0x0157, B:39:0x015d, B:47:0x01a6, B:49:0x01b9, B:50:0x01d9, B:52:0x01df, B:53:0x01ed, B:54:0x01f9, B:56:0x01ff, B:58:0x0211, B:60:0x021e, B:61:0x0222, B:63:0x023e, B:65:0x0246, B:66:0x0249, B:68:0x024b, B:69:0x024e, B:40:0x0161, B:42:0x0169, B:44:0x0185, B:46:0x018d, B:77:0x026a, B:79:0x026e, B:81:0x0276, B:82:0x028e, B:84:0x029d, B:86:0x02a3, B:88:0x02a7, B:90:0x02ab, B:93:0x02b0, B:95:0x02b4, B:97:0x02bc, B:98:0x02c2, B:99:0x02c3, B:101:0x02cb, B:102:0x02e3), top: B:123:0x0065 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x029d A[Catch: all -> 0x010e, TryCatch #8 {all -> 0x010e, blocks: (B:24:0x00eb, B:26:0x00f8, B:28:0x00fe, B:33:0x0119, B:34:0x014b, B:37:0x0157, B:39:0x015d, B:47:0x01a6, B:49:0x01b9, B:50:0x01d9, B:52:0x01df, B:53:0x01ed, B:54:0x01f9, B:56:0x01ff, B:58:0x0211, B:60:0x021e, B:61:0x0222, B:63:0x023e, B:65:0x0246, B:66:0x0249, B:68:0x024b, B:69:0x024e, B:40:0x0161, B:42:0x0169, B:44:0x0185, B:46:0x018d, B:77:0x026a, B:79:0x026e, B:81:0x0276, B:82:0x028e, B:84:0x029d, B:86:0x02a3, B:88:0x02a7, B:90:0x02ab, B:93:0x02b0, B:95:0x02b4, B:97:0x02bc, B:98:0x02c2, B:99:0x02c3, B:101:0x02cb, B:102:0x02e3), top: B:123:0x0065 }] */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v4 */
    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean createCaptureSession(SessionConfigData config) throws Throwable {
        String str;
        String str2;
        Debug debug;
        Locale locale;
        int i;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        boolean z;
        Unit unit;
        int i2;
        Log log;
        ?? r8 = "f ms";
        Intrinsics.checkNotNullParameter(config, "config");
        Pair pairCheckAndSetStateCallback = checkAndSetStateCallback(config.getStateCallback());
        boolean zBooleanValue = ((Boolean) pairCheckAndSetStateCallback.component1()).booleanValue();
        SessionStateCallback sessionStateCallback = (SessionStateCallback) pairCheckAndSetStateCallback.component2();
        if (!zBooleanValue) {
            return false;
        }
        if (sessionStateCallback != null) {
            onSessionDisconnectedWithTrace(sessionStateCallback);
            Unit unit2 = Unit.INSTANCE;
        }
        Debug debug2 = Debug.INSTANCE;
        String str8 = "CXCP#createCaptureSession" + SignatureVisitor.SUPER + mo1797getCameraIdDz_R5H8();
        long jMo1888nowvQl9yQU = debug2.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU();
        try {
            try {
                Trace.beginSection(str8);
                String strMo1797getCameraIdDz_R5H8 = mo1797getCameraIdDz_R5H8();
                CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                try {
                    int sessionType = config.getSessionType();
                    List outputConfigurations = config.getOutputConfigurations();
                    debug = debug2;
                    try {
                        try {
                            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(outputConfigurations, 10));
                            Iterator it = outputConfigurations.iterator();
                            while (it.hasNext()) {
                                try {
                                    arrayList.add(AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline1.m49m(((OutputConfigurationWrapper) it.next()).unwrapAs(Reflection.getOrCreateKotlinClass(AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline0.m48m()))));
                                } catch (Throwable th) {
                                    th = th;
                                    str = "format(...)";
                                    str2 = "f ms";
                                    locale = null;
                                    i = 1;
                                    Trace.endSection();
                                    long jM1880constructorimpl = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                                    if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(str8);
                                        sb.append(" - ");
                                        Timestamps timestamps = Timestamps.INSTANCE;
                                        Object[] objArr = new Object[i];
                                        objArr[0] = Double.valueOf(jM1880constructorimpl / 1000000.0d);
                                        String str9 = String.format(locale, "%.3" + str2, Arrays.copyOf(objArr, i));
                                        Intrinsics.checkNotNullExpressionValue(str9, str);
                                        sb.append(str9);
                                        android.util.Log.d("CXCP", sb.toString());
                                    }
                                    throw th;
                                }
                            }
                            str5 = strMo1797getCameraIdDz_R5H8;
                            str6 = "format(...)";
                            str7 = "f ms";
                            z = true;
                            i2 = 1;
                            try {
                                SessionConfiguration sessionConfigurationNewSessionConfiguration = Api28Compat.newSessionConfiguration(sessionType, arrayList, config.getExecutor(), new AndroidCaptureSessionStateCallback(this, config.getStateCallback(), sessionStateCallback, this.cameraErrorListener, this.interopCaptureSessionListener, this.threads.getCamera2Handler()));
                                if (config.getInputConfiguration() != null) {
                                    if (Build.VERSION.SDK_INT >= 31) {
                                        Api28Compat.setInputConfiguration(sessionConfigurationNewSessionConfiguration, Api31Compat.newInputConfiguration(config.getInputConfiguration(), mo1797getCameraIdDz_R5H8()));
                                    } else {
                                        Api28Compat.setInputConfiguration(sessionConfigurationNewSessionConfiguration, new InputConfiguration(((InputConfigData) CollectionsKt.single(config.getInputConfiguration())).getWidth(), ((InputConfigData) CollectionsKt.single(config.getInputConfiguration())).getHeight(), ((InputConfigData) CollectionsKt.single(config.getInputConfiguration())).getFormat()));
                                    }
                                }
                                String strM1866getSessionColorSpacedxVZaPA = config.m1866getSessionColorSpacedxVZaPA();
                                if (Build.VERSION.SDK_INT >= 34 && strM1866getSessionColorSpacedxVZaPA != null) {
                                    ColorSpace.Named namedM1537toColorSpaceNamedimpl = CameraColorSpace.m1537toColorSpaceNamedimpl(strM1866getSessionColorSpacedxVZaPA);
                                    if (namedM1537toColorSpaceNamedimpl != null) {
                                        Api34Compat.setColorSpace(sessionConfigurationNewSessionConfiguration, namedM1537toColorSpaceNamedimpl);
                                    } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                        android.util.Log.w("CXCP", "Provided session color space " + strM1866getSessionColorSpacedxVZaPA + " is not supported");
                                    }
                                } else if (strM1866getSessionColorSpacedxVZaPA != null && Log.INSTANCE.getWARN_LOGGABLE()) {
                                    android.util.Log.w("CXCP", "Failed to set session color space to " + strM1866getSessionColorSpacedxVZaPA + ", at least API level 34 is required");
                                }
                                Debug debug3 = Debug.INSTANCE;
                                try {
                                    Trace.beginSection("createCaptureRequest");
                                    CaptureRequest.Builder builderCreateCaptureRequest = this.cameraDevice.createCaptureRequest(config.getSessionTemplateId());
                                    Trace.endSection();
                                    Intrinsics.checkNotNullExpressionValue(builderCreateCaptureRequest, "trace(...)");
                                    Set sessionKeys = this.cameraMetadata.getSessionKeys();
                                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(sessionKeys, 10));
                                    Iterator it2 = sessionKeys.iterator();
                                    while (it2.hasNext()) {
                                        arrayList2.add(((CaptureRequest.Key) it2.next()).getName());
                                    }
                                    for (Map.Entry entry : config.getSessionParameters().entrySet()) {
                                        Object key = entry.getKey();
                                        Object value = entry.getValue();
                                        if ((key instanceof CaptureRequest.Key) && arrayList2.contains(((CaptureRequest.Key) key).getName())) {
                                            RequestsKt.writeParameter(builderCreateCaptureRequest, key, value);
                                        }
                                    }
                                    CaptureRequest captureRequestBuild = builderCreateCaptureRequest.build();
                                    Intrinsics.checkNotNullExpressionValue(captureRequestBuild, "build(...)");
                                    Api28Compat.setSessionParameters(sessionConfigurationNewSessionConfiguration, captureRequestBuild);
                                    Debug debug4 = Debug.INSTANCE;
                                    try {
                                        Trace.beginSection("Api28Compat.createCaptureSession");
                                        Api28Compat.createCaptureSession(this.cameraDevice, sessionConfigurationNewSessionConfiguration);
                                        Unit unit3 = Unit.INSTANCE;
                                        Trace.endSection();
                                        unit = Unit.INSTANCE;
                                    } finally {
                                    }
                                } finally {
                                }
                            } catch (Exception e) {
                                e = e;
                                if (e instanceof CameraAccessException) {
                                    String str10 = str5;
                                    if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                            android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                                        }
                                        cameraErrorListener.mo1832onCameraError3M5Xam4(str10, CameraError.Companion.m1570getERROR_GRAPH_CONFIGv7Vf74A(), false);
                                    } else {
                                        if (!(e instanceof IllegalStateException)) {
                                            throw e;
                                        }
                                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                            android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                                        }
                                    }
                                } else {
                                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                        android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                                    }
                                    cameraErrorListener.mo1832onCameraError3M5Xam4(str5, CameraError.Companion.m1559fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), z);
                                }
                                unit = null;
                                i2 = z;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            str5 = strMo1797getCameraIdDz_R5H8;
                            str6 = "format(...)";
                            str7 = "f ms";
                            z = true;
                            if (e instanceof CameraAccessException) {
                            }
                            unit = null;
                            i2 = z;
                            Trace.endSection();
                            long jM1880constructorimpl2 = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                            log = Log.INSTANCE;
                            if (log.getDEBUG_LOGGABLE()) {
                            }
                            if (unit == null) {
                            }
                            if (unit == null) {
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        str3 = "format(...)";
                        str4 = "f ms";
                        r8 = 1;
                        str = str3;
                        str2 = str4;
                        locale = null;
                        i = r8;
                        Trace.endSection();
                        long jM1880constructorimpl3 = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                        }
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                    str5 = strMo1797getCameraIdDz_R5H8;
                    str6 = "format(...)";
                    str7 = "f ms";
                    debug = debug2;
                } catch (Throwable th3) {
                    th = th3;
                    str3 = "format(...)";
                    str4 = "f ms";
                    debug = debug2;
                }
                Trace.endSection();
                long jM1880constructorimpl22 = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                log = Log.INSTANCE;
                if (log.getDEBUG_LOGGABLE()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str8);
                    sb2.append(" - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    Object[] objArr2 = new Object[i2];
                    objArr2[0] = Double.valueOf(jM1880constructorimpl22 / 1000000.0d);
                    String str11 = String.format(null, "%.3" + str7, Arrays.copyOf(objArr2, i2));
                    Intrinsics.checkNotNullExpressionValue(str11, str6);
                    sb2.append(str11);
                    android.util.Log.d("CXCP", sb2.toString());
                }
                if (unit == null) {
                    if (log.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to create capture session from " + this.cameraDevice + ". Finalizing previous session");
                    }
                    if (sessionStateCallback != null) {
                        onSessionFinalizedWithTrace(sessionStateCallback);
                        Unit unit4 = Unit.INSTANCE;
                    }
                }
                if (unit == null) {
                    return i2;
                }
                return false;
            } catch (Throwable th4) {
                th = th4;
                str = "format(...)";
                str2 = "f ms";
                debug = debug2;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /* JADX INFO: renamed from: createCaptureRequest-2PPcXtw, reason: not valid java name */
    public CaptureRequest.Builder mo1796createCaptureRequest2PPcXtw(int i) throws Throwable {
        double d;
        CaptureRequest.Builder builderCreateCaptureRequest;
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#createCaptureRequest" + SignatureVisitor.SUPER + mo1797getCameraIdDz_R5H8();
        long jMo1888nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU();
        try {
            Trace.beginSection(str);
            d = 1000000.0d;
            try {
                String strMo1797getCameraIdDz_R5H8 = mo1797getCameraIdDz_R5H8();
                CameraErrorListener cameraErrorListener = this.cameraErrorListener;
                try {
                    builderCreateCaptureRequest = this.cameraDevice.createCaptureRequest(i);
                } catch (Exception e) {
                    if (e instanceof CameraAccessException) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                        }
                        cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1559fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                    } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                        if (Log.INSTANCE.getWARN_LOGGABLE()) {
                            android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                        }
                        cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1570getERROR_GRAPH_CONFIGv7Vf74A(), false);
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
                Trace.endSection();
                long jM1880constructorimpl = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(" - ");
                    Timestamps timestamps = Timestamps.INSTANCE;
                    String str2 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl / 1000000.0d)}, 1));
                    Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
                    sb.append(str2);
                    android.util.Log.d("CXCP", sb.toString());
                }
                return builderCreateCaptureRequest;
            } catch (Throwable th) {
                th = th;
                Trace.endSection();
                long jM1880constructorimpl2 = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append(" - ");
                    Timestamps timestamps2 = Timestamps.INSTANCE;
                    String str3 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl2 / d)}, 1));
                    Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
                    sb2.append(str3);
                    android.util.Log.d("CXCP", sb2.toString());
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            d = 1000000.0d;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.AudioRestrictionController.Listener
    /* JADX INFO: renamed from: onCameraAudioRestrictionUpdated-LwUUkyU, reason: not valid java name */
    public void mo1798onCameraAudioRestrictionUpdatedLwUUkyU(int i) {
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection("setCameraAudioRestriction");
            String strMo1797getCameraIdDz_R5H8 = mo1797getCameraIdDz_R5H8();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            try {
                Api30Compat.setCameraAudioRestriction(this.cameraDevice, i);
                Unit unit = Unit.INSTANCE;
            } catch (Exception e) {
                if (e instanceof CameraAccessException) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                    }
                    cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1559fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                    }
                    cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1570getERROR_GRAPH_CONFIGv7Vf74A(), false);
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
        SessionStateCallback sessionStateCallback;
        if (!this.closed.compareAndSet(false, true) || (sessionStateCallback = (SessionStateCallback) this._lastStateCallback.getValue()) == null) {
            return;
        }
        onSessionDisconnectedWithTrace(sessionStateCallback);
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public void onDeviceClosed() {
        if (!this.closed.getValue()) {
            throw new IllegalStateException("Check failed.");
        }
        SessionStateCallback sessionStateCallback = (SessionStateCallback) this._lastStateCallback.getAndSet(null);
        if (sessionStateCallback != null) {
            onSessionFinalizedWithTrace(sessionStateCallback);
        }
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public Object unwrapAs(KClass type) {
        Intrinsics.checkNotNullParameter(type, "type");
        if (!Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CameraDevice.class))) {
            return null;
        }
        CameraDevice cameraDevice = this.cameraDevice;
        Intrinsics.checkNotNull(cameraDevice, "null cannot be cast to non-null type T of androidx.camera.camera2.pipe.compat.AndroidCameraDevice.unwrapAs");
        return cameraDevice;
    }

    public String toString() {
        return "AndroidCameraDevice(camera=" + ((Object) CameraId.m1607toStringimpl(mo1797getCameraIdDz_R5H8())) + ')';
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public CaptureRequest.Builder createReprocessCaptureRequest(TotalCaptureResult inputResult) throws Throwable {
        double d;
        CaptureRequest.Builder builderCreateReprocessCaptureRequest;
        Intrinsics.checkNotNullParameter(inputResult, "inputResult");
        Debug debug = Debug.INSTANCE;
        String str = "CXCP#createReprocessCaptureRequest" + SignatureVisitor.SUPER + mo1797getCameraIdDz_R5H8();
        long jMo1888nowvQl9yQU = debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU();
        try {
            Trace.beginSection(str);
            d = 1000000.0d;
        } catch (Throwable th) {
            th = th;
            d = 1000000.0d;
        }
        try {
            String strMo1797getCameraIdDz_R5H8 = mo1797getCameraIdDz_R5H8();
            CameraErrorListener cameraErrorListener = this.cameraErrorListener;
            try {
                builderCreateReprocessCaptureRequest = this.cameraDevice.createReprocessCaptureRequest(inputResult);
            } catch (Exception e) {
                if (e instanceof CameraAccessException) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                    }
                    cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1559fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                    }
                    cameraErrorListener.mo1832onCameraError3M5Xam4(strMo1797getCameraIdDz_R5H8, CameraError.Companion.m1570getERROR_GRAPH_CONFIGv7Vf74A(), false);
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
            Trace.endSection();
            long jM1880constructorimpl = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(" - ");
                Timestamps timestamps = Timestamps.INSTANCE;
                String str2 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl / 1000000.0d)}, 1));
                Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
                sb.append(str2);
                android.util.Log.d("CXCP", sb.toString());
            }
            return builderCreateReprocessCaptureRequest;
        } catch (Throwable th2) {
            th = th2;
            Trace.endSection();
            long jM1880constructorimpl2 = DurationNs.m1880constructorimpl(debug.getSystemTimeSource$camera_camera2_pipe().mo1888nowvQl9yQU() - jMo1888nowvQl9yQU);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(" - ");
                Timestamps timestamps2 = Timestamps.INSTANCE;
                String str3 = String.format(null, "%.3f ms", Arrays.copyOf(new Object[]{Double.valueOf(jM1880constructorimpl2 / d)}, 1));
                Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
                sb2.append(str3);
                android.util.Log.d("CXCP", sb2.toString());
            }
            throw th;
        }
    }

    private final Pair checkAndSetStateCallback(SessionStateCallback sessionStateCallback) {
        if (this.closed.getValue()) {
            onSessionFinalizedWithTrace(sessionStateCallback);
            return new Pair(Boolean.FALSE, null);
        }
        return new Pair(Boolean.TRUE, this._lastStateCallback.getAndSet(sessionStateCallback));
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
