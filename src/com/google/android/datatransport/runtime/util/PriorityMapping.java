package com.google.android.datatransport.runtime.util;

import android.util.SparseArray;
import com.android.dx.DexMaker$$ExternalSyntheticBUOutline0;
import com.google.android.datatransport.Priority;
import java.util.HashMap;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PriorityMapping {
    private static HashMap<Priority, Integer> PRIORITY_INT_MAP;
    private static SparseArray<Priority> PRIORITY_MAP = new SparseArray<>();

    static {
        HashMap<Priority, Integer> map = new HashMap<>();
        PRIORITY_INT_MAP = map;
        map.put(Priority.DEFAULT, 0);
        PRIORITY_INT_MAP.put(Priority.VERY_LOW, 1);
        PRIORITY_INT_MAP.put(Priority.HIGHEST, 2);
        for (Priority priority : PRIORITY_INT_MAP.keySet()) {
            PRIORITY_MAP.append(PRIORITY_INT_MAP.get(priority).intValue(), priority);
        }
    }

    public static Priority valueOf(int i) {
        Priority priority = PRIORITY_MAP.get(i);
        if (priority != null) {
            return priority;
        }
        CharCodeKt$$ExternalSyntheticBUOutline0.m752m("Unknown Priority for value ", i);
        return null;
    }

    public static int toInt(Priority priority) {
        Integer num = PRIORITY_INT_MAP.get(priority);
        if (num == null) {
            DexMaker$$ExternalSyntheticBUOutline0.m186m("PriorityMapping is missing known Priority value ", priority);
            return 0;
        }
        return num.intValue();
    }
}
