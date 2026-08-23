package com.exteragram.messenger.api.p010db;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.exteragram.messenger.api.dto.AddedRegDateDTO;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
public final class AddedRegDateDao_Impl implements AddedRegDateDao {
    public static final Companion Companion = new Companion(null);
    private final RoomDatabase __db;
    private final EntityInsertAdapter __insertAdapterOfAddedRegDateDTO;

    public AddedRegDateDao_Impl(RoomDatabase __db) {
        Intrinsics.checkNotNullParameter(__db, "__db");
        this.__db = __db;
        this.__insertAdapterOfAddedRegDateDTO = new EntityInsertAdapter() { // from class: com.exteragram.messenger.api.db.AddedRegDateDao_Impl.1
            @Override // androidx.room.EntityInsertAdapter
            protected String createQuery() {
                return "INSERT OR IGNORE INTO `AddedRegDateDTO` (`userId`) VALUES (?)";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertAdapter
            public void bind(SQLiteStatement statement, AddedRegDateDTO entity) {
                Intrinsics.checkNotNullParameter(statement, "statement");
                Intrinsics.checkNotNullParameter(entity, "entity");
                statement.bindLong(1, entity.getUserId());
            }
        };
    }

    @Override // com.exteragram.messenger.api.p010db.AddedRegDateDao
    public Object insert(final AddedRegDateDTO addedRegDateDTO, Continuation<? super Unit> continuation) {
        Object objPerformSuspending = DBUtil.performSuspending(this.__db, false, true, new Function1() { // from class: com.exteragram.messenger.api.db.AddedRegDateDao_Impl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return AddedRegDateDao_Impl.insert$lambda$0(this.f$0, addedRegDateDTO, (SQLiteConnection) obj);
            }
        }, continuation);
        return objPerformSuspending == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objPerformSuspending : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit insert$lambda$0(AddedRegDateDao_Impl addedRegDateDao_Impl, AddedRegDateDTO addedRegDateDTO, SQLiteConnection _connection) throws Exception {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        addedRegDateDao_Impl.__insertAdapterOfAddedRegDateDTO.insert(_connection, addedRegDateDTO);
        return Unit.INSTANCE;
    }

    @Override // com.exteragram.messenger.api.p010db.AddedRegDateDao
    public Object isAdded(final long j, Continuation<? super Boolean> continuation) {
        final String str = "SELECT EXISTS(SELECT 1 FROM AddedRegDateDTO WHERE userId = ?)";
        return DBUtil.performSuspending(this.__db, true, false, new Function1() { // from class: com.exteragram.messenger.api.db.AddedRegDateDao_Impl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(AddedRegDateDao_Impl.isAdded$lambda$0(str, j, (SQLiteConnection) obj));
            }
        }, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isAdded$lambda$0(String str, long j, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            sQLiteStatementPrepare.bindLong(1, j);
            boolean z = false;
            if (sQLiteStatementPrepare.step()) {
                z = ((int) sQLiteStatementPrepare.getLong(0)) != 0;
            }
            return z;
        } finally {
            sQLiteStatementPrepare.close();
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
