package androidx.room.support;

import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: renamed from: androidx.room.support.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$inTransaction$1 */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
public final /* synthetic */ class C0781x5693171d extends FunctionReferenceImpl implements Function1<SupportSQLiteDatabase, Boolean> {
    public static final C0781x5693171d INSTANCE = new C0781x5693171d();

    public C0781x5693171d() {
        super(1, SupportSQLiteDatabase.class, "inTransaction", "inTransaction()Z", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(SupportSQLiteDatabase supportSQLiteDatabase) {
        return Boolean.valueOf(supportSQLiteDatabase.inTransaction());
    }
}
