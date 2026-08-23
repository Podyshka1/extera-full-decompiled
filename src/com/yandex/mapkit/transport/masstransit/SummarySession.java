package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.Error;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface SummarySession {

    public interface SummaryListener {
        void onMasstransitSummaries(List<Summary> list);

        void onMasstransitSummariesError(Error error);
    }

    void cancel();

    void retry(SummaryListener summaryListener);
}
