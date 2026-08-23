package kotlinx.coroutines.channels;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public interface ChannelIterator {
    Object hasNext(Continuation continuation);

    Object next();
}
