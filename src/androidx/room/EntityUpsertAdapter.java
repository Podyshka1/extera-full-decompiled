package androidx.room;

import android.database.SQLException;
import androidx.sqlite.SQLiteConnection;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u001c\n\u0002\b\u0006\b\u0007\u0018\u0000 \u0019*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\u0019B#\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001b\u0010\r\u001a\u00020\f2\n\u0010\u000b\u001a\u00060\tj\u0002`\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0012\u0010\u0013J'\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0010\u0010\u0015\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u0014¢\u0006\u0004\b\u0012\u0010\u0016R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0017R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0018¨\u0006\u001a"}, d2 = {"Landroidx/room/EntityUpsertAdapter;", "T", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/room/EntityInsertAdapter;", "entityInsertAdapter", "Landroidx/room/EntityDeleteOrUpdateAdapter;", "updateAdapter", "<init>", "(Landroidx/room/EntityInsertAdapter;Landroidx/room/EntityDeleteOrUpdateAdapter;)V", "Landroid/database/SQLException;", "Landroidx/sqlite/SQLiteException;", "ex", _UrlKt.FRAGMENT_ENCODE_SET, "checkUniquenessException", "(Landroid/database/SQLException;)V", "Landroidx/sqlite/SQLiteConnection;", "connection", "entity", "upsert", "(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V", _UrlKt.FRAGMENT_ENCODE_SET, "entities", "(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Iterable;)V", "Landroidx/room/EntityInsertAdapter;", "Landroidx/room/EntityDeleteOrUpdateAdapter;", "Companion", "room-runtime"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEntityUpsertAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EntityUpsertAdapter.kt\nandroidx/room/EntityUpsertAdapter\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,244:1\n13472#2,2:245\n13472#2,2:249\n1869#3,2:247\n1869#3,2:251\n*S KotlinDebug\n*F\n+ 1 EntityUpsertAdapter.kt\nandroidx/room/EntityUpsertAdapter\n*L\n61#1:245,2\n145#1:249,2\n73#1:247,2\n163#1:251,2\n*E\n"})
public final class EntityUpsertAdapter<T> {
    private final EntityInsertAdapter<T> entityInsertAdapter;
    private final EntityDeleteOrUpdateAdapter<T> updateAdapter;

    public EntityUpsertAdapter(EntityInsertAdapter<T> entityInsertAdapter, EntityDeleteOrUpdateAdapter<T> entityDeleteOrUpdateAdapter) {
        this.entityInsertAdapter = entityInsertAdapter;
        this.updateAdapter = entityDeleteOrUpdateAdapter;
    }

    public final void upsert(SQLiteConnection connection, T entity) throws Exception {
        try {
            this.entityInsertAdapter.insert(connection, entity);
        } catch (SQLException e) {
            checkUniquenessException(e);
            this.updateAdapter.handle(connection, entity);
        }
    }

    private final void checkUniquenessException(SQLException ex) {
        String message = ex.getMessage();
        if (message == null) {
            throw ex;
        }
        if (!StringsKt.contains((CharSequence) message, (CharSequence) "unique", true) && !StringsKt.contains$default((CharSequence) message, (CharSequence) "2067", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) message, (CharSequence) "1555", false, 2, (Object) null)) {
            throw ex;
        }
    }

    public final void upsert(SQLiteConnection connection, Iterable<? extends T> entities) throws Exception {
        if (entities == null) {
            return;
        }
        for (T t : entities) {
            try {
                this.entityInsertAdapter.insert(connection, t);
            } catch (SQLException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(connection, t);
            }
        }
    }
}
