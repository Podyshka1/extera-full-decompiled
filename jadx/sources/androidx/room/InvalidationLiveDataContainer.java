package androidx.room;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class InvalidationLiveDataContainer {
    private final RoomDatabase database;
    private final Set liveDataSet;

    public InvalidationLiveDataContainer(RoomDatabase database) {
        Intrinsics.checkNotNullParameter(database, "database");
        this.database = database;
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        Intrinsics.checkNotNullExpressionValue(setNewSetFromMap, "newSetFromMap(...)");
        this.liveDataSet = setNewSetFromMap;
    }
}
