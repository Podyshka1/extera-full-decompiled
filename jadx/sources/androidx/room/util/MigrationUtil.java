package androidx.room.util;

import androidx.room.DatabaseConfiguration;
import androidx.room.RoomDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class MigrationUtil {
    public static final boolean isMigrationRequired(DatabaseConfiguration databaseConfiguration, int i, int i2) {
        Intrinsics.checkNotNullParameter(databaseConfiguration, "<this>");
        if (i > i2 && databaseConfiguration.allowDestructiveMigrationOnDowngrade) {
            return false;
        }
        Set migrationNotRequiredFrom$room_runtime = databaseConfiguration.getMigrationNotRequiredFrom$room_runtime();
        return databaseConfiguration.requireMigration && (migrationNotRequiredFrom$room_runtime == null || !migrationNotRequiredFrom$room_runtime.contains(Integer.valueOf(i)));
    }

    public static final boolean contains(RoomDatabase.MigrationContainer migrationContainer, int i, int i2) {
        Intrinsics.checkNotNullParameter(migrationContainer, "<this>");
        Map migrations = migrationContainer.getMigrations();
        if (!migrations.containsKey(Integer.valueOf(i))) {
            return false;
        }
        Map mapEmptyMap = (Map) migrations.get(Integer.valueOf(i));
        if (mapEmptyMap == null) {
            mapEmptyMap = MapsKt.emptyMap();
        }
        return mapEmptyMap.containsKey(Integer.valueOf(i2));
    }

    public static final List findMigrationPath(RoomDatabase.MigrationContainer migrationContainer, int i, int i2) {
        Intrinsics.checkNotNullParameter(migrationContainer, "<this>");
        if (i == i2) {
            return CollectionsKt.emptyList();
        }
        return findUpMigrationPath(migrationContainer, new ArrayList(), i2 > i, i, i2);
    }

    private static final List findUpMigrationPath(RoomDatabase.MigrationContainer migrationContainer, List list, boolean z, int i, int i2) {
        Pair sortedNodes$room_runtime;
        int iIntValue;
        boolean z2;
        while (true) {
            if (z) {
                if (i >= i2) {
                    return list;
                }
            } else if (i <= i2) {
                return list;
            }
            if (z) {
                sortedNodes$room_runtime = migrationContainer.getSortedDescendingNodes$room_runtime(i);
            } else {
                sortedNodes$room_runtime = migrationContainer.getSortedNodes$room_runtime(i);
            }
            if (sortedNodes$room_runtime == null) {
                return null;
            }
            Map map = (Map) sortedNodes$room_runtime.component1();
            Iterator it = ((Iterable) sortedNodes$room_runtime.component2()).iterator();
            while (it.hasNext()) {
                iIntValue = ((Number) it.next()).intValue();
                if (!z) {
                    if (i2 <= iIntValue && iIntValue < i) {
                        Object obj = map.get(Integer.valueOf(iIntValue));
                        Intrinsics.checkNotNull(obj);
                        list.add(obj);
                        z2 = true;
                        break;
                    }
                } else if (i + 1 <= iIntValue && iIntValue <= i2) {
                    Object obj2 = map.get(Integer.valueOf(iIntValue));
                    Intrinsics.checkNotNull(obj2);
                    list.add(obj2);
                    z2 = true;
                    break;
                }
            }
            iIntValue = i;
            z2 = false;
            if (!z2) {
                return null;
            }
            i = iIntValue;
        }
    }
}
