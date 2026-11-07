package com.neovisionaries.ws.client;

import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes5.dex */
abstract class PeriodicalFrameSender {
    private PayloadGenerator mGenerator;
    private long mInterval;
    private boolean mScheduled;
    private Timer mTimer;
    private String mTimerName;
    private final WebSocket mWebSocket;

    public abstract WebSocketFrame createFrame(byte[] bArr);

    public PeriodicalFrameSender(WebSocket webSocket, String str, PayloadGenerator payloadGenerator) {
        this.mWebSocket = webSocket;
        this.mTimerName = str;
        this.mGenerator = payloadGenerator;
    }

    public void start() {
        setInterval(getInterval());
    }

    public void stop() {
        synchronized (this) {
            try {
                Timer timer = this.mTimer;
                if (timer == null) {
                    return;
                }
                this.mScheduled = false;
                timer.cancel();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public long getInterval() {
        long j;
        synchronized (this) {
            j = this.mInterval;
        }
        return j;
    }

    public void setInterval(long j) {
        if (j < 0) {
            j = 0;
        }
        synchronized (this) {
            this.mInterval = j;
        }
        if (j != 0 && this.mWebSocket.isOpen()) {
            synchronized (this) {
                try {
                    if (this.mTimer == null) {
                        if (this.mTimerName == null) {
                            this.mTimer = new Timer();
                        } else {
                            this.mTimer = new Timer(this.mTimerName);
                        }
                    }
                    if (!this.mScheduled) {
                        this.mScheduled = schedule(this.mTimer, new Task(), j);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final class Task extends TimerTask {
        private Task() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            PeriodicalFrameSender.this.doTask();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doTask() {
        synchronized (this) {
            try {
                if (this.mInterval != 0 && this.mWebSocket.isOpen()) {
                    this.mWebSocket.sendFrame(createFrame());
                    this.mScheduled = schedule(this.mTimer, new Task(), this.mInterval);
                    return;
                }
                this.mScheduled = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private WebSocketFrame createFrame() {
        return createFrame(generatePayload());
    }

    private byte[] generatePayload() {
        PayloadGenerator payloadGenerator = this.mGenerator;
        if (payloadGenerator == null) {
            return null;
        }
        try {
            return payloadGenerator.generate();
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean schedule(Timer timer, Task task, long j) {
        try {
            timer.schedule(task, j);
            return true;
        } catch (RuntimeException unused) {
            return false;
        }
    }
}
