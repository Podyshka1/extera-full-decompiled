package com.google.firebase.crashlytics.internal;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class Logger {
    static final Logger DEFAULT_LOGGER = new Logger("FirebaseCrashlytics");
    private int logLevel = 4;
    private final String tag;

    public Logger(String str) {
        this.tag = str;
    }

    public static Logger getLogger() {
        return DEFAULT_LOGGER;
    }

    private boolean canLog(int i) {
        return this.logLevel <= i || Log.isLoggable(this.tag, i);
    }

    /* JADX INFO: renamed from: d */
    public void m502d(String str, Throwable th) {
        if (canLog(3)) {
            Log.d(this.tag, str, th);
        }
    }

    /* JADX INFO: renamed from: v */
    public void m508v(String str, Throwable th) {
        if (canLog(2)) {
            Log.v(this.tag, str, th);
        }
    }

    /* JADX INFO: renamed from: i */
    public void m506i(String str, Throwable th) {
        if (canLog(4)) {
            Log.i(this.tag, str, th);
        }
    }

    /* JADX INFO: renamed from: w */
    public void m510w(String str, Throwable th) {
        if (canLog(5)) {
            Log.w(this.tag, str, th);
        }
    }

    /* JADX INFO: renamed from: e */
    public void m504e(String str, Throwable th) {
        if (canLog(6)) {
            Log.e(this.tag, str, th);
        }
    }

    /* JADX INFO: renamed from: d */
    public void m501d(String str) {
        m502d(str, null);
    }

    /* JADX INFO: renamed from: v */
    public void m507v(String str) {
        m508v(str, null);
    }

    /* JADX INFO: renamed from: i */
    public void m505i(String str) {
        m506i(str, null);
    }

    /* JADX INFO: renamed from: w */
    public void m509w(String str) {
        m510w(str, null);
    }

    /* JADX INFO: renamed from: e */
    public void m503e(String str) {
        m504e(str, null);
    }
}
