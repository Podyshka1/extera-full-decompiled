package androidx.room;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;
import androidx.room.InvalidationTracker;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class ObserverWrapper {
    private final InvalidationTracker.Observer observer;
    private final Set singleTableSet;
    private final int[] tableIds;
    private final String[] tableNames;

    public ObserverWrapper(InvalidationTracker.Observer observer, int[] tableIds, String[] tableNames) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        Intrinsics.checkNotNullParameter(tableIds, "tableIds");
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        this.observer = observer;
        this.tableIds = tableIds;
        this.tableNames = tableNames;
        if (tableIds.length != tableNames.length) {
            throw new IllegalStateException("Check failed.");
        }
        this.singleTableSet = !(tableNames.length == 0) ? SetsKt.setOf(tableNames[0]) : SetsKt.emptySet();
    }

    public final InvalidationTracker.Observer getObserver$room_runtime() {
        return this.observer;
    }

    public final int[] getTableIds$room_runtime() {
        return this.tableIds;
    }

    public final void notifyByTableIds$room_runtime(Set invalidatedTablesIds) {
        Set setEmptySet;
        Intrinsics.checkNotNullParameter(invalidatedTablesIds, "invalidatedTablesIds");
        int[] iArr = this.tableIds;
        int length = iArr.length;
        if (length != 0) {
            int i = 0;
            if (length == 1) {
                setEmptySet = invalidatedTablesIds.contains(Integer.valueOf(iArr[0])) ? this.singleTableSet : SetsKt.emptySet();
            } else {
                Set setCreateSetBuilder = SetsKt.createSetBuilder();
                int[] iArr2 = this.tableIds;
                int length2 = iArr2.length;
                int i2 = 0;
                while (i < length2) {
                    int i3 = i2 + 1;
                    if (invalidatedTablesIds.contains(Integer.valueOf(iArr2[i]))) {
                        setCreateSetBuilder.add(this.tableNames[i2]);
                    }
                    i++;
                    i2 = i3;
                }
                setEmptySet = SetsKt.build(setCreateSetBuilder);
            }
        } else {
            setEmptySet = SetsKt.emptySet();
        }
        if (setEmptySet.isEmpty()) {
            return;
        }
        this.observer.onInvalidated(setEmptySet);
    }

    public final void notifyByTableNames$room_runtime(Set invalidatedTablesNames) {
        Set setEmptySet;
        Intrinsics.checkNotNullParameter(invalidatedTablesNames, "invalidatedTablesNames");
        int length = this.tableNames.length;
        if (length == 0) {
            setEmptySet = SetsKt.emptySet();
        } else if (length != 1) {
            Set setCreateSetBuilder = SetsKt.createSetBuilder();
            Iterator it = invalidatedTablesNames.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                String[] strArr = this.tableNames;
                int length2 = strArr.length;
                int i = 0;
                while (true) {
                    if (i < length2) {
                        String str2 = strArr[i];
                        if (StringsKt.equals(str2, str, true)) {
                            setCreateSetBuilder.add(str2);
                            break;
                        }
                        i++;
                    }
                }
            }
            setEmptySet = SetsKt.build(setCreateSetBuilder);
        } else if (OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(invalidatedTablesNames) && invalidatedTablesNames.isEmpty()) {
            setEmptySet = SetsKt.emptySet();
        } else {
            Iterator it2 = invalidatedTablesNames.iterator();
            while (it2.hasNext()) {
                if (StringsKt.equals((String) it2.next(), this.tableNames[0], true)) {
                    setEmptySet = this.singleTableSet;
                    break;
                }
            }
            setEmptySet = SetsKt.emptySet();
        }
        if (setEmptySet.isEmpty()) {
            return;
        }
        this.observer.onInvalidated(setEmptySet);
    }
}
