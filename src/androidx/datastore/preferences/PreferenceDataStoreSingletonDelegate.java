package androidx.datastore.preferences;

import android.content.Context;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.core.PreferenceDataStoreFactory;
import java.io.File;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class PreferenceDataStoreSingletonDelegate implements ReadOnlyProperty {
    private volatile DataStore INSTANCE;
    private final ReplaceFileCorruptionHandler corruptionHandler;
    private final Object lock;
    private final String name;
    private final Function1 produceMigrations;
    private final CoroutineScope scope;

    public PreferenceDataStoreSingletonDelegate(String name, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, Function1 produceMigrations, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(produceMigrations, "produceMigrations");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.name = name;
        this.corruptionHandler = replaceFileCorruptionHandler;
        this.produceMigrations = produceMigrations;
        this.scope = scope;
        this.lock = new Object();
    }

    @Override // kotlin.properties.ReadOnlyProperty
    public DataStore getValue(Context thisRef, KProperty property) {
        DataStore dataStore;
        Intrinsics.checkNotNullParameter(thisRef, "thisRef");
        Intrinsics.checkNotNullParameter(property, "property");
        DataStore dataStore2 = this.INSTANCE;
        if (dataStore2 != null) {
            return dataStore2;
        }
        synchronized (this.lock) {
            try {
                if (this.INSTANCE == null) {
                    final Context applicationContext = thisRef.getApplicationContext();
                    PreferenceDataStoreFactory preferenceDataStoreFactory = PreferenceDataStoreFactory.INSTANCE;
                    ReplaceFileCorruptionHandler replaceFileCorruptionHandler = this.corruptionHandler;
                    Function1 function1 = this.produceMigrations;
                    Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
                    this.INSTANCE = preferenceDataStoreFactory.create(replaceFileCorruptionHandler, (List) function1.invoke(applicationContext), this.scope, new Function0() { // from class: androidx.datastore.preferences.PreferenceDataStoreSingletonDelegate$getValue$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final File invoke() {
                            Context applicationContext2 = applicationContext;
                            Intrinsics.checkNotNullExpressionValue(applicationContext2, "applicationContext");
                            return PreferenceDataStoreFile.preferencesDataStoreFile(applicationContext2, this.name);
                        }
                    });
                }
                dataStore = this.INSTANCE;
                Intrinsics.checkNotNull(dataStore);
            } catch (Throwable th) {
                throw th;
            }
        }
        return dataStore;
    }
}
