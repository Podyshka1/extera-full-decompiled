package androidx.datastore.preferences.core;

import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import androidx.datastore.core.FileStorage;
import androidx.datastore.core.Storage;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import java.io.File;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p024io.FilesKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class PreferenceDataStoreFactory {
    public static final PreferenceDataStoreFactory INSTANCE = new PreferenceDataStoreFactory();

    private PreferenceDataStoreFactory() {
    }

    public final DataStore create(ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List migrations, CoroutineScope scope, final Function0 produceFile) {
        Intrinsics.checkNotNullParameter(migrations, "migrations");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(produceFile, "produceFile");
        return new PreferenceDataStore(create(new FileStorage(PreferencesFileSerializer.INSTANCE, null, new Function0() { // from class: androidx.datastore.preferences.core.PreferenceDataStoreFactory$create$delegate$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final File invoke() {
                File file = (File) produceFile.invoke();
                if (!Intrinsics.areEqual(FilesKt.getExtension(file), "preferences_pb")) {
                    throw new IllegalStateException(("File extension for file: " + file + " does not match required extension for Preferences file: preferences_pb").toString());
                }
                File absoluteFile = file.getAbsoluteFile();
                Intrinsics.checkNotNullExpressionValue(absoluteFile, "file.absoluteFile");
                return absoluteFile;
            }
        }, 2, null), replaceFileCorruptionHandler, migrations, scope));
    }

    public final DataStore create(Storage storage, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List migrations, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(migrations, "migrations");
        Intrinsics.checkNotNullParameter(scope, "scope");
        return new PreferenceDataStore(DataStoreFactory.INSTANCE.create(storage, replaceFileCorruptionHandler, migrations, scope));
    }
}
