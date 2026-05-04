package androidx.work.impl.model;

import androidx.room.RoomDatabase;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class RawWorkInfoDao_Impl implements RawWorkInfoDao {
    public static final Companion Companion = new Companion(null);
    private final RoomDatabase __db;

    public RawWorkInfoDao_Impl(RoomDatabase __db) {
        Intrinsics.checkNotNullParameter(__db, "__db");
        this.__db = __db;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List getRequiredConverters() {
            return CollectionsKt.emptyList();
        }
    }
}
