package kotlinx.serialization.json.internal;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class WriteMode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ WriteMode[] $VALUES;
    public final char begin;
    public final char end;
    public static final WriteMode OBJ = new WriteMode("OBJ", 0, '{', '}');
    public static final WriteMode LIST = new WriteMode("LIST", 1, '[', ']');
    public static final WriteMode MAP = new WriteMode("MAP", 2, '{', '}');
    public static final WriteMode POLY_OBJ = new WriteMode("POLY_OBJ", 3, '[', ']');

    private static final /* synthetic */ WriteMode[] $values() {
        return new WriteMode[]{OBJ, LIST, MAP, POLY_OBJ};
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static WriteMode valueOf(String str) {
        return (WriteMode) Enum.valueOf(WriteMode.class, str);
    }

    public static WriteMode[] values() {
        return (WriteMode[]) $VALUES.clone();
    }

    private WriteMode(String str, int i, char c, char c2) {
        this.begin = c;
        this.end = c2;
    }

    static {
        WriteMode[] writeModeArr$values = $values();
        $VALUES = writeModeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(writeModeArr$values);
    }
}
