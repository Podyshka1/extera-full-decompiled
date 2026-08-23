package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlinx.coroutines.ExceptionsKt;

/* JADX INFO: loaded from: classes5.dex */
abstract /* synthetic */ class ChannelsKt__Channels_commonKt {
    public static final void cancelConsumed(ReceiveChannel receiveChannel, Throwable th) {
        if (th != null) {
            CancellationException = th instanceof CancellationException ? (CancellationException) th : null;
            if (CancellationException == null) {
                CancellationException = ExceptionsKt.CancellationException("Channel was consumed, consumer had failed", th);
            }
        }
        receiveChannel.cancel(CancellationException);
    }
}
