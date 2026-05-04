package androidx.work;

import androidx.work.Data;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class OverwritingInputMerger extends InputMerger {
    @Override // androidx.work.InputMerger
    public Data merge(List inputs) {
        Intrinsics.checkNotNullParameter(inputs, "inputs");
        Data.Builder builder = new Data.Builder();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = inputs.iterator();
        while (it.hasNext()) {
            linkedHashMap.putAll(((Data) it.next()).getKeyValueMap());
        }
        builder.putAll(linkedHashMap);
        return builder.build();
    }
}
