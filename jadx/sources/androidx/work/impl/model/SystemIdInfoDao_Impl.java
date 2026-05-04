package androidx.work.impl.model;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.impl.model.SystemIdInfoDao;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class SystemIdInfoDao_Impl implements SystemIdInfoDao {
    public static final Companion Companion = new Companion(null);
    private final RoomDatabase __db;
    private final EntityInsertAdapter __insertAdapterOfSystemIdInfo;

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public /* synthetic */ SystemIdInfo getSystemIdInfo(WorkGenerationalId workGenerationalId) {
        return SystemIdInfoDao.CC.$default$getSystemIdInfo(this, workGenerationalId);
    }

    public SystemIdInfoDao_Impl(RoomDatabase __db) {
        Intrinsics.checkNotNullParameter(__db, "__db");
        this.__db = __db;
        this.__insertAdapterOfSystemIdInfo = new EntityInsertAdapter() { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl.1
            @Override // androidx.room.EntityInsertAdapter
            protected String createQuery() {
                return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertAdapter
            public void bind(SQLiteStatement statement, SystemIdInfo entity) {
                Intrinsics.checkNotNullParameter(statement, "statement");
                Intrinsics.checkNotNullParameter(entity, "entity");
                statement.bindText(1, entity.workSpecId);
                statement.bindLong(2, entity.getGeneration());
                statement.bindLong(3, entity.systemId);
            }
        };
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void insertSystemIdInfo(final SystemIdInfo systemIdInfo) {
        Intrinsics.checkNotNullParameter(systemIdInfo, "systemIdInfo");
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SystemIdInfoDao_Impl.insertSystemIdInfo$lambda$0(this.f$0, systemIdInfo, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit insertSystemIdInfo$lambda$0(SystemIdInfoDao_Impl systemIdInfoDao_Impl, SystemIdInfo systemIdInfo, SQLiteConnection _connection) throws Exception {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        systemIdInfoDao_Impl.__insertAdapterOfSystemIdInfo.insert(_connection, systemIdInfo);
        return Unit.INSTANCE;
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public SystemIdInfo getSystemIdInfo(final String workSpecId, final int i) {
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        final String str = "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?";
        return (SystemIdInfo) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SystemIdInfoDao_Impl.getSystemIdInfo$lambda$1(str, workSpecId, i, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SystemIdInfo getSystemIdInfo$lambda$1(String str, String str2, int i, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            sQLiteStatementPrepare.bindLong(2, i);
            return sQLiteStatementPrepare.step() ? new SystemIdInfo(sQLiteStatementPrepare.getText(SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "work_spec_id")), (int) sQLiteStatementPrepare.getLong(SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "generation")), (int) sQLiteStatementPrepare.getLong(SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "system_id"))) : null;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public List getWorkSpecIds() {
        final String str = "SELECT DISTINCT work_spec_id FROM SystemIdInfo";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SystemIdInfoDao_Impl.getWorkSpecIds$lambda$2(str, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkSpecIds$lambda$2(String str, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                arrayList.add(sQLiteStatementPrepare.getText(0));
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.SystemIdInfoDao
    public void removeSystemIdInfo(final String workSpecId) {
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        final String str = "DELETE FROM SystemIdInfo where work_spec_id=?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.SystemIdInfoDao_Impl$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SystemIdInfoDao_Impl.removeSystemIdInfo$lambda$4(str, workSpecId, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit removeSystemIdInfo$lambda$4(String str, String str2, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
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

        public final List getRequiredConverters() {
            return CollectionsKt.emptyList();
        }
    }
}
