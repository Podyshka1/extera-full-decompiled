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
import com.android.dx.io.Opcodes;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
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
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J)\u0010\f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010\u000b\u001a\u00028\u0000¢\u0006\u0004\b\f\u0010\rJ)\u0010\u0010\u001a\u00020\u000f\"\u0004\b\u0000\u0010\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010\u000e\u001a\u00028\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0013\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\u0004\u0012\u00020\u00010\u0012¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0019\u001a\u00020\u000f2\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u0015¢\u0006\u0004\b\u0019\u0010\u001aR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u001a\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R%\u0010*\u001a\b\u0012\u0004\u0012\u00020\u000f0%*\u00020\u00028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u001a\u0010*\u001a\b\u0012\u0004\u0012\u00020\u000f0%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+¨\u0006,"}, d2 = {"Lcom/google/firebase/datastorage/JavaDataStorage;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/content/Context;", "context", _UrlKt.FRAGMENT_ENCODE_SET, "name", "<init>", "(Landroid/content/Context;Ljava/lang/String;)V", "T", "Landroidx/datastore/preferences/core/Preferences$Key;", "key", "defaultValue", "getSync", "(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Ljava/lang/Object;", "value", "Landroidx/datastore/preferences/core/Preferences;", "putSync", "(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Landroidx/datastore/preferences/core/Preferences;", _UrlKt.FRAGMENT_ENCODE_SET, "getAllSync", "()Ljava/util/Map;", "Lkotlin/Function1;", "Landroidx/datastore/preferences/core/MutablePreferences;", _UrlKt.FRAGMENT_ENCODE_SET, "transform", "editSync", "(Lkotlin/jvm/functions/Function1;)Landroidx/datastore/preferences/core/Preferences;", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "Ljava/lang/String;", "getName", "()Ljava/lang/String;", "Ljava/lang/ThreadLocal;", _UrlKt.FRAGMENT_ENCODE_SET, "editLock", "Ljava/lang/ThreadLocal;", "Landroidx/datastore/core/DataStore;", "dataStore$delegate", "Lkotlin/properties/ReadOnlyProperty;", "getDataStore", "(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", "dataStore", "Landroidx/datastore/core/DataStore;", "com.google.firebase-firebase-common"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
public final class JavaDataStorage {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property2(new PropertyReference2Impl(JavaDataStorage.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};
    private final Context context;
    private final DataStore<Preferences> dataStore;

    /* JADX INFO: renamed from: dataStore$delegate, reason: from kotlin metadata */
    private final ReadOnlyProperty dataStore;
    private final ThreadLocal<Boolean> editLock = new ThreadLocal<>();
    private final String name;

    public JavaDataStorage(Context context, String str) {
        this.context = context;
        this.name = str;
        this.dataStore = PreferenceDataStoreDelegateKt.preferencesDataStore$default(str, new ReplaceFileCorruptionHandler(new Function1() { // from class: com.google.firebase.datastorage.JavaDataStorage$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return JavaDataStorage.m3228$r8$lambda$S4ENo8tfimHebz0yGbY9bmLOQ0(this.f$0, (CorruptionException) obj);
            }
        }), new Function1() { // from class: com.google.firebase.datastorage.JavaDataStorage$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CollectionsKt.listOf(SharedPreferencesMigrationKt.SharedPreferencesMigration$default((Context) obj, this.f$0.name, null, 4, null));
            }
        }, null, 8, null);
        this.dataStore = getDataStore(context);
    }

    private final DataStore<Preferences> getDataStore(Context context) {
        return (DataStore) this.dataStore.getValue(context, $$delegatedProperties[0]);
    }

    /* JADX INFO: renamed from: $r8$lambda$S4ENo8tfimHebz0yGbY9bmLO-Q0, reason: not valid java name */
    public static Preferences m3228$r8$lambda$S4ENo8tfimHebz0yGbY9bmLOQ0(JavaDataStorage javaDataStorage, CorruptionException corruptionException) {
        Log.w(Reflection.getOrCreateKotlinClass(JavaDataStorage.class).getSimpleName(), "CorruptionException in " + javaDataStorage.name + " DataStore running in process " + Process.myPid(), corruptionException);
        return PreferencesFactory.createEmpty();
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.google.firebase.datastorage.JavaDataStorage$getSync$1 */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "T", "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(m765c = "com.google.firebase.datastorage.JavaDataStorage$getSync$1", m766f = "JavaDataStorage.kt", m767i = {}, m768l = {104}, m769m = "invokeSuspend", m770n = {}, m771s = {})
    public static final class C18211<T> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
        final /* synthetic */ T $defaultValue;
        final /* synthetic */ Preferences.Key<T> $key;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18211(Preferences.Key<T> key, T t, Continuation<? super C18211> continuation) {
            super(2, continuation);
            this.$key = key;
            this.$defaultValue = t;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return JavaDataStorage.this.new C18211(this.$key, this.$defaultValue, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
            return ((C18211) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object obj2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Flow<T> data = JavaDataStorage.this.dataStore.getData();
                this.label = 1;
                obj = FlowKt.firstOrNull(data, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            Preferences preferences = (Preferences) obj;
            return (preferences == null || (obj2 = preferences.get(this.$key)) == null) ? this.$defaultValue : obj2;
        }
    }

    public final <T> T getSync(Preferences.Key<T> key, T defaultValue) {
        return (T) BuildersKt__BuildersKt.runBlocking$default(null, new C18211(key, defaultValue, null), 1, null);
    }

    /* JADX INFO: renamed from: com.google.firebase.datastorage.JavaDataStorage$putSync$1 */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroidx/datastore/preferences/core/Preferences;", "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(m765c = "com.google.firebase.datastorage.JavaDataStorage$putSync$1", m766f = "JavaDataStorage.kt", m767i = {}, m768l = {145}, m769m = "invokeSuspend", m770n = {}, m771s = {})
    public static final class C18221 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Preferences>, Object> {
        final /* synthetic */ Preferences.Key<T> $key;
        final /* synthetic */ T $value;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18221(Preferences.Key<T> key, T t, Continuation<? super C18221> continuation) {
            super(2, continuation);
            this.$key = key;
            this.$value = t;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return JavaDataStorage.this.new C18221(this.$key, this.$value, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Preferences> continuation) {
            return ((C18221) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.google.firebase.datastorage.JavaDataStorage$putSync$1$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "it", "Landroidx/datastore/preferences/core/MutablePreferences;"}, m754k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(m765c = "com.google.firebase.datastorage.JavaDataStorage$putSync$1$1", m766f = "JavaDataStorage.kt", m767i = {}, m768l = {}, m769m = "invokeSuspend", m770n = {}, m771s = {})
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {
            final /* synthetic */ Preferences.Key<T> $key;
            final /* synthetic */ T $value;
            /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(Preferences.Key<T> key, T t, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$key = key;
                this.$value = t;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$key, this.$value, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(MutablePreferences mutablePreferences, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(mutablePreferences, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
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
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            DataStore dataStore = JavaDataStorage.this.dataStore;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$key, this.$value, null);
            this.label = 1;
            Object objEdit = PreferencesKt.edit(dataStore, anonymousClass1, this);
            return objEdit == coroutine_suspended ? coroutine_suspended : objEdit;
        }
    }

    public final <T> Preferences putSync(Preferences.Key<T> key, T value) {
        return (Preferences) BuildersKt__BuildersKt.runBlocking$default(null, new C18221(key, value, null), 1, null);
    }

    /* JADX INFO: renamed from: com.google.firebase.datastorage.JavaDataStorage$getAllSync$1 */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/datastore/preferences/core/Preferences$Key;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(m765c = "com.google.firebase.datastorage.JavaDataStorage$getAllSync$1", m766f = "JavaDataStorage.kt", m767i = {}, m768l = {170}, m769m = "invokeSuspend", m770n = {}, m771s = {})
    public static final class C18201 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Map<Preferences.Key<?>, ? extends Object>>, Object> {
        int label;

        public C18201(Continuation<? super C18201> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return JavaDataStorage.this.new C18201(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Map<Preferences.Key<?>, ? extends Object>> continuation) {
            return ((C18201) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Map<Preferences.Key<?>, Object> mapAsMap;
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
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            Preferences preferences = (Preferences) obj;
            return (preferences == null || (mapAsMap = preferences.asMap()) == null) ? MapsKt.emptyMap() : mapAsMap;
        }
    }

    public final Map<Preferences.Key<?>, Object> getAllSync() {
        return (Map) BuildersKt__BuildersKt.runBlocking$default(null, new C18201(null), 1, null);
    }

    /* JADX INFO: renamed from: com.google.firebase.datastorage.JavaDataStorage$editSync$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroidx/datastore/preferences/core/Preferences;", "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(m765c = "com.google.firebase.datastorage.JavaDataStorage$editSync$1", m766f = "JavaDataStorage.kt", m767i = {}, m768l = {Opcodes.REM_INT_LIT8}, m769m = "invokeSuspend", m770n = {}, m771s = {})
    public static final class C18191 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Preferences>, Object> {
        final /* synthetic */ Function1<MutablePreferences, Unit> $transform;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C18191(Function1<? super MutablePreferences, Unit> function1, Continuation<? super C18191> continuation) {
            super(2, continuation);
            this.$transform = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return JavaDataStorage.this.new C18191(this.$transform, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Preferences> continuation) {
            return ((C18191) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                        Segment$$ExternalSyntheticBUOutline1.m848m("Don't call JavaDataStorage.edit() from within an existing edit() callback.\nThis causes deadlocks, and is generally indicative of a code smell.\nInstead, either pass around the initial `MutablePreferences` instance, or don't do everything in a single callback. ");
                        return null;
                    }
                } else {
                    if (i != 1) {
                        Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return (Preferences) obj;
            } finally {
                JavaDataStorage.this.editLock.set(Boxing.boxBoolean(false));
            }
        }

        /* JADX INFO: renamed from: com.google.firebase.datastorage.JavaDataStorage$editSync$1$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "it", "Landroidx/datastore/preferences/core/MutablePreferences;"}, m754k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(m765c = "com.google.firebase.datastorage.JavaDataStorage$editSync$1$1", m766f = "JavaDataStorage.kt", m767i = {}, m768l = {}, m769m = "invokeSuspend", m770n = {}, m771s = {})
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {
            final /* synthetic */ Function1<MutablePreferences, Unit> $transform;
            /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass1(Function1<? super MutablePreferences, Unit> function1, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$transform = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$transform, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(MutablePreferences mutablePreferences, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(mutablePreferences, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                this.$transform.invoke((MutablePreferences) this.L$0);
                return Unit.INSTANCE;
            }
        }
    }

    public final Preferences editSync(Function1<? super MutablePreferences, Unit> transform) {
        return (Preferences) BuildersKt__BuildersKt.runBlocking$default(null, new C18191(transform, null), 1, null);
    }
}
