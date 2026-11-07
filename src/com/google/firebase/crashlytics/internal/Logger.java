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
    public void m483d(String str, Throwable th) {
        if (canLog(3)) {
            Log.d(this.tag, str, th);
        }
    }

    /* JADX INFO: renamed from: v */
    public void m489v(String str, Throwable th) {
        if (canLog(2)) {
            Log.v(this.tag, str, th);
        }
    }

    /* JADX INFO: renamed from: i */
    public void m487i(String str, Throwable th) {
        if (canLog(4)) {
            Log.i(this.tag, str, th);
        }
    }

    /* JADX INFO: renamed from: w */
    public void m491w(String str, Throwable th) {
        if (canLog(5)) {
            Log.w(this.tag, str, th);
        }
    }

    /* JADX INFO: renamed from: e */
    public void m485e(String str, Throwable th) {
        if (canLog(6)) {
            Log.e(this.tag, str, th);
        }
    }

    /* JADX INFO: renamed from: d */
    public void m482d(String str) {
        m483d(str, null);
    }

    /* JADX INFO: renamed from: v */
    public void m488v(String str) {
        m489v(str, null);
    }

    /* JADX INFO: renamed from: i */
    public void m486i(String str) {
        m487i(str, null);
    }

    /* JADX INFO: renamed from: w */
    public void m490w(String str) {
        m491w(str, null);
    }

    /* JADX INFO: renamed from: e */
    public void m484e(String str) {
        m485e(str, null);
    }
}
