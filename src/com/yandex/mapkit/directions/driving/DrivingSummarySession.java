package com.yandex.mapkit.directions.driving;

import com.yandex.runtime.Error;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface DrivingSummarySession {

    public interface DrivingSummaryListener {
        void onDrivingSummaries(List<Summary> list);

        void onDrivingSummariesError(Error error);
    }

    void cancel();

    void retry(DrivingSummaryListener drivingSummaryListener);
}
