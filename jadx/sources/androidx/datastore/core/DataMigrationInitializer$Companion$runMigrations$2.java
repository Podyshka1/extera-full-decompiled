package androidx.datastore.core;

import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
final class DataMigrationInitializer$Companion$runMigrations$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ List $cleanUps;
    final /* synthetic */ List $migrations;
    /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DataMigrationInitializer$Companion$runMigrations$2(List list, List list2, Continuation continuation) {
        super(2, continuation);
        this.$migrations = list;
        this.$cleanUps = list2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DataMigrationInitializer$Companion$runMigrations$2 dataMigrationInitializer$Companion$runMigrations$2 = new DataMigrationInitializer$Companion$runMigrations$2(this.$migrations, this.$cleanUps, continuation);
        dataMigrationInitializer$Companion$runMigrations$2.L$0 = obj;
        return dataMigrationInitializer$Companion$runMigrations$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation continuation) {
        return ((DataMigrationInitializer$Companion$runMigrations$2) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008e A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        List list;
        Iterator it;
        DataMigration dataMigration;
        Iterator it2;
        Object obj2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            obj = this.L$0;
            List list2 = this.$migrations;
            list = this.$cleanUps;
            it = list2.iterator();
        } else if (i == 1) {
            obj2 = this.L$3;
            DataMigration dataMigration2 = (DataMigration) this.L$2;
            it2 = (Iterator) this.L$1;
            List list3 = (List) this.L$0;
            ResultKt.throwOnFailure(obj);
            dataMigration = dataMigration2;
            list = list3;
            if (!((Boolean) obj).booleanValue()) {
                list.add(new DataMigrationInitializer$Companion$runMigrations$2$1$1(dataMigration, null));
                this.L$0 = list;
                this.L$1 = it2;
                this.L$2 = null;
                this.L$3 = null;
                this.label = 2;
                obj = dataMigration.migrate(obj2, this);
                if (obj != coroutine_suspended) {
                    it = it2;
                }
                return coroutine_suspended;
            }
            obj = obj2;
            it = it2;
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            it = (Iterator) this.L$1;
            list = (List) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        if (!it.hasNext()) {
            DataMigration dataMigration3 = (DataMigration) it.next();
            this.L$0 = list;
            this.L$1 = it;
            this.L$2 = dataMigration3;
            this.L$3 = obj;
            this.label = 1;
            Object objShouldMigrate = dataMigration3.shouldMigrate(obj, this);
            if (objShouldMigrate != coroutine_suspended) {
                Iterator it3 = it;
                obj2 = obj;
                obj = objShouldMigrate;
                dataMigration = dataMigration3;
                it2 = it3;
                if (!((Boolean) obj).booleanValue()) {
                }
                if (!it.hasNext()) {
                    return obj;
                }
            }
            return coroutine_suspended;
        }
    }
}
