package org.chromium.net.impl;

import com.google.android.gms.cast.MediaError;
import java.util.concurrent.Executor;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import org.chromium.net.InlineExecutionProhibitedException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class JavaUrlRequestUtils {

    public interface CheckedRunnable {
        void run();
    }

    public static String stateToString(int i) {
        switch (i) {
            case 0:
                return "NOT_STARTED";
            case 1:
                return "STARTED";
            case 2:
                return "REDIRECT_RECEIVED";
            case 3:
                return "AWAITING_FOLLOW_REDIRECT";
            case 4:
                return "AWAITING_READ";
            case 5:
                return "READING";
            case 6:
                return MediaError.ERROR_TYPE_ERROR;
            case 7:
                return "COMPLETE";
            case 8:
                return "CANCELLED";
            default:
                CharCodeKt$$ExternalSyntheticBUOutline0.m860m("Unknown state ", i);
                return null;
        }
    }

    public static final class DirectPreventingExecutor implements Executor {
        private final Executor mDelegate;

        public DirectPreventingExecutor(Executor executor) {
            this.mDelegate = executor;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            InlineCheckingRunnable inlineCheckingRunnable = new InlineCheckingRunnable(runnable, Thread.currentThread());
            this.mDelegate.execute(inlineCheckingRunnable);
            if (inlineCheckingRunnable.mExecutedInline != null) {
                throw inlineCheckingRunnable.mExecutedInline;
            }
            inlineCheckingRunnable.mCallingThread = null;
        }

        public static final class InlineCheckingRunnable implements Runnable {
            private Thread mCallingThread;
            private final Runnable mCommand;
            private InlineExecutionProhibitedException mExecutedInline;

            private InlineCheckingRunnable(Runnable runnable, Thread thread) {
                this.mCommand = runnable;
                this.mCallingThread = thread;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (Thread.currentThread() == this.mCallingThread) {
                    this.mExecutedInline = new InlineExecutionProhibitedException();
                } else {
                    this.mCommand.run();
                }
            }
        }
    }
}
