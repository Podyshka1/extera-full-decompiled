package androidx.room.util;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
final class ForeignKeyWithSequence implements Comparable {
    private final String from;

    /* JADX INFO: renamed from: id */
    private final int f68id;
    private final int sequence;

    /* JADX INFO: renamed from: to */
    private final String f69to;

    public ForeignKeyWithSequence(int i, int i2, String from, String to) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        this.f68id = i;
        this.sequence = i2;
        this.from = from;
        this.f69to = to;
    }

    public final int getId() {
        return this.f68id;
    }

    public final String getFrom() {
        return this.from;
    }

    public final String getTo() {
        return this.f69to;
    }

    @Override // java.lang.Comparable
    public int compareTo(ForeignKeyWithSequence other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int i = this.f68id - other.f68id;
        return i == 0 ? this.sequence - other.sequence : i;
    }
}
