package androidx.datastore.core;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public interface ReadScope extends Closeable {
    Object readData(Continuation continuation);
}
