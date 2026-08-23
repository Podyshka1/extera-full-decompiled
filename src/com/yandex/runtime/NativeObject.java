package com.yandex.runtime;

import android.os.Handler;
import android.os.Looper;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
public final class NativeObject {
    private boolean canBeDeletedInBackground;
    private long nativeObject;

    /* JADX INFO: Access modifiers changed from: private */
    public static native void deleteNative(long j);

    /* JADX INFO: loaded from: classes5.dex */
    public static final class Cleaner implements Runnable {
        private final long nativeObject;

        public Cleaner(long j) {
            this.nativeObject = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            NativeObject.deleteNative(this.nativeObject);
        }
    }

    public NativeObject(long j, boolean z) {
        this.nativeObject = j;
        this.canBeDeletedInBackground = z;
    }

    public boolean isEmpty() {
        return this.nativeObject == 0;
    }

    public long release() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            Segment$$ExternalSyntheticBUOutline1.m848m("Cannot release native object outside the UI thread");
            return 0L;
        }
        long j = this.nativeObject;
        this.nativeObject = 0L;
        return j;
    }

    public void reset() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            Segment$$ExternalSyntheticBUOutline1.m848m("Cannot reset native object outside the UI thread");
        } else {
            deleteNative(this.nativeObject);
            this.nativeObject = 0L;
        }
    }

    public void finalize() {
        if (isEmpty()) {
            return;
        }
        if (this.canBeDeletedInBackground) {
            deleteNative(this.nativeObject);
        } else {
            new Handler(Looper.getMainLooper()).post(new Cleaner(this.nativeObject));
        }
        this.nativeObject = 0L;
    }
}
