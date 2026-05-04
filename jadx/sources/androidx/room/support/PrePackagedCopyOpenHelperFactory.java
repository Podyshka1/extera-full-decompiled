package androidx.room.support;

import androidx.sqlite.p002db.SupportSQLiteOpenHelper;
import java.io.File;
import java.util.concurrent.Callable;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class PrePackagedCopyOpenHelperFactory implements SupportSQLiteOpenHelper.Factory {
    private final String copyFromAssetPath;
    private final File copyFromFile;
    private final Callable copyFromInputStream;
    private final SupportSQLiteOpenHelper.Factory delegate;

    public PrePackagedCopyOpenHelperFactory(String str, File file, Callable callable, SupportSQLiteOpenHelper.Factory delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.copyFromAssetPath = str;
        this.copyFromFile = file;
        this.copyFromInputStream = callable;
        this.delegate = delegate;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
    public SupportSQLiteOpenHelper create(SupportSQLiteOpenHelper.Configuration configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        return new PrePackagedCopyOpenHelper(configuration.context, this.copyFromAssetPath, this.copyFromFile, this.copyFromInputStream, configuration.callback.version, this.delegate.create(configuration));
    }
}
