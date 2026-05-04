package kotlinx.coroutines.channels;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes5.dex */
public final class ClosedReceiveChannelException extends NoSuchElementException {
    public ClosedReceiveChannelException(String str) {
        super(str);
    }
}
