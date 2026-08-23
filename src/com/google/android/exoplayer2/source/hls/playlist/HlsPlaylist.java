package com.google.android.exoplayer2.source.hls.playlist;

import com.google.android.exoplayer2.offline.FilterableManifest;
import java.util.List;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public abstract class HlsPlaylist implements FilterableManifest {
    public final String baseUri;
    public final boolean hasIndependentSegments;
    public final List tags;

    protected HlsPlaylist(String str, List list, boolean z) {
        this.baseUri = str;
        this.tags = DesugarCollections.unmodifiableList(list);
        this.hasIndependentSegments = z;
    }
}
