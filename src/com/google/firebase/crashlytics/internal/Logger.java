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
    public void m459d(String str, Throwable th) {
        if (canLog(3)) {
            Log.d(this.tag, str, th);
        }
    }

    /* JADX INFO: renamed from: v */
    public void m465v(String str, Throwable th) {
        if (canLog(2)) {
            Log.v(this.tag, str, th);
        }
    }

    /* JADX INFO: renamed from: i */
    public void m463i(String str, Throwable th) {
        if (canLog(4)) {
            Log.i(this.tag, str, th);
        }
    }

    /* JADX INFO: renamed from: w */
    public void m467w(String str, Throwable th) {
        if (canLog(5)) {
            Log.w(this.tag, str, th);
        }
    }

    /* JADX INFO: renamed from: e */
    public void m461e(String str, Throwable th) {
        if (canLog(6)) {
            Log.e(this.tag, str, th);
        }
    }

    /* JADX INFO: renamed from: d */
    public void m458d(String str) {
        m459d(str, null);
    }

    /* JADX INFO: renamed from: v */
    public void m464v(String str) {
        m465v(str, null);
    }

    /* JADX INFO: renamed from: i */
    public void m462i(String str) {
        m463i(str, null);
    }

    /* JADX INFO: renamed from: w */
    public void m466w(String str) {
        m467w(str, null);
    }

    /* JADX INFO: renamed from: e */
    public void m460e(String str) {
        m461e(str, null);
    }
}
