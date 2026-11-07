package androidx.media3.datasource;

import android.net.Uri;
import androidx.media3.common.DataReader;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public interface DataSource extends DataReader {

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
