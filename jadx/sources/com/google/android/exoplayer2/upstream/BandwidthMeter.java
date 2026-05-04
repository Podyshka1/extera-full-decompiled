package com.google.android.exoplayer2.upstream;

import android.os.Handler;
import com.google.android.exoplayer2.util.Assertions;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface BandwidthMeter {
    void addEventListener(Handler handler, EventListener eventListener);

    long getBitrateEstimate();

    long getTimeToFirstByteEstimateUs();

    TransferListener getTransferListener();

    void removeEventListener(EventListener eventListener);

    /* JADX INFO: loaded from: classes4.dex */
    public interface EventListener {
        void onBandwidthSample(int i, long j, long j2);

        /* JADX INFO: loaded from: classes.dex */
        public static final class EventDispatcher {
            private final CopyOnWriteArrayList listeners = new CopyOnWriteArrayList();

            public void addListener(Handler handler, EventListener eventListener) {
                Assertions.checkNotNull(handler);
                Assertions.checkNotNull(eventListener);
                removeListener(eventListener);
                this.listeners.add(new HandlerAndListener(handler, eventListener));
            }

            public void removeListener(EventListener eventListener) {
                for (HandlerAndListener handlerAndListener : this.listeners) {
                    if (handlerAndListener.listener == eventListener) {
                        handlerAndListener.release();
                        this.listeners.remove(handlerAndListener);
                    }
                }
            }

            public void bandwidthSample(int i, long j, long j2) {
                final int i2;
                final long j3;
                final long j4;
                for (final HandlerAndListener handlerAndListener : this.listeners) {
                    if (handlerAndListener.released) {
                        i2 = i;
                        j3 = j;
                        j4 = j2;
                    } else {
                        i2 = i;
                        j3 = j;
                        j4 = j2;
                        handlerAndListener.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.upstream.BandwidthMeter$EventListener$EventDispatcher$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                handlerAndListener.listener.onBandwidthSample(i2, j3, j4);
                            }
                        });
                    }
                    i = i2;
                    j = j3;
                    j2 = j4;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            static final class HandlerAndListener {
                private final Handler handler;
                private final EventListener listener;
                private boolean released;

                public HandlerAndListener(Handler handler, EventListener eventListener) {
                    this.handler = handler;
                    this.listener = eventListener;
                }

                public void release() {
                    this.released = true;
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.exoplayer2.upstream.BandwidthMeter$-CC, reason: invalid class name */
    /* JADX INFO: loaded from: classes4.dex */
    public abstract /* synthetic */ class CC {
        public static long $default$getTimeToFirstByteEstimateUs(BandwidthMeter bandwidthMeter) {
            return -9223372036854775807L;
        }
    }
}
