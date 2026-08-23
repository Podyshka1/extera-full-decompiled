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
    public void m447d(String str, Throwable th) {
        if (canLog(3)) {
            Log.d(this.tag, str, th);
        }
    }

    /* JADX INFO: renamed from: v */
    public void m453v(String str, Throwable th) {
        if (canLog(2)) {
            Log.v(this.tag, str, th);
        }
    }

    /* JADX INFO: renamed from: i */
    public void m451i(String str, Throwable th) {
        if (canLog(4)) {
            Log.i(this.tag, str, th);
        }
    }

    /* JADX INFO: renamed from: w */
    public void m455w(String str, Throwable th) {
        if (canLog(5)) {
            Log.w(this.tag, str, th);
        }
    }

    /* JADX INFO: renamed from: e */
    public void m449e(String str, Throwable th) {
        if (canLog(6)) {
            Log.e(this.tag, str, th);
        }
    }

    /* JADX INFO: renamed from: d */
    public void m446d(String str) {
        m447d(str, null);
    }

    /* JADX INFO: renamed from: v */
    public void m452v(String str) {
        m453v(str, null);
    }

    /* JADX INFO: renamed from: i */
    public void m450i(String str) {
        m451i(str, null);
    }

    /* JADX INFO: renamed from: w */
    public void m454w(String str) {
        m455w(str, null);
    }

    /* JADX INFO: renamed from: e */
    public void m448e(String str) {
        m449e(str, null);
    }
}
