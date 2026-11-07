package androidx.media3.common.util;

import android.text.TextUtils;
import java.net.UnknownHostException;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Log {
    private static int logLevel = 0;
    private static boolean logStackTraces = true;
    private static final Object lock = new Object();
    private static Logger logger = Logger.DEFAULT;

    public interface Logger {
        public static final Logger DEFAULT = new Logger() { // from class: androidx.media3.common.util.Log.Logger.1
            @Override // androidx.media3.common.util.Log.Logger
            /* JADX INFO: renamed from: d */
            public void mo165d(String str, String str2, Throwable th) {
                android.util.Log.d(str, Log.appendThrowableString(str2, th));
            }

            @Override // androidx.media3.common.util.Log.Logger
            /* JADX INFO: renamed from: i */
            public void mo167i(String str, String str2, Throwable th) {
                android.util.Log.i(str, Log.appendThrowableString(str2, th));
            }

            @Override // androidx.media3.common.util.Log.Logger
            /* JADX INFO: renamed from: w */
            public void mo168w(String str, String str2, Throwable th) {
                android.util.Log.w(str, Log.appendThrowableString(str2, th));
            }

            @Override // androidx.media3.common.util.Log.Logger
            /* JADX INFO: renamed from: e */
            public void mo166e(String str, String str2, Throwable th) {
                android.util.Log.e(str, Log.appendThrowableString(str2, th));
            }
        };

        /* JADX INFO: renamed from: d */
        void mo165d(String str, String str2, Throwable th);

        /* JADX INFO: renamed from: e */
        void mo166e(String str, String str2, Throwable th);

        /* JADX INFO: renamed from: i */
        void mo167i(String str, String str2, Throwable th);

        /* JADX INFO: renamed from: w */
        void mo168w(String str, String str2, Throwable th);
    }

    @Pure
    /* JADX INFO: renamed from: d */
    public static void m158d(String str, String str2) {
        synchronized (lock) {
            try {
                if (logLevel == 0) {
                    logger.mo165d(str, str2, null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Pure
    /* JADX INFO: renamed from: d */
    public static void m159d(String str, String str2, Throwable th) {
        synchronized (lock) {
            try {
                if (logLevel == 0) {
                    logger.mo165d(str, str2, th);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Pure
    /* JADX INFO: renamed from: i */
    public static void m162i(String str, String str2) {
        synchronized (lock) {
            try {
                if (logLevel <= 1) {
                    logger.mo167i(str, str2, null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Pure
    /* JADX INFO: renamed from: w */
    public static void m163w(String str, String str2) {
        synchronized (lock) {
            try {
                if (logLevel <= 2) {
                    logger.mo168w(str, str2, null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Pure
    /* JADX INFO: renamed from: w */
    public static void m164w(String str, String str2, Throwable th) {
        synchronized (lock) {
            try {
                if (logLevel <= 2) {
                    logger.mo168w(str, str2, th);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Pure
    /* JADX INFO: renamed from: e */
    public static void m160e(String str, String str2) {
        synchronized (lock) {
            try {
                if (logLevel <= 3) {
                    logger.mo166e(str, str2, null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Pure
    /* JADX INFO: renamed from: e */
    public static void m161e(String str, String str2, Throwable th) {
        synchronized (lock) {
            try {
                if (logLevel <= 3) {
                    logger.mo166e(str, str2, th);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Pure
    public static String getThrowableString(Throwable th) {
        if (th == null) {
            return null;
        }
        synchronized (lock) {
            try {
                if (isCausedByUnknownHostException(th)) {
                    return "UnknownHostException (no network)";
                }
                if (!logStackTraces) {
                    return th.getMessage();
                }
                return android.util.Log.getStackTraceString(th).trim().replace("\t", "    ");
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Pure
    public static String appendThrowableString(String str, Throwable th) {
        String throwableString = getThrowableString(th);
        if (TextUtils.isEmpty(throwableString)) {
            return str;
        }
        return str + "\n  " + throwableString.replace("\n", "\n  ") + '\n';
    }

    @Pure
    private static boolean isCausedByUnknownHostException(Throwable th) {
        while (th != null) {
            if (th instanceof UnknownHostException) {
                return true;
            }
            th = th.getCause();
        }
        return false;
    }
}
