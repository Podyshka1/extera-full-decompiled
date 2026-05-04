package androidx.sqlite.p002db.framework;

import android.database.sqlite.SQLiteStatement;
import androidx.sqlite.p002db.SupportSQLiteStatement;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class FrameworkSQLiteStatement extends FrameworkSQLiteProgram implements SupportSQLiteStatement {
    private final SQLiteStatement delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FrameworkSQLiteStatement(SQLiteStatement delegate) {
        super(delegate);
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // androidx.sqlite.p002db.SupportSQLiteStatement
    public void execute() {
        this.delegate.execute();
    }

    @Override // androidx.sqlite.p002db.SupportSQLiteStatement
    public int executeUpdateDelete() {
        return this.delegate.executeUpdateDelete();
    }
}
