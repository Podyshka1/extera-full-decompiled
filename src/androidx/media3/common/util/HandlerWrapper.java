package androidx.media3.common.util;

import android.os.Looper;

/* JADX INFO: loaded from: classes3.dex */
public interface HandlerWrapper {

    public interface Message {
        void sendToTarget();
    }

    Looper getLooper();

    boolean hasMessages(int i);

    Message obtainMessage(int i);

    Message obtainMessage(int i, int i2, int i3);

    Message obtainMessage(int i, int i2, int i3, Object obj);

    Message obtainMessage(int i, Object obj);

    boolean post(Runnable runnable);

    void removeCallbacksAndMessages(Object obj);

    void removeMessages(int i);

    boolean sendEmptyMessage(int i);

    boolean sendEmptyMessageAtTime(int i, long j);

    boolean sendMessageAtFrontOfQueue(Message message);
}
