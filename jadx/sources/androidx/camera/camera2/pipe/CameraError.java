package androidx.camera.camera2.pipe;

import android.hardware.camera2.CameraAccessException;
import android.os.Build;
import androidx.camera.camera2.pipe.core.Log;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.voip.Instance;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraError {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int ERROR_UNDETERMINED = m1551constructorimpl(0);
    private static final int ERROR_CAMERA_IN_USE = m1551constructorimpl(1);
    private static final int ERROR_CAMERA_LIMIT_EXCEEDED = m1551constructorimpl(2);
    private static final int ERROR_CAMERA_DISABLED = m1551constructorimpl(3);
    private static final int ERROR_CAMERA_DEVICE = m1551constructorimpl(4);
    private static final int ERROR_CAMERA_SERVICE = m1551constructorimpl(5);
    private static final int ERROR_CAMERA_DISCONNECTED = m1551constructorimpl(6);
    private static final int ERROR_ILLEGAL_ARGUMENT_EXCEPTION = m1551constructorimpl(7);
    private static final int ERROR_SECURITY_EXCEPTION = m1551constructorimpl(8);
    private static final int ERROR_GRAPH_CONFIG = m1551constructorimpl(9);
    private static final int ERROR_DO_NOT_DISTURB_ENABLED = m1551constructorimpl(10);
    private static final int ERROR_UNKNOWN_EXCEPTION = m1551constructorimpl(11);
    private static final int ERROR_CAMERA_OPENER = m1551constructorimpl(12);
    private static final int ERROR_CAMERA_OPEN_TIMEOUT = m1551constructorimpl(13);

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ CameraError m1550boximpl(int i) {
        return new CameraError(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m1551constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1552equalsimpl(int i, Object obj) {
        return (obj instanceof CameraError) && i == ((CameraError) obj).m1557unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1553equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1554hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m1552equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1554hashCodeimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1557unboximpl() {
        return this.value;
    }

    private /* synthetic */ CameraError(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: isDisconnected-impl, reason: not valid java name */
    public static final boolean m1555isDisconnectedimpl(int i) {
        return m1553equalsimpl0(i, ERROR_CAMERA_DISCONNECTED) || m1553equalsimpl0(i, ERROR_CAMERA_IN_USE) || m1553equalsimpl0(i, ERROR_CAMERA_LIMIT_EXCEEDED);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getERROR_UNDETERMINED-v7Vf74A, reason: not valid java name */
        public final int m1573getERROR_UNDETERMINEDv7Vf74A() {
            return CameraError.ERROR_UNDETERMINED;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_IN_USE-v7Vf74A, reason: not valid java name */
        public final int m1564getERROR_CAMERA_IN_USEv7Vf74A() {
            return CameraError.ERROR_CAMERA_IN_USE;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_LIMIT_EXCEEDED-v7Vf74A, reason: not valid java name */
        public final int m1565getERROR_CAMERA_LIMIT_EXCEEDEDv7Vf74A() {
            return CameraError.ERROR_CAMERA_LIMIT_EXCEEDED;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_DISABLED-v7Vf74A, reason: not valid java name */
        public final int m1562getERROR_CAMERA_DISABLEDv7Vf74A() {
            return CameraError.ERROR_CAMERA_DISABLED;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_DEVICE-v7Vf74A, reason: not valid java name */
        public final int m1561getERROR_CAMERA_DEVICEv7Vf74A() {
            return CameraError.ERROR_CAMERA_DEVICE;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_SERVICE-v7Vf74A, reason: not valid java name */
        public final int m1568getERROR_CAMERA_SERVICEv7Vf74A() {
            return CameraError.ERROR_CAMERA_SERVICE;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_DISCONNECTED-v7Vf74A, reason: not valid java name */
        public final int m1563getERROR_CAMERA_DISCONNECTEDv7Vf74A() {
            return CameraError.ERROR_CAMERA_DISCONNECTED;
        }

        /* JADX INFO: renamed from: getERROR_ILLEGAL_ARGUMENT_EXCEPTION-v7Vf74A, reason: not valid java name */
        public final int m1571getERROR_ILLEGAL_ARGUMENT_EXCEPTIONv7Vf74A() {
            return CameraError.ERROR_ILLEGAL_ARGUMENT_EXCEPTION;
        }

        /* JADX INFO: renamed from: getERROR_SECURITY_EXCEPTION-v7Vf74A, reason: not valid java name */
        public final int m1572getERROR_SECURITY_EXCEPTIONv7Vf74A() {
            return CameraError.ERROR_SECURITY_EXCEPTION;
        }

        /* JADX INFO: renamed from: getERROR_GRAPH_CONFIG-v7Vf74A, reason: not valid java name */
        public final int m1570getERROR_GRAPH_CONFIGv7Vf74A() {
            return CameraError.ERROR_GRAPH_CONFIG;
        }

        /* JADX INFO: renamed from: getERROR_DO_NOT_DISTURB_ENABLED-v7Vf74A, reason: not valid java name */
        public final int m1569getERROR_DO_NOT_DISTURB_ENABLEDv7Vf74A() {
            return CameraError.ERROR_DO_NOT_DISTURB_ENABLED;
        }

        /* JADX INFO: renamed from: getERROR_UNKNOWN_EXCEPTION-v7Vf74A, reason: not valid java name */
        public final int m1574getERROR_UNKNOWN_EXCEPTIONv7Vf74A() {
            return CameraError.ERROR_UNKNOWN_EXCEPTION;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_OPENER-v7Vf74A, reason: not valid java name */
        public final int m1566getERROR_CAMERA_OPENERv7Vf74A() {
            return CameraError.ERROR_CAMERA_OPENER;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_OPEN_TIMEOUT-v7Vf74A, reason: not valid java name */
        public final int m1567getERROR_CAMERA_OPEN_TIMEOUTv7Vf74A() {
            return CameraError.ERROR_CAMERA_OPEN_TIMEOUT;
        }

        /* JADX INFO: renamed from: from-PVuDhNw$camera_camera2_pipe, reason: not valid java name */
        public final int m1560fromPVuDhNw$camera_camera2_pipe(Throwable throwable) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            if (throwable instanceof CameraAccessException) {
                return m1559fromPVuDhNw$camera_camera2_pipe((CameraAccessException) throwable);
            }
            if (throwable instanceof IllegalArgumentException) {
                return m1571getERROR_ILLEGAL_ARGUMENT_EXCEPTIONv7Vf74A();
            }
            if (throwable instanceof SecurityException) {
                return m1572getERROR_SECURITY_EXCEPTIONv7Vf74A();
            }
            if (!shouldHandleDoNotDisturbException$camera_camera2_pipe(throwable)) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Unexpected throwable: " + throwable);
                }
                return m1574getERROR_UNKNOWN_EXCEPTIONv7Vf74A();
            }
            return m1569getERROR_DO_NOT_DISTURB_ENABLEDv7Vf74A();
        }

        /* JADX INFO: renamed from: from-PVuDhNw$camera_camera2_pipe, reason: not valid java name */
        public final int m1559fromPVuDhNw$camera_camera2_pipe(CameraAccessException exception) {
            Intrinsics.checkNotNullParameter(exception, "exception");
            int reason = exception.getReason();
            if (reason == 1) {
                return m1562getERROR_CAMERA_DISABLEDv7Vf74A();
            }
            if (reason == 2) {
                return m1563getERROR_CAMERA_DISCONNECTEDv7Vf74A();
            }
            if (reason == 3) {
                return m1573getERROR_UNDETERMINEDv7Vf74A();
            }
            if (reason == 4) {
                return m1564getERROR_CAMERA_IN_USEv7Vf74A();
            }
            if (reason != 5) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Unexpected CameraAccessException: " + exception);
                }
                return m1574getERROR_UNKNOWN_EXCEPTIONv7Vf74A();
            }
            return m1565getERROR_CAMERA_LIMIT_EXCEEDEDv7Vf74A();
        }

        /* JADX INFO: renamed from: from-PVuDhNw$camera_camera2_pipe, reason: not valid java name */
        public final int m1558fromPVuDhNw$camera_camera2_pipe(int i) {
            if (i == 1) {
                return m1564getERROR_CAMERA_IN_USEv7Vf74A();
            }
            if (i == 2) {
                return m1565getERROR_CAMERA_LIMIT_EXCEEDEDv7Vf74A();
            }
            if (i == 3) {
                return m1562getERROR_CAMERA_DISABLEDv7Vf74A();
            }
            if (i == 4) {
                return m1561getERROR_CAMERA_DEVICEv7Vf74A();
            }
            if (i == 5) {
                return m1568getERROR_CAMERA_SERVICEv7Vf74A();
            }
            throw new IllegalArgumentException("Unexpected StateCallback error code: " + i);
        }

        public final boolean shouldHandleDoNotDisturbException$camera_camera2_pipe(Throwable throwable) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            return Build.VERSION.SDK_INT == 28 && isDoNotDisturbException(throwable);
        }

        private final boolean isDoNotDisturbException(Throwable th) {
            if (!(th instanceof RuntimeException)) {
                return false;
            }
            StackTraceElement[] stackTrace = ((RuntimeException) th).getStackTrace();
            Intrinsics.checkNotNull(stackTrace);
            return Intrinsics.areEqual(!(stackTrace.length == 0) ? stackTrace[0].getMethodName() : null, "_enableShutterSound");
        }
    }

    public String toString() {
        return m1556toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1556toStringimpl(int i) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("CameraError(");
        if (m1553equalsimpl0(i, ERROR_UNDETERMINED)) {
            str = "ERROR_UNDETERMINED";
        } else if (m1553equalsimpl0(i, ERROR_CAMERA_IN_USE)) {
            str = "ERROR_CAMERA_IN_USE";
        } else if (m1553equalsimpl0(i, ERROR_CAMERA_LIMIT_EXCEEDED)) {
            str = "ERROR_CAMERA_LIMIT_EXCEEDED";
        } else if (m1553equalsimpl0(i, ERROR_CAMERA_DISABLED)) {
            str = "ERROR_CAMERA_DISABLED";
        } else if (m1553equalsimpl0(i, ERROR_CAMERA_DEVICE)) {
            str = "ERROR_CAMERA_DEVICE";
        } else if (m1553equalsimpl0(i, ERROR_CAMERA_SERVICE)) {
            str = "ERROR_CAMERA_SERVICE";
        } else if (m1553equalsimpl0(i, ERROR_CAMERA_DISCONNECTED)) {
            str = "ERROR_CAMERA_DISCONNECTED";
        } else if (m1553equalsimpl0(i, ERROR_ILLEGAL_ARGUMENT_EXCEPTION)) {
            str = "ERROR_ILLEGAL_ARGUMENT_EXCEPTION";
        } else if (m1553equalsimpl0(i, ERROR_SECURITY_EXCEPTION)) {
            str = "ERROR_SECURITY_EXCEPTION";
        } else if (m1553equalsimpl0(i, ERROR_GRAPH_CONFIG)) {
            str = "ERROR_GRAPH_CONFIG";
        } else if (m1553equalsimpl0(i, ERROR_DO_NOT_DISTURB_ENABLED)) {
            str = "ERROR_DO_NOT_DISTURB_ENABLED";
        } else if (m1553equalsimpl0(i, ERROR_UNKNOWN_EXCEPTION)) {
            str = "ERROR_UNKNOWN_EXCEPTION";
        } else if (m1553equalsimpl0(i, ERROR_CAMERA_OPENER)) {
            str = "ERROR_CAMERA_OPENER";
        } else {
            str = m1553equalsimpl0(i, ERROR_CAMERA_OPEN_TIMEOUT) ? "ERROR_CAMERA_OPEN_TIMEOUT" : Instance.ERROR_UNKNOWN;
        }
        sb.append(str);
        sb.append(')');
        return sb.toString();
    }
}
