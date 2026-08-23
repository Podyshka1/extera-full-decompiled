package androidx.datastore.migrations;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.datastore.core.DataMigration;
import java.io.IOException;
import java.util.Iterator;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.vosk.Model$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0010\n\u0002\u0010#\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001,B\u0089\u0001\b\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012$\b\u0002\u0010\r\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\t\u0012(\u0010\u0010\u001a$\b\u0001\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000e\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0014\u0010\u0015By\b\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0016\u001a\u00020\u0007\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012$\b\u0002\u0010\r\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\t\u0012(\u0010\u0010\u001a$\b\u0001\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000e¢\u0006\u0004\b\u0014\u0010\u0017J\u001f\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0018\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\u001c\u0010\u001dJ\u0018\u0010\u0010\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\u0010\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u0018H\u0096@¢\u0006\u0004\b\u001e\u0010\u001fR0\u0010\r\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010 R6\u0010\u0010\u001a$\b\u0001\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010!R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\"R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010#R\u001b\u0010(\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u001c\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+¨\u0006-"}, d2 = {"Landroidx/datastore/migrations/SharedPreferencesMigration;", "T", "Landroidx/datastore/core/DataMigration;", "Lkotlin/Function0;", "Landroid/content/SharedPreferences;", "produceSharedPreferences", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "keysToMigrate", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "shouldRunMigration", "Lkotlin/Function3;", "Landroidx/datastore/migrations/SharedPreferencesView;", "migrate", "Landroid/content/Context;", "context", "name", "<init>", "(Lkotlin/jvm/functions/Function0;Ljava/util/Set;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroid/content/Context;Ljava/lang/String;)V", "sharedPreferencesName", "(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V", _UrlKt.FRAGMENT_ENCODE_SET, "deleteSharedPreferences", "(Landroid/content/Context;Ljava/lang/String;)V", "currentData", "shouldMigrate", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cleanUp", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/jvm/functions/Function2;", "Lkotlin/jvm/functions/Function3;", "Landroid/content/Context;", "Ljava/lang/String;", "sharedPrefs$delegate", "Lkotlin/Lazy;", "getSharedPrefs", "()Landroid/content/SharedPreferences;", "sharedPrefs", _UrlKt.FRAGMENT_ENCODE_SET, "keySet", "Ljava/util/Set;", "Api24Impl", "datastore_release"}, m754k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSharedPreferencesMigration.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedPreferencesMigration.android.kt\nandroidx/datastore/migrations/SharedPreferencesMigration\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,323:1\n1747#2,3:324\n1855#2,2:327\n*S KotlinDebug\n*F\n+ 1 SharedPreferencesMigration.android.kt\nandroidx/datastore/migrations/SharedPreferencesMigration\n*L\n158#1:324,3\n178#1:327,2\n*E\n"})
public final class SharedPreferencesMigration<T> implements DataMigration<T> {
    private final Context context;
    private final Set<String> keySet;
    private final Function3<SharedPreferencesView, T, Continuation<? super T>, Object> migrate;
    private final String name;

    /* JADX INFO: renamed from: sharedPrefs$delegate, reason: from kotlin metadata */
    private final Lazy sharedPrefs;
    private final Function2<T, Continuation<? super Boolean>, Object> shouldRunMigration;

    /* JADX INFO: renamed from: androidx.datastore.migrations.SharedPreferencesMigration$shouldMigrate$1 */
    @Metadata(m754k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.datastore.migrations.SharedPreferencesMigration", m766f = "SharedPreferencesMigration.android.kt", m767i = {0}, m768l = {151}, m769m = "shouldMigrate", m770n = {"this"}, m771s = {"L$0"})
    public static final class C05321 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ SharedPreferencesMigration<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05321(SharedPreferencesMigration<T> sharedPreferencesMigration, Continuation<? super C05321> continuation) {
            super(continuation);
            this.this$0 = sharedPreferencesMigration;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.shouldMigrate(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SharedPreferencesMigration(Function0<? extends SharedPreferences> function0, Set<String> set, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Function3<? super SharedPreferencesView, ? super T, ? super Continuation<? super T>, ? extends Object> function3, Context context, String str) {
        this.shouldRunMigration = function2;
        this.migrate = function3;
        this.context = context;
        this.name = str;
        this.sharedPrefs = LazyKt.lazy(function0);
        this.keySet = set == SharedPreferencesMigration_androidKt.getMIGRATE_ALL_KEYS() ? null : CollectionsKt.toMutableSet(set);
    }

    /* JADX INFO: renamed from: androidx.datastore.migrations.SharedPreferencesMigration$3 */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "T", "it"}, m754k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.datastore.migrations.SharedPreferencesMigration$3", m766f = "SharedPreferencesMigration.android.kt", m767i = {}, m768l = {}, m769m = "invokeSuspend", m770n = {}, m771s = {})
    public static final class C05303 extends SuspendLambda implements Function2<T, Continuation<? super Boolean>, Object> {
        int label;

        public C05303(Continuation<? super C05303> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05303(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(T t, Continuation<? super Boolean> continuation) {
            return ((C05303) create(t, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                return Boxing.boxBoolean(true);
            }
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }

    public /* synthetic */ SharedPreferencesMigration(Context context, String str, Set set, Function2 function2, Function3 function3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, (i & 4) != 0 ? SharedPreferencesMigration_androidKt.getMIGRATE_ALL_KEYS() : set, (i & 8) != 0 ? new C05303(null) : function2, function3);
    }

    @JvmOverloads
    public SharedPreferencesMigration(final Context context, final String str, Set<String> set, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Function3<? super SharedPreferencesView, ? super T, ? super Continuation<? super T>, ? extends Object> function3) {
        this(new Function0<SharedPreferences>() { // from class: androidx.datastore.migrations.SharedPreferencesMigration.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SharedPreferences invoke() {
                return context.getSharedPreferences(str, 0);
            }
        }, set, function2, function3, context, str);
    }

    private final SharedPreferences getSharedPrefs() {
        return (SharedPreferences) this.sharedPrefs.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // androidx.datastore.core.DataMigration
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object shouldMigrate(T t, Continuation<? super Boolean> continuation) {
        C05321 c05321;
        if (continuation instanceof C05321) {
            c05321 = (C05321) continuation;
            int i = c05321.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05321.label = i - Integer.MIN_VALUE;
            } else {
                c05321 = new C05321(this, continuation);
            }
        }
        Object objInvoke = c05321.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c05321.label;
        boolean z = true;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objInvoke);
            Function2<T, Continuation<? super Boolean>, Object> function2 = this.shouldRunMigration;
            c05321.L$0 = this;
            c05321.label = 1;
            objInvoke = function2.invoke(t, c05321);
            if (objInvoke == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            this = (SharedPreferencesMigration) c05321.L$0;
            ResultKt.throwOnFailure(objInvoke);
        }
        if (!((Boolean) objInvoke).booleanValue()) {
            return Boxing.boxBoolean(false);
        }
        Set<String> set = this.keySet;
        if (set == null) {
            if (this.getSharedPrefs().getAll().isEmpty()) {
                z = false;
            }
        } else {
            SharedPreferences sharedPrefs = this.getSharedPrefs();
            if (set == null || !set.isEmpty()) {
                Iterator<T> it = set.iterator();
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
    public Object migrate(T t, Continuation<? super T> continuation) {
        return this.migrate.invoke(new SharedPreferencesView(getSharedPrefs(), this.keySet), t, continuation);
    }

    @Override // androidx.datastore.core.DataMigration
    public Object cleanUp(Continuation<? super Unit> continuation) throws IOException {
        Context context;
        String str;
        SharedPreferences.Editor editorEdit = getSharedPrefs().edit();
        Set<String> set = this.keySet;
        if (set == null) {
            editorEdit.clear();
        } else {
            Iterator<T> it = set.iterator();
            while (it.hasNext()) {
                editorEdit.remove((String) it.next());
            }
        }
        if (!editorEdit.commit()) {
            Model$$ExternalSyntheticBUOutline0.m964m("Unable to delete migrated keys from SharedPreferences.");
            return null;
        }
        if (getSharedPrefs().getAll().isEmpty() && (context = this.context) != null && (str = this.name) != null) {
            deleteSharedPreferences(context, str);
        }
        Set<String> set2 = this.keySet;
        if (set2 != null) {
            set2.clear();
        }
        return Unit.INSTANCE;
    }

    private final void deleteSharedPreferences(Context context, String name) {
        Api24Impl.deleteSharedPreferences(context, name);
    }

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Landroidx/datastore/migrations/SharedPreferencesMigration$Api24Impl;", _UrlKt.FRAGMENT_ENCODE_SET, "()V", "deleteSharedPreferences", _UrlKt.FRAGMENT_ENCODE_SET, "context", "Landroid/content/Context;", "name", _UrlKt.FRAGMENT_ENCODE_SET, "datastore_release"}, m754k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Api24Impl {
        public static final Api24Impl INSTANCE = new Api24Impl();

        private Api24Impl() {
        }

        @JvmStatic
        public static final boolean deleteSharedPreferences(Context context, String name) {
            return context.deleteSharedPreferences(name);
        }
    }
}
