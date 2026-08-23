package androidx.room.concurrent;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class ExclusiveLock {
    public static final Companion Companion = new Companion(null);
    private static final Map threadLocksMap = new LinkedHashMap();
    private final FileLock fileLock;
    private final ReentrantLock threadLock;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final ReentrantLock getThreadLock(String str) {
            ReentrantLock reentrantLock;
            synchronized (this) {
                try {
                    Map map = ExclusiveLock.threadLocksMap;
                    Object reentrantLock2 = map.get(str);
                    if (reentrantLock2 == null) {
                        reentrantLock2 = new ReentrantLock();
                        map.put(str, reentrantLock2);
                    }
                    reentrantLock = (ReentrantLock) reentrantLock2;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return reentrantLock;
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final FileLock getFileLock(String str) {
            return new FileLock(str);
        }
    }

    public ExclusiveLock(String filename, boolean z) {
        Intrinsics.checkNotNullParameter(filename, "filename");
        Companion companion = Companion;
        this.threadLock = companion.getThreadLock(filename);
        this.fileLock = z ? companion.getFileLock(filename) : null;
    }

    public final Object withLock(Function0 onLocked, Function1 onLockError) {
        Intrinsics.checkNotNullParameter(onLocked, "onLocked");
        Intrinsics.checkNotNullParameter(onLockError, "onLockError");
        this.threadLock.lock();
        boolean z = false;
        try {
            FileLock fileLock = this.fileLock;
            if (fileLock != null) {
                fileLock.lock();
            }
            z = true;
            try {
                Object objInvoke = onLocked.invoke();
                this.threadLock.unlock();
                return objInvoke;
            } finally {
                FileLock fileLock2 = this.fileLock;
                if (fileLock2 != null) {
                    fileLock2.unlock();
                }
            }
        } catch (Throwable th) {
            try {
                if (z) {
                    throw th;
                }
                onLockError.invoke(th);
                throw new KotlinNothingValueException();
            } catch (Throwable th2) {
                this.threadLock.unlock();
                throw th2;
            }
        }
    }
}
