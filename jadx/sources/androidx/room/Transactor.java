package androidx.room;

import kotlin.coroutines.Continuation;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public interface Transactor extends PooledConnection {
    Object inTransaction(Continuation continuation);

    Object withTransaction(SQLiteTransactionType sQLiteTransactionType, Function2 function2, Continuation continuation);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class SQLiteTransactionType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ SQLiteTransactionType[] $VALUES;
        public static final SQLiteTransactionType DEFERRED = new SQLiteTransactionType("DEFERRED", 0);
        public static final SQLiteTransactionType IMMEDIATE = new SQLiteTransactionType("IMMEDIATE", 1);
        public static final SQLiteTransactionType EXCLUSIVE = new SQLiteTransactionType("EXCLUSIVE", 2);

        private static final /* synthetic */ SQLiteTransactionType[] $values() {
            return new SQLiteTransactionType[]{DEFERRED, IMMEDIATE, EXCLUSIVE};
        }

        public static SQLiteTransactionType valueOf(String str) {
            return (SQLiteTransactionType) Enum.valueOf(SQLiteTransactionType.class, str);
        }

        public static SQLiteTransactionType[] values() {
            return (SQLiteTransactionType[]) $VALUES.clone();
        }

        private SQLiteTransactionType(String str, int i) {
        }

        static {
            SQLiteTransactionType[] sQLiteTransactionTypeArr$values = $values();
            $VALUES = sQLiteTransactionTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(sQLiteTransactionTypeArr$values);
        }
    }
}
