package androidx.room;

import androidx.room.InvalidationTracker;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\b0\u0007¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\u0012\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u0011H\u0000¢\u0006\u0002\b\u0016J\u001b\u0010\u0017\u001a\u00020\u00132\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\b0\u0011H\u0000¢\u0006\u0002\b\u0019R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000fR\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u0011X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Landroidx/room/ObserverWrapper;", _UrlKt.FRAGMENT_ENCODE_SET, "observer", "Landroidx/room/InvalidationTracker$Observer;", "tableIds", _UrlKt.FRAGMENT_ENCODE_SET, "tableNames", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Landroidx/room/InvalidationTracker$Observer;[I[Ljava/lang/String;)V", "getObserver$room_runtime", "()Landroidx/room/InvalidationTracker$Observer;", "getTableIds$room_runtime", "()[I", "[Ljava/lang/String;", "singleTableSet", _UrlKt.FRAGMENT_ENCODE_SET, "notifyByTableIds", _UrlKt.FRAGMENT_ENCODE_SET, "invalidatedTablesIds", _UrlKt.FRAGMENT_ENCODE_SET, "notifyByTableIds$room_runtime", "notifyByTableNames", "invalidatedTablesNames", "notifyByTableNames$room_runtime", "room-runtime"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nInvalidationTracker.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvalidationTracker.android.kt\nandroidx/room/ObserverWrapper\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,592:1\n13567#2,3:593\n1761#3,3:596\n1869#3,2:599\n*S KotlinDebug\n*F\n+ 1 InvalidationTracker.android.kt\nandroidx/room/ObserverWrapper\n*L\n532#1:593,3\n550#1:596,3\n558#1:599,2\n*E\n"})
public final class ObserverWrapper {
    private final InvalidationTracker.Observer observer;
    private final Set<String> singleTableSet;
    private final int[] tableIds;
    private final String[] tableNames;

    public ObserverWrapper(InvalidationTracker.Observer observer, int[] iArr, String[] strArr) {
        this.observer = observer;
        this.tableIds = iArr;
        this.tableNames = strArr;
        if (iArr.length == strArr.length) {
            this.singleTableSet = !(strArr.length == 0) ? SetsKt.setOf(strArr[0]) : SetsKt.emptySet();
        } else {
            Segment$$ExternalSyntheticBUOutline1.m848m("Check failed.");
            throw null;
        }
    }

    /* JADX INFO: renamed from: getObserver$room_runtime, reason: from getter */
    public final InvalidationTracker.Observer getObserver() {
        return this.observer;
    }

    /* JADX INFO: renamed from: getTableIds$room_runtime, reason: from getter */
    public final int[] getTableIds() {
        return this.tableIds;
    }

    public final void notifyByTableIds$room_runtime(Set<Integer> invalidatedTablesIds) {
        Set<String> setEmptySet;
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

    public final void notifyByTableNames$room_runtime(Set<String> invalidatedTablesNames) {
        Set<String> setEmptySet;
        int length = this.tableNames.length;
        if (length == 0) {
            setEmptySet = SetsKt.emptySet();
        } else if (length != 1) {
            Set setCreateSetBuilder = SetsKt.createSetBuilder();
            for (String str : invalidatedTablesNames) {
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
        } else if (invalidatedTablesNames != null && invalidatedTablesNames.isEmpty()) {
            setEmptySet = SetsKt.emptySet();
        } else {
            Iterator<T> it = invalidatedTablesNames.iterator();
            while (it.hasNext()) {
                if (StringsKt.equals((String) it.next(), this.tableNames[0], true)) {
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
