package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.offline.StreamKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public class HlsMultivariantPlaylist extends HlsPlaylist {
    public static final HlsMultivariantPlaylist EMPTY;
    public final List audios;
    public final List closedCaptions;
    public final List mediaPlaylistUrls;
    public final Format muxedAudioFormat;
    public final List muxedCaptionFormats;
    public final List sessionKeyDrmInitData;
    public final List subtitles;
    public final Map variableDefinitions;
    public final List variants;
    public final List videos;

    static {
        List list = Collections.EMPTY_LIST;
        EMPTY = new HlsMultivariantPlaylist(_UrlKt.FRAGMENT_ENCODE_SET, list, list, list, list, list, list, null, list, false, Collections.EMPTY_MAP, list);
    }

    public static final class Variant {
        public final String audioGroupId;
        public final String captionGroupId;
        public final Format format;
        public final String subtitleGroupId;
        public final Uri url;
        public final String videoGroupId;

        public Variant(Uri uri, Format format, String str, String str2, String str3, String str4) {
            this.url = uri;
            this.format = format;
            this.videoGroupId = str;
            this.audioGroupId = str2;
            this.subtitleGroupId = str3;
            this.captionGroupId = str4;
        }

        public static Variant createMediaPlaylistVariantUrl(Uri uri) {
            return new Variant(uri, new Format.Builder().setId(MVEL.VERSION_SUB).setContainerMimeType("application/x-mpegURL").build(), null, null, null, null);
        }

        public Variant copyWithFormat(Format format) {
            return new Variant(this.url, format, this.videoGroupId, this.audioGroupId, this.subtitleGroupId, this.captionGroupId);
        }
    }

    public static final class Rendition {
        public final Format format;
        public final String groupId;
        public final String name;
        public final Uri url;

        public Rendition(Uri uri, Format format, String str, String str2) {
            this.url = uri;
            this.format = format;
            this.groupId = str;
            this.name = str2;
        }
    }

    public HlsMultivariantPlaylist(String str, List list, List list2, List list3, List list4, List list5, List list6, Format format, List list7, boolean z, Map map, List list8) {
        super(str, list, z);
        this.mediaPlaylistUrls = DesugarCollections.unmodifiableList(getMediaPlaylistUrls(list2, list3, list4, list5, list6));
        this.variants = DesugarCollections.unmodifiableList(list2);
        this.videos = DesugarCollections.unmodifiableList(list3);
        this.audios = DesugarCollections.unmodifiableList(list4);
        this.subtitles = DesugarCollections.unmodifiableList(list5);
        this.closedCaptions = DesugarCollections.unmodifiableList(list6);
        this.muxedAudioFormat = format;
        this.muxedCaptionFormats = list7 != null ? DesugarCollections.unmodifiableList(list7) : null;
        this.variableDefinitions = DesugarCollections.unmodifiableMap(map);
        this.sessionKeyDrmInitData = DesugarCollections.unmodifiableList(list8);
    }

    @Override // com.google.android.exoplayer2.offline.FilterableManifest
    public HlsMultivariantPlaylist copy(List list) {
        String str = this.baseUri;
        List list2 = this.tags;
        List listCopyStreams = copyStreams(this.variants, 0, list);
        List list3 = Collections.EMPTY_LIST;
        return new HlsMultivariantPlaylist(str, list2, listCopyStreams, list3, copyStreams(this.audios, 1, list), copyStreams(this.subtitles, 2, list), list3, this.muxedAudioFormat, this.muxedCaptionFormats, this.hasIndependentSegments, this.variableDefinitions, this.sessionKeyDrmInitData);
    }

    public static HlsMultivariantPlaylist createSingleVariantMultivariantPlaylist(String str) {
        List listSingletonList = Collections.singletonList(Variant.createMediaPlaylistVariantUrl(Uri.parse(str)));
        List list = Collections.EMPTY_LIST;
        return new HlsMultivariantPlaylist(_UrlKt.FRAGMENT_ENCODE_SET, list, listSingletonList, list, list, list, list, null, null, false, Collections.EMPTY_MAP, list);
    }

    private static List getMediaPlaylistUrls(List list, List list2, List list3, List list4, List list5) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            Uri uri = ((Variant) list.get(i)).url;
            if (!arrayList.contains(uri)) {
                arrayList.add(uri);
            }
        }
        addMediaPlaylistUrls(list2, arrayList);
        addMediaPlaylistUrls(list3, arrayList);
        addMediaPlaylistUrls(list4, arrayList);
        addMediaPlaylistUrls(list5, arrayList);
        return arrayList;
    }

    private static void addMediaPlaylistUrls(List list, List list2) {
        for (int i = 0; i < list.size(); i++) {
            Uri uri = ((Rendition) list.get(i)).url;
            if (uri != null && !list2.contains(uri)) {
                list2.add(uri);
            }
        }
    }

    private static List copyStreams(List list, int i, List list2) {
        ArrayList arrayList = new ArrayList(list2.size());
        for (int i2 = 0; i2 < list.size(); i2++) {
            Object obj = list.get(i2);
            int i3 = 0;
            while (true) {
                if (i3 < list2.size()) {
                    StreamKey streamKey = (StreamKey) list2.get(i3);
                    if (streamKey.groupIndex == i && streamKey.streamIndex == i2) {
                        arrayList.add(obj);
                        break;
                    }
                    i3++;
                }
            }
        }
        return arrayList;
    }
}
