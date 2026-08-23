package com.google.firebase.crashlytics.internal.stacktrace;

/* JADX INFO: loaded from: classes.dex */
public interface StackTraceTrimmingStrategy {
    StackTraceElement[] getTrimmedStackTrace(StackTraceElement[] stackTraceElementArr);
}
