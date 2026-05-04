package androidx.work.impl;

import androidx.work.impl.StartStopTokens;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class StartStopTokensImpl implements StartStopTokens {
    private final Map runs = new LinkedHashMap();

    @Override // androidx.work.impl.StartStopTokens
    public /* synthetic */ StartStopToken tokenFor(WorkSpec workSpec) {
        return StartStopTokens.CC.$default$tokenFor(this, workSpec);
    }

    @Override // androidx.work.impl.StartStopTokens
    public StartStopToken tokenFor(WorkGenerationalId id) {
        Intrinsics.checkNotNullParameter(id, "id");
        Map map = this.runs;
        Object startStopToken = map.get(id);
        if (startStopToken == null) {
            startStopToken = new StartStopToken(id);
            map.put(id, startStopToken);
        }
        return (StartStopToken) startStopToken;
    }

    @Override // androidx.work.impl.StartStopTokens
    public StartStopToken remove(WorkGenerationalId id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return (StartStopToken) this.runs.remove(id);
    }

    @Override // androidx.work.impl.StartStopTokens
    public List remove(String workSpecId) {
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        Map map = this.runs;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            if (Intrinsics.areEqual(((WorkGenerationalId) entry.getKey()).getWorkSpecId(), workSpecId)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Iterator it = linkedHashMap.keySet().iterator();
        while (it.hasNext()) {
            this.runs.remove((WorkGenerationalId) it.next());
        }
        return CollectionsKt.toList(linkedHashMap.values());
    }

    @Override // androidx.work.impl.StartStopTokens
    public boolean contains(WorkGenerationalId id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return this.runs.containsKey(id);
    }
}
