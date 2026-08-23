package androidx.datastore.core;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public interface WriteScope extends ReadScope {
    Object writeData(Object obj, Continuation continuation);
}
