package com.exteragram.messenger.api.db;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.exteragram.messenger.api.db.BoostySubscriberDao;
import com.exteragram.messenger.api.dto.BoostySubscriberDTO;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
public final class BoostySubscriberDao_Impl implements BoostySubscriberDao {
    public static final Companion Companion = new Companion(null);
    private final Converters __converters;
    private final RoomDatabase __db;
    private final EntityInsertAdapter __insertAdapterOfBoostySubscriberDTO;

    public BoostySubscriberDao_Impl(RoomDatabase __db) {
        Intrinsics.checkNotNullParameter(__db, "__db");
        this.__converters = new Converters();
        this.__db = __db;
        this.__insertAdapterOfBoostySubscriberDTO = new EntityInsertAdapter() { // from class: com.exteragram.messenger.api.db.BoostySubscriberDao_Impl.1
            @Override // androidx.room.EntityInsertAdapter
            protected String createQuery() {
                return "INSERT OR REPLACE INTO `BoostySubscriberDTO` (`id`,`name`,`totalAmountRub`,`totalAmountUsd`) VALUES (?,?,?,?)";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertAdapter
            public void bind(SQLiteStatement statement, BoostySubscriberDTO entity) {
                Intrinsics.checkNotNullParameter(statement, "statement");
                Intrinsics.checkNotNullParameter(entity, "entity");
                statement.bindLong(1, entity.getId());
                statement.bindText(2, entity.getName());
                String strFromBigDecimal = BoostySubscriberDao_Impl.this.__converters.fromBigDecimal(entity.getTotalAmountRub());
                if (strFromBigDecimal == null) {
                    statement.bindNull(3);
                } else {
                    statement.bindText(3, strFromBigDecimal);
                }
                String strFromBigDecimal2 = BoostySubscriberDao_Impl.this.__converters.fromBigDecimal(entity.getTotalAmountUsd());
                if (strFromBigDecimal2 == null) {
                    statement.bindNull(4);
                } else {
                    statement.bindText(4, strFromBigDecimal2);
                }
            }
        };
    }

    @Override // com.exteragram.messenger.api.db.BoostySubscriberDao
    public Object insertAll(final List<BoostySubscriberDTO> list, Continuation<? super Unit> continuation) {
        Object objPerformSuspending = DBUtil.performSuspending(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.api.db.BoostySubscriberDao_Impl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BoostySubscriberDao_Impl.insertAll$lambda$0(this.f$0, list, (SQLiteConnection) obj);
            }
        }, continuation);
        return objPerformSuspending == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objPerformSuspending : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit insertAll$lambda$0(BoostySubscriberDao_Impl boostySubscriberDao_Impl, List list, SQLiteConnection _connection) throws Exception {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        boostySubscriberDao_Impl.__insertAdapterOfBoostySubscriberDTO.insert(_connection, (Iterable<Object>) list);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.BoostySubscriberDao_Impl$replaceSubscribers$2 */
    @DebugMetadata(m915c = "com.exteragram.messenger.api.db.BoostySubscriberDao_Impl$replaceSubscribers$2", m916f = "BoostySubscriberDao_Impl.kt", m917l = {61}, m918m = "invokeSuspend", m919v = 1)
    static final class C09862 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ List<BoostySubscriberDTO> $subscribers;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C09862(List<BoostySubscriberDTO> list, Continuation<? super C09862> continuation) {
            super(1, continuation);
            this.$subscribers = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return BoostySubscriberDao_Impl.this.new C09862(this.$subscribers, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C09862) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                BoostySubscriberDao_Impl boostySubscriberDao_Impl = BoostySubscriberDao_Impl.this;
                List<BoostySubscriberDTO> list = this.$subscribers;
                this.label = 1;
                if (BoostySubscriberDao.CC.$default$replaceSubscribers(boostySubscriberDao_Impl, list, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.exteragram.messenger.api.db.BoostySubscriberDao
    public Object replaceSubscribers(List<BoostySubscriberDTO> list, Continuation<? super Unit> continuation) {
        Object objPerformInTransactionSuspending = DBUtil.performInTransactionSuspending(this.__db, new C09862(list, null), continuation);
        return objPerformInTransactionSuspending == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objPerformInTransactionSuspending : Unit.INSTANCE;
    }

    @Override // com.exteragram.messenger.api.db.BoostySubscriberDao
    public Object getAll(Continuation<? super List<BoostySubscriberDTO>> continuation) {
        final String str = "SELECT * FROM BoostySubscriberDTO";
        return DBUtil.performSuspending(this.__db, true, false, new Function1() { // from class: com.exteragram.messenger.api.db.BoostySubscriberDao_Impl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BoostySubscriberDao_Impl.getAll$lambda$0(str, this, (SQLiteConnection) obj);
            }
        }, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getAll$lambda$0(String str, BoostySubscriberDao_Impl boostySubscriberDao_Impl, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "id");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "name");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "totalAmountRub");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "totalAmountUsd");
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                long j = sQLiteStatementPrepare.getLong(columnIndexOrThrow);
                String text = sQLiteStatementPrepare.getText(columnIndexOrThrow2);
                String text2 = null;
                BigDecimal bigDecimal = boostySubscriberDao_Impl.__converters.toBigDecimal(sQLiteStatementPrepare.isNull(columnIndexOrThrow3) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow3));
                if (bigDecimal == null) {
                    throw new IllegalStateException("Expected NON-NULL 'java.math.BigDecimal', but it was NULL.");
                }
                if (!sQLiteStatementPrepare.isNull(columnIndexOrThrow4)) {
                    text2 = sQLiteStatementPrepare.getText(columnIndexOrThrow4);
                }
                BigDecimal bigDecimal2 = boostySubscriberDao_Impl.__converters.toBigDecimal(text2);
                if (bigDecimal2 == null) {
                    throw new IllegalStateException("Expected NON-NULL 'java.math.BigDecimal', but it was NULL.");
                }
                arrayList.add(new BoostySubscriberDTO(j, text, bigDecimal, bigDecimal2));
            }
            sQLiteStatementPrepare.close();
            return arrayList;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // com.exteragram.messenger.api.db.BoostySubscriberDao
    public Object deleteAll(Continuation<? super Unit> continuation) {
        final String str = "DELETE FROM BoostySubscriberDTO";
        Object objPerformSuspending = DBUtil.performSuspending(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.api.db.BoostySubscriberDao_Impl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BoostySubscriberDao_Impl.deleteAll$lambda$0(str, (SQLiteConnection) obj);
            }
        }, continuation);
        return objPerformSuspending == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objPerformSuspending : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit deleteAll$lambda$0(String str, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            sQLiteStatementPrepare.step();
            sQLiteStatementPrepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<KClass> getRequiredConverters() {
            return CollectionsKt.emptyList();
        }
    }
}
