package androidx.room;

import android.content.Context;
import androidx.room.RoomDatabase;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class Room {
    public static final Room INSTANCE = new Room();

    private Room() {
    }

    public static final RoomDatabase.Builder inMemoryDatabaseBuilder(Context context, Class klass) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(klass, "klass");
        return new RoomDatabase.Builder(context, klass, null);
    }

    public static final RoomDatabase.Builder databaseBuilder(Context context, Class klass, String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(klass, "klass");
        if (str == null || StringsKt.isBlank(str)) {
            throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
        }
        if (Intrinsics.areEqual(str, ":memory:")) {
            throw new IllegalArgumentException("Cannot build a database with the special name ':memory:'. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
        }
        return new RoomDatabase.Builder(context, klass, str);
    }
}
