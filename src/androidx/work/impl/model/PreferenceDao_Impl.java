package androidx.work.impl.model;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class PreferenceDao_Impl implements PreferenceDao {
    public static final Companion Companion = new Companion(null);
    private final RoomDatabase __db;
    private final EntityInsertAdapter __insertAdapterOfPreference;

    public PreferenceDao_Impl(RoomDatabase __db) {
        Intrinsics.checkNotNullParameter(__db, "__db");
        this.__db = __db;
        this.__insertAdapterOfPreference = new EntityInsertAdapter() { // from class: androidx.work.impl.model.PreferenceDao_Impl.1
            @Override // androidx.room.EntityInsertAdapter
            protected String createQuery() {
                return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertAdapter
            public void bind(SQLiteStatement statement, Preference entity) {
                Intrinsics.checkNotNullParameter(statement, "statement");
                Intrinsics.checkNotNullParameter(entity, "entity");
                statement.bindText(1, entity.getKey());
                Long value = entity.getValue();
                if (value == null) {
                    statement.bindNull(2);
                } else {
                    statement.bindLong(2, value.longValue());
                }
            }
        };
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public void insertPreference(final Preference preference) {
        Intrinsics.checkNotNullParameter(preference, "preference");
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.PreferenceDao_Impl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PreferenceDao_Impl.insertPreference$lambda$0(this.f$0, preference, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit insertPreference$lambda$0(PreferenceDao_Impl preferenceDao_Impl, Preference preference, SQLiteConnection _connection) throws Exception {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        preferenceDao_Impl.__insertAdapterOfPreference.insert(_connection, preference);
        return Unit.INSTANCE;
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public Long getLongValue(final String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        final String str = "SELECT long_value FROM Preference where `key`=?";
        return (Long) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.PreferenceDao_Impl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PreferenceDao_Impl.getLongValue$lambda$1(str, key, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Long getLongValue$lambda$1(String str, String str2, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            Long lValueOf = null;
            if (sQLiteStatementPrepare.step() && !sQLiteStatementPrepare.isNull(0)) {
                lValueOf = Long.valueOf(sQLiteStatementPrepare.getLong(0));
            }
            return lValueOf;
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
