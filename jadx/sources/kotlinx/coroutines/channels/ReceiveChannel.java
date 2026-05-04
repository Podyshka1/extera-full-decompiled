package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.selects.SelectClause1;

/* JADX INFO: loaded from: classes.dex */
public interface ReceiveChannel {
    void cancel(CancellationException cancellationException);

    SelectClause1 getOnReceive();

    ChannelIterator iterator();

    Object receive(Continuation continuation);

    /* JADX INFO: renamed from: receiveCatching-JP2dKIU */
    Object mo3668receiveCatchingJP2dKIU(Continuation continuation);

    /* JADX INFO: renamed from: tryReceive-PtdJZtk */
    Object mo3669tryReceivePtdJZtk();
}
