package androidx.datastore.core;

import androidx.datastore.core.handlers.NoOpCorruptionHandler;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import java.io.File;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class MultiProcessDataStoreFactory {
    public static final MultiProcessDataStoreFactory INSTANCE = new MultiProcessDataStoreFactory();

    private MultiProcessDataStoreFactory() {
    }

    public final DataStore create(Serializer serializer, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List migrations, final CoroutineScope scope, Function0 produceFile) {
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(migrations, "migrations");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(produceFile, "produceFile");
        FileStorage fileStorage = new FileStorage(serializer, new Function1() { // from class: androidx.datastore.core.MultiProcessDataStoreFactory.create.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final InterProcessCoordinator invoke(File it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return new MultiProcessCoordinator(scope.getCoroutineContext(), it);
            }
        }, produceFile);
        List listListOf = CollectionsKt.listOf(DataMigrationInitializer.Companion.getInitializer(migrations));
        CorruptionHandler noOpCorruptionHandler = replaceFileCorruptionHandler;
        if (replaceFileCorruptionHandler == null) {
            noOpCorruptionHandler = new NoOpCorruptionHandler();
        }
        return new DataStoreImpl(fileStorage, listListOf, noOpCorruptionHandler, scope);
    }
}
