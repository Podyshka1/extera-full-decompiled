package androidx.datastore.migrations;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;
import androidx.datastore.core.DataMigration;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class SharedPreferencesMigration implements DataMigration {
    private final Context context;
    private final Set keySet;
    private final Function3 migrate;
    private final String name;
    private final Lazy sharedPrefs$delegate;
    private final Function2 shouldRunMigration;

    /* JADX INFO: renamed from: androidx.datastore.migrations.SharedPreferencesMigration$shouldMigrate$1 */
    static final class C05361 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C05361(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SharedPreferencesMigration.this.shouldMigrate(null, this);
        }
    }

    private SharedPreferencesMigration(Function0 function0, Set set, Function2 function2, Function3 function3, Context context, String str) {
        this.shouldRunMigration = function2;
        this.migrate = function3;
        this.context = context;
        this.name = str;
        this.sharedPrefs$delegate = LazyKt.lazy(function0);
        this.keySet = set == SharedPreferencesMigration_androidKt.getMIGRATE_ALL_KEYS() ? null : CollectionsKt.toMutableSet(set);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: androidx.datastore.migrations.SharedPreferencesMigration$3 */
    /* JADX INFO: loaded from: classes4.dex */
    public static final class C05343 extends SuspendLambda implements Function2 {
        int label;

        C05343(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C05343(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Continuation continuation) {
            return ((C05343) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(true);
        }
    }

    public /* synthetic */ SharedPreferencesMigration(Context context, String str, Set set, Function2 function2, Function3 function3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, (i & 4) != 0 ? SharedPreferencesMigration_androidKt.getMIGRATE_ALL_KEYS() : set, (i & 8) != 0 ? new C05343(null) : function2, function3);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration(final Context context, final String sharedPreferencesName, Set keysToMigrate, Function2 shouldRunMigration, Function3 migrate) {
        this(new Function0() { // from class: androidx.datastore.migrations.SharedPreferencesMigration.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final SharedPreferences invoke() {
                SharedPreferences sharedPreferences = context.getSharedPreferences(sharedPreferencesName, 0);
                Intrinsics.checkNotNullExpressionValue(sharedPreferences, "context.getSharedPrefere…me, Context.MODE_PRIVATE)");
                return sharedPreferences;
            }
        }, keysToMigrate, shouldRunMigration, migrate, context, sharedPreferencesName);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sharedPreferencesName, "sharedPreferencesName");
        Intrinsics.checkNotNullParameter(keysToMigrate, "keysToMigrate");
        Intrinsics.checkNotNullParameter(shouldRunMigration, "shouldRunMigration");
        Intrinsics.checkNotNullParameter(migrate, "migrate");
    }

    private final SharedPreferences getSharedPrefs() {
        return (SharedPreferences) this.sharedPrefs$delegate.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // androidx.datastore.core.DataMigration
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object shouldMigrate(Object obj, Continuation continuation) {
        C05361 c05361;
        SharedPreferencesMigration sharedPreferencesMigration;
        if (continuation instanceof C05361) {
            c05361 = (C05361) continuation;
            int i = c05361.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05361.label = i - Integer.MIN_VALUE;
            } else {
                c05361 = new C05361(continuation);
            }
        }
        Object objInvoke = c05361.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c05361.label;
        boolean z = true;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objInvoke);
            Function2 function2 = this.shouldRunMigration;
            c05361.L$0 = this;
            c05361.label = 1;
            objInvoke = function2.invoke(obj, c05361);
            if (objInvoke == coroutine_suspended) {
                return coroutine_suspended;
            }
            sharedPreferencesMigration = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            sharedPreferencesMigration = (SharedPreferencesMigration) c05361.L$0;
            ResultKt.throwOnFailure(objInvoke);
        }
        if (!((Boolean) objInvoke).booleanValue()) {
            return Boxing.boxBoolean(false);
        }
        Set set = sharedPreferencesMigration.keySet;
        if (set == null) {
            Map<String, ?> all = sharedPreferencesMigration.getSharedPrefs().getAll();
            Intrinsics.checkNotNullExpressionValue(all, "sharedPrefs.all");
            if (all.isEmpty()) {
                z = false;
            }
        } else {
            SharedPreferences sharedPrefs = sharedPreferencesMigration.getSharedPrefs();
            if (!OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(set) || !set.isEmpty()) {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    if (sharedPrefs.contains((String) it.next())) {
                        break;
                    }
                }
                z = false;
            }
        }
        return Boxing.boxBoolean(z);
    }

    @Override // androidx.datastore.core.DataMigration
    public Object migrate(Object obj, Continuation continuation) {
        return this.migrate.invoke(new SharedPreferencesView(getSharedPrefs(), this.keySet), obj, continuation);
    }

    @Override // androidx.datastore.core.DataMigration
    public Object cleanUp(Continuation continuation) throws IOException {
        Context context;
        String str;
        SharedPreferences.Editor editorEdit = getSharedPrefs().edit();
        Set set = this.keySet;
        if (set == null) {
            editorEdit.clear();
        } else {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                editorEdit.remove((String) it.next());
            }
        }
        if (!editorEdit.commit()) {
            throw new IOException("Unable to delete migrated keys from SharedPreferences.");
        }
        if (getSharedPrefs().getAll().isEmpty() && (context = this.context) != null && (str = this.name) != null) {
            deleteSharedPreferences(context, str);
        }
        Set set2 = this.keySet;
        if (set2 != null) {
            set2.clear();
        }
        return Unit.INSTANCE;
    }

    private final void deleteSharedPreferences(Context context, String str) {
        if (Build.VERSION.SDK_INT >= 24) {
            Api24Impl.deleteSharedPreferences(context, str);
            return;
        }
        File sharedPrefsFile = getSharedPrefsFile(context, str);
        File sharedPrefsBackup = getSharedPrefsBackup(sharedPrefsFile);
        sharedPrefsFile.delete();
        sharedPrefsBackup.delete();
    }

    private final File getSharedPrefsFile(Context context, String str) {
        return new File(new File(context.getApplicationInfo().dataDir, "shared_prefs"), str + ".xml");
    }

    private final File getSharedPrefsBackup(File file) {
        return new File(file.getPath() + ".bak");
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static final class Api24Impl {
        public static final Api24Impl INSTANCE = new Api24Impl();

        private Api24Impl() {
        }

        public static final boolean deleteSharedPreferences(Context context, String name) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(name, "name");
            return context.deleteSharedPreferences(name);
        }
    }
}
