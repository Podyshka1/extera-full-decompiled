package androidx.work.impl;

import android.content.Context;
import androidx.work.Logger;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\f\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\r"}, d2 = {"Landroidx/work/impl/WorkDatabasePathHelper;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "migrateDatabase", _UrlKt.FRAGMENT_ENCODE_SET, "context", "Landroid/content/Context;", "migrationPaths", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/io/File;", "getDefaultDatabasePath", "getDatabasePath", "work-runtime_release"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nWorkDatabasePathHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkDatabasePathHelper.kt\nandroidx/work/impl/WorkDatabasePathHelper\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,94:1\n216#2,2:95\n8569#3,2:97\n9251#3,4:99\n*S KotlinDebug\n*F\n+ 1 WorkDatabasePathHelper.kt\nandroidx/work/impl/WorkDatabasePathHelper\n*L\n44#1:95,2\n72#1:97,2\n72#1:99,4\n*E\n"})
public final class WorkDatabasePathHelper {
    public static final WorkDatabasePathHelper INSTANCE = new WorkDatabasePathHelper();

    private WorkDatabasePathHelper() {
    }

    @JvmStatic
    public static final void migrateDatabase(Context context) {
        WorkDatabasePathHelper workDatabasePathHelper = INSTANCE;
        if (workDatabasePathHelper.getDefaultDatabasePath(context).exists()) {
            Logger.get().debug(WorkDatabasePathHelperKt.TAG, "Migrating WorkDatabase to the no-backup directory");
            for (Map.Entry<File, File> entry : workDatabasePathHelper.migrationPaths(context).entrySet()) {
                File key = entry.getKey();
                File value = entry.getValue();
                if (key.exists()) {
                    if (value.exists()) {
                        Logger.get().warning(WorkDatabasePathHelperKt.TAG, "Over-writing contents of " + value);
                    }
                    Logger.get().debug(WorkDatabasePathHelperKt.TAG, key.renameTo(value) ? "Migrated " + key + "to " + value : "Renaming " + key + " to " + value + " failed");
                }
            }
        }
    }

    public final Map<File, File> migrationPaths(Context context) {
        File defaultDatabasePath = getDefaultDatabasePath(context);
        File databasePath = getDatabasePath(context);
        String[] strArr = WorkDatabasePathHelperKt.DATABASE_EXTRA_FILES;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(strArr.length), 16));
        for (String str : strArr) {
            Pair pair = TuplesKt.to(new File(defaultDatabasePath.getPath() + str), new File(databasePath.getPath() + str));
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return MapsKt.plus(linkedHashMap, TuplesKt.to(defaultDatabasePath, databasePath));
    }

    public final File getDefaultDatabasePath(Context context) {
        return context.getDatabasePath("androidx.work.workdb");
    }

    public final File getDatabasePath(Context context) {
        return context.getNoBackupFilesDir();
    }
}
