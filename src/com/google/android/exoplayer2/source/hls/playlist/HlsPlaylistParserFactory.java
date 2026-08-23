package com.google.android.exoplayer2.source.hls.playlist;

import com.google.android.exoplayer2.upstream.ParsingLoadable;

/* JADX INFO: loaded from: classes4.dex */
public interface HlsPlaylistParserFactory {
    ParsingLoadable.Parser<HlsPlaylist> createPlaylistParser();

    ParsingLoadable.Parser<HlsPlaylist> createPlaylistParser(HlsMultivariantPlaylist hlsMultivariantPlaylist, HlsMediaPlaylist hlsMediaPlaylist);
}
