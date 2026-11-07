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
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\r2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0012R\u001a\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00060\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Landroidx/work/impl/model/WorkTagDao_Impl;", "Landroidx/work/impl/model/WorkTagDao;", "Landroidx/room/RoomDatabase;", "__db", "<init>", "(Landroidx/room/RoomDatabase;)V", "Landroidx/work/impl/model/WorkTag;", "workTag", _UrlKt.FRAGMENT_ENCODE_SET, "insert", "(Landroidx/work/impl/model/WorkTag;)V", _UrlKt.FRAGMENT_ENCODE_SET, "id", _UrlKt.FRAGMENT_ENCODE_SET, "getTagsForWorkSpecId", "(Ljava/lang/String;)Ljava/util/List;", "deleteByWorkSpecId", "(Ljava/lang/String;)V", "Landroidx/room/RoomDatabase;", "Landroidx/room/EntityInsertAdapter;", "__insertAdapterOfWorkTag", "Landroidx/room/EntityInsertAdapter;", "Companion", "work-runtime_release"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class WorkTagDao_Impl implements WorkTagDao {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final RoomDatabase __db;
    private final EntityInsertAdapter<WorkTag> __insertAdapterOfWorkTag = new EntityInsertAdapter<WorkTag>() { // from class: androidx.work.impl.model.WorkTagDao_Impl.1
        @Override // androidx.room.EntityInsertAdapter
        public String createQuery() {
            return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
        }

        @Override // androidx.room.EntityInsertAdapter
        public void bind(SQLiteStatement statement, WorkTag entity) {
            statement.bindText(1, entity.getTag());
            statement.bindText(2, entity.getWorkSpecId());
        }
    };

    public WorkTagDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    @Override // androidx.work.impl.model.WorkTagDao
    public void insert(final WorkTag workTag) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkTagDao_Impl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkTagDao_Impl.m2067$r8$lambda$3mSVYlBFYAbyMDyxoNuxxzbzUM(this.f$0, workTag, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$3mSVYlBFYAbyMDyxo-NuxxzbzUM, reason: not valid java name */
    public static Unit m2067$r8$lambda$3mSVYlBFYAbyMDyxoNuxxzbzUM(WorkTagDao_Impl workTagDao_Impl, WorkTag workTag, SQLiteConnection sQLiteConnection) throws Exception {
        workTagDao_Impl.__insertAdapterOfWorkTag.insert(sQLiteConnection, workTag);
        return Unit.INSTANCE;
    }

    @Override // androidx.work.impl.model.WorkTagDao
    public List<String> getTagsForWorkSpecId(final String id) {
        final String str = "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkTagDao_Impl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkTagDao_Impl.m2068$r8$lambda$7aU4exkilK3ltTBUxu2zfncHvo(str, id, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$7aU4e-xkilK3ltTBUxu2zfncHvo, reason: not valid java name */
    public static List m2068$r8$lambda$7aU4exkilK3ltTBUxu2zfncHvo(String str, String str2, SQLiteConnection sQLiteConnection) {
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

    @Override // androidx.work.impl.model.WorkTagDao
    public void deleteByWorkSpecId(final String id) {
        final String str = "DELETE FROM worktag WHERE work_spec_id=?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkTagDao_Impl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkTagDao_Impl.m2069$r8$lambda$YL6Dh5dgDwRNAe3gmNOuWiGz0E(str, id, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$YL6Dh5dgDwRNAe3gmNOuWiGz0-E, reason: not valid java name */
    public static Unit m2069$r8$lambda$YL6Dh5dgDwRNAe3gmNOuWiGz0E(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
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

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0005¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/model/WorkTagDao_Impl$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "getRequiredConverters", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/reflect/KClass;", "work-runtime_release"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
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
