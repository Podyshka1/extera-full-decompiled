package androidx.room.support;

import androidx.sqlite.p002db.SupportSQLiteDatabase;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: androidx.room.support.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$inTransaction$1 */
/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class C0789x5693171d extends FunctionReferenceImpl implements Function1 {
    public static final C0789x5693171d INSTANCE = new C0789x5693171d();

    C0789x5693171d() {
        super(1, SupportSQLiteDatabase.class, "inTransaction", "inTransaction()Z", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(SupportSQLiteDatabase p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        return Boolean.valueOf(p0.inTransaction());
    }
}
