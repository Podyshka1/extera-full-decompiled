package androidx.work.impl.model;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KClass;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00102\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0013\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0014R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00060\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Landroidx/work/impl/model/DependencyDao_Impl;", "Landroidx/work/impl/model/DependencyDao;", "Landroidx/room/RoomDatabase;", "__db", "<init>", "(Landroidx/room/RoomDatabase;)V", "Landroidx/work/impl/model/Dependency;", "dependency", _UrlKt.FRAGMENT_ENCODE_SET, "insertDependency", "(Landroidx/work/impl/model/Dependency;)V", _UrlKt.FRAGMENT_ENCODE_SET, "id", _UrlKt.FRAGMENT_ENCODE_SET, "hasCompletedAllPrerequisites", "(Ljava/lang/String;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "getDependentWorkIds", "(Ljava/lang/String;)Ljava/util/List;", "hasDependents", "Landroidx/room/RoomDatabase;", "Landroidx/room/EntityInsertAdapter;", "__insertAdapterOfDependency", "Landroidx/room/EntityInsertAdapter;", "Companion", "work-runtime_release"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class DependencyDao_Impl implements DependencyDao {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final RoomDatabase __db;
    private final EntityInsertAdapter<Dependency> __insertAdapterOfDependency = new EntityInsertAdapter<Dependency>() { // from class: androidx.work.impl.model.DependencyDao_Impl.1
        @Override // androidx.room.EntityInsertAdapter
        public String createQuery() {
            return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
        }

        @Override // androidx.room.EntityInsertAdapter
        public void bind(SQLiteStatement statement, Dependency entity) {
            statement.bindText(1, entity.getWorkSpecId());
            statement.bindText(2, entity.getPrerequisiteId());
        }
    };

    public DependencyDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    @Override // androidx.work.impl.model.DependencyDao
    public void insertDependency(final Dependency dependency) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.DependencyDao_Impl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DependencyDao_Impl.$r8$lambda$bODlJfJugFiPnEHw_lj7V3cbm8M(this.f$0, dependency, (SQLiteConnection) obj);
            }
        });
    }

    public static Unit $r8$lambda$bODlJfJugFiPnEHw_lj7V3cbm8M(DependencyDao_Impl dependencyDao_Impl, Dependency dependency, SQLiteConnection sQLiteConnection) throws Exception {
        dependencyDao_Impl.__insertAdapterOfDependency.insert(sQLiteConnection, dependency);
        return Unit.INSTANCE;
    }

    @Override // androidx.work.impl.model.DependencyDao
    public boolean hasCompletedAllPrerequisites(final String id) {
        final String str = "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)";
        return ((Boolean) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.DependencyDao_Impl$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(DependencyDao_Impl.$r8$lambda$fiiqOIOlPIoK2xVIJEfoCfVnRyI(str, id, (SQLiteConnection) obj));
            }
        })).booleanValue();
    }

    public static boolean $r8$lambda$fiiqOIOlPIoK2xVIJEfoCfVnRyI(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
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
    public List<String> getDependentWorkIds(final String id) {
        final String str = "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.DependencyDao_Impl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DependencyDao_Impl.$r8$lambda$b_W_13M5usA0EiPICihxVeQnESQ(str, id, (SQLiteConnection) obj);
            }
        });
    }

    public static List $r8$lambda$b_W_13M5usA0EiPICihxVeQnESQ(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
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
        final String str = "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?";
        return ((Boolean) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.DependencyDao_Impl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(DependencyDao_Impl.m2053$r8$lambda$Z34o3eg7DjoCpzpNFadsnWiP40(str, id, (SQLiteConnection) obj));
            }
        })).booleanValue();
    }

    /* JADX INFO: renamed from: $r8$lambda$Z34o3eg7DjoCpzp-NFadsnWiP40, reason: not valid java name */
    public static boolean m2053$r8$lambda$Z34o3eg7DjoCpzpNFadsnWiP40(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
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

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0005¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/model/DependencyDao_Impl$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "getRequiredConverters", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/reflect/KClass;", "work-runtime_release"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
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
