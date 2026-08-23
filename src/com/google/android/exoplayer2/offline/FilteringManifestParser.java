package com.google.android.exoplayer2.offline;

import android.net.Uri;
import com.google.android.exoplayer2.offline.FilterableManifest;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import java.io.InputStream;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class FilteringManifestParser<T extends FilterableManifest<T>> implements ParsingLoadable.Parser<T> {
    private final ParsingLoadable.Parser<? extends T> parser;
    private final List<StreamKey> streamKeys;

    public FilteringManifestParser(ParsingLoadable.Parser<? extends T> parser, List<StreamKey> list) {
        this.parser = parser;
        this.streamKeys = list;
    }

    @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
    public T parse(Uri uri, InputStream inputStream) {
        T t = this.parser.parse(uri, inputStream);
        List<StreamKey> list = this.streamKeys;
        return (list == null || list.isEmpty()) ? t : (T) t.copy(this.streamKeys);
    }
}
