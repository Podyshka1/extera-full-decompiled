package androidx.datastore.preferences;

import android.content.Context;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;
import androidx.datastore.migrations.SharedPreferencesMigration;
import androidx.datastore.migrations.SharedPreferencesView;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKeys;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class SharedPreferencesMigrationKt {
    private static final Set MIGRATE_ALL_KEYS = new LinkedHashSet();

    public static /* synthetic */ SharedPreferencesMigration SharedPreferencesMigration$default(Context context, String str, Set set, int i, Object obj) {
        if ((i & 4) != 0) {
            set = MIGRATE_ALL_KEYS;
        }
        return SharedPreferencesMigration(context, str, set);
    }

    public static final SharedPreferencesMigration SharedPreferencesMigration(Context context, String sharedPreferencesName, Set keysToMigrate) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sharedPreferencesName, "sharedPreferencesName");
        Intrinsics.checkNotNullParameter(keysToMigrate, "keysToMigrate");
        if (keysToMigrate == MIGRATE_ALL_KEYS) {
            return new SharedPreferencesMigration(context, sharedPreferencesName, null, getShouldRunMigration(keysToMigrate), getMigrationFunction(), 4, null);
        }
        return new SharedPreferencesMigration(context, sharedPreferencesName, keysToMigrate, getShouldRunMigration(keysToMigrate), getMigrationFunction());
    }

    /* JADX INFO: renamed from: androidx.datastore.preferences.SharedPreferencesMigrationKt$getMigrationFunction$1 */
    static final class C05381 extends SuspendLambda implements Function3 {
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        C05381(Continuation continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(SharedPreferencesView sharedPreferencesView, Preferences preferences, Continuation continuation) {
            C05381 c05381 = new C05381(continuation);
            c05381.L$0 = sharedPreferencesView;
            c05381.L$1 = preferences;
            return c05381.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            SharedPreferencesView sharedPreferencesView = (SharedPreferencesView) this.L$0;
            Preferences preferences = (Preferences) this.L$1;
            Set setKeySet = preferences.asMap().keySet();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(setKeySet, 10));
            Iterator it = setKeySet.iterator();
            while (it.hasNext()) {
                arrayList.add(((Preferences.Key) it.next()).getName());
            }
            Map all = sharedPreferencesView.getAll();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry : all.entrySet()) {
                if (!arrayList.contains((String) entry.getKey())) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            MutablePreferences mutablePreferences = preferences.toMutablePreferences();
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                String str = (String) entry2.getKey();
                Object value = entry2.getValue();
                if (value instanceof Boolean) {
                    mutablePreferences.set(PreferencesKeys.booleanKey(str), value);
                } else if (value instanceof Float) {
                    mutablePreferences.set(PreferencesKeys.floatKey(str), value);
                } else if (value instanceof Integer) {
                    mutablePreferences.set(PreferencesKeys.intKey(str), value);
                } else if (value instanceof Long) {
                    mutablePreferences.set(PreferencesKeys.longKey(str), value);
                } else if (value instanceof String) {
                    mutablePreferences.set(PreferencesKeys.stringKey(str), value);
                } else if (value instanceof Set) {
                    Preferences.Key keyStringSetKey = PreferencesKeys.stringSetKey(str);
                    Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>");
                    mutablePreferences.set(keyStringSetKey, (Set) value);
                }
            }
            return mutablePreferences.toPreferences();
        }
    }

    private static final Function3 getMigrationFunction() {
        return new C05381(null);
    }

    /* JADX INFO: renamed from: androidx.datastore.preferences.SharedPreferencesMigrationKt$getShouldRunMigration$1 */
    static final class C05391 extends SuspendLambda implements Function2 {
        final /* synthetic */ Set $keysToMigrate;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05391(Set set, Continuation continuation) {
            super(2, continuation);
            this.$keysToMigrate = set;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C05391 c05391 = new C05391(this.$keysToMigrate, continuation);
            c05391.L$0 = obj;
            return c05391;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Preferences preferences, Continuation continuation) {
            return ((C05391) create(preferences, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Set setKeySet = ((Preferences) this.L$0).asMap().keySet();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(setKeySet, 10));
            Iterator it = setKeySet.iterator();
            while (it.hasNext()) {
                arrayList.add(((Preferences.Key) it.next()).getName());
            }
            boolean z = true;
            if (this.$keysToMigrate != SharedPreferencesMigrationKt.getMIGRATE_ALL_KEYS()) {
                Set set = this.$keysToMigrate;
                if (OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(set) && set.isEmpty()) {
                    z = false;
                } else {
                    Iterator it2 = set.iterator();
                    while (it2.hasNext()) {
                        if (!arrayList.contains((String) it2.next())) {
                            break;
                        }
                    }
                    z = false;
                }
            }
            return Boxing.boxBoolean(z);
        }
    }

    private static final Function2 getShouldRunMigration(Set set) {
        return new C05391(set, null);
    }

    public static final Set getMIGRATE_ALL_KEYS() {
        return MIGRATE_ALL_KEYS;
    }
}
