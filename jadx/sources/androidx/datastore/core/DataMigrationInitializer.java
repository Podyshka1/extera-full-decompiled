package androidx.datastore.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
public abstract class DataMigrationInitializer {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Function2 getInitializer(List migrations) {
            Intrinsics.checkNotNullParameter(migrations, "migrations");
            return new DataMigrationInitializer$Companion$getInitializer$1(migrations, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0071  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x009a  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x009d  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0088 -> B:25:0x006b). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x008b -> B:25:0x006b). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object runMigrations(List list, InitializerApi initializerApi, Continuation continuation) throws Throwable {
            DataMigrationInitializer$Companion$runMigrations$1 dataMigrationInitializer$Companion$runMigrations$1;
            List list2;
            Ref$ObjectRef ref$ObjectRef;
            Iterator it;
            Throwable th;
            if (continuation instanceof DataMigrationInitializer$Companion$runMigrations$1) {
                dataMigrationInitializer$Companion$runMigrations$1 = (DataMigrationInitializer$Companion$runMigrations$1) continuation;
                int i = dataMigrationInitializer$Companion$runMigrations$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    dataMigrationInitializer$Companion$runMigrations$1.label = i - Integer.MIN_VALUE;
                } else {
                    dataMigrationInitializer$Companion$runMigrations$1 = new DataMigrationInitializer$Companion$runMigrations$1(this, continuation);
                }
            }
            Object obj = dataMigrationInitializer$Companion$runMigrations$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = dataMigrationInitializer$Companion$runMigrations$1.label;
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                ArrayList arrayList = new ArrayList();
                Function2 dataMigrationInitializer$Companion$runMigrations$2 = new DataMigrationInitializer$Companion$runMigrations$2(list, arrayList, null);
                dataMigrationInitializer$Companion$runMigrations$1.L$0 = arrayList;
                dataMigrationInitializer$Companion$runMigrations$1.label = 1;
                if (initializerApi.updateData(dataMigrationInitializer$Companion$runMigrations$2, dataMigrationInitializer$Companion$runMigrations$1) != coroutine_suspended) {
                    list2 = arrayList;
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (Iterator) dataMigrationInitializer$Companion$runMigrations$1.L$1;
                ref$ObjectRef = (Ref$ObjectRef) dataMigrationInitializer$Companion$runMigrations$1.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                } catch (Throwable th2) {
                    Object obj2 = ref$ObjectRef.element;
                    if (obj2 == null) {
                        ref$ObjectRef.element = th2;
                    } else {
                        Intrinsics.checkNotNull(obj2);
                        ExceptionsKt.addSuppressed((Throwable) obj2, th2);
                    }
                }
                while (it.hasNext()) {
                    Function1 function1 = (Function1) it.next();
                    dataMigrationInitializer$Companion$runMigrations$1.L$0 = ref$ObjectRef;
                    dataMigrationInitializer$Companion$runMigrations$1.L$1 = it;
                    dataMigrationInitializer$Companion$runMigrations$1.label = 2;
                    if (function1.invoke(dataMigrationInitializer$Companion$runMigrations$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                th = (Throwable) ref$ObjectRef.element;
                if (th == null) {
                    throw th;
                }
                return Unit.INSTANCE;
            }
            list2 = (List) dataMigrationInitializer$Companion$runMigrations$1.L$0;
            ResultKt.throwOnFailure(obj);
            ref$ObjectRef = new Ref$ObjectRef();
            it = list2.iterator();
            while (it.hasNext()) {
            }
            th = (Throwable) ref$ObjectRef.element;
            if (th == null) {
            }
        }
    }
}
