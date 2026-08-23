package com.google.firebase.sessions;

import java.util.Map;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes.dex */
public interface ProcessDataManager {
    Map generateProcessDataMap();

    String getMyProcessName();

    boolean isColdStart(Map map);

    boolean isMyProcessStale(Map map);

    void onSessionGenerated();

    Map updateProcessDataMap(Map map);

    public static final class DefaultImpls {
        public static Map generateProcessDataMap(ProcessDataManager processDataManager) {
            return processDataManager.updateProcessDataMap(MapsKt.emptyMap());
        }
    }
}
