package androidx.datastore.core;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public interface DataMigration {
    Object cleanUp(Continuation continuation);

    Object migrate(Object obj, Continuation continuation);

    Object shouldMigrate(Object obj, Continuation continuation);
}
