package androidx.datastore.core;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public interface CorruptionHandler {
    Object handleCorruption(CorruptionException corruptionException, Continuation continuation);
}
