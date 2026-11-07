package androidx.media3.session;

import android.os.Handler;
import androidx.collection.ArrayMap;
import androidx.media3.common.util.Log;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.AbstractFuture;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
final class SequencedFutureManager {
    private boolean isReleased;
    private int nextSequenceNumber;
    private Runnable pendingLazyReleaseCallback;
    private Handler releaseCallbackHandler;
    private final Object lock = new Object();
    private final ArrayMap<Integer, SequencedFuture<?>> seqToFutureMap = new ArrayMap<>();

    public int obtainNextSequenceNumber() {
        int i;
        synchronized (this.lock) {
            i = this.nextSequenceNumber;
            this.nextSequenceNumber = i + 1;
        }
        return i;
    }

    public <T> SequencedFuture<T> createSequencedFuture(T t) {
        SequencedFuture<T> sequencedFutureCreate;
        synchronized (this.lock) {
            try {
                int iObtainNextSequenceNumber = obtainNextSequenceNumber();
                sequencedFutureCreate = SequencedFuture.create(iObtainNextSequenceNumber, t);
                if (this.isReleased) {
                    sequencedFutureCreate.setWithTheValueOfResultWhenClosed();
                } else {
                    this.seqToFutureMap.put(Integer.valueOf(iObtainNextSequenceNumber), sequencedFutureCreate);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return sequencedFutureCreate;
    }

    public <T> void setFutureResult(int i, T t) {
        synchronized (this.lock) {
            try {
                SequencedFuture<?> sequencedFutureRemove = this.seqToFutureMap.remove(Integer.valueOf(i));
                if (sequencedFutureRemove != null) {
                    if (sequencedFutureRemove.getResultWhenClosed().getClass() != t.getClass()) {
                        Log.m164w("SequencedFutureManager", "Type mismatch, expected " + sequencedFutureRemove.getResultWhenClosed().getClass() + ", but was " + t.getClass());
                    } else {
                        sequencedFutureRemove.set(t);
                    }
                }
                if (this.pendingLazyReleaseCallback != null && this.seqToFutureMap.isEmpty()) {
                    release();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void release() {
        ArrayList arrayList;
        synchronized (this.lock) {
            try {
                this.isReleased = true;
                arrayList = new ArrayList(this.seqToFutureMap.values());
                this.seqToFutureMap.clear();
                if (this.pendingLazyReleaseCallback != null) {
                    ((Handler) Preconditions.checkNotNull(this.releaseCallbackHandler)).post(this.pendingLazyReleaseCallback);
                    this.pendingLazyReleaseCallback = null;
                    this.releaseCallbackHandler = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((SequencedFuture) obj).setWithTheValueOfResultWhenClosed();
        }
    }

    public static final class SequencedFuture<T> extends AbstractFuture<T> {
        private final T resultWhenClosed;
        private final int sequenceNumber;

        private SequencedFuture(int i, T t) {
            this.sequenceNumber = i;
            this.resultWhenClosed = t;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        public boolean set(T t) {
            return super.set(t);
        }

        public void setWithTheValueOfResultWhenClosed() {
            set(this.resultWhenClosed);
        }

        public int getSequenceNumber() {
            return this.sequenceNumber;
        }

        public T getResultWhenClosed() {
            return this.resultWhenClosed;
        }

        public static <T> SequencedFuture<T> create(int i, T t) {
            return new SequencedFuture<>(i, t);
        }
    }
}
