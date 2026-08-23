package com.google.firebase.datastorage;

import android.content.Context;
import android.os.Process;
import android.util.Log;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import androidx.datastore.preferences.SharedPreferencesMigrationKt;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesFactory;
import androidx.datastore.preferences.core.PreferencesKt;
import java.util.List;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference2Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes.dex */
public final class JavaDataStorage {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property2(new PropertyReference2Impl(JavaDataStorage.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};
    private final Context context;
    private final DataStore dataStore;
    private final ReadOnlyProperty dataStore$delegate;
    private final ThreadLocal editLock;
    private final String name;

    public JavaDataStorage(Context context, String name) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(name, "name");
        this.context = context;
        this.name = name;
        this.editLock = new ThreadLocal();
        this.dataStore$delegate = PreferenceDataStoreDelegateKt.preferencesDataStore$default(name, new ReplaceFileCorruptionHandler(new Function1() { // from class: com.google.firebase.datastorage.JavaDataStorage$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return JavaDataStorage.dataStore_delegate$lambda$0(this.f$0, (CorruptionException) obj);
            }
        }), new Function1() { // from class: com.google.firebase.datastorage.JavaDataStorage$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return JavaDataStorage.dataStore_delegate$lambda$1(this.f$0, (Context) obj);
            }
        }, null, 8, null);
        this.dataStore = getDataStore(context);
    }

    private final DataStore getDataStore(Context context) {
        return (DataStore) this.dataStore$delegate.getValue(context, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List dataStore_delegate$lambda$1(JavaDataStorage javaDataStorage, Context it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return CollectionsKt.listOf(SharedPreferencesMigrationKt.SharedPreferencesMigration$default(it, javaDataStorage.name, null, 4, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Preferences dataStore_delegate$lambda$0(JavaDataStorage javaDataStorage, CorruptionException ex) {
        Intrinsics.checkNotNullParameter(ex, "ex");
        Log.w(Reflection.getOrCreateKotlinClass(JavaDataStorage.class).getSimpleName(), "CorruptionException in " + javaDataStorage.name + " DataStore running in process " + Process.myPid(), ex);
        return PreferencesFactory.createEmpty();
    }

    /* JADX INFO: renamed from: com.google.firebase.datastorage.JavaDataStorage$getSync$1 */
    /* JADX INFO: loaded from: classes5.dex */
    static final class C18731 extends SuspendLambda implements Function2 {
        final /* synthetic */ Object $defaultValue;
        final /* synthetic */ Preferences.Key $key;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18731(Preferences.Key key, Object obj, Continuation continuation) {
            super(2, continuation);
            this.$key = key;
            this.$defaultValue = obj;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return JavaDataStorage.this.new C18731(this.$key, this.$defaultValue, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C18731) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object obj2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Flow data = JavaDataStorage.this.dataStore.getData();
                this.label = 1;
                obj = FlowKt.firstOrNull(data, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            Preferences preferences = (Preferences) obj;
            return (preferences == null || (obj2 = preferences.get(this.$key)) == null) ? this.$defaultValue : obj2;
        }
    }

    public final Object getSync(Preferences.Key key, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        return BuildersKt__BuildersKt.runBlocking$default(null, new C18731(key, obj, null), 1, null);
    }

    /* JADX INFO: renamed from: com.google.firebase.datastorage.JavaDataStorage$putSync$1 */
    /* JADX INFO: loaded from: classes5.dex */
    static final class C18741 extends SuspendLambda implements Function2 {
        final /* synthetic */ Preferences.Key $key;
        final /* synthetic */ Object $value;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18741(Preferences.Key key, Object obj, Continuation continuation) {
            super(2, continuation);
            this.$key = key;
            this.$value = obj;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return JavaDataStorage.this.new C18741(this.$key, this.$value, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C18741) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.google.firebase.datastorage.JavaDataStorage$putSync$1$1, reason: invalid class name */
        static final class AnonymousClass1 extends SuspendLambda implements Function2 {
            final /* synthetic */ Preferences.Key $key;
            final /* synthetic */ Object $value;
            /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(Preferences.Key key, Object obj, Continuation continuation) {
                super(2, continuation);
                this.$key = key;
                this.$value = obj;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$key, this.$value, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(MutablePreferences mutablePreferences, Continuation continuation) {
                return ((AnonymousClass1) create(mutablePreferences, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ((MutablePreferences) this.L$0).set(this.$key, this.$value);
                return Unit.INSTANCE;
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            DataStore dataStore = JavaDataStorage.this.dataStore;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$key, this.$value, null);
            this.label = 1;
            Object objEdit = PreferencesKt.edit(dataStore, anonymousClass1, this);
            return objEdit == coroutine_suspended ? coroutine_suspended : objEdit;
        }
    }

    public final Preferences putSync(Preferences.Key key, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (Preferences) BuildersKt__BuildersKt.runBlocking$default(null, new C18741(key, obj, null), 1, null);
    }

    /* JADX INFO: renamed from: com.google.firebase.datastorage.JavaDataStorage$getAllSync$1 */
    /* JADX INFO: loaded from: classes5.dex */
    static final class C18721 extends SuspendLambda implements Function2 {
        int label;

        C18721(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return JavaDataStorage.this.new C18721(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C18721) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Map mapAsMap;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Flow data = JavaDataStorage.this.dataStore.getData();
                this.label = 1;
                obj = FlowKt.firstOrNull(data, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            Preferences preferences = (Preferences) obj;
            return (preferences == null || (mapAsMap = preferences.asMap()) == null) ? MapsKt.emptyMap() : mapAsMap;
        }
    }

    public final Map getAllSync() {
        return (Map) BuildersKt__BuildersKt.runBlocking$default(null, new C18721(null), 1, null);
    }

    /* JADX INFO: renamed from: com.google.firebase.datastorage.JavaDataStorage$editSync$1 */
    static final class C18711 extends SuspendLambda implements Function2 {
        final /* synthetic */ Function1 $transform;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18711(Function1 function1, Continuation continuation) {
            super(2, continuation);
            this.$transform = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return JavaDataStorage.this.new C18711(this.$transform, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C18711) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    if (!Intrinsics.areEqual(JavaDataStorage.this.editLock.get(), Boxing.boxBoolean(true))) {
                        JavaDataStorage.this.editLock.set(Boxing.boxBoolean(true));
                        DataStore dataStore = JavaDataStorage.this.dataStore;
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$transform, null);
                        this.label = 1;
                        obj = PreferencesKt.edit(dataStore, anonymousClass1, this);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        throw new IllegalStateException("Don't call JavaDataStorage.edit() from within an existing edit() callback.\nThis causes deadlocks, and is generally indicative of a code smell.\nInstead, either pass around the initial `MutablePreferences` instance, or don't do everything in a single callback. ");
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return (Preferences) obj;
            } finally {
                JavaDataStorage.this.editLock.set(Boxing.boxBoolean(false));
            }
        }

        /* JADX INFO: renamed from: com.google.firebase.datastorage.JavaDataStorage$editSync$1$1, reason: invalid class name */
        static final class AnonymousClass1 extends SuspendLambda implements Function2 {
            final /* synthetic */ Function1 $transform;
            /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(Function1 function1, Continuation continuation) {
                super(2, continuation);
                this.$transform = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$transform, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(MutablePreferences mutablePreferences, Continuation continuation) {
                return ((AnonymousClass1) create(mutablePreferences, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                this.$transform.invoke((MutablePreferences) this.L$0);
                return Unit.INSTANCE;
            }
        }
    }

    public final Preferences editSync(Function1 transform) {
        Intrinsics.checkNotNullParameter(transform, "transform");
        return (Preferences) BuildersKt__BuildersKt.runBlocking$default(null, new C18711(transform, null), 1, null);
    }
}
