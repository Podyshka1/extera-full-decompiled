package androidx.work.impl.model;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KClass;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0010R\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Landroidx/work/impl/model/PreferenceDao_Impl;", "Landroidx/work/impl/model/PreferenceDao;", "Landroidx/room/RoomDatabase;", "__db", "<init>", "(Landroidx/room/RoomDatabase;)V", "Landroidx/work/impl/model/Preference;", "preference", _UrlKt.FRAGMENT_ENCODE_SET, "insertPreference", "(Landroidx/work/impl/model/Preference;)V", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.KEY, _UrlKt.FRAGMENT_ENCODE_SET, "getLongValue", "(Ljava/lang/String;)Ljava/lang/Long;", "Landroidx/room/RoomDatabase;", "Landroidx/room/EntityInsertAdapter;", "__insertAdapterOfPreference", "Landroidx/room/EntityInsertAdapter;", "Companion", "work-runtime_release"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class PreferenceDao_Impl implements PreferenceDao {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final RoomDatabase __db;
    private final EntityInsertAdapter<Preference> __insertAdapterOfPreference = new EntityInsertAdapter<Preference>() { // from class: androidx.work.impl.model.PreferenceDao_Impl.1
        @Override // androidx.room.EntityInsertAdapter
        public String createQuery() {
            return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
        }

        @Override // androidx.room.EntityInsertAdapter
        public void bind(SQLiteStatement statement, Preference entity) {
            statement.bindText(1, entity.getKey());
            Long value = entity.getValue();
            if (value == null) {
                statement.bindNull(2);
            } else {
                statement.bindLong(2, value.longValue());
            }
        }
    };

    public PreferenceDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public void insertPreference(final Preference preference) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.PreferenceDao_Impl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PreferenceDao_Impl.$r8$lambda$pV7ZAv1ABN_GLbYRS_jnXDCXzyk(this.f$0, preference, (SQLiteConnection) obj);
            }
        });
    }

    public static Unit $r8$lambda$pV7ZAv1ABN_GLbYRS_jnXDCXzyk(PreferenceDao_Impl preferenceDao_Impl, Preference preference, SQLiteConnection sQLiteConnection) throws Exception {
        preferenceDao_Impl.__insertAdapterOfPreference.insert(sQLiteConnection, preference);
        return Unit.INSTANCE;
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public Long getLongValue(final String key) {
        final String str = "SELECT long_value FROM Preference where `key`=?";
        return (Long) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.PreferenceDao_Impl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PreferenceDao_Impl.m2054$r8$lambda$WOdbRCbcU9bFo_A_B2dKOhXNig(str, key, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$WOdbRCbcU9bF-o_A_B2dKOhXNig, reason: not valid java name */
    public static Long m2054$r8$lambda$WOdbRCbcU9bFo_A_B2dKOhXNig(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
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

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0005¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/model/PreferenceDao_Impl$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "getRequiredConverters", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/reflect/KClass;", "work-runtime_release"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
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
