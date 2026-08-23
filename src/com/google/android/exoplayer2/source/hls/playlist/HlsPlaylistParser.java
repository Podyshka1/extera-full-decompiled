package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.google.android.exoplayer2.AbstractC1218C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsMultivariantPlaylist;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.UriUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.Iterables;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.TreeMap;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.url._UrlKt;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public final class HlsPlaylistParser implements ParsingLoadable.Parser<HlsPlaylist> {
    private final HlsMultivariantPlaylist multivariantPlaylist;
    private final HlsMediaPlaylist previousMediaPlaylist;
    private static final Pattern REGEX_AVERAGE_BANDWIDTH = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");
    private static final Pattern REGEX_VIDEO = Pattern.compile("VIDEO=\"(.+?)\"");
    private static final Pattern REGEX_AUDIO = Pattern.compile("AUDIO=\"(.+?)\"");
    private static final Pattern REGEX_SUBTITLES = Pattern.compile("SUBTITLES=\"(.+?)\"");
    private static final Pattern REGEX_CLOSED_CAPTIONS = Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");
    private static final Pattern REGEX_BANDWIDTH = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");
    private static final Pattern REGEX_CHANNELS = Pattern.compile("CHANNELS=\"(.+?)\"");
    private static final Pattern REGEX_CODECS = Pattern.compile("CODECS=\"(.+?)\"");
    private static final Pattern REGEX_MIME = Pattern.compile("MIME=\"(.+?)\"");
    private static final Pattern REGEX_CACHED = Pattern.compile("CACHED=\"(.+?)\"");
    private static final Pattern REGEX_DOC_ID = Pattern.compile("DOCID=\"(.+?)\"");
    private static final Pattern REGEX_DOC_FILENAME = Pattern.compile("DOCFILENAME=\"(.+?)\"");
    private static final Pattern REGEX_ACCOUNT = Pattern.compile("ACCOUNT=\"(.+?)\"");
    private static final Pattern REGEX_RESOLUTION = Pattern.compile("RESOLUTION=(\\d+x\\d+)");
    private static final Pattern REGEX_FRAME_RATE = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");
    private static final Pattern REGEX_TARGET_DURATION = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");
    private static final Pattern REGEX_ATTR_DURATION = Pattern.compile("DURATION=([\\d\\.]+)\\b");
    private static final Pattern REGEX_PART_TARGET_DURATION = Pattern.compile("PART-TARGET=([\\d\\.]+)\\b");
    private static final Pattern REGEX_VERSION = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
    private static final Pattern REGEX_PLAYLIST_TYPE = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");
    private static final Pattern REGEX_CAN_SKIP_UNTIL = Pattern.compile("CAN-SKIP-UNTIL=([\\d\\.]+)\\b");
    private static final Pattern REGEX_CAN_SKIP_DATE_RANGES = compileBooleanAttrPattern("CAN-SKIP-DATERANGES");
    private static final Pattern REGEX_SKIPPED_SEGMENTS = Pattern.compile("SKIPPED-SEGMENTS=(\\d+)\\b");
    private static final Pattern REGEX_HOLD_BACK = Pattern.compile("[:|,]HOLD-BACK=([\\d\\.]+)\\b");
    private static final Pattern REGEX_PART_HOLD_BACK = Pattern.compile("PART-HOLD-BACK=([\\d\\.]+)\\b");
    private static final Pattern REGEX_CAN_BLOCK_RELOAD = compileBooleanAttrPattern("CAN-BLOCK-RELOAD");
    private static final Pattern REGEX_MEDIA_SEQUENCE = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    private static final Pattern REGEX_MEDIA_DURATION = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");
    private static final Pattern REGEX_MEDIA_TITLE = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");
    private static final Pattern REGEX_LAST_MSN = Pattern.compile("LAST-MSN=(\\d+)\\b");
    private static final Pattern REGEX_LAST_PART = Pattern.compile("LAST-PART=(\\d+)\\b");
    private static final Pattern REGEX_TIME_OFFSET = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    private static final Pattern REGEX_BYTERANGE = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    private static final Pattern REGEX_ATTR_BYTERANGE = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    private static final Pattern REGEX_BYTERANGE_START = Pattern.compile("BYTERANGE-START=(\\d+)\\b");
    private static final Pattern REGEX_BYTERANGE_LENGTH = Pattern.compile("BYTERANGE-LENGTH=(\\d+)\\b");
    private static final Pattern REGEX_METHOD = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");
    private static final Pattern REGEX_KEYFORMAT = Pattern.compile("KEYFORMAT=\"(.+?)\"");
    private static final Pattern REGEX_KEYFORMATVERSIONS = Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");
    private static final Pattern REGEX_URI = Pattern.compile("URI=\"(.+?)\"");
    private static final Pattern REGEX_IV = Pattern.compile("IV=([^,.*]+)");
    private static final Pattern REGEX_TYPE = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    private static final Pattern REGEX_PRELOAD_HINT_TYPE = Pattern.compile("TYPE=(PART|MAP)");
    private static final Pattern REGEX_LANGUAGE = Pattern.compile("LANGUAGE=\"(.+?)\"");
    private static final Pattern REGEX_NAME = Pattern.compile("NAME=\"(.+?)\"");
    private static final Pattern REGEX_GROUP_ID = Pattern.compile("GROUP-ID=\"(.+?)\"");
    private static final Pattern REGEX_CHARACTERISTICS = Pattern.compile("CHARACTERISTICS=\"(.+?)\"");
    private static final Pattern REGEX_INSTREAM_ID = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    private static final Pattern REGEX_AUTOSELECT = compileBooleanAttrPattern("AUTOSELECT");
    private static final Pattern REGEX_DEFAULT = compileBooleanAttrPattern("DEFAULT");
    private static final Pattern REGEX_FORCED = compileBooleanAttrPattern("FORCED");
    private static final Pattern REGEX_INDEPENDENT = compileBooleanAttrPattern("INDEPENDENT");
    private static final Pattern REGEX_GAP = compileBooleanAttrPattern("GAP");
    private static final Pattern REGEX_PRECISE = compileBooleanAttrPattern("PRECISE");
    private static final Pattern REGEX_VALUE = Pattern.compile("VALUE=\"(.+?)\"");
    private static final Pattern REGEX_IMPORT = Pattern.compile("IMPORT=\"(.+?)\"");
    private static final Pattern REGEX_VARIABLE_REFERENCE = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");

    public static final class DeltaUpdateException extends IOException {
    }

    public HlsPlaylistParser() {
        this(HlsMultivariantPlaylist.EMPTY, null);
    }

    public HlsPlaylistParser(HlsMultivariantPlaylist hlsMultivariantPlaylist, HlsMediaPlaylist hlsMediaPlaylist) {
        this.multivariantPlaylist = hlsMultivariantPlaylist;
        this.previousMediaPlaylist = hlsMediaPlaylist;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
    public HlsPlaylist parse(Uri uri, InputStream inputStream) throws ParserException {
        String strTrim;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            if (!checkPlaylistHeader(bufferedReader)) {
                throw ParserException.createForMalformedManifest("Input does not start with the #EXTM3U header.", null);
            }
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    strTrim = line.trim();
                    if (!strTrim.isEmpty()) {
                        if (strTrim.startsWith("#EXT-X-STREAM-INF")) {
                            arrayDeque.add(strTrim);
                            return parseMultivariantPlaylist(new LineIterator(arrayDeque, bufferedReader), uri.toString());
                        }
                        if (strTrim.startsWith("#EXT-X-TARGETDURATION") || strTrim.startsWith("#EXT-X-MEDIA-SEQUENCE") || strTrim.startsWith("#EXTINF") || strTrim.startsWith("#EXT-X-KEY") || strTrim.startsWith("#EXT-X-BYTERANGE") || strTrim.equals("#EXT-X-DISCONTINUITY") || strTrim.equals("#EXT-X-DISCONTINUITY-SEQUENCE") || strTrim.equals("#EXT-X-ENDLIST")) {
                            break;
                        }
                        arrayDeque.add(strTrim);
                    }
                } else {
                    Util.closeQuietly(bufferedReader);
                    throw ParserException.createForMalformedManifest("Failed to parse the playlist, could not identify any tags.", null);
                }
            }
            arrayDeque.add(strTrim);
            return parseMediaPlaylist(this.multivariantPlaylist, this.previousMediaPlaylist, new LineIterator(arrayDeque, bufferedReader), uri.toString());
        } finally {
            Util.closeQuietly(bufferedReader);
        }
    }

    private static boolean checkPlaylistHeader(BufferedReader bufferedReader) throws IOException {
        int i = bufferedReader.read();
        if (i == 239) {
            if (bufferedReader.read() != 187 || bufferedReader.read() != 191) {
                return false;
            }
            i = bufferedReader.read();
        }
        int iSkipIgnorableWhitespace = skipIgnorableWhitespace(bufferedReader, true, i);
        for (int i2 = 0; i2 < 7; i2++) {
            if (iSkipIgnorableWhitespace != "#EXTM3U".charAt(i2)) {
                return false;
            }
            iSkipIgnorableWhitespace = bufferedReader.read();
        }
        return Util.isLinebreak(skipIgnorableWhitespace(bufferedReader, false, iSkipIgnorableWhitespace));
    }

    private static int skipIgnorableWhitespace(BufferedReader bufferedReader, boolean z, int i) throws IOException {
        while (i != -1 && Character.isWhitespace(i) && (z || !Util.isLinebreak(i))) {
            i = bufferedReader.read();
        }
        return i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:100:0x0393. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0365  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static HlsMultivariantPlaylist parseMultivariantPlaylist(LineIterator lineIterator, String str) throws ParserException {
        String str2;
        String stringAttr;
        String stringAttr2;
        Format.Builder language;
        Uri uriResolveToUri;
        Metadata metadata;
        ArrayList arrayList;
        ArrayList arrayList2;
        String mediaMimeType;
        ArrayList arrayList3;
        int i;
        String str3;
        ArrayList arrayList4;
        HlsMultivariantPlaylist.Variant variant;
        String mediaMimeType2;
        ArrayList arrayList5;
        ArrayList arrayList6;
        ArrayList arrayList7;
        ArrayList arrayList8;
        ArrayList arrayList9;
        ArrayList arrayList10;
        HashMap map;
        int i2;
        int i3;
        Uri uriResolveToUri2;
        ArrayList arrayList11;
        HashMap map2;
        int i4;
        String str4 = str;
        HashMap map3 = new HashMap();
        HashMap map4 = new HashMap();
        ArrayList arrayList12 = new ArrayList();
        ArrayList arrayList13 = new ArrayList();
        ArrayList arrayList14 = new ArrayList();
        ArrayList arrayList15 = new ArrayList();
        ArrayList arrayList16 = new ArrayList();
        ArrayList arrayList17 = new ArrayList();
        ArrayList arrayList18 = new ArrayList();
        ArrayList arrayList19 = new ArrayList();
        boolean z = false;
        boolean z2 = false;
        while (true) {
            int i5 = 1;
            if (lineIterator.hasNext()) {
                String next = lineIterator.next();
                if (next.startsWith("#EXT")) {
                    arrayList19.add(next);
                }
                boolean zStartsWith = next.startsWith("#EXT-X-I-FRAME-STREAM-INF");
                ArrayList arrayList20 = arrayList16;
                if (next.startsWith("#EXT-X-DEFINE")) {
                    map4.put(parseStringAttr(next, REGEX_NAME, map4), parseStringAttr(next, REGEX_VALUE, map4));
                } else {
                    if (next.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                        ArrayList arrayList21 = arrayList12;
                        map2 = map3;
                        arrayList11 = arrayList21;
                        arrayList10 = arrayList17;
                        arrayList9 = arrayList13;
                        arrayList8 = arrayList14;
                        arrayList7 = arrayList15;
                        arrayList5 = arrayList19;
                        arrayList6 = arrayList18;
                        z2 = true;
                    } else if (next.startsWith("#EXT-X-MEDIA")) {
                        arrayList17.add(next);
                    } else if (next.startsWith("#EXT-X-SESSION-KEY")) {
                        DrmInitData.SchemeData drmSchemeData = parseDrmSchemeData(next, parseOptionalStringAttr(next, REGEX_KEYFORMAT, "identity", map4), map4);
                        if (drmSchemeData != null) {
                            arrayList18.add(new DrmInitData(parseEncryptionScheme(parseStringAttr(next, REGEX_METHOD, map4)), drmSchemeData));
                        }
                    } else if (next.startsWith("#EXT-X-STREAM-INF") || zStartsWith) {
                        boolean zContains = z | next.contains("CLOSED-CAPTIONS=NONE");
                        int i6 = zStartsWith ? 16384 : 0;
                        arrayList5 = arrayList19;
                        int intAttr = parseIntAttr(next, REGEX_BANDWIDTH);
                        int optionalIntAttr = parseOptionalIntAttr(next, REGEX_AVERAGE_BANDWIDTH, -1);
                        String optionalStringAttr = parseOptionalStringAttr(next, REGEX_CODECS, map4);
                        arrayList6 = arrayList18;
                        String optionalStringAttr2 = parseOptionalStringAttr(next, REGEX_MIME, map4);
                        boolean z3 = z2;
                        arrayList7 = arrayList15;
                        boolean zEquals = TextUtils.equals(parseOptionalStringAttr(next, REGEX_CACHED, map4), "true");
                        String optionalStringAttr3 = parseOptionalStringAttr(next, REGEX_DOC_ID, map4);
                        arrayList8 = arrayList14;
                        String optionalStringAttr4 = parseOptionalStringAttr(next, REGEX_DOC_FILENAME, map4);
                        arrayList9 = arrayList13;
                        String optionalStringAttr5 = parseOptionalStringAttr(next, REGEX_ACCOUNT, map4);
                        arrayList10 = arrayList17;
                        String optionalStringAttr6 = parseOptionalStringAttr(next, REGEX_RESOLUTION, map4);
                        if (optionalStringAttr6 != null) {
                            map = map3;
                            String[] strArrSplit = Util.split(optionalStringAttr6, "x");
                            int i7 = Integer.parseInt(strArrSplit[0]);
                            int i8 = Integer.parseInt(strArrSplit[1]);
                            if (i7 <= 0 || i8 <= 0) {
                                i8 = -1;
                                i4 = -1;
                            } else {
                                i4 = i7;
                            }
                            i3 = i8;
                            i2 = i4;
                        } else {
                            map = map3;
                            i2 = -1;
                            i3 = -1;
                        }
                        ArrayList arrayList22 = arrayList12;
                        String optionalStringAttr7 = parseOptionalStringAttr(next, REGEX_FRAME_RATE, map4);
                        float f = optionalStringAttr7 != null ? Float.parseFloat(optionalStringAttr7) : -1.0f;
                        String optionalStringAttr8 = parseOptionalStringAttr(next, REGEX_VIDEO, map4);
                        String optionalStringAttr9 = parseOptionalStringAttr(next, REGEX_AUDIO, map4);
                        String optionalStringAttr10 = parseOptionalStringAttr(next, REGEX_SUBTITLES, map4);
                        String optionalStringAttr11 = parseOptionalStringAttr(next, REGEX_CLOSED_CAPTIONS, map4);
                        if (zStartsWith) {
                            uriResolveToUri2 = UriUtil.resolveToUri(str4, parseStringAttr(next, REGEX_URI, map4));
                        } else {
                            if (!lineIterator.hasNext()) {
                                throw ParserException.createForMalformedManifest("#EXT-X-STREAM-INF must be followed by another line", null);
                            }
                            uriResolveToUri2 = UriUtil.resolveToUri(str4, replaceVariableReferences(lineIterator.next(), map4));
                        }
                        Uri uri = uriResolveToUri2;
                        HlsMultivariantPlaylist.Variant variant2 = new HlsMultivariantPlaylist.Variant(uri, new Format.Builder().setId(arrayList22.size()).setContainerMimeType("application/x-mpegURL").setCodecs(optionalStringAttr).setSampleMimeType(optionalStringAttr2).setAverageBitrate(optionalIntAttr).setPeakBitrate(intAttr).setWidth(i2).setHeight(i3).setFrameRate(f).setRoleFlags(i6).setCached(zEquals).setDocumentId(optionalStringAttr3).setDocumentFilename(optionalStringAttr4).setCurrentAccount(optionalStringAttr5).build(), optionalStringAttr8, optionalStringAttr9, optionalStringAttr10, optionalStringAttr11);
                        arrayList11 = arrayList22;
                        arrayList11.add(variant2);
                        map2 = map;
                        ArrayList arrayList23 = (ArrayList) map2.get(uri);
                        if (arrayList23 == null) {
                            arrayList23 = new ArrayList();
                            map2.put(uri, arrayList23);
                        }
                        arrayList23.add(new HlsTrackMetadataEntry.VariantInfo(optionalIntAttr, intAttr, optionalStringAttr8, optionalStringAttr9, optionalStringAttr10, optionalStringAttr11));
                        z = zContains;
                        z2 = z3;
                    }
                    HashMap map5 = map2;
                    arrayList12 = arrayList11;
                    map3 = map5;
                    arrayList16 = arrayList20;
                    arrayList19 = arrayList5;
                    arrayList18 = arrayList6;
                    arrayList15 = arrayList7;
                    arrayList14 = arrayList8;
                    arrayList13 = arrayList9;
                    arrayList17 = arrayList10;
                }
                ArrayList arrayList24 = arrayList12;
                map2 = map3;
                arrayList11 = arrayList24;
                arrayList10 = arrayList17;
                arrayList9 = arrayList13;
                arrayList8 = arrayList14;
                arrayList7 = arrayList15;
                arrayList5 = arrayList19;
                arrayList6 = arrayList18;
                HashMap map52 = map2;
                arrayList12 = arrayList11;
                map3 = map52;
                arrayList16 = arrayList20;
                arrayList19 = arrayList5;
                arrayList18 = arrayList6;
                arrayList15 = arrayList7;
                arrayList14 = arrayList8;
                arrayList13 = arrayList9;
                arrayList17 = arrayList10;
            } else {
                ArrayList arrayList25 = arrayList12;
                HashMap map6 = map3;
                ArrayList arrayList26 = arrayList17;
                ArrayList arrayList27 = arrayList13;
                ArrayList arrayList28 = arrayList14;
                ArrayList arrayList29 = arrayList15;
                ArrayList arrayList30 = arrayList16;
                ArrayList arrayList31 = arrayList19;
                boolean z4 = z;
                ArrayList arrayList32 = arrayList18;
                boolean z5 = z2;
                ArrayList arrayList33 = new ArrayList();
                HashSet hashSet = new HashSet();
                int i9 = 0;
                while (i9 < arrayList25.size()) {
                    HlsMultivariantPlaylist.Variant variant3 = (HlsMultivariantPlaylist.Variant) arrayList25.get(i9);
                    if (hashSet.add(variant3.url)) {
                        Assertions.checkState(variant3.format.metadata == null ? i5 : 0);
                        Metadata.Entry[] entryArr = new Metadata.Entry[i5];
                        entryArr[0] = new HlsTrackMetadataEntry(null, null, (List) Assertions.checkNotNull((ArrayList) map6.get(variant3.url)));
                        arrayList33.add(variant3.copyWithFormat(variant3.format.buildUpon().setMetadata(new Metadata(entryArr)).build()));
                    }
                    i9++;
                    i5 = 1;
                }
                ArrayList arrayList34 = null;
                Format formatBuild = null;
                int i10 = 0;
                while (i10 < arrayList26.size()) {
                    ArrayList arrayList35 = arrayList26;
                    str2 = (String) arrayList35.get(i10);
                    stringAttr = parseStringAttr(str2, REGEX_GROUP_ID, map4);
                    stringAttr2 = parseStringAttr(str2, REGEX_NAME, map4);
                    language = new Format.Builder().setId(stringAttr + ":" + stringAttr2).setLabel(stringAttr2).setContainerMimeType("application/x-mpegURL").setSelectionFlags(parseSelectionFlags(str2)).setRoleFlags(parseRoleFlags(str2, map4)).setLanguage(parseOptionalStringAttr(str2, REGEX_LANGUAGE, map4));
                    String optionalStringAttr12 = parseOptionalStringAttr(str2, REGEX_URI, map4);
                    uriResolveToUri = optionalStringAttr12 == null ? null : UriUtil.resolveToUri(str4, optionalStringAttr12);
                    arrayList = arrayList34;
                    metadata = new Metadata(new HlsTrackMetadataEntry(stringAttr, stringAttr2, Collections.EMPTY_LIST));
                    String stringAttr3 = parseStringAttr(str2, REGEX_TYPE, map4);
                    stringAttr3.getClass();
                    switch (stringAttr3) {
                        case "SUBTITLES":
                            arrayList2 = arrayList28;
                            HlsMultivariantPlaylist.Variant variantWithSubtitleGroup = getVariantWithSubtitleGroup(arrayList25, stringAttr);
                            if (variantWithSubtitleGroup != null) {
                                String codecsOfType = Util.getCodecsOfType(variantWithSubtitleGroup.format.codecs, 3);
                                language.setCodecs(codecsOfType);
                                mediaMimeType = MimeTypes.getMediaMimeType(codecsOfType);
                            } else {
                                mediaMimeType = null;
                            }
                            if (mediaMimeType == null) {
                                mediaMimeType = "text/vtt";
                            }
                            language.setSampleMimeType(mediaMimeType).setMetadata(metadata);
                            if (uriResolveToUri != null) {
                                arrayList3 = arrayList29;
                                arrayList3.add(new HlsMultivariantPlaylist.Rendition(uriResolveToUri, language.build(), stringAttr, stringAttr2));
                            } else {
                                arrayList3 = arrayList29;
                                Log.m274w("HlsPlaylistParser", "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping");
                            }
                            arrayList4 = arrayList;
                            break;
                        case "CLOSED-CAPTIONS":
                            arrayList2 = arrayList28;
                            String stringAttr4 = parseStringAttr(str2, REGEX_INSTREAM_ID, map4);
                            if (stringAttr4.startsWith("CC")) {
                                i = Integer.parseInt(stringAttr4.substring(2));
                                str3 = "application/cea-608";
                            } else {
                                i = Integer.parseInt(stringAttr4.substring(7));
                                str3 = "application/cea-708";
                            }
                            arrayList4 = arrayList == null ? new ArrayList() : arrayList;
                            language.setSampleMimeType(str3).setAccessibilityChannel(i);
                            arrayList4.add(language.build());
                            arrayList3 = arrayList29;
                            break;
                        case "AUDIO":
                            ArrayList arrayList36 = arrayList27;
                            HlsMultivariantPlaylist.Variant variantWithAudioGroup = getVariantWithAudioGroup(arrayList25, stringAttr);
                            if (variantWithAudioGroup != null) {
                                arrayList27 = arrayList36;
                                variant = variantWithAudioGroup;
                                String codecsOfType2 = Util.getCodecsOfType(variantWithAudioGroup.format.codecs, 1);
                                language.setCodecs(codecsOfType2);
                                mediaMimeType2 = MimeTypes.getMediaMimeType(codecsOfType2);
                            } else {
                                variant = variantWithAudioGroup;
                                arrayList27 = arrayList36;
                                mediaMimeType2 = null;
                            }
                            String optionalStringAttr13 = parseOptionalStringAttr(str2, REGEX_CHANNELS, map4);
                            if (optionalStringAttr13 != null) {
                                language.setChannelCount(Integer.parseInt(Util.splitAtFirst(optionalStringAttr13, "/")[0]));
                                if ("audio/eac3".equals(mediaMimeType2) && optionalStringAttr13.endsWith("/JOC")) {
                                    language.setCodecs("ec+3");
                                    mediaMimeType2 = "audio/eac3-joc";
                                }
                            }
                            language.setSampleMimeType(mediaMimeType2);
                            if (uriResolveToUri == null) {
                                arrayList2 = arrayList28;
                                if (variant != null) {
                                    arrayList4 = arrayList;
                                    formatBuild = language.build();
                                    arrayList3 = arrayList29;
                                }
                                break;
                            } else {
                                language.setMetadata(metadata);
                                arrayList2 = arrayList28;
                                arrayList2.add(new HlsMultivariantPlaylist.Rendition(uriResolveToUri, language.build(), stringAttr, stringAttr2));
                            }
                            arrayList3 = arrayList29;
                            arrayList4 = arrayList;
                            break;
                        case "VIDEO":
                            HlsMultivariantPlaylist.Variant variantWithVideoGroup = getVariantWithVideoGroup(arrayList25, stringAttr);
                            if (variantWithVideoGroup != null) {
                                Format format = variantWithVideoGroup.format;
                                String codecsOfType3 = Util.getCodecsOfType(format.codecs, 2);
                                language.setCodecs(codecsOfType3).setSampleMimeType(MimeTypes.getMediaMimeType(codecsOfType3)).setWidth(format.width).setHeight(format.height).setFrameRate(format.frameRate);
                            }
                            if (uriResolveToUri != null) {
                                language.setMetadata(metadata);
                                arrayList27.add(new HlsMultivariantPlaylist.Rendition(uriResolveToUri, language.build(), stringAttr, stringAttr2));
                                break;
                            }
                        default:
                            arrayList3 = arrayList29;
                            arrayList2 = arrayList28;
                            arrayList4 = arrayList;
                            break;
                    }
                    i10++;
                    str4 = str;
                    arrayList28 = arrayList2;
                    arrayList26 = arrayList35;
                    arrayList29 = arrayList3;
                    arrayList34 = arrayList4;
                }
                return new HlsMultivariantPlaylist(str, arrayList31, arrayList33, arrayList27, arrayList28, arrayList29, arrayList30, formatBuild, z4 ? Collections.EMPTY_LIST : arrayList34, z5, map4, arrayList32);
            }
        }
    }

    private static HlsMultivariantPlaylist.Variant getVariantWithAudioGroup(ArrayList<HlsMultivariantPlaylist.Variant> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            HlsMultivariantPlaylist.Variant variant = arrayList.get(i);
            if (str.equals(variant.audioGroupId)) {
                return variant;
            }
        }
        return null;
    }

    private static HlsMultivariantPlaylist.Variant getVariantWithVideoGroup(ArrayList<HlsMultivariantPlaylist.Variant> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            HlsMultivariantPlaylist.Variant variant = arrayList.get(i);
            if (str.equals(variant.videoGroupId)) {
                return variant;
            }
        }
        return null;
    }

    private static HlsMultivariantPlaylist.Variant getVariantWithSubtitleGroup(ArrayList<HlsMultivariantPlaylist.Variant> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            HlsMultivariantPlaylist.Variant variant = arrayList.get(i);
            if (str.equals(variant.subtitleGroupId)) {
                return variant;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x0322 A[PHI: r13
  0x0322: PHI (r13v7 java.lang.String) = (r13v5 java.lang.String), (r13v2 java.lang.String) binds: [B:118:0x0331, B:112:0x0315] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0624  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0631  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0647  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static HlsMediaPlaylist parseMediaPlaylist(HlsMultivariantPlaylist hlsMultivariantPlaylist, HlsMediaPlaylist hlsMediaPlaylist, LineIterator lineIterator, String str) throws DeltaUpdateException, ParserException {
        HlsMediaPlaylist.ServerControl serverControl;
        TreeMap treeMap;
        long j;
        String str2;
        HlsMediaPlaylist.Segment segment;
        int i;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        HlsMediaPlaylist.Segment segment2;
        long j7;
        boolean z;
        DrmInitData drmInitData;
        DrmInitData playlistProtectionSchemes;
        HlsMultivariantPlaylist hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
        HlsMediaPlaylist hlsMediaPlaylist2 = hlsMediaPlaylist;
        boolean z2 = hlsMultivariantPlaylist2.hasIndependentSegments;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        HlsMediaPlaylist.ServerControl serverControl2 = new HlsMediaPlaylist.ServerControl(-9223372036854775807L, false, -9223372036854775807L, -9223372036854775807L, false);
        TreeMap treeMap2 = new TreeMap();
        boolean z3 = z2;
        long j8 = -9223372036854775807L;
        long doubleAttr = -9223372036854775807L;
        long j9 = 0;
        long j10 = 0;
        long jMsToUs = 0;
        long j11 = 0;
        long longAttr = 0;
        long timeSecondsToUs = 0;
        long j12 = 0;
        String optionalStringAttr = _UrlKt.FRAGMENT_ENCODE_SET;
        String str3 = optionalStringAttr;
        boolean optionalBooleanAttribute = false;
        String encryptionScheme = null;
        DrmInitData drmInitData2 = null;
        HlsMediaPlaylist.Part part = null;
        int i2 = 0;
        boolean z4 = false;
        DrmInitData playlistProtectionSchemes2 = null;
        String str4 = null;
        long j13 = -1;
        boolean z5 = false;
        boolean z6 = false;
        int i3 = 0;
        HlsMediaPlaylist.Segment segment3 = null;
        int i4 = 0;
        String stringAttr = null;
        long j14 = -1;
        boolean z7 = false;
        long intAttr = -9223372036854775807L;
        long j15 = 0;
        int intAttr2 = 1;
        while (lineIterator.hasNext()) {
            String next = lineIterator.next();
            if (next.startsWith("#EXT")) {
                arrayList4.add(next);
            }
            if (next.startsWith("#EXT-X-PLAYLIST-TYPE")) {
                String stringAttr2 = parseStringAttr(next, REGEX_PLAYLIST_TYPE, map);
                if ("VOD".equals(stringAttr2)) {
                    i2 = 1;
                } else if ("EVENT".equals(stringAttr2)) {
                    i2 = 2;
                }
            } else if (next.equals("#EXT-X-I-FRAMES-ONLY")) {
                z7 = true;
            } else {
                if (next.startsWith("#EXT-X-START")) {
                    ArrayList arrayList5 = arrayList4;
                    serverControl = serverControl2;
                    long doubleAttr2 = (long) (parseDoubleAttr(next, REGEX_TIME_OFFSET) * 1000000.0d);
                    optionalBooleanAttribute = parseOptionalBooleanAttribute(next, REGEX_PRECISE, false);
                    arrayList4 = arrayList5;
                    j8 = doubleAttr2;
                } else {
                    ArrayList arrayList6 = arrayList4;
                    serverControl = serverControl2;
                    if (next.startsWith("#EXT-X-SERVER-CONTROL")) {
                        serverControl2 = parseServerControl(next);
                        arrayList4 = arrayList6;
                    } else if (next.startsWith("#EXT-X-PART-INF")) {
                        doubleAttr = (long) (parseDoubleAttr(next, REGEX_PART_TARGET_DURATION) * 1000000.0d);
                        arrayList4 = arrayList6;
                    } else if (next.startsWith("#EXT-X-MAP")) {
                        String stringAttr3 = parseStringAttr(next, REGEX_URI, map);
                        boolean z8 = optionalBooleanAttribute;
                        String optionalStringAttr2 = parseOptionalStringAttr(next, REGEX_ATTR_BYTERANGE, map);
                        if (optionalStringAttr2 != null) {
                            String[] strArrSplit = Util.split(optionalStringAttr2, "@");
                            j13 = Long.parseLong(strArrSplit[0]);
                            if (strArrSplit.length > 1) {
                                j9 = Long.parseLong(strArrSplit[1]);
                            }
                        }
                        long j16 = j13;
                        long j17 = j16 == j14 ? 0L : j9;
                        if (stringAttr != null && str4 == null) {
                            throw ParserException.createForMalformedManifest("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.", null);
                        }
                        HlsMediaPlaylist.Segment segment4 = new HlsMediaPlaylist.Segment(stringAttr3, j17, j16, stringAttr, str4);
                        String str5 = str4;
                        if (j16 != j14) {
                            j17 += j16;
                        }
                        str4 = str5;
                        arrayList4 = arrayList6;
                        segment3 = segment4;
                        j9 = j17;
                        j13 = j14;
                        serverControl2 = serverControl;
                        optionalBooleanAttribute = z8;
                    } else {
                        boolean z9 = optionalBooleanAttribute;
                        String str6 = str4;
                        String str7 = stringAttr;
                        if (next.startsWith("#EXT-X-TARGETDURATION")) {
                            intAttr = 1000000 * ((long) parseIntAttr(next, REGEX_TARGET_DURATION));
                        } else if (next.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                            longAttr = parseLongAttr(next, REGEX_MEDIA_SEQUENCE);
                            stringAttr = str7;
                            str4 = str6;
                            j15 = longAttr;
                            serverControl2 = serverControl;
                            optionalBooleanAttribute = z9;
                            arrayList4 = arrayList6;
                        } else if (next.startsWith("#EXT-X-VERSION")) {
                            intAttr2 = parseIntAttr(next, REGEX_VERSION);
                        } else {
                            if (next.startsWith("#EXT-X-DEFINE")) {
                                String optionalStringAttr3 = parseOptionalStringAttr(next, REGEX_IMPORT, map);
                                if (optionalStringAttr3 != null) {
                                    String str8 = hlsMultivariantPlaylist2.variableDefinitions.get(optionalStringAttr3);
                                    if (str8 != null) {
                                        map.put(optionalStringAttr3, str8);
                                    }
                                } else {
                                    map.put(parseStringAttr(next, REGEX_NAME, map), parseStringAttr(next, REGEX_VALUE, map));
                                }
                                treeMap = treeMap2;
                                j = j10;
                                str2 = str3;
                            } else if (next.startsWith("#EXTINF")) {
                                timeSecondsToUs = parseTimeSecondsToUs(next, REGEX_MEDIA_DURATION);
                                optionalStringAttr = parseOptionalStringAttr(next, REGEX_MEDIA_TITLE, str3, map);
                            } else {
                                String str9 = str3;
                                if (next.startsWith("#EXT-X-SKIP")) {
                                    int intAttr3 = parseIntAttr(next, REGEX_SKIPPED_SEGMENTS);
                                    Assertions.checkState(hlsMediaPlaylist2 != null && arrayList.isEmpty());
                                    str2 = str9;
                                    int i5 = (int) (j15 - ((HlsMediaPlaylist) Util.castNonNull(hlsMediaPlaylist2)).mediaSequence);
                                    int i6 = intAttr3 + i5;
                                    if (i5 < 0 || i6 > hlsMediaPlaylist2.segments.size()) {
                                        throw new DeltaUpdateException();
                                    }
                                    stringAttr = str7;
                                    str4 = str6;
                                    long j18 = j10;
                                    while (i5 < i6) {
                                        HlsMediaPlaylist.Segment segmentCopyWith = hlsMediaPlaylist2.segments.get(i5);
                                        int i7 = i5;
                                        if (j15 != hlsMediaPlaylist2.mediaSequence) {
                                            segmentCopyWith = segmentCopyWith.copyWith(j18, (hlsMediaPlaylist2.discontinuitySequence - i3) + segmentCopyWith.relativeDiscontinuitySequence);
                                        }
                                        arrayList.add(segmentCopyWith);
                                        j11 = j18 + segmentCopyWith.durationUs;
                                        long j19 = segmentCopyWith.byteRangeLength;
                                        if (j19 != j14) {
                                            j9 = segmentCopyWith.byteRangeOffset + j19;
                                        }
                                        int i8 = segmentCopyWith.relativeDiscontinuitySequence;
                                        HlsMediaPlaylist.Segment segment5 = segmentCopyWith.initializationSegment;
                                        drmInitData2 = segmentCopyWith.drmInitData;
                                        String str10 = segmentCopyWith.fullSegmentEncryptionKeyUri;
                                        String str11 = segmentCopyWith.encryptionIV;
                                        int i9 = i6;
                                        if (str11 == null || !str11.equals(Long.toHexString(longAttr))) {
                                            str4 = segmentCopyWith.encryptionIV;
                                        }
                                        longAttr++;
                                        i4 = i8;
                                        segment3 = segment5;
                                        stringAttr = str10;
                                        j18 = j11;
                                        i5 = i7 + 1;
                                        i6 = i9;
                                    }
                                    hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                    j10 = j18;
                                } else {
                                    str2 = str9;
                                    if (next.startsWith("#EXT-X-KEY")) {
                                        String stringAttr4 = parseStringAttr(next, REGEX_METHOD, map);
                                        String optionalStringAttr4 = parseOptionalStringAttr(next, REGEX_KEYFORMAT, "identity", map);
                                        if ("NONE".equals(stringAttr4)) {
                                            treeMap2.clear();
                                            drmInitData2 = null;
                                            str4 = null;
                                            stringAttr = null;
                                        } else {
                                            String optionalStringAttr5 = parseOptionalStringAttr(next, REGEX_IV, map);
                                            if ("identity".equals(optionalStringAttr4)) {
                                                if ("AES-128".equals(stringAttr4)) {
                                                    stringAttr = parseStringAttr(next, REGEX_URI, map);
                                                    str4 = optionalStringAttr5;
                                                } else {
                                                    str4 = optionalStringAttr5;
                                                    stringAttr = null;
                                                }
                                            } else {
                                                if (encryptionScheme == null) {
                                                    encryptionScheme = parseEncryptionScheme(stringAttr4);
                                                }
                                                DrmInitData.SchemeData drmSchemeData = parseDrmSchemeData(next, optionalStringAttr4, map);
                                                if (drmSchemeData != null) {
                                                    treeMap2.put(optionalStringAttr4, drmSchemeData);
                                                    str4 = optionalStringAttr5;
                                                    drmInitData2 = null;
                                                    stringAttr = null;
                                                }
                                            }
                                        }
                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                    } else {
                                        if (next.startsWith("#EXT-X-BYTERANGE")) {
                                            String[] strArrSplit2 = Util.split(parseStringAttr(next, REGEX_BYTERANGE, map), "@");
                                            j13 = Long.parseLong(strArrSplit2[0]);
                                            if (strArrSplit2.length > 1) {
                                                j9 = Long.parseLong(strArrSplit2[1]);
                                            }
                                        } else if (next.startsWith("#EXT-X-DISCONTINUITY-SEQUENCE")) {
                                            i3 = Integer.parseInt(next.substring(next.indexOf(58) + 1));
                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                            stringAttr = str7;
                                            str4 = str6;
                                            serverControl2 = serverControl;
                                            optionalBooleanAttribute = z9;
                                            arrayList4 = arrayList6;
                                            str3 = str2;
                                            z6 = true;
                                        } else if (next.equals("#EXT-X-DISCONTINUITY")) {
                                            i4++;
                                        } else {
                                            if (next.startsWith("#EXT-X-PROGRAM-DATE-TIME")) {
                                                if (jMsToUs == 0) {
                                                    jMsToUs = Util.msToUs(Util.parseXsDateTime(next.substring(next.indexOf(58) + 1))) - j10;
                                                } else {
                                                    treeMap = treeMap2;
                                                }
                                            } else if (next.equals("#EXT-X-GAP")) {
                                                hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                stringAttr = str7;
                                                str4 = str6;
                                                serverControl2 = serverControl;
                                                optionalBooleanAttribute = z9;
                                                arrayList4 = arrayList6;
                                                str3 = str2;
                                                z5 = true;
                                            } else if (next.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                                                hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                stringAttr = str7;
                                                str4 = str6;
                                                serverControl2 = serverControl;
                                                optionalBooleanAttribute = z9;
                                                arrayList4 = arrayList6;
                                                str3 = str2;
                                                z3 = true;
                                            } else if (next.equals("#EXT-X-ENDLIST")) {
                                                hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                stringAttr = str7;
                                                str4 = str6;
                                                serverControl2 = serverControl;
                                                optionalBooleanAttribute = z9;
                                                arrayList4 = arrayList6;
                                                str3 = str2;
                                                z4 = true;
                                            } else if (next.startsWith("#EXT-X-RENDITION-REPORT")) {
                                                treeMap = treeMap2;
                                                arrayList3.add(new HlsMediaPlaylist.RenditionReport(Uri.parse(UriUtil.resolve(str, parseStringAttr(next, REGEX_URI, map))), parseOptionalLongAttr(next, REGEX_LAST_MSN, j14), parseOptionalIntAttr(next, REGEX_LAST_PART, -1)));
                                            } else {
                                                treeMap = treeMap2;
                                                if (next.startsWith("#EXT-X-PRELOAD-HINT")) {
                                                    if (part == null && "PART".equals(parseStringAttr(next, REGEX_PRELOAD_HINT_TYPE, map))) {
                                                        String stringAttr5 = parseStringAttr(next, REGEX_URI, map);
                                                        long optionalLongAttr = parseOptionalLongAttr(next, REGEX_BYTERANGE_START, -1L);
                                                        long optionalLongAttr2 = parseOptionalLongAttr(next, REGEX_BYTERANGE_LENGTH, -1L);
                                                        long j20 = longAttr;
                                                        String segmentEncryptionIV = getSegmentEncryptionIV(j20, str7, str6);
                                                        if (drmInitData2 == null && !treeMap.isEmpty()) {
                                                            DrmInitData.SchemeData[] schemeDataArr = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                            drmInitData2 = new DrmInitData(encryptionScheme, schemeDataArr);
                                                            if (playlistProtectionSchemes2 == null) {
                                                                playlistProtectionSchemes2 = getPlaylistProtectionSchemes(encryptionScheme, schemeDataArr);
                                                            }
                                                        }
                                                        DrmInitData drmInitData3 = drmInitData2;
                                                        if (optionalLongAttr == -1 || optionalLongAttr2 != -1) {
                                                            part = new HlsMediaPlaylist.Part(stringAttr5, segment3, 0L, i4, j11, drmInitData3, str7, segmentEncryptionIV, optionalLongAttr != -1 ? optionalLongAttr : 0L, optionalLongAttr2, false, false, true);
                                                        }
                                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                        stringAttr = str7;
                                                        str4 = str6;
                                                        longAttr = j20;
                                                        drmInitData2 = drmInitData3;
                                                        serverControl2 = serverControl;
                                                        optionalBooleanAttribute = z9;
                                                        arrayList4 = arrayList6;
                                                        str3 = str2;
                                                        treeMap2 = treeMap;
                                                        j14 = -1;
                                                    }
                                                } else {
                                                    j2 = longAttr;
                                                    if (next.startsWith("#EXT-X-PART")) {
                                                        String segmentEncryptionIV2 = getSegmentEncryptionIV(j2, str7, str6);
                                                        String stringAttr6 = parseStringAttr(next, REGEX_URI, map);
                                                        long doubleAttr3 = (long) (parseDoubleAttr(next, REGEX_ATTR_DURATION) * 1000000.0d);
                                                        boolean optionalBooleanAttribute2 = parseOptionalBooleanAttribute(next, REGEX_INDEPENDENT, false) | (z3 && arrayList2.isEmpty());
                                                        boolean optionalBooleanAttribute3 = parseOptionalBooleanAttribute(next, REGEX_GAP, false);
                                                        String optionalStringAttr6 = parseOptionalStringAttr(next, REGEX_ATTR_BYTERANGE, map);
                                                        if (optionalStringAttr6 != null) {
                                                            String[] strArrSplit3 = Util.split(optionalStringAttr6, "@");
                                                            long j21 = Long.parseLong(strArrSplit3[0]);
                                                            if (strArrSplit3.length > 1) {
                                                                j12 = Long.parseLong(strArrSplit3[1]);
                                                            }
                                                            j5 = j21;
                                                        } else {
                                                            j5 = -1;
                                                        }
                                                        long j22 = j5 == -1 ? 0L : j12;
                                                        if (drmInitData2 == null && !treeMap.isEmpty()) {
                                                            DrmInitData.SchemeData[] schemeDataArr2 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                            drmInitData2 = new DrmInitData(encryptionScheme, schemeDataArr2);
                                                            if (playlistProtectionSchemes2 == null) {
                                                                playlistProtectionSchemes2 = getPlaylistProtectionSchemes(encryptionScheme, schemeDataArr2);
                                                            }
                                                        }
                                                        DrmInitData drmInitData4 = drmInitData2;
                                                        HlsMediaPlaylist.Segment segment6 = segment3;
                                                        int i10 = i4;
                                                        arrayList2.add(new HlsMediaPlaylist.Part(stringAttr6, segment3, doubleAttr3, i4, j11, drmInitData4, str7, segmentEncryptionIV2, j22, j5, optionalBooleanAttribute3, optionalBooleanAttribute2, false));
                                                        j11 += doubleAttr3;
                                                        if (j5 != -1) {
                                                            j22 += j5;
                                                        }
                                                        j12 = j22;
                                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                        segment3 = segment6;
                                                        stringAttr = str7;
                                                        str4 = str6;
                                                        longAttr = j2;
                                                        i4 = i10;
                                                        drmInitData2 = drmInitData4;
                                                        serverControl2 = serverControl;
                                                        optionalBooleanAttribute = z9;
                                                        arrayList4 = arrayList6;
                                                        str3 = str2;
                                                        treeMap2 = treeMap;
                                                    } else {
                                                        segment = segment3;
                                                        i = i4;
                                                        if (next.startsWith("#")) {
                                                            j3 = j9;
                                                            j = j10;
                                                            j4 = timeSecondsToUs;
                                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                            segment3 = segment;
                                                            stringAttr = str7;
                                                            str4 = str6;
                                                            longAttr = j2;
                                                            optionalStringAttr = optionalStringAttr;
                                                            timeSecondsToUs = j4;
                                                            j10 = j;
                                                            j9 = j3;
                                                            serverControl2 = serverControl;
                                                            optionalBooleanAttribute = z9;
                                                            arrayList4 = arrayList6;
                                                            str3 = str2;
                                                            treeMap2 = treeMap;
                                                            j14 = -1;
                                                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                            i4 = i;
                                                        } else {
                                                            long j23 = j10;
                                                            String segmentEncryptionIV3 = getSegmentEncryptionIV(j2, str7, str6);
                                                            longAttr = j2 + 1;
                                                            String strReplaceVariableReferences = replaceVariableReferences(next, map);
                                                            HlsMediaPlaylist.Segment segment7 = (HlsMediaPlaylist.Segment) map2.get(strReplaceVariableReferences);
                                                            if (j13 == -1) {
                                                                segment2 = segment7;
                                                                j7 = 0;
                                                            } else {
                                                                if (z7 && segment == null && segment7 == null) {
                                                                    j6 = j9;
                                                                    segment7 = new HlsMediaPlaylist.Segment(strReplaceVariableReferences, 0L, j6, null, null);
                                                                    map2.put(strReplaceVariableReferences, segment7);
                                                                } else {
                                                                    j6 = j9;
                                                                }
                                                                segment2 = segment7;
                                                                j7 = j6;
                                                            }
                                                            if (drmInitData2 != null || treeMap.isEmpty()) {
                                                                z = false;
                                                            } else {
                                                                z = false;
                                                                DrmInitData.SchemeData[] schemeDataArr3 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                                drmInitData2 = new DrmInitData(encryptionScheme, schemeDataArr3);
                                                                if (playlistProtectionSchemes2 == null) {
                                                                    playlistProtectionSchemes = getPlaylistProtectionSchemes(encryptionScheme, schemeDataArr3);
                                                                    drmInitData = drmInitData2;
                                                                }
                                                                long j24 = timeSecondsToUs;
                                                                arrayList.add(new HlsMediaPlaylist.Segment(strReplaceVariableReferences, segment == null ? segment : segment2, optionalStringAttr, j24, i, j23, drmInitData, str7, segmentEncryptionIV3, j7, j13, z5, arrayList2));
                                                                j11 = j23 + j24;
                                                                arrayList2 = new ArrayList();
                                                                if (j13 != -1) {
                                                                    j7 += j13;
                                                                }
                                                                j9 = j7;
                                                                hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                                segment3 = segment;
                                                                stringAttr = str7;
                                                                str4 = str6;
                                                                playlistProtectionSchemes2 = playlistProtectionSchemes;
                                                                z5 = z;
                                                                i4 = i;
                                                                drmInitData2 = drmInitData;
                                                                j10 = j11;
                                                                timeSecondsToUs = 0;
                                                                serverControl2 = serverControl;
                                                                optionalBooleanAttribute = z9;
                                                                arrayList4 = arrayList6;
                                                                optionalStringAttr = str2;
                                                                str3 = optionalStringAttr;
                                                                treeMap2 = treeMap;
                                                                j13 = -1;
                                                            }
                                                            drmInitData = drmInitData2;
                                                            playlistProtectionSchemes = playlistProtectionSchemes2;
                                                            long j242 = timeSecondsToUs;
                                                            arrayList.add(new HlsMediaPlaylist.Segment(strReplaceVariableReferences, segment == null ? segment : segment2, optionalStringAttr, j242, i, j23, drmInitData, str7, segmentEncryptionIV3, j7, j13, z5, arrayList2));
                                                            j11 = j23 + j242;
                                                            arrayList2 = new ArrayList();
                                                            if (j13 != -1) {
                                                            }
                                                            j9 = j7;
                                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                            segment3 = segment;
                                                            stringAttr = str7;
                                                            str4 = str6;
                                                            playlistProtectionSchemes2 = playlistProtectionSchemes;
                                                            z5 = z;
                                                            i4 = i;
                                                            drmInitData2 = drmInitData;
                                                            j10 = j11;
                                                            timeSecondsToUs = 0;
                                                            serverControl2 = serverControl;
                                                            optionalBooleanAttribute = z9;
                                                            arrayList4 = arrayList6;
                                                            optionalStringAttr = str2;
                                                            str3 = optionalStringAttr;
                                                            treeMap2 = treeMap;
                                                            j13 = -1;
                                                        }
                                                    }
                                                    j14 = -1;
                                                    hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                }
                                            }
                                            j = j10;
                                        }
                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                        stringAttr = str7;
                                        str4 = str6;
                                    }
                                }
                                serverControl2 = serverControl;
                                optionalBooleanAttribute = z9;
                                arrayList4 = arrayList6;
                                str3 = str2;
                            }
                            segment = segment3;
                            i = i4;
                            j2 = longAttr;
                            j3 = j9;
                            j4 = timeSecondsToUs;
                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                            segment3 = segment;
                            stringAttr = str7;
                            str4 = str6;
                            longAttr = j2;
                            optionalStringAttr = optionalStringAttr;
                            timeSecondsToUs = j4;
                            j10 = j;
                            j9 = j3;
                            serverControl2 = serverControl;
                            optionalBooleanAttribute = z9;
                            arrayList4 = arrayList6;
                            str3 = str2;
                            treeMap2 = treeMap;
                            j14 = -1;
                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                            i4 = i;
                        }
                        stringAttr = str7;
                        str4 = str6;
                        serverControl2 = serverControl;
                        optionalBooleanAttribute = z9;
                        arrayList4 = arrayList6;
                    }
                }
                serverControl2 = serverControl;
            }
        }
        boolean z10 = optionalBooleanAttribute;
        ArrayList arrayList7 = arrayList4;
        HlsMediaPlaylist.ServerControl serverControl3 = serverControl2;
        HashMap map3 = new HashMap();
        for (int i11 = 0; i11 < arrayList3.size(); i11++) {
            HlsMediaPlaylist.RenditionReport renditionReport = (HlsMediaPlaylist.RenditionReport) arrayList3.get(i11);
            long size = renditionReport.lastMediaSequence;
            if (size == -1) {
                size = (j15 + ((long) arrayList.size())) - (arrayList2.isEmpty() ? 1L : 0L);
            }
            int size2 = renditionReport.lastPartIndex;
            if (size2 == -1 && doubleAttr != -9223372036854775807L) {
                size2 = (arrayList2.isEmpty() ? ((HlsMediaPlaylist.Segment) Iterables.getLast(arrayList)).parts : arrayList2).size() - 1;
            }
            Uri uri = renditionReport.playlistUri;
            map3.put(uri, new HlsMediaPlaylist.RenditionReport(uri, size, size2));
        }
        if (part != null) {
            arrayList2.add(part);
        }
        return new HlsMediaPlaylist(i2, str, arrayList7, j8, z10, jMsToUs, z6, i3, j15, intAttr2, intAttr, doubleAttr, z3, z4, jMsToUs != 0, playlistProtectionSchemes2, arrayList, arrayList2, serverControl3, map3);
    }

    private static DrmInitData getPlaylistProtectionSchemes(String str, DrmInitData.SchemeData[] schemeDataArr) {
        DrmInitData.SchemeData[] schemeDataArr2 = new DrmInitData.SchemeData[schemeDataArr.length];
        for (int i = 0; i < schemeDataArr.length; i++) {
            schemeDataArr2[i] = schemeDataArr[i].copyWithData(null);
        }
        return new DrmInitData(str, schemeDataArr2);
    }

    private static String getSegmentEncryptionIV(long j, String str, String str2) {
        if (str == null) {
            return null;
        }
        return str2 != null ? str2 : Long.toHexString(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    private static int parseSelectionFlags(String str) {
        boolean optionalBooleanAttribute = parseOptionalBooleanAttribute(str, REGEX_DEFAULT, false);
        ?? r0 = optionalBooleanAttribute;
        if (parseOptionalBooleanAttribute(str, REGEX_FORCED, false)) {
            r0 = (optionalBooleanAttribute ? 1 : 0) | 2;
        }
        return parseOptionalBooleanAttribute(str, REGEX_AUTOSELECT, false) ? r0 | 4 : r0;
    }

    private static int parseRoleFlags(String str, Map<String, String> map) {
        String optionalStringAttr = parseOptionalStringAttr(str, REGEX_CHARACTERISTICS, map);
        if (TextUtils.isEmpty(optionalStringAttr)) {
            return 0;
        }
        String[] strArrSplit = Util.split(optionalStringAttr, ",");
        int i = Util.contains(strArrSplit, "public.accessibility.describes-video") ? 512 : 0;
        if (Util.contains(strArrSplit, "public.accessibility.transcribes-spoken-dialog")) {
            i |= 4096;
        }
        if (Util.contains(strArrSplit, "public.accessibility.describes-music-and-sound")) {
            i |= 1024;
        }
        return Util.contains(strArrSplit, "public.easy-to-read") ? i | 8192 : i;
    }

    private static DrmInitData.SchemeData parseDrmSchemeData(String str, String str2, Map<String, String> map) throws ParserException {
        String optionalStringAttr = parseOptionalStringAttr(str, REGEX_KEYFORMATVERSIONS, "1", map);
        if ("urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed".equals(str2)) {
            String stringAttr = parseStringAttr(str, REGEX_URI, map);
            return new DrmInitData.SchemeData(AbstractC1218C.WIDEVINE_UUID, "video/mp4", Base64.decode(stringAttr.substring(stringAttr.indexOf(44)), 0));
        }
        if ("com.widevine".equals(str2)) {
            return new DrmInitData.SchemeData(AbstractC1218C.WIDEVINE_UUID, "hls", Util.getUtf8Bytes(str));
        }
        if (!"com.microsoft.playready".equals(str2) || !"1".equals(optionalStringAttr)) {
            return null;
        }
        String stringAttr2 = parseStringAttr(str, REGEX_URI, map);
        byte[] bArrDecode = Base64.decode(stringAttr2.substring(stringAttr2.indexOf(44)), 0);
        UUID uuid = AbstractC1218C.PLAYREADY_UUID;
        return new DrmInitData.SchemeData(uuid, "video/mp4", PsshAtomUtil.buildPsshAtom(uuid, bArrDecode));
    }

    private static HlsMediaPlaylist.ServerControl parseServerControl(String str) {
        double optionalDoubleAttr = parseOptionalDoubleAttr(str, REGEX_CAN_SKIP_UNTIL, -9.223372036854776E18d);
        long j = optionalDoubleAttr == -9.223372036854776E18d ? -9223372036854775807L : (long) (optionalDoubleAttr * 1000000.0d);
        boolean optionalBooleanAttribute = parseOptionalBooleanAttribute(str, REGEX_CAN_SKIP_DATE_RANGES, false);
        double optionalDoubleAttr2 = parseOptionalDoubleAttr(str, REGEX_HOLD_BACK, -9.223372036854776E18d);
        long j2 = optionalDoubleAttr2 == -9.223372036854776E18d ? -9223372036854775807L : (long) (optionalDoubleAttr2 * 1000000.0d);
        double optionalDoubleAttr3 = parseOptionalDoubleAttr(str, REGEX_PART_HOLD_BACK, -9.223372036854776E18d);
        return new HlsMediaPlaylist.ServerControl(j, optionalBooleanAttribute, j2, optionalDoubleAttr3 != -9.223372036854776E18d ? (long) (optionalDoubleAttr3 * 1000000.0d) : -9223372036854775807L, parseOptionalBooleanAttribute(str, REGEX_CAN_BLOCK_RELOAD, false));
    }

    private static String parseEncryptionScheme(String str) {
        if ("SAMPLE-AES-CENC".equals(str) || "SAMPLE-AES-CTR".equals(str)) {
            return "cenc";
        }
        return "cbcs";
    }

    private static int parseIntAttr(String str, Pattern pattern) {
        return Integer.parseInt(parseStringAttr(str, pattern, Collections.EMPTY_MAP));
    }

    private static int parseOptionalIntAttr(String str, Pattern pattern, int i) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Integer.parseInt((String) Assertions.checkNotNull(matcher.group(1))) : i;
    }

    private static long parseLongAttr(String str, Pattern pattern) {
        return Long.parseLong(parseStringAttr(str, pattern, Collections.EMPTY_MAP));
    }

    private static long parseOptionalLongAttr(String str, Pattern pattern, long j) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Long.parseLong((String) Assertions.checkNotNull(matcher.group(1))) : j;
    }

    private static long parseTimeSecondsToUs(String str, Pattern pattern) {
        return new BigDecimal(parseStringAttr(str, pattern, Collections.EMPTY_MAP)).multiply(new BigDecimal(1000000L)).longValue();
    }

    private static double parseDoubleAttr(String str, Pattern pattern) {
        return Double.parseDouble(parseStringAttr(str, pattern, Collections.EMPTY_MAP));
    }

    private static String parseStringAttr(String str, Pattern pattern, Map<String, String> map) throws ParserException {
        String optionalStringAttr = parseOptionalStringAttr(str, pattern, map);
        if (optionalStringAttr != null) {
            return optionalStringAttr;
        }
        throw ParserException.createForMalformedManifest("Couldn't match " + pattern.pattern() + " in " + str, null);
    }

    private static String parseOptionalStringAttr(String str, Pattern pattern, Map<String, String> map) {
        return parseOptionalStringAttr(str, pattern, null, map);
    }

    private static String parseOptionalStringAttr(String str, Pattern pattern, String str2, Map<String, String> map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = (String) Assertions.checkNotNull(matcher.group(1));
        }
        return (map.isEmpty() || str2 == null) ? str2 : replaceVariableReferences(str2, map);
    }

    private static double parseOptionalDoubleAttr(String str, Pattern pattern, double d) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Double.parseDouble((String) Assertions.checkNotNull(matcher.group(1))) : d;
    }

    private static String replaceVariableReferences(String str, Map<String, String> map) {
        Matcher matcher = REGEX_VARIABLE_REFERENCE.matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            if (map.containsKey(strGroup)) {
                matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement(map.get(strGroup)));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    private static boolean parseOptionalBooleanAttribute(String str, Pattern pattern, boolean z) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? "YES".equals(matcher.group(1)) : z;
    }

    private static Pattern compileBooleanAttrPattern(String str) {
        return Pattern.compile(str + "=(NO|YES)");
    }

    public static class LineIterator {
        private final Queue<String> extraLines;
        private String next;
        private final BufferedReader reader;

        public LineIterator(Queue<String> queue, BufferedReader bufferedReader) {
            this.extraLines = queue;
            this.reader = bufferedReader;
        }

        @EnsuresNonNullIf(expression = {"next"}, result = true)
        public boolean hasNext() throws IOException {
            String strTrim;
            if (this.next != null) {
                return true;
            }
            if (!this.extraLines.isEmpty()) {
                this.next = (String) Assertions.checkNotNull(this.extraLines.poll());
                return true;
            }
            do {
                String line = this.reader.readLine();
                this.next = line;
                if (line == null) {
                    return false;
                }
                strTrim = line.trim();
                this.next = strTrim;
            } while (strTrim.isEmpty());
            return true;
        }

        public String next() {
            if (hasNext()) {
                String str = this.next;
                this.next = null;
                return str;
            }
            Utils$$ExternalSyntheticBUOutline0.m978m();
            return null;
        }
    }
}
