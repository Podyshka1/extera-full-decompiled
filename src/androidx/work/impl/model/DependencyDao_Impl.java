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
public final class DependencyDao_Impl implements DependencyDao {
    public static final Companion Companion = new Companion(null);
    private final RoomDatabase __db;
    private final EntityInsertAdapter __insertAdapterOfDependency;

    public DependencyDao_Impl(RoomDatabase __db) {
        Intrinsics.checkNotNullParameter(__db, "__db");
        this.__db = __db;
        this.__insertAdapterOfDependency = new EntityInsertAdapter() { // from class: androidx.work.impl.model.DependencyDao_Impl.1
            @Override // androidx.room.EntityInsertAdapter
            protected String createQuery() {
                return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertAdapter
            public void bind(SQLiteStatement statement, Dependency entity) {
                Intrinsics.checkNotNullParameter(statement, "statement");
                Intrinsics.checkNotNullParameter(entity, "entity");
                statement.bindText(1, entity.getWorkSpecId());
                statement.bindText(2, entity.getPrerequisiteId());
            }
        };
    }

    @Override // androidx.work.impl.model.DependencyDao
    public void insertDependency(final Dependency dependency) {
        Intrinsics.checkNotNullParameter(dependency, "dependency");
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.DependencyDao_Impl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DependencyDao_Impl.insertDependency$lambda$0(this.f$0, dependency, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit insertDependency$lambda$0(DependencyDao_Impl dependencyDao_Impl, Dependency dependency, SQLiteConnection _connection) throws Exception {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        dependencyDao_Impl.__insertAdapterOfDependency.insert(_connection, dependency);
        return Unit.INSTANCE;
    }

    @Override // androidx.work.impl.model.DependencyDao
    public boolean hasCompletedAllPrerequisites(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String str = "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)";
        return ((Boolean) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.DependencyDao_Impl$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(DependencyDao_Impl.hasCompletedAllPrerequisites$lambda$1(str, id, (SQLiteConnection) obj));
            }
        })).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasCompletedAllPrerequisites$lambda$1(String str, String str2, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            boolean z = false;
            if (sQLiteStatementPrepare.step()) {
                z = ((int) sQLiteStatementPrepare.getLong(0)) != 0;
            }
            return z;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.DependencyDao
    public List getDependentWorkIds(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String str = "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.DependencyDao_Impl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DependencyDao_Impl.getDependentWorkIds$lambda$3(str, id, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getDependentWorkIds$lambda$3(String str, String str2, SQLiteConnection _connection) {
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

    @Override // androidx.work.impl.model.DependencyDao
    public boolean hasDependents(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String str = "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?";
        return ((Boolean) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.DependencyDao_Impl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(DependencyDao_Impl.hasDependents$lambda$4(str, id, (SQLiteConnection) obj));
            }
        })).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasDependents$lambda$4(String str, String str2, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
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

        public final List getRequiredConverters() {
            return CollectionsKt.emptyList();
        }
    }
}
