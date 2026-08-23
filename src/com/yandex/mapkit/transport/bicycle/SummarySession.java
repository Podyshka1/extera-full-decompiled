package com.yandex.mapkit.transport.bicycle;

import com.yandex.runtime.Error;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface SummarySession {

    public interface SummaryListener {
        void onBicycleSummaries(List<Summary> list);

        void onBicycleSummariesError(Error error);
    }

    void cancel();

    void retry(SummaryListener summaryListener);
}
