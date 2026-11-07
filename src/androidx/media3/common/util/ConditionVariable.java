package androidx.media3.common.util;

/* JADX INFO: loaded from: classes3.dex */
public class ConditionVariable {
    private final Clock clock;
    private boolean isOpen;

    public ConditionVariable() {
        this(Clock.DEFAULT);
    }

    public ConditionVariable(Clock clock) {
        this.clock = clock;
    }

    public synchronized boolean open() {
        if (this.isOpen) {
            return false;
        }
        this.isOpen = true;
        notifyAll();
        return true;
    }

    public synchronized boolean close() {
        boolean z;
        z = this.isOpen;
        this.isOpen = false;
        return z;
    }

    public synchronized void block() {
        while (!this.isOpen) {
            this.clock.onThreadBlocked();
            wait();
        }
    }

    public synchronized void blockUninterruptible() {
        boolean z = false;
        while (!this.isOpen) {
            try {
                this.clock.onThreadBlocked();
                wait();
            } catch (InterruptedException unused) {
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public synchronized boolean blockUninterruptible(long j) {
        if (j <= 0) {
            return this.isOpen;
        }
        long jElapsedRealtime = this.clock.elapsedRealtime();
        long j2 = j + jElapsedRealtime;
        if (j2 < jElapsedRealtime) {
            blockUninterruptible();
        } else {
            boolean z = false;
            while (!this.isOpen && jElapsedRealtime < j2) {
                try {
                    this.clock.onThreadBlocked();
                    wait(j2 - jElapsedRealtime);
                } catch (InterruptedException unused) {
                    z = true;
                }
                jElapsedRealtime = this.clock.elapsedRealtime();
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
        return this.isOpen;
    }

    public synchronized boolean isOpen() {
        return this.isOpen;
    }
}
