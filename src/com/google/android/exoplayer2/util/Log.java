package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import java.net.UnknownHostException;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Log {
    private static int logLevel = 0;
    private static boolean logStackTraces = true;
    private static final Object lock = new Object();
    private static Logger logger = Logger.DEFAULT;

    public interface Logger {
        public static final Logger DEFAULT = new Logger() { // from class: com.google.android.exoplayer2.util.Log.Logger.1
            @Override // com.google.android.exoplayer2.util.Log.Logger
            /* JADX INFO: renamed from: d */
            public void mo276d(String str, String str2) {
                android.util.Log.d(str, str2);
            }

            @Override // com.google.android.exoplayer2.util.Log.Logger
            /* JADX INFO: renamed from: i */
            public void mo278i(String str, String str2) {
                android.util.Log.i(str, str2);
            }

            @Override // com.google.android.exoplayer2.util.Log.Logger
            /* JADX INFO: renamed from: w */
            public void mo279w(String str, String str2) {
                android.util.Log.w(str, str2);
            }

            @Override // com.google.android.exoplayer2.util.Log.Logger
            /* JADX INFO: renamed from: e */
            public void mo277e(String str, String str2) {
                android.util.Log.e(str, str2);
            }
        };

        /* JADX INFO: renamed from: d */
        void mo276d(String str, String str2);

        /* JADX INFO: renamed from: e */
        void mo277e(String str, String str2);

        /* JADX INFO: renamed from: i */
        void mo278i(String str, String str2);

        /* JADX INFO: renamed from: w */
        void mo279w(String str, String str2);
    }

    @Pure
    /* JADX INFO: renamed from: d */
    public static void m269d(String str, String str2) {
        synchronized (lock) {
            try {
                if (logLevel == 0) {
                    logger.mo276d(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Pure
    /* JADX INFO: renamed from: i */
    public static void m272i(String str, String str2) {
        synchronized (lock) {
            try {
                if (logLevel <= 1) {
                    logger.mo278i(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Pure
    /* JADX INFO: renamed from: i */
    public static void m273i(String str, String str2, Throwable th) {
        m272i(str, appendThrowableString(str2, th));
    }

    @Pure
    /* JADX INFO: renamed from: w */
    public static void m274w(String str, String str2) {
        synchronized (lock) {
            try {
                if (logLevel <= 2) {
                    logger.mo279w(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Pure
    /* JADX INFO: renamed from: w */
    public static void m275w(String str, String str2, Throwable th) {
        m274w(str, appendThrowableString(str2, th));
    }

    @Pure
    /* JADX INFO: renamed from: e */
    public static void m270e(String str, String str2) {
        synchronized (lock) {
            try {
                if (logLevel <= 3) {
                    logger.mo277e(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Pure
    /* JADX INFO: renamed from: e */
    public static void m271e(String str, String str2, Throwable th) {
        m270e(str, appendThrowableString(str2, th));
    }

    @Pure
    public static String getThrowableString(Throwable th) {
        synchronized (lock) {
            try {
                if (th == null) {
                    return null;
                }
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
    private static String appendThrowableString(String str, Throwable th) {
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
