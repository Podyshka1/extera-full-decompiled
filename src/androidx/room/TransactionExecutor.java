package androidx.room;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0007H\u0016J\u0006\u0010\u000e\u001a\u00020\fR\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/room/TransactionExecutor;", "Ljava/util/concurrent/Executor;", "executor", "<init>", "(Ljava/util/concurrent/Executor;)V", "tasks", "Ljava/util/ArrayDeque;", "Ljava/lang/Runnable;", "active", "syncLock", _UrlKt.FRAGMENT_ENCODE_SET, "execute", _UrlKt.FRAGMENT_ENCODE_SET, "command", "scheduleNext", "room-runtime"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTransactionExecutor.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionExecutor.android.kt\nandroidx/room/TransactionExecutor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1#2:59\n*E\n"})
public final class TransactionExecutor implements Executor {
    private Runnable active;
    private final Executor executor;
    private final ArrayDeque<Runnable> tasks = new ArrayDeque<>();
    private final Object syncLock = new Object();

    public TransactionExecutor(Executor executor) {
        this.executor = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(final Runnable command) {
        synchronized (this.syncLock) {
            try {
                this.tasks.offer(new Runnable() { // from class: androidx.room.TransactionExecutor$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        TransactionExecutor.m2015$r8$lambda$FZWr2PGmP3sgXLCiriDCcePXSs(command, this);
                    }
                });
                if (this.active == null) {
                    scheduleNext();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$FZWr2PGmP3sgXLCiri-DCcePXSs, reason: not valid java name */
    public static void m2015$r8$lambda$FZWr2PGmP3sgXLCiriDCcePXSs(Runnable runnable, TransactionExecutor transactionExecutor) {
        try {
            runnable.run();
        } finally {
            transactionExecutor.scheduleNext();
        }
    }

    public final void scheduleNext() {
        synchronized (this.syncLock) {
            try {
                Runnable runnablePoll = this.tasks.poll();
                Runnable runnable = runnablePoll;
                this.active = runnable;
                if (runnablePoll != null) {
                    this.executor.execute(runnable);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
