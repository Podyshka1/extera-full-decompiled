package androidx.work.impl.model;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class WorkNameDao_Impl implements WorkNameDao {
    public static final Companion Companion = new Companion(null);
    private final RoomDatabase __db;
    private final EntityInsertAdapter __insertAdapterOfWorkName;

    public WorkNameDao_Impl(RoomDatabase __db) {
        Intrinsics.checkNotNullParameter(__db, "__db");
        this.__db = __db;
        this.__insertAdapterOfWorkName = new EntityInsertAdapter() { // from class: androidx.work.impl.model.WorkNameDao_Impl.1
            @Override // androidx.room.EntityInsertAdapter
            protected String createQuery() {
                return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertAdapter
            public void bind(SQLiteStatement statement, WorkName entity) {
                Intrinsics.checkNotNullParameter(statement, "statement");
                Intrinsics.checkNotNullParameter(entity, "entity");
                statement.bindText(1, entity.getName());
                statement.bindText(2, entity.getWorkSpecId());
            }
        };
    }

    @Override // androidx.work.impl.model.WorkNameDao
    public void insert(final WorkName workName) {
        Intrinsics.checkNotNullParameter(workName, "workName");
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkNameDao_Impl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkNameDao_Impl.insert$lambda$0(this.f$0, workName, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit insert$lambda$0(WorkNameDao_Impl workNameDao_Impl, WorkName workName, SQLiteConnection _connection) throws Exception {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        workNameDao_Impl.__insertAdapterOfWorkName.insert(_connection, workName);
        return Unit.INSTANCE;
    }

    @Override // androidx.work.impl.model.WorkNameDao
    public List getNamesForWorkSpecId(final String workSpecId) {
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        final String str = "SELECT name FROM workname WHERE work_spec_id=?";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkNameDao_Impl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkNameDao_Impl.getNamesForWorkSpecId$lambda$2(str, workSpecId, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getNamesForWorkSpecId$lambda$2(String str, String str2, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                arrayList.add(sQLiteStatementPrepare.getText(0));
            }
            return arrayList;
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

        public final List getRequiredConverters() {
            return CollectionsKt.emptyList();
        }
    }
}
