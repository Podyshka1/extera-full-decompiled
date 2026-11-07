package org.chromium.net.impl;

import com.google.android.gms.cast.MediaStatus;
import java.nio.ByteBuffer;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicInteger;
import org.chromium.base.metrics.ScopedSysTraceEvent;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UploadDataSink;
import org.chromium.net.impl.JavaUrlRequestUtils;
import org.telegram.ui.WearAuthSheet$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class JavaUploadDataSinkBase extends UploadDataSink {
    private ByteBuffer mBuffer;
    private final Executor mExecutor;
    private int mReadCount;
    private final AtomicInteger mSinkState = new AtomicInteger(3);
    private long mTotalBytes;
    private final VersionSafeCallbacks$UploadDataProviderWrapper mUploadProvider;
    private final Executor mUserUploadExecutor;
    private long mWrittenBytes;

    public abstract void finish();

    public abstract Runnable getErrorSettingRunnable(JavaUrlRequestUtils.CheckedRunnable checkedRunnable);

    public abstract Runnable getUploadErrorSettingRunnable(JavaUrlRequestUtils.CheckedRunnable checkedRunnable);

    public abstract void initializeRead();

    public abstract void initializeStart(long j);

    public abstract int processSuccessfulRead(ByteBuffer byteBuffer);

    public abstract void processUploadError(Throwable th);

    public JavaUploadDataSinkBase(final Executor executor, Executor executor2, UploadDataProvider uploadDataProvider) {
        this.mUserUploadExecutor = new Executor(this) { // from class: org.chromium.net.impl.JavaUploadDataSinkBase.1
            final /* synthetic */ JavaUploadDataSinkBase this$0;

            {
                this.this$0 = this;
            }

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                try {
                    executor.execute(runnable);
                } catch (RejectedExecutionException e) {
                    this.this$0.processUploadError(e);
                }
            }
        };
        this.mExecutor = executor2;
        this.mUploadProvider = new VersionSafeCallbacks$UploadDataProviderWrapper(uploadDataProvider);
    }

    @Override // org.chromium.net.UploadDataSink
    public void onReadSucceeded(final boolean z) {
        if (!this.mSinkState.compareAndSet(0, 2)) {
            WearAuthSheet$$ExternalSyntheticBUOutline0.m1104m("onReadSucceeded() called when not awaiting a read result; in state: ", this.mSinkState.get());
        } else {
            executeOnExecutor(getErrorSettingRunnable(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda1
                @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
                public final void run() {
                    this.f$0.lambda$onReadSucceeded$0(z);
                }
            }), "onReadSucceeded");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onReadSucceeded$0(boolean z) {
        long j = this.mTotalBytes;
        if (j != -1 && j - this.mWrittenBytes < this.mBuffer.remaining()) {
            processUploadError(new IllegalArgumentException(String.format(Locale.getDefault(), "Read upload data length %d exceeds expected length %d", Long.valueOf(this.mWrittenBytes + ((long) this.mBuffer.remaining())), Long.valueOf(this.mTotalBytes))));
            return;
        }
        if (this.mBuffer.remaining() == 0 && !z) {
            processUploadError(new IllegalStateException("Bytes read can't be zero except for last chunk!"));
            return;
        }
        long jProcessSuccessfulRead = this.mWrittenBytes + ((long) processSuccessfulRead(this.mBuffer));
        this.mWrittenBytes = jProcessSuccessfulRead;
        long j2 = this.mTotalBytes;
        if (jProcessSuccessfulRead < j2 || (j2 == -1 && !z)) {
            this.mSinkState.set(0);
            readFromProvider();
        } else if (j2 == -1) {
            finish();
        } else if (j2 == jProcessSuccessfulRead) {
            finish();
        } else {
            processUploadError(new IllegalArgumentException(String.format(Locale.getDefault(), "Read upload data length %d exceeds expected length %d", Long.valueOf(this.mWrittenBytes), Long.valueOf(this.mTotalBytes))));
        }
    }

    @Override // org.chromium.net.UploadDataSink
    public void onRewindSucceeded() {
        if (!this.mSinkState.compareAndSet(1, 2)) {
            WearAuthSheet$$ExternalSyntheticBUOutline0.m1104m("onRewindSucceeded() called when not awaiting a rewind; in state: ", this.mSinkState.get());
        } else {
            startRead();
        }
    }

    private void startRead() {
        executeOnExecutor(getErrorSettingRunnable(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda3
            @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
            public final void run() {
                this.f$0.lambda$startRead$1();
            }
        }), "startRead");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRead$1() {
        initializeRead();
        this.mSinkState.set(0);
        readFromProvider();
    }

    private void readFromProvider() {
        executeOnUploadExecutor(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda5
            @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
            public final void run() {
                this.f$0.lambda$readFromProvider$3();
            }
        }, "readFromProvider");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$readFromProvider$3() {
        this.mUploadProvider.read(this, this.mBuffer);
        this.mExecutor.execute(new Runnable() { // from class: org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$readFromProvider$2();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$readFromProvider$2() {
        this.mReadCount++;
    }

    private void executeOnExecutor(final Runnable runnable, final String str) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("JavaUploadDataSinkBase#executeOnExecutor " + str);
        try {
            this.mExecutor.execute(new Runnable() { // from class: org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    JavaUploadDataSinkBase.$r8$lambda$Skz_oWstgCsE5yV2p_g6vrBh_QI(str, runnable);
                }
            });
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped != null) {
                try {
                    scopedSysTraceEventScoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static /* synthetic */ void $r8$lambda$Skz_oWstgCsE5yV2p_g6vrBh_QI(String str, Runnable runnable) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("JavaUploadDataSinkBase#executeOnExecutor " + str + " running callback");
        try {
            runnable.run();
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped != null) {
                try {
                    scopedSysTraceEventScoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private void executeOnUploadExecutor(final JavaUrlRequestUtils.CheckedRunnable checkedRunnable, final String str) {
        try {
            ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUploadDataSinkBase#executeOnUploadExecutor " + str);
            try {
                this.mUserUploadExecutor.execute(new Runnable() { // from class: org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$executeOnUploadExecutor$5(str, checkedRunnable);
                    }
                });
                if (scopedSysTraceEventScoped != null) {
                    scopedSysTraceEventScoped.close();
                }
            } finally {
            }
        } catch (RejectedExecutionException e) {
            processUploadError(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$executeOnUploadExecutor$5(String str, JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUploadDataSinkBase#executeOnUploadExecutor " + str + " running callback");
        try {
            getUploadErrorSettingRunnable(checkedRunnable).run();
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped != null) {
                try {
                    scopedSysTraceEventScoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public void start(final boolean z) {
        executeOnUploadExecutor(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda0
            @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
            public final void run() {
                this.f$0.lambda$start$6(z);
            }
        }, "start");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$6(boolean z) {
        long length = this.mUploadProvider.getLength();
        this.mTotalBytes = length;
        if (length == 0) {
            finish();
            return;
        }
        if (length > 0 && length < MediaStatus.COMMAND_PLAYBACK_RATE) {
            this.mBuffer = ByteBuffer.allocateDirect(((int) length) + 1);
        } else {
            this.mBuffer = ByteBuffer.allocateDirect(8192);
        }
        initializeStart(this.mTotalBytes);
        if (z) {
            startRead();
        } else {
            this.mSinkState.set(1);
            this.mUploadProvider.rewind(this);
        }
    }

    public int getReadCount() {
        return this.mReadCount;
    }
}
