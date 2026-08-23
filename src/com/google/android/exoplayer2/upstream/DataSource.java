package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface DataSource extends DataReader {

    /* JADX INFO: loaded from: classes4.dex */
    public interface Factory {
        DataSource createDataSource();
    }

    void addTransferListener(TransferListener transferListener);

    void close();

    Uri getUri();

    long open(DataSpec dataSpec);

    default Map<String, List<String>> getResponseHeaders() {
        return Collections.EMPTY_MAP;
    }
}
