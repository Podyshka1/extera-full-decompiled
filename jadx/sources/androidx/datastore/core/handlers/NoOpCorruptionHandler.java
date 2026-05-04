package androidx.datastore.core.handlers;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.CorruptionHandler;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes4.dex */
public final class NoOpCorruptionHandler implements CorruptionHandler {
    @Override // androidx.datastore.core.CorruptionHandler
    public Object handleCorruption(CorruptionException corruptionException, Continuation continuation) throws CorruptionException {
        throw corruptionException;
    }
}
