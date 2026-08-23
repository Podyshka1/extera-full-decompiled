package com.exteragram.messenger.api.db;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.exteragram.messenger.api.dto.BoostySubscriberDTO;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KClass;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0007\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001c\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u000eH\u0096@¢\u0006\u0002\u0010\u000fJ\u001c\u0010\u0010\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u000eH\u0096@¢\u0006\u0002\u0010\u000fJ\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u000eH\u0096@¢\u0006\u0002\u0010\u0012J\u000e\u0010\u0013\u001a\u00020\fH\u0096@¢\u0006\u0002\u0010\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl;", "Lcom/exteragram/messenger/api/db/BoostySubscriberDao;", "__db", "Landroidx/room/RoomDatabase;", "<init>", "(Landroidx/room/RoomDatabase;)V", "__insertAdapterOfBoostySubscriberDTO", "Landroidx/room/EntityInsertAdapter;", "Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;", "__converters", "Lcom/exteragram/messenger/api/db/Converters;", "insertAll", _UrlKt.FRAGMENT_ENCODE_SET, "subscribers", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "replaceSubscribers", "getAll", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteAll", "Companion", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
public final class BoostySubscriberDao_Impl implements BoostySubscriberDao {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final RoomDatabase __db;
    private final Converters __converters = new Converters();
    private final EntityInsertAdapter<BoostySubscriberDTO> __insertAdapterOfBoostySubscriberDTO = new EntityInsertAdapter<BoostySubscriberDTO>() { // from class: com.exteragram.messenger.api.db.BoostySubscriberDao_Impl.1
        @Override // androidx.room.EntityInsertAdapter
        public String createQuery() {
            return "INSERT OR REPLACE INTO `BoostySubscriberDTO` (`id`,`name`,`totalAmountRub`,`totalAmountUsd`) VALUES (?,?,?,?)";
        }

        @Override // androidx.room.EntityInsertAdapter
        public void bind(SQLiteStatement statement, BoostySubscriberDTO entity) {
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

    public BoostySubscriberDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    @Override // com.exteragram.messenger.api.db.BoostySubscriberDao
    public Object insertAll(final List<BoostySubscriberDTO> list, Continuation<? super Unit> continuation) {
        Object objPerformSuspending = DBUtil.performSuspending(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.api.db.BoostySubscriberDao_Impl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BoostySubscriberDao_Impl.m1877$r8$lambda$JHrUJzTJ4p8ZR51yxwtYhKmMyE(this.f$0, list, (SQLiteConnection) obj);
            }
        }, continuation);
        return objPerformSuspending == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objPerformSuspending : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: $r8$lambda$JHrUJzTJ4p8ZR51yxwtYhKm-MyE, reason: not valid java name */
    public static Unit m1877$r8$lambda$JHrUJzTJ4p8ZR51yxwtYhKmMyE(BoostySubscriberDao_Impl boostySubscriberDao_Impl, List list, SQLiteConnection sQLiteConnection) throws Exception {
        boostySubscriberDao_Impl.__insertAdapterOfBoostySubscriberDTO.insert(sQLiteConnection, list);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.api.db.BoostySubscriberDao_Impl$replaceSubscribers$2 */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET}, m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "com.exteragram.messenger.api.db.BoostySubscriberDao_Impl$replaceSubscribers$2", m766f = "BoostySubscriberDao_Impl.kt", m767i = {}, m768l = {61}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    public static final class C09992 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ List<BoostySubscriberDTO> $subscribers;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C09992(List<BoostySubscriberDTO> list, Continuation<? super C09992> continuation) {
            super(1, continuation);
            this.$subscribers = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return BoostySubscriberDao_Impl.this.new C09992(this.$subscribers, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C09992) create(continuation)).invokeSuspend(Unit.INSTANCE);
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
                if (BoostySubscriberDao_Impl.super.replaceSubscribers(list, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.exteragram.messenger.api.db.BoostySubscriberDao
    public Object replaceSubscribers(List<BoostySubscriberDTO> list, Continuation<? super Unit> continuation) {
        Object objPerformInTransactionSuspending = DBUtil.performInTransactionSuspending(this.__db, new C09992(list, null), continuation);
        return objPerformInTransactionSuspending == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objPerformInTransactionSuspending : Unit.INSTANCE;
    }

    @Override // com.exteragram.messenger.api.db.BoostySubscriberDao
    public Object getAll(Continuation<? super List<BoostySubscriberDTO>> continuation) {
        final String str = "SELECT * FROM BoostySubscriberDTO";
        return DBUtil.performSuspending(this.__db, true, false, new Function1() { // from class: com.exteragram.messenger.api.db.BoostySubscriberDao_Impl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BoostySubscriberDao_Impl.$r8$lambda$5WzRBack9R29dCww_dXtTwKT134(str, this, (SQLiteConnection) obj);
            }
        }, continuation);
    }

    public static List $r8$lambda$5WzRBack9R29dCww_dXtTwKT134(String str, BoostySubscriberDao_Impl boostySubscriberDao_Impl, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
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
                return BoostySubscriberDao_Impl.m1878$r8$lambda$r8f9TPbJMfF9CtqQNRX8aapFg4(str, (SQLiteConnection) obj);
            }
        }, continuation);
        return objPerformSuspending == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objPerformSuspending : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: $r8$lambda$r8f9TPbJMfF9CtqQ-NRX8aapFg4, reason: not valid java name */
    public static Unit m1878$r8$lambda$r8f9TPbJMfF9CtqQNRX8aapFg4(String str, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.step();
            sQLiteStatementPrepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/exteragram/messenger/api/db/BoostySubscriberDao_Impl$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "getRequiredConverters", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/reflect/KClass;", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<KClass<?>> getRequiredConverters() {
            return CollectionsKt.emptyList();
        }
    }
}
