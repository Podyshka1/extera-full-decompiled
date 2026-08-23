package androidx.camera.camera2.pipe;

import android.hardware.camera2.CameraAccessException;
import android.os.Build;
import androidx.camera.camera2.pipe.core.Log;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.voip.Instance;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0087@\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u0005J\u001a\u0010\u0013\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\u0088\u0001\u0003\u0092\u0001\u00020\u0002¨\u0006\u0018"}, d2 = {"Landroidx/camera/camera2/pipe/CameraError;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "value", "constructor-impl", "(I)I", _UrlKt.FRAGMENT_ENCODE_SET, "isDisconnected-impl", "(I)Z", "isDisconnected", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(I)Ljava/lang/String;", "toString", "hashCode-impl", "hashCode", "other", "equals-impl", "(ILjava/lang/Object;)Z", "equals", "I", "getValue", "()I", "Companion", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class CameraError {
    private final int value;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int ERROR_UNDETERMINED = m1157constructorimpl(0);
    private static final int ERROR_CAMERA_IN_USE = m1157constructorimpl(1);
    private static final int ERROR_CAMERA_LIMIT_EXCEEDED = m1157constructorimpl(2);
    private static final int ERROR_CAMERA_DISABLED = m1157constructorimpl(3);
    private static final int ERROR_CAMERA_DEVICE = m1157constructorimpl(4);
    private static final int ERROR_CAMERA_SERVICE = m1157constructorimpl(5);
    private static final int ERROR_CAMERA_DISCONNECTED = m1157constructorimpl(6);
    private static final int ERROR_ILLEGAL_ARGUMENT_EXCEPTION = m1157constructorimpl(7);
    private static final int ERROR_SECURITY_EXCEPTION = m1157constructorimpl(8);
    private static final int ERROR_GRAPH_CONFIG = m1157constructorimpl(9);
    private static final int ERROR_DO_NOT_DISTURB_ENABLED = m1157constructorimpl(10);
    private static final int ERROR_UNKNOWN_EXCEPTION = m1157constructorimpl(11);
    private static final int ERROR_CAMERA_OPENER = m1157constructorimpl(12);
    private static final int ERROR_CAMERA_OPEN_TIMEOUT = m1157constructorimpl(13);

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ CameraError m1156boximpl(int i) {
        return new CameraError(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m1157constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1158equalsimpl(int i, Object obj) {
        return (obj instanceof CameraError) && i == ((CameraError) obj).getValue();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1159equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1160hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    public boolean equals(Object obj) {
        return m1158equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1160hashCodeimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ int getValue() {
        return this.value;
    }

    private /* synthetic */ CameraError(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: isDisconnected-impl, reason: not valid java name */
    public static final boolean m1161isDisconnectedimpl(int i) {
        return m1159equalsimpl0(i, ERROR_CAMERA_DISCONNECTED) || m1159equalsimpl0(i, ERROR_CAMERA_IN_USE) || m1159equalsimpl0(i, ERROR_CAMERA_LIMIT_EXCEEDED);
    }

    @kotlin.Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010#\u001a\u00020\u00052\u0006\u0010$\u001a\u00020%H\u0000¢\u0006\u0004\b&\u0010'J\u0017\u0010#\u001a\u00020\u00052\u0006\u0010(\u001a\u00020)H\u0000¢\u0006\u0004\b&\u0010*J\u0017\u0010#\u001a\u00020\u00052\u0006\u0010+\u001a\u00020,H\u0000¢\u0006\u0004\b&\u0010-J\u0015\u0010.\u001a\u00020/2\u0006\u0010$\u001a\u00020%H\u0000¢\u0006\u0002\b0J\u0010\u00101\u001a\u00020/2\u0006\u0010$\u001a\u00020%H\u0002R\u0013\u0010\u0004\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\t\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\n\u0010\u0007R\u0013\u0010\u000b\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\f\u0010\u0007R\u0013\u0010\r\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u000e\u0010\u0007R\u0013\u0010\u000f\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0010\u0010\u0007R\u0013\u0010\u0011\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0012\u0010\u0007R\u0013\u0010\u0013\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0014\u0010\u0007R\u0013\u0010\u0015\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0016\u0010\u0007R\u0013\u0010\u0017\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0018\u0010\u0007R\u0013\u0010\u0019\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u001a\u0010\u0007R\u0013\u0010\u001b\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u001c\u0010\u0007R\u0013\u0010\u001d\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u001e\u0010\u0007R\u0013\u0010\u001f\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b \u0010\u0007R\u0013\u0010!\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\"\u0010\u0007¨\u00062"}, d2 = {"Landroidx/camera/camera2/pipe/CameraError$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "ERROR_UNDETERMINED", "Landroidx/camera/camera2/pipe/CameraError;", "getERROR_UNDETERMINED-v7Vf74A", "()I", "I", "ERROR_CAMERA_IN_USE", "getERROR_CAMERA_IN_USE-v7Vf74A", "ERROR_CAMERA_LIMIT_EXCEEDED", "getERROR_CAMERA_LIMIT_EXCEEDED-v7Vf74A", "ERROR_CAMERA_DISABLED", "getERROR_CAMERA_DISABLED-v7Vf74A", "ERROR_CAMERA_DEVICE", "getERROR_CAMERA_DEVICE-v7Vf74A", "ERROR_CAMERA_SERVICE", "getERROR_CAMERA_SERVICE-v7Vf74A", "ERROR_CAMERA_DISCONNECTED", "getERROR_CAMERA_DISCONNECTED-v7Vf74A", "ERROR_ILLEGAL_ARGUMENT_EXCEPTION", "getERROR_ILLEGAL_ARGUMENT_EXCEPTION-v7Vf74A", "ERROR_SECURITY_EXCEPTION", "getERROR_SECURITY_EXCEPTION-v7Vf74A", "ERROR_GRAPH_CONFIG", "getERROR_GRAPH_CONFIG-v7Vf74A", "ERROR_DO_NOT_DISTURB_ENABLED", "getERROR_DO_NOT_DISTURB_ENABLED-v7Vf74A", "ERROR_UNKNOWN_EXCEPTION", "getERROR_UNKNOWN_EXCEPTION-v7Vf74A", "ERROR_CAMERA_OPENER", "getERROR_CAMERA_OPENER-v7Vf74A", "ERROR_CAMERA_OPEN_TIMEOUT", "getERROR_CAMERA_OPEN_TIMEOUT-v7Vf74A", "from", "throwable", _UrlKt.FRAGMENT_ENCODE_SET, "from-PVuDhNw$camera_camera2_pipe", "(Ljava/lang/Throwable;)I", "exception", "Landroid/hardware/camera2/CameraAccessException;", "(Landroid/hardware/camera2/CameraAccessException;)I", "stateCallbackError", _UrlKt.FRAGMENT_ENCODE_SET, "(I)I", "shouldHandleDoNotDisturbException", _UrlKt.FRAGMENT_ENCODE_SET, "shouldHandleDoNotDisturbException$camera_camera2_pipe", "isDoNotDisturbException", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCameraError.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraError.kt\nandroidx/camera/camera2/pipe/CameraError$Companion\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,228:1\n71#2,2:229\n71#2,2:231\n1#3:233\n*S KotlinDebug\n*F\n+ 1 CameraError.kt\nandroidx/camera/camera2/pipe/CameraError$Companion\n*L\n140#1:229,2\n154#1:231,2\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getERROR_UNDETERMINED-v7Vf74A, reason: not valid java name */
        public final int m1179getERROR_UNDETERMINEDv7Vf74A() {
            return CameraError.ERROR_UNDETERMINED;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_IN_USE-v7Vf74A, reason: not valid java name */
        public final int m1170getERROR_CAMERA_IN_USEv7Vf74A() {
            return CameraError.ERROR_CAMERA_IN_USE;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_LIMIT_EXCEEDED-v7Vf74A, reason: not valid java name */
        public final int m1171getERROR_CAMERA_LIMIT_EXCEEDEDv7Vf74A() {
            return CameraError.ERROR_CAMERA_LIMIT_EXCEEDED;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_DISABLED-v7Vf74A, reason: not valid java name */
        public final int m1168getERROR_CAMERA_DISABLEDv7Vf74A() {
            return CameraError.ERROR_CAMERA_DISABLED;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_DEVICE-v7Vf74A, reason: not valid java name */
        public final int m1167getERROR_CAMERA_DEVICEv7Vf74A() {
            return CameraError.ERROR_CAMERA_DEVICE;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_SERVICE-v7Vf74A, reason: not valid java name */
        public final int m1174getERROR_CAMERA_SERVICEv7Vf74A() {
            return CameraError.ERROR_CAMERA_SERVICE;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_DISCONNECTED-v7Vf74A, reason: not valid java name */
        public final int m1169getERROR_CAMERA_DISCONNECTEDv7Vf74A() {
            return CameraError.ERROR_CAMERA_DISCONNECTED;
        }

        /* JADX INFO: renamed from: getERROR_ILLEGAL_ARGUMENT_EXCEPTION-v7Vf74A, reason: not valid java name */
        public final int m1177getERROR_ILLEGAL_ARGUMENT_EXCEPTIONv7Vf74A() {
            return CameraError.ERROR_ILLEGAL_ARGUMENT_EXCEPTION;
        }

        /* JADX INFO: renamed from: getERROR_SECURITY_EXCEPTION-v7Vf74A, reason: not valid java name */
        public final int m1178getERROR_SECURITY_EXCEPTIONv7Vf74A() {
            return CameraError.ERROR_SECURITY_EXCEPTION;
        }

        /* JADX INFO: renamed from: getERROR_GRAPH_CONFIG-v7Vf74A, reason: not valid java name */
        public final int m1176getERROR_GRAPH_CONFIGv7Vf74A() {
            return CameraError.ERROR_GRAPH_CONFIG;
        }

        /* JADX INFO: renamed from: getERROR_DO_NOT_DISTURB_ENABLED-v7Vf74A, reason: not valid java name */
        public final int m1175getERROR_DO_NOT_DISTURB_ENABLEDv7Vf74A() {
            return CameraError.ERROR_DO_NOT_DISTURB_ENABLED;
        }

        /* JADX INFO: renamed from: getERROR_UNKNOWN_EXCEPTION-v7Vf74A, reason: not valid java name */
        public final int m1180getERROR_UNKNOWN_EXCEPTIONv7Vf74A() {
            return CameraError.ERROR_UNKNOWN_EXCEPTION;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_OPENER-v7Vf74A, reason: not valid java name */
        public final int m1172getERROR_CAMERA_OPENERv7Vf74A() {
            return CameraError.ERROR_CAMERA_OPENER;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_OPEN_TIMEOUT-v7Vf74A, reason: not valid java name */
        public final int m1173getERROR_CAMERA_OPEN_TIMEOUTv7Vf74A() {
            return CameraError.ERROR_CAMERA_OPEN_TIMEOUT;
        }

        /* JADX INFO: renamed from: from-PVuDhNw$camera_camera2_pipe, reason: not valid java name */
        public final int m1166fromPVuDhNw$camera_camera2_pipe(Throwable throwable) {
            if (throwable instanceof CameraAccessException) {
                return m1165fromPVuDhNw$camera_camera2_pipe((CameraAccessException) throwable);
            }
            if (throwable instanceof IllegalArgumentException) {
                return m1177getERROR_ILLEGAL_ARGUMENT_EXCEPTIONv7Vf74A();
            }
            if (throwable instanceof SecurityException) {
                return m1178getERROR_SECURITY_EXCEPTIONv7Vf74A();
            }
            if (!shouldHandleDoNotDisturbException$camera_camera2_pipe(throwable)) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Unexpected throwable: " + throwable);
                }
                return m1180getERROR_UNKNOWN_EXCEPTIONv7Vf74A();
            }
            return m1175getERROR_DO_NOT_DISTURB_ENABLEDv7Vf74A();
        }

        /* JADX INFO: renamed from: from-PVuDhNw$camera_camera2_pipe, reason: not valid java name */
        public final int m1165fromPVuDhNw$camera_camera2_pipe(CameraAccessException exception) {
            int reason = exception.getReason();
            if (reason == 1) {
                return m1168getERROR_CAMERA_DISABLEDv7Vf74A();
            }
            if (reason == 2) {
                return m1169getERROR_CAMERA_DISCONNECTEDv7Vf74A();
            }
            if (reason == 3) {
                return m1179getERROR_UNDETERMINEDv7Vf74A();
            }
            if (reason == 4) {
                return m1170getERROR_CAMERA_IN_USEv7Vf74A();
            }
            if (reason != 5) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Unexpected CameraAccessException: " + exception);
                }
                return m1180getERROR_UNKNOWN_EXCEPTIONv7Vf74A();
            }
            return m1171getERROR_CAMERA_LIMIT_EXCEEDEDv7Vf74A();
        }

        /* JADX INFO: renamed from: from-PVuDhNw$camera_camera2_pipe, reason: not valid java name */
        public final int m1164fromPVuDhNw$camera_camera2_pipe(int stateCallbackError) {
            if (stateCallbackError == 1) {
                return m1170getERROR_CAMERA_IN_USEv7Vf74A();
            }
            if (stateCallbackError == 2) {
                return m1171getERROR_CAMERA_LIMIT_EXCEEDEDv7Vf74A();
            }
            if (stateCallbackError == 3) {
                return m1168getERROR_CAMERA_DISABLEDv7Vf74A();
            }
            if (stateCallbackError == 4) {
                return m1167getERROR_CAMERA_DEVICEv7Vf74A();
            }
            if (stateCallbackError == 5) {
                return m1174getERROR_CAMERA_SERVICEv7Vf74A();
            }
            CharCodeKt$$ExternalSyntheticBUOutline0.m752m("Unexpected StateCallback error code: ", stateCallbackError);
            return 0;
        }

        public final boolean shouldHandleDoNotDisturbException$camera_camera2_pipe(Throwable throwable) {
            return Build.VERSION.SDK_INT == 28 && isDoNotDisturbException(throwable);
        }

        private final boolean isDoNotDisturbException(Throwable throwable) {
            if (!(throwable instanceof RuntimeException)) {
                return false;
            }
            StackTraceElement[] stackTrace = ((RuntimeException) throwable).getStackTrace();
            return Intrinsics.areEqual(!(stackTrace.length == 0) ? stackTrace[0].getMethodName() : null, "_enableShutterSound");
        }
    }

    public String toString() {
        return m1162toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1162toStringimpl(int i) {
        String str;
        StringBuilder sb = new StringBuilder("CameraError(");
        if (m1159equalsimpl0(i, ERROR_UNDETERMINED)) {
            str = "ERROR_UNDETERMINED";
        } else if (m1159equalsimpl0(i, ERROR_CAMERA_IN_USE)) {
            str = "ERROR_CAMERA_IN_USE";
        } else if (m1159equalsimpl0(i, ERROR_CAMERA_LIMIT_EXCEEDED)) {
            str = "ERROR_CAMERA_LIMIT_EXCEEDED";
        } else if (m1159equalsimpl0(i, ERROR_CAMERA_DISABLED)) {
            str = "ERROR_CAMERA_DISABLED";
        } else if (m1159equalsimpl0(i, ERROR_CAMERA_DEVICE)) {
            str = "ERROR_CAMERA_DEVICE";
        } else if (m1159equalsimpl0(i, ERROR_CAMERA_SERVICE)) {
            str = "ERROR_CAMERA_SERVICE";
        } else if (m1159equalsimpl0(i, ERROR_CAMERA_DISCONNECTED)) {
            str = "ERROR_CAMERA_DISCONNECTED";
        } else if (m1159equalsimpl0(i, ERROR_ILLEGAL_ARGUMENT_EXCEPTION)) {
            str = "ERROR_ILLEGAL_ARGUMENT_EXCEPTION";
        } else if (m1159equalsimpl0(i, ERROR_SECURITY_EXCEPTION)) {
            str = "ERROR_SECURITY_EXCEPTION";
        } else if (m1159equalsimpl0(i, ERROR_GRAPH_CONFIG)) {
            str = "ERROR_GRAPH_CONFIG";
        } else if (m1159equalsimpl0(i, ERROR_DO_NOT_DISTURB_ENABLED)) {
            str = "ERROR_DO_NOT_DISTURB_ENABLED";
        } else if (m1159equalsimpl0(i, ERROR_UNKNOWN_EXCEPTION)) {
            str = "ERROR_UNKNOWN_EXCEPTION";
        } else if (m1159equalsimpl0(i, ERROR_CAMERA_OPENER)) {
            str = "ERROR_CAMERA_OPENER";
        } else {
            str = m1159equalsimpl0(i, ERROR_CAMERA_OPEN_TIMEOUT) ? "ERROR_CAMERA_OPEN_TIMEOUT" : Instance.ERROR_UNKNOWN;
        }
        sb.append(str);
        sb.append(')');
        return sb.toString();
    }
}
