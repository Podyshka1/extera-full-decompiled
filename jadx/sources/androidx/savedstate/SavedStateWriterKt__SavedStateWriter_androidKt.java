package androidx.savedstate;

import java.util.ArrayList;
import java.util.Collection;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
abstract /* synthetic */ class SavedStateWriterKt__SavedStateWriter_androidKt {
    public static final ArrayList toArrayListUnsafe(Collection collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        return collection instanceof ArrayList ? (ArrayList) collection : new ArrayList(collection);
    }
}
