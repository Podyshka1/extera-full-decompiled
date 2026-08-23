package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.InputStream;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ParsingLoadable implements Loader.Loadable {
    private final StatsDataSource dataSource;
    public final DataSpec dataSpec;
    public final long loadTaskId;
    private final Parser parser;
    private volatile Object result;
    public final int type;

    public interface Parser {
        Object parse(Uri uri, InputStream inputStream);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public final void cancelLoad() {
    }

    public ParsingLoadable(DataSource dataSource, Uri uri, int i, Parser parser) {
        this(dataSource, new DataSpec.Builder().setUri(uri).setFlags(1).build(), i, parser);
    }

    public ParsingLoadable(DataSource dataSource, DataSpec dataSpec, int i, Parser parser) {
        this.dataSource = new StatsDataSource(dataSource);
        this.dataSpec = dataSpec;
        this.type = i;
        this.parser = parser;
        this.loadTaskId = LoadEventInfo.getNewId();
    }

    public final Object getResult() {
        return this.result;
    }

    public long bytesLoaded() {
        return this.dataSource.getBytesRead();
    }

    public Uri getUri() {
        return this.dataSource.getLastOpenedUri();
    }

    public Map getResponseHeaders() {
        return this.dataSource.getLastResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public final void load() {
        this.dataSource.resetBytesRead();
        DataSourceInputStream dataSourceInputStream = new DataSourceInputStream(this.dataSource, this.dataSpec);
        try {
            dataSourceInputStream.open();
            this.result = this.parser.parse((Uri) Assertions.checkNotNull(this.dataSource.getUri()), dataSourceInputStream);
        } finally {
            Util.closeQuietly(dataSourceInputStream);
        }
    }
}
