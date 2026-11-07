package androidx.work.impl.model;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.Data;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KClass;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0011R\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"Landroidx/work/impl/model/WorkProgressDao_Impl;", "Landroidx/work/impl/model/WorkProgressDao;", "Landroidx/room/RoomDatabase;", "__db", "<init>", "(Landroidx/room/RoomDatabase;)V", "Landroidx/work/impl/model/WorkProgress;", "progress", _UrlKt.FRAGMENT_ENCODE_SET, "insert", "(Landroidx/work/impl/model/WorkProgress;)V", _UrlKt.FRAGMENT_ENCODE_SET, "workSpecId", "delete", "(Ljava/lang/String;)V", "deleteAll", "()V", "Landroidx/room/RoomDatabase;", "Landroidx/room/EntityInsertAdapter;", "__insertAdapterOfWorkProgress", "Landroidx/room/EntityInsertAdapter;", "Companion", "work-runtime_release"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class WorkProgressDao_Impl implements WorkProgressDao {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final RoomDatabase __db;
    private final EntityInsertAdapter<WorkProgress> __insertAdapterOfWorkProgress = new EntityInsertAdapter<WorkProgress>() { // from class: androidx.work.impl.model.WorkProgressDao_Impl.1
        @Override // androidx.room.EntityInsertAdapter
        public String createQuery() {
            return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
        }

        @Override // androidx.room.EntityInsertAdapter
        public void bind(SQLiteStatement statement, WorkProgress entity) {
            statement.bindText(1, entity.getWorkSpecId());
            statement.bindBlob(2, Data.INSTANCE.toByteArrayInternalV1(entity.getProgress()));
        }
    };

    public WorkProgressDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public void insert(final WorkProgress progress) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkProgressDao_Impl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkProgressDao_Impl.m2059$r8$lambda$PINVEeB__LLptuNxhS4Ei1b1_s(this.f$0, progress, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$PINVEeB__LLptu-NxhS4Ei1b1_s, reason: not valid java name */
    public static Unit m2059$r8$lambda$PINVEeB__LLptuNxhS4Ei1b1_s(WorkProgressDao_Impl workProgressDao_Impl, WorkProgress workProgress, SQLiteConnection sQLiteConnection) throws Exception {
        workProgressDao_Impl.__insertAdapterOfWorkProgress.insert(sQLiteConnection, workProgress);
        return Unit.INSTANCE;
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public void delete(final String workSpecId) {
        final String str = "DELETE from WorkProgress where work_spec_id=?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkProgressDao_Impl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkProgressDao_Impl.m2057$r8$lambda$EO0gVZoCNSdIrokJpZCcUBsgk(str, workSpecId, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$EO0gVZoCNSdI-rokJ-pZCcUBsgk, reason: not valid java name */
    public static Unit m2057$r8$lambda$EO0gVZoCNSdIrokJpZCcUBsgk(String str, String str2, SQLiteConnection sQLiteConnection) {
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

    @Override // androidx.work.impl.model.WorkProgressDao
    public void deleteAll() {
        final String str = "DELETE FROM WorkProgress";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkProgressDao_Impl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkProgressDao_Impl.m2058$r8$lambda$HxEzdbtI1meBdaXYgHdDeKTIRA(str, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$HxEzdbtI1meBd-aXYgHdDeKTIRA, reason: not valid java name */
    public static Unit m2058$r8$lambda$HxEzdbtI1meBdaXYgHdDeKTIRA(String str, SQLiteConnection sQLiteConnection) {
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

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0005¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/model/WorkProgressDao_Impl$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "getRequiredConverters", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/reflect/KClass;", "work-runtime_release"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
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
