package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface DataSource extends DataReader {

    /* JADX INFO: loaded from: classes4.dex */
    public interface Factory {
        DataSource createDataSource();
    }

    void addTransferListener(TransferListener transferListener);

    void close();

    Map getResponseHeaders();

    Uri getUri();

    long open(DataSpec dataSpec);

    /* JADX INFO: renamed from: com.google.android.exoplayer2.upstream.DataSource$-CC, reason: invalid class name */
    /* JADX INFO: loaded from: classes4.dex */
    public abstract /* synthetic */ class CC {
    }
}
