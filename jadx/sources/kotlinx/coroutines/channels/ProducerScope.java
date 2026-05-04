package kotlinx.coroutines.channels;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public interface ProducerScope extends CoroutineScope, SendChannel {
    SendChannel getChannel();
}
