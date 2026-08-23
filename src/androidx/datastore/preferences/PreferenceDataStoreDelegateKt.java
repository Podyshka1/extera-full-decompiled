package androidx.datastore.preferences;

import android.content.Context;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadOnlyProperty;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class PreferenceDataStoreDelegateKt {
    public static /* synthetic */ ReadOnlyProperty preferencesDataStore$default(String str, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, Function1 function1, CoroutineScope coroutineScope, int i, Object obj) {
        if ((i & 2) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i & 4) != 0) {
            function1 = new Function1() { // from class: androidx.datastore.preferences.PreferenceDataStoreDelegateKt.preferencesDataStore.1
                @Override // kotlin.jvm.functions.Function1
                public final List invoke(Context it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return CollectionsKt.emptyList();
                }
            };
        }
        if ((i & 8) != 0) {
            coroutineScope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO().plus(SupervisorKt.SupervisorJob$default(null, 1, null)));
        }
        return preferencesDataStore(str, replaceFileCorruptionHandler, function1, coroutineScope);
    }

    public static final ReadOnlyProperty preferencesDataStore(String name, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, Function1 produceMigrations, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(produceMigrations, "produceMigrations");
        Intrinsics.checkNotNullParameter(scope, "scope");
        return new PreferenceDataStoreSingletonDelegate(name, replaceFileCorruptionHandler, produceMigrations, scope);
    }
}
