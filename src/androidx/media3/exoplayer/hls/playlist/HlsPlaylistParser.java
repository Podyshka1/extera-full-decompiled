package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import androidx.media3.common.AbstractC0644C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UriUtil;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.hls.HlsTrackMetadataEntry;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.hls.playlist.HlsMultivariantPlaylist;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import androidx.media3.extractor.mp4.PsshAtomUtil;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.common.base.Preconditions;
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
import java.util.Iterator;
import java.util.LinkedHashMap;
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
    private static final Pattern REGEX_VIDEO = Pattern.compile("VIDEO=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_AUDIO = Pattern.compile("AUDIO=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_SUBTITLES = Pattern.compile("SUBTITLES=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_CLOSED_CAPTIONS = Pattern.compile("CLOSED-CAPTIONS=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_BANDWIDTH = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");
    private static final Pattern REGEX_CHANNELS = Pattern.compile("CHANNELS=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_VIDEO_RANGE = Pattern.compile("VIDEO-RANGE=(SDR|PQ|HLG)");
    private static final Pattern REGEX_CODECS = Pattern.compile("CODECS=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_SUPPLEMENTAL_CODECS = Pattern.compile("SUPPLEMENTAL-CODECS=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_MIME = Pattern.compile("MIME=\"(.+?)\"");
    private static final Pattern REGEX_CACHED = Pattern.compile("CACHED=\"(.+?)\"");
    private static final Pattern REGEX_DOC_ID = Pattern.compile("DOCID=\"(.+?)\"");
    private static final Pattern REGEX_DOC_FILENAME = Pattern.compile("DOCFILENAME=\"(.+?)\"");
    private static final Pattern REGEX_ACCOUNT = Pattern.compile("ACCOUNT=\"(.+?)\"");
    private static final Pattern REGEX_RESOLUTION = Pattern.compile("RESOLUTION=(\\d+x\\d+)");
    private static final Pattern REGEX_FRAME_RATE = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");
    private static final Pattern REGEX_PATHWAY_ID = Pattern.compile("PATHWAY-ID=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_STABLE_VARIANT_ID = Pattern.compile("STABLE-VARIANT-ID=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_STABLE_RENDITION_ID = Pattern.compile("STABLE-RENDITION-ID=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_TARGET_DURATION = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");
    private static final Pattern REGEX_ATTR_DURATION = Pattern.compile("DURATION=([\\d\\.]+)\\b");
    private static final Pattern REGEX_ATTR_DURATION_PREFIXED = Pattern.compile("[:,]DURATION=([\\d\\.]+)\\b");
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
    private static final Pattern REGEX_KEYFORMAT = Pattern.compile("KEYFORMAT=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_KEYFORMATVERSIONS = Pattern.compile("KEYFORMATVERSIONS=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_URI = Pattern.compile("URI=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_IV = Pattern.compile("IV=([^,.*]+)");
    private static final Pattern REGEX_TYPE = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    private static final Pattern REGEX_PRELOAD_HINT_TYPE = Pattern.compile("TYPE=(PART|MAP)");
    private static final Pattern REGEX_LANGUAGE = Pattern.compile("LANGUAGE=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_NAME = Pattern.compile("NAME=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_QUERY_PARAM = Pattern.compile("QUERYPARAM=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_GROUP_ID = Pattern.compile("GROUP-ID=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_CHARACTERISTICS = Pattern.compile("CHARACTERISTICS=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_INSTREAM_ID = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    private static final Pattern REGEX_AUTOSELECT = compileBooleanAttrPattern("AUTOSELECT");
    private static final Pattern REGEX_DEFAULT = compileBooleanAttrPattern(PluginsConstants.Strategy.DEFAULT);
    private static final Pattern REGEX_FORCED = compileBooleanAttrPattern("FORCED");
    private static final Pattern REGEX_INDEPENDENT = compileBooleanAttrPattern("INDEPENDENT");
    private static final Pattern REGEX_GAP = compileBooleanAttrPattern("GAP");
    private static final Pattern REGEX_PRECISE = compileBooleanAttrPattern("PRECISE");
    private static final Pattern REGEX_VALUE = Pattern.compile("VALUE=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_IMPORT = Pattern.compile("IMPORT=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_ID = Pattern.compile("[:,]ID=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_CLASS = Pattern.compile("CLASS=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_START_DATE = Pattern.compile("START-DATE=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_CUE = Pattern.compile("CUE=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_END_DATE = Pattern.compile("END-DATE=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_PLANNED_DURATION = Pattern.compile("PLANNED-DURATION=([\\d\\.]+)\\b");
    private static final Pattern REGEX_END_ON_NEXT = compileBooleanAttrPattern("END-ON-NEXT");
    private static final Pattern REGEX_ASSET_URI = Pattern.compile("X-ASSET-URI=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_ASSET_LIST_URI = Pattern.compile("X-ASSET-LIST=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_RESUME_OFFSET = Pattern.compile("X-RESUME-OFFSET=(-?[\\d\\.]+)\\b");
    private static final Pattern REGEX_PLAYOUT_LIMIT = Pattern.compile("X-PLAYOUT-LIMIT=([\\d\\.]+)\\b");
    private static final Pattern REGEX_SNAP = Pattern.compile("X-SNAP=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_RESTRICT = Pattern.compile("X-RESTRICT=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_CONTENT_MAY_VARY = Pattern.compile("X-CONTENT-MAY-VARY=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_TIMELINE_OCCUPIES = Pattern.compile("X-TIMELINE-OCCUPIES=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_TIMELINE_STYLE = Pattern.compile("X-TIMELINE-STYLE=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_SKIP_CONTROL_OFFSET = Pattern.compile("X-SKIP-CONTROL-OFFSET=([\\d\\.]+)\\b");
    private static final Pattern REGEX_SKIP_CONTROL_DURATION = Pattern.compile("X-SKIP-CONTROL-DURATION=([\\d\\.]+)\\b");
    private static final Pattern REGEX_SKIP_CONTROL_LABEL_ID = Pattern.compile("X-SKIP-CONTROL-LABEL-ID=\"((?:.|\f)+?)\"");
    private static final Pattern REGEX_VARIABLE_REFERENCE = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");
    private static final Pattern REGEX_CLIENT_DEFINED_ATTRIBUTE_PREFIX = Pattern.compile("\\b(X-[A-Z0-9-]+)=");

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
    @Override // androidx.media3.exoplayer.upstream.ParsingLoadable.Parser
    public HlsPlaylist parse(Uri uri, InputStream inputStream) throws ParserException {
        String strTrim;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        MatcherCache matcherCache = new MatcherCache();
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
                            return parseMultivariantPlaylist(new LineIterator(arrayDeque, bufferedReader), uri, matcherCache);
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
            return parseMediaPlaylist(this.multivariantPlaylist, this.previousMediaPlaylist, new LineIterator(arrayDeque, bufferedReader), uri, matcherCache);
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

    private static boolean isDolbyVisionFormat(String str, String str2, String str3, String str4) {
        if (!MimeTypes.isDolbyVisionCodec(str2, str3)) {
            return false;
        }
        if (str3 == null) {
            return true;
        }
        if (str == null || str4 == null) {
            return false;
        }
        return (!str.equals("PQ") || str4.equals("db1p")) && (!str.equals("SDR") || str4.equals("db2g")) && (!str.equals("HLG") || str4.startsWith("db4"));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:124:0x0454. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0426  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static HlsMultivariantPlaylist parseMultivariantPlaylist(LineIterator lineIterator, Uri uri, MatcherCache matcherCache) throws ParserException {
        String str;
        String stringAttr;
        String stringAttr2;
        String optionalStringAttr;
        ArrayList arrayList;
        Format.Builder language;
        Uri uriResolveToUri;
        Metadata metadata;
        ArrayList arrayList2;
        ArrayList arrayList3;
        String mediaMimeType;
        ArrayList arrayList4;
        int i;
        String str2;
        ArrayList arrayList5;
        String mediaMimeType2;
        boolean z;
        int i2;
        ArrayList arrayList6;
        ArrayList arrayList7;
        ArrayList arrayList8;
        ArrayList arrayList9;
        HashMap map;
        ArrayList arrayList10;
        int i3;
        String str3;
        String str4;
        String codecsOfType;
        ColorInfo colorInfoForDolbyVision;
        String optionalStringAttr2;
        String str5;
        int i4;
        int i5;
        Uri uriResolveToUri2;
        ArrayList arrayList11;
        HashMap map2;
        ArrayList arrayList12;
        String string = uri.toString();
        HashMap map3 = new HashMap();
        HashMap map4 = new HashMap();
        ArrayList arrayList13 = new ArrayList();
        ArrayList arrayList14 = new ArrayList();
        ArrayList arrayList15 = new ArrayList();
        ArrayList arrayList16 = new ArrayList();
        ArrayList arrayList17 = new ArrayList();
        ArrayList arrayList18 = new ArrayList();
        ArrayList arrayList19 = new ArrayList();
        ArrayList arrayList20 = new ArrayList();
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            ArrayList arrayList21 = arrayList17;
            boolean z4 = z2;
            if (lineIterator.hasNext()) {
                String next = lineIterator.next();
                if (next.startsWith("#EXT")) {
                    arrayList20.add(next);
                }
                boolean zStartsWith = next.startsWith("#EXT-X-I-FRAME-STREAM-INF");
                ArrayList arrayList22 = arrayList20;
                if (next.startsWith("#EXT-X-DEFINE")) {
                    String optionalStringAttr3 = parseOptionalStringAttr(next, REGEX_NAME, map4, matcherCache);
                    if (optionalStringAttr3 != null) {
                        verifyVariableNameNotContainedOrThrow(optionalStringAttr3, map4);
                        map4.put(optionalStringAttr3, parseStringAttr(next, REGEX_VALUE, map4, matcherCache));
                    } else {
                        String stringAttr3 = parseStringAttr(next, REGEX_QUERY_PARAM, map4, matcherCache);
                        verifyVariableNameNotContainedOrThrow(stringAttr3, map4);
                        String queryParameter = uri.getQueryParameter(stringAttr3);
                        if (queryParameter == null) {
                            throw ParserException.createForMalformedManifest("QUERYPARAM \"" + stringAttr3 + "\" not found in playlist URI", null);
                        }
                        map4.put(stringAttr3, queryParameter);
                    }
                } else {
                    if (next.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                        ArrayList arrayList23 = arrayList13;
                        map2 = map3;
                        arrayList11 = arrayList23;
                        arrayList10 = arrayList18;
                        arrayList9 = arrayList14;
                        arrayList8 = arrayList15;
                        arrayList7 = arrayList16;
                        arrayList6 = arrayList19;
                        z2 = z4;
                        z3 = true;
                    } else if (next.startsWith("#EXT-X-MEDIA")) {
                        arrayList18.add(next);
                    } else if (next.startsWith("#EXT-X-SESSION-KEY")) {
                        DrmInitData.SchemeData drmSchemeData = parseDrmSchemeData(next, parseOptionalStringAttr(next, REGEX_KEYFORMAT, "identity", map4, matcherCache), map4, matcherCache);
                        if (drmSchemeData != null) {
                            arrayList19.add(new DrmInitData(parseEncryptionScheme(parseStringAttr(next, REGEX_METHOD, map4, matcherCache)), drmSchemeData));
                        }
                    } else if (next.startsWith("#EXT-X-STREAM-INF") || zStartsWith) {
                        boolean zContains = z4 | next.contains("CLOSED-CAPTIONS=NONE");
                        if (zStartsWith) {
                            z = zContains;
                            i2 = 16384;
                        } else {
                            z = zContains;
                            i2 = 0;
                        }
                        int intAttr = parseIntAttr(next, REGEX_BANDWIDTH, matcherCache);
                        boolean z5 = z3;
                        arrayList6 = arrayList19;
                        int optionalIntAttr = parseOptionalIntAttr(next, REGEX_AVERAGE_BANDWIDTH, -1, matcherCache);
                        String optionalStringAttr4 = parseOptionalStringAttr(next, REGEX_VIDEO_RANGE, map4, matcherCache);
                        arrayList7 = arrayList16;
                        String optionalStringAttr5 = parseOptionalStringAttr(next, REGEX_CODECS, map4, matcherCache);
                        arrayList8 = arrayList15;
                        String optionalStringAttr6 = parseOptionalStringAttr(next, REGEX_SUPPLEMENTAL_CODECS, map4, matcherCache);
                        arrayList9 = arrayList14;
                        if (optionalStringAttr6 != null) {
                            String[] strArrSplit = Util.split(Util.splitAtFirst(optionalStringAttr6, ",")[0], "/");
                            String str6 = strArrSplit[0];
                            if (strArrSplit.length > 1) {
                                str4 = strArrSplit[1];
                                map = map3;
                                arrayList10 = arrayList18;
                                str3 = str6;
                                i3 = 2;
                                codecsOfType = Util.getCodecsOfType(optionalStringAttr5, i3);
                                if (isDolbyVisionFormat(optionalStringAttr4, codecsOfType, str3, str4)) {
                                    colorInfoForDolbyVision = null;
                                } else {
                                    colorInfoForDolbyVision = Util.getColorInfoForDolbyVision(optionalStringAttr5, str3, str4);
                                    if (str3 == null) {
                                        str3 = codecsOfType;
                                    }
                                    String codecsWithoutType = Util.getCodecsWithoutType(optionalStringAttr5, i3);
                                    optionalStringAttr5 = codecsWithoutType != null ? str3 + "," + codecsWithoutType : str3;
                                }
                                boolean zEquals = TextUtils.equals(parseOptionalStringAttr(next, REGEX_CACHED, map4, matcherCache), "true");
                                String optionalStringAttr7 = parseOptionalStringAttr(next, REGEX_MIME, map4, matcherCache);
                                String optionalStringAttr8 = parseOptionalStringAttr(next, REGEX_DOC_ID, map4, matcherCache);
                                String optionalStringAttr9 = parseOptionalStringAttr(next, REGEX_DOC_FILENAME, map4, matcherCache);
                                String optionalStringAttr10 = parseOptionalStringAttr(next, REGEX_ACCOUNT, map4, matcherCache);
                                ArrayList arrayList24 = arrayList13;
                                optionalStringAttr2 = parseOptionalStringAttr(next, REGEX_RESOLUTION, map4, matcherCache);
                                if (optionalStringAttr2 == null) {
                                    str5 = optionalStringAttr10;
                                    String[] strArrSplit2 = Util.split(optionalStringAttr2, "x");
                                    i5 = Integer.parseInt(strArrSplit2[0]);
                                    i4 = Integer.parseInt(strArrSplit2[1]);
                                    if (i5 <= 0 || i4 <= 0) {
                                    }
                                    String optionalStringAttr11 = parseOptionalStringAttr(next, REGEX_FRAME_RATE, map4, matcherCache);
                                    float f = optionalStringAttr11 != null ? Float.parseFloat(optionalStringAttr11) : -1.0f;
                                    String optionalStringAttr12 = parseOptionalStringAttr(next, REGEX_PATHWAY_ID, map4, matcherCache);
                                    String optionalStringAttr13 = parseOptionalStringAttr(next, REGEX_VIDEO, map4, matcherCache);
                                    String optionalStringAttr14 = parseOptionalStringAttr(next, REGEX_AUDIO, map4, matcherCache);
                                    String optionalStringAttr15 = parseOptionalStringAttr(next, REGEX_SUBTITLES, map4, matcherCache);
                                    String optionalStringAttr16 = parseOptionalStringAttr(next, REGEX_CLOSED_CAPTIONS, map4, matcherCache);
                                    String optionalStringAttr17 = parseOptionalStringAttr(next, REGEX_STABLE_VARIANT_ID, map4, matcherCache);
                                    if (zStartsWith) {
                                        uriResolveToUri2 = UriUtil.resolveToUri(string, parseStringAttr(next, REGEX_URI, map4, matcherCache));
                                    } else {
                                        if (!lineIterator.hasNext()) {
                                            throw ParserException.createForMalformedManifest("#EXT-X-STREAM-INF must be followed by another line", null);
                                        }
                                        uriResolveToUri2 = UriUtil.resolveToUri(string, replaceVariableReferences(lineIterator.next(), map4, matcherCache));
                                    }
                                    Uri uri2 = uriResolveToUri2;
                                    HlsMultivariantPlaylist.Variant variant = new HlsMultivariantPlaylist.Variant(uri2, new Format.Builder().setId(arrayList24.size()).setContainerMimeType("application/x-mpegURL").setCodecs(optionalStringAttr5).setAverageBitrate(optionalIntAttr).setPeakBitrate(intAttr).setWidth(i5).setHeight(i4).setFrameRate(f).setRoleFlags(i2).setColorInfo(colorInfoForDolbyVision).setCached(zEquals).setSampleMimeType(optionalStringAttr7).setDocumentId(optionalStringAttr8).setDocumentFilename(optionalStringAttr9).setCurrentAccount(str5).build(), optionalStringAttr13, optionalStringAttr14, optionalStringAttr15, optionalStringAttr16, optionalStringAttr12, optionalStringAttr17);
                                    arrayList11 = arrayList24;
                                    arrayList11.add(variant);
                                    map2 = map;
                                    arrayList12 = (ArrayList) map2.get(uri2);
                                    if (arrayList12 == null) {
                                        arrayList12 = new ArrayList();
                                        map2.put(uri2, arrayList12);
                                    }
                                    arrayList12.add(new HlsTrackMetadataEntry.VariantInfo(optionalIntAttr, intAttr, optionalStringAttr13, optionalStringAttr14, optionalStringAttr15, optionalStringAttr16));
                                    z2 = z;
                                    z3 = z5;
                                } else {
                                    str5 = optionalStringAttr10;
                                }
                                i4 = -1;
                                i5 = -1;
                                String optionalStringAttr112 = parseOptionalStringAttr(next, REGEX_FRAME_RATE, map4, matcherCache);
                                if (optionalStringAttr112 != null) {
                                }
                                String optionalStringAttr122 = parseOptionalStringAttr(next, REGEX_PATHWAY_ID, map4, matcherCache);
                                String optionalStringAttr132 = parseOptionalStringAttr(next, REGEX_VIDEO, map4, matcherCache);
                                String optionalStringAttr142 = parseOptionalStringAttr(next, REGEX_AUDIO, map4, matcherCache);
                                String optionalStringAttr152 = parseOptionalStringAttr(next, REGEX_SUBTITLES, map4, matcherCache);
                                String optionalStringAttr162 = parseOptionalStringAttr(next, REGEX_CLOSED_CAPTIONS, map4, matcherCache);
                                String optionalStringAttr172 = parseOptionalStringAttr(next, REGEX_STABLE_VARIANT_ID, map4, matcherCache);
                                if (zStartsWith) {
                                }
                                Uri uri22 = uriResolveToUri2;
                                HlsMultivariantPlaylist.Variant variant2 = new HlsMultivariantPlaylist.Variant(uri22, new Format.Builder().setId(arrayList24.size()).setContainerMimeType("application/x-mpegURL").setCodecs(optionalStringAttr5).setAverageBitrate(optionalIntAttr).setPeakBitrate(intAttr).setWidth(i5).setHeight(i4).setFrameRate(f).setRoleFlags(i2).setColorInfo(colorInfoForDolbyVision).setCached(zEquals).setSampleMimeType(optionalStringAttr7).setDocumentId(optionalStringAttr8).setDocumentFilename(optionalStringAttr9).setCurrentAccount(str5).build(), optionalStringAttr132, optionalStringAttr142, optionalStringAttr152, optionalStringAttr162, optionalStringAttr122, optionalStringAttr172);
                                arrayList11 = arrayList24;
                                arrayList11.add(variant2);
                                map2 = map;
                                arrayList12 = (ArrayList) map2.get(uri22);
                                if (arrayList12 == null) {
                                }
                                arrayList12.add(new HlsTrackMetadataEntry.VariantInfo(optionalIntAttr, intAttr, optionalStringAttr132, optionalStringAttr142, optionalStringAttr152, optionalStringAttr162));
                                z2 = z;
                                z3 = z5;
                            } else {
                                map = map3;
                                arrayList10 = arrayList18;
                                str3 = str6;
                                i3 = 2;
                            }
                        } else {
                            map = map3;
                            arrayList10 = arrayList18;
                            i3 = 2;
                            str3 = null;
                        }
                        str4 = null;
                        codecsOfType = Util.getCodecsOfType(optionalStringAttr5, i3);
                        if (isDolbyVisionFormat(optionalStringAttr4, codecsOfType, str3, str4)) {
                        }
                        boolean zEquals2 = TextUtils.equals(parseOptionalStringAttr(next, REGEX_CACHED, map4, matcherCache), "true");
                        String optionalStringAttr72 = parseOptionalStringAttr(next, REGEX_MIME, map4, matcherCache);
                        String optionalStringAttr82 = parseOptionalStringAttr(next, REGEX_DOC_ID, map4, matcherCache);
                        String optionalStringAttr92 = parseOptionalStringAttr(next, REGEX_DOC_FILENAME, map4, matcherCache);
                        String optionalStringAttr102 = parseOptionalStringAttr(next, REGEX_ACCOUNT, map4, matcherCache);
                        ArrayList arrayList242 = arrayList13;
                        optionalStringAttr2 = parseOptionalStringAttr(next, REGEX_RESOLUTION, map4, matcherCache);
                        if (optionalStringAttr2 == null) {
                        }
                        i4 = -1;
                        i5 = -1;
                        String optionalStringAttr1122 = parseOptionalStringAttr(next, REGEX_FRAME_RATE, map4, matcherCache);
                        if (optionalStringAttr1122 != null) {
                        }
                        String optionalStringAttr1222 = parseOptionalStringAttr(next, REGEX_PATHWAY_ID, map4, matcherCache);
                        String optionalStringAttr1322 = parseOptionalStringAttr(next, REGEX_VIDEO, map4, matcherCache);
                        String optionalStringAttr1422 = parseOptionalStringAttr(next, REGEX_AUDIO, map4, matcherCache);
                        String optionalStringAttr1522 = parseOptionalStringAttr(next, REGEX_SUBTITLES, map4, matcherCache);
                        String optionalStringAttr1622 = parseOptionalStringAttr(next, REGEX_CLOSED_CAPTIONS, map4, matcherCache);
                        String optionalStringAttr1722 = parseOptionalStringAttr(next, REGEX_STABLE_VARIANT_ID, map4, matcherCache);
                        if (zStartsWith) {
                        }
                        Uri uri222 = uriResolveToUri2;
                        HlsMultivariantPlaylist.Variant variant22 = new HlsMultivariantPlaylist.Variant(uri222, new Format.Builder().setId(arrayList242.size()).setContainerMimeType("application/x-mpegURL").setCodecs(optionalStringAttr5).setAverageBitrate(optionalIntAttr).setPeakBitrate(intAttr).setWidth(i5).setHeight(i4).setFrameRate(f).setRoleFlags(i2).setColorInfo(colorInfoForDolbyVision).setCached(zEquals2).setSampleMimeType(optionalStringAttr72).setDocumentId(optionalStringAttr82).setDocumentFilename(optionalStringAttr92).setCurrentAccount(str5).build(), optionalStringAttr1322, optionalStringAttr1422, optionalStringAttr1522, optionalStringAttr1622, optionalStringAttr1222, optionalStringAttr1722);
                        arrayList11 = arrayList242;
                        arrayList11.add(variant22);
                        map2 = map;
                        arrayList12 = (ArrayList) map2.get(uri222);
                        if (arrayList12 == null) {
                        }
                        arrayList12.add(new HlsTrackMetadataEntry.VariantInfo(optionalIntAttr, intAttr, optionalStringAttr1322, optionalStringAttr1422, optionalStringAttr1522, optionalStringAttr1622));
                        z2 = z;
                        z3 = z5;
                    }
                    HashMap map5 = map2;
                    arrayList13 = arrayList11;
                    map3 = map5;
                    arrayList17 = arrayList21;
                    arrayList20 = arrayList22;
                    arrayList19 = arrayList6;
                    arrayList16 = arrayList7;
                    arrayList15 = arrayList8;
                    arrayList14 = arrayList9;
                    arrayList18 = arrayList10;
                }
                ArrayList arrayList25 = arrayList13;
                map2 = map3;
                arrayList11 = arrayList25;
                arrayList10 = arrayList18;
                arrayList9 = arrayList14;
                arrayList8 = arrayList15;
                arrayList7 = arrayList16;
                arrayList6 = arrayList19;
                z2 = z4;
                HashMap map52 = map2;
                arrayList13 = arrayList11;
                map3 = map52;
                arrayList17 = arrayList21;
                arrayList20 = arrayList22;
                arrayList19 = arrayList6;
                arrayList16 = arrayList7;
                arrayList15 = arrayList8;
                arrayList14 = arrayList9;
                arrayList18 = arrayList10;
            } else {
                ArrayList arrayList26 = arrayList13;
                HashMap map6 = map3;
                ArrayList arrayList27 = arrayList18;
                ArrayList arrayList28 = arrayList20;
                ArrayList arrayList29 = arrayList14;
                ArrayList arrayList30 = arrayList15;
                ArrayList arrayList31 = arrayList16;
                boolean z6 = z3;
                ArrayList arrayList32 = arrayList19;
                ArrayList arrayList33 = new ArrayList();
                HashSet hashSet = new HashSet();
                for (int i6 = 0; i6 < arrayList26.size(); i6++) {
                    HlsMultivariantPlaylist.Variant variant3 = (HlsMultivariantPlaylist.Variant) arrayList26.get(i6);
                    if (hashSet.add(variant3.url)) {
                        Preconditions.checkState(variant3.format.metadata == null);
                        arrayList33.add(variant3.copyWithFormat(variant3.format.buildUpon().setMetadata(new Metadata(new HlsTrackMetadataEntry(null, null, (List) Preconditions.checkNotNull((ArrayList) map6.get(variant3.url))))).build()));
                    }
                }
                ArrayList arrayList34 = null;
                Format formatBuild = null;
                int i7 = 0;
                while (i7 < arrayList27.size()) {
                    ArrayList arrayList35 = arrayList27;
                    str = (String) arrayList35.get(i7);
                    stringAttr = parseStringAttr(str, REGEX_GROUP_ID, map4, matcherCache);
                    stringAttr2 = parseStringAttr(str, REGEX_NAME, map4, matcherCache);
                    optionalStringAttr = parseOptionalStringAttr(str, REGEX_STABLE_RENDITION_ID, map4, matcherCache);
                    Format.Builder builder = new Format.Builder();
                    StringBuilder sb = new StringBuilder();
                    sb.append(stringAttr);
                    arrayList = arrayList34;
                    sb.append(":");
                    sb.append(stringAttr2);
                    language = builder.setId(sb.toString()).setLabel(stringAttr2).setContainerMimeType("application/x-mpegURL").setSelectionFlags(parseSelectionFlags(str, matcherCache)).setRoleFlags(parseRoleFlags(str, map4, matcherCache)).setLanguage(parseOptionalStringAttr(str, REGEX_LANGUAGE, map4, matcherCache));
                    String optionalStringAttr18 = parseOptionalStringAttr(str, REGEX_URI, map4, matcherCache);
                    uriResolveToUri = optionalStringAttr18 == null ? null : UriUtil.resolveToUri(string, optionalStringAttr18);
                    String str7 = string;
                    ArrayList arrayList36 = arrayList33;
                    metadata = new Metadata(new HlsTrackMetadataEntry(stringAttr, stringAttr2, Collections.EMPTY_LIST));
                    String stringAttr4 = parseStringAttr(str, REGEX_TYPE, map4, matcherCache);
                    stringAttr4.getClass();
                    switch (stringAttr4) {
                        case "SUBTITLES":
                            arrayList2 = arrayList30;
                            arrayList3 = arrayList29;
                            HlsMultivariantPlaylist.Variant variantWithSubtitleGroup = getVariantWithSubtitleGroup(arrayList26, stringAttr);
                            if (variantWithSubtitleGroup != null) {
                                String codecsOfType2 = Util.getCodecsOfType(variantWithSubtitleGroup.format.codecs, 3);
                                language.setCodecs(codecsOfType2);
                                mediaMimeType = MimeTypes.getMediaMimeType(codecsOfType2);
                            } else {
                                mediaMimeType = null;
                            }
                            if (mediaMimeType == null) {
                                mediaMimeType = "text/vtt";
                            }
                            language.setSampleMimeType(mediaMimeType).setMetadata(metadata);
                            if (uriResolveToUri != null) {
                                HlsMultivariantPlaylist.Rendition rendition = new HlsMultivariantPlaylist.Rendition(uriResolveToUri, language.build(), stringAttr, stringAttr2, optionalStringAttr);
                                arrayList4 = arrayList31;
                                arrayList4.add(rendition);
                            } else {
                                arrayList4 = arrayList31;
                                Log.m164w("HlsPlaylistParser", "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping");
                            }
                            arrayList5 = arrayList;
                            break;
                        case "CLOSED-CAPTIONS":
                            arrayList2 = arrayList30;
                            arrayList3 = arrayList29;
                            String stringAttr5 = parseStringAttr(str, REGEX_INSTREAM_ID, map4, matcherCache);
                            if (stringAttr5.startsWith("CC")) {
                                i = Integer.parseInt(stringAttr5.substring(2));
                                str2 = "application/cea-608";
                            } else {
                                i = Integer.parseInt(stringAttr5.substring(7));
                                str2 = "application/cea-708";
                            }
                            arrayList5 = arrayList == null ? new ArrayList() : arrayList;
                            language.setSampleMimeType(str2).setAccessibilityChannel(i);
                            arrayList5.add(language.build());
                            arrayList4 = arrayList31;
                            break;
                        case "AUDIO":
                            arrayList3 = arrayList29;
                            HlsMultivariantPlaylist.Variant variantWithAudioGroup = getVariantWithAudioGroup(arrayList26, stringAttr);
                            if (variantWithAudioGroup != null) {
                                String codecsOfType3 = Util.getCodecsOfType(variantWithAudioGroup.format.codecs, 1);
                                language.setCodecs(codecsOfType3);
                                mediaMimeType2 = MimeTypes.getMediaMimeType(codecsOfType3);
                            } else {
                                mediaMimeType2 = null;
                            }
                            String optionalStringAttr19 = parseOptionalStringAttr(str, REGEX_CHANNELS, map4, matcherCache);
                            if (optionalStringAttr19 != null) {
                                language.setChannelCount(Integer.parseInt(Util.splitAtFirst(optionalStringAttr19, "/")[0]));
                                if ("audio/eac3".equals(mediaMimeType2) && optionalStringAttr19.endsWith("/JOC")) {
                                    language.setCodecs("ec+3");
                                    mediaMimeType2 = "audio/eac3-joc";
                                }
                            }
                            language.setSampleMimeType(mediaMimeType2);
                            if (uriResolveToUri == null) {
                                arrayList2 = arrayList30;
                                if (variantWithAudioGroup != null) {
                                    arrayList5 = arrayList;
                                    formatBuild = language.build();
                                    arrayList4 = arrayList31;
                                }
                                break;
                            } else {
                                language.setMetadata(metadata);
                                arrayList2 = arrayList30;
                                arrayList2.add(new HlsMultivariantPlaylist.Rendition(uriResolveToUri, language.build(), stringAttr, stringAttr2, optionalStringAttr));
                            }
                            arrayList4 = arrayList31;
                            arrayList5 = arrayList;
                            break;
                        case "VIDEO":
                            HlsMultivariantPlaylist.Variant variantWithVideoGroup = getVariantWithVideoGroup(arrayList26, stringAttr);
                            if (variantWithVideoGroup != null) {
                                Format format = variantWithVideoGroup.format;
                                String codecsOfType4 = Util.getCodecsOfType(format.codecs, 2);
                                language.setCodecs(codecsOfType4).setSampleMimeType(MimeTypes.getMediaMimeType(codecsOfType4)).setWidth(format.width).setHeight(format.height).setFrameRate(format.frameRate);
                            }
                            if (uriResolveToUri != null) {
                                language.setMetadata(metadata);
                                arrayList3 = arrayList29;
                                arrayList3.add(new HlsMultivariantPlaylist.Rendition(uriResolveToUri, language.build(), stringAttr, stringAttr2, optionalStringAttr));
                                arrayList4 = arrayList31;
                                arrayList2 = arrayList30;
                            }
                            arrayList5 = arrayList;
                        default:
                            arrayList4 = arrayList31;
                            arrayList2 = arrayList30;
                            arrayList3 = arrayList29;
                            arrayList5 = arrayList;
                            break;
                    }
                    i7++;
                    arrayList29 = arrayList3;
                    arrayList31 = arrayList4;
                    arrayList30 = arrayList2;
                    arrayList27 = arrayList35;
                    arrayList34 = arrayList5;
                    string = str7;
                    arrayList33 = arrayList36;
                }
                return new HlsMultivariantPlaylist(uri.toString(), arrayList28, arrayList33, arrayList29, arrayList30, arrayList31, arrayList21, formatBuild, z4 ? Collections.EMPTY_LIST : arrayList34, z6, map4, arrayList32);
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

    /* JADX WARN: Code restructure failed: missing block: B:252:0x0713, code lost:
    
        r35 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x0717, code lost:
    
        r35 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x0725, code lost:
    
        r35 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x0732, code lost:
    
        r35 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x08cd, code lost:
    
        r34 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x08d2, code lost:
    
        r34 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x08e2, code lost:
    
        r34 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x08f2, code lost:
    
        r34 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x0902, code lost:
    
        r34 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x0912, code lost:
    
        r34 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x0921, code lost:
    
        r34 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x092e, code lost:
    
        r34 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x093b, code lost:
    
        r34 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:378:0x0948, code lost:
    
        r34 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x0955, code lost:
    
        r34 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:386:0x0963, code lost:
    
        r34 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:390:0x0970, code lost:
    
        r34 = r5;
     */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0371 A[PHI: r66
  0x0371: PHI (r66v10 java.lang.String) = (r66v8 java.lang.String), (r66v1 java.lang.String) binds: [B:132:0x0385, B:124:0x0364] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0715 A[PHI: r35
  0x0715: PHI (r35v17 int) = (r35v13 int), (r35v14 int), (r35v15 int), (r35v18 int) binds: [B:263:0x073a, B:259:0x072d, B:255:0x071f, B:252:0x0713] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0854  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x0872  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x08cf A[PHI: r34
  0x08cf: PHI (r34v22 java.util.regex.Matcher) = 
  (r34v9 java.util.regex.Matcher)
  (r34v10 java.util.regex.Matcher)
  (r34v11 java.util.regex.Matcher)
  (r34v12 java.util.regex.Matcher)
  (r34v13 java.util.regex.Matcher)
  (r34v14 java.util.regex.Matcher)
  (r34v15 java.util.regex.Matcher)
  (r34v16 java.util.regex.Matcher)
  (r34v17 java.util.regex.Matcher)
  (r34v18 java.util.regex.Matcher)
  (r34v19 java.util.regex.Matcher)
  (r34v20 java.util.regex.Matcher)
  (r34v23 java.util.regex.Matcher)
 binds: [B:391:0x0978, B:387:0x096b, B:383:0x095d, B:379:0x0950, B:375:0x0943, B:371:0x0936, B:367:0x0929, B:363:0x091a, B:359:0x090a, B:355:0x08fa, B:351:0x08ea, B:347:0x08da, B:344:0x08cd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:487:0x0a1c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:509:0x0a51 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static HlsMediaPlaylist parseMediaPlaylist(HlsMultivariantPlaylist hlsMultivariantPlaylist, HlsMediaPlaylist hlsMediaPlaylist, LineIterator lineIterator, Uri uri, MatcherCache matcherCache) throws DeltaUpdateException, ParserException {
        ArrayList arrayList;
        String str;
        ArrayList arrayList2;
        TreeMap treeMap;
        LinkedHashMap linkedHashMap;
        int i;
        long j;
        boolean z;
        String str2;
        long j2;
        String str3;
        String str4;
        ArrayList arrayList3;
        ArrayList arrayList4;
        HashMap map;
        long j3;
        long j4;
        HashMap map2;
        ArrayList arrayList5;
        HashMap map3;
        String str5;
        String str6;
        long j5;
        ArrayList arrayList6;
        String str7;
        long j6;
        boolean z2;
        DrmInitData drmInitData;
        long jMsToUs;
        long jMsToUs2;
        HlsMediaPlaylist.Interstitial.Builder builder;
        String strGroup;
        Matcher matcher;
        ArrayList arrayList7;
        String strTrim;
        int i2;
        long j7;
        int i3;
        DrmInitData playlistProtectionSchemes;
        DrmInitData drmInitData2;
        String str8;
        String str9;
        DrmInitData playlistProtectionSchemes2;
        DrmInitData drmInitData3;
        HlsMediaPlaylist.Part part;
        int i4;
        HlsMultivariantPlaylist hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
        HlsMediaPlaylist hlsMediaPlaylist2 = hlsMediaPlaylist;
        String string = uri.toString();
        boolean z3 = hlsMultivariantPlaylist2.hasIndependentSegments;
        HlsMediaPlaylist.Segment segment = hlsMediaPlaylist2 != null ? hlsMediaPlaylist2.lastSeenInitSegment : null;
        HashMap map4 = new HashMap();
        HashMap map5 = new HashMap();
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        HlsMediaPlaylist.ServerControl serverControl = new HlsMediaPlaylist.ServerControl(-9223372036854775807L, false, -9223372036854775807L, -9223372036854775807L, false);
        TreeMap treeMap2 = new TreeMap();
        String str10 = _UrlKt.FRAGMENT_ENCODE_SET;
        LinkedHashMap linkedHashMap3 = linkedHashMap2;
        HlsMediaPlaylist.ServerControl serverControl2 = serverControl;
        long j8 = -1;
        boolean z4 = z3;
        String optionalStringAttr = _UrlKt.FRAGMENT_ENCODE_SET;
        HlsMediaPlaylist.Segment segment2 = segment;
        long j9 = -1;
        long doubleAttr = -9223372036854775807L;
        long j10 = -9223372036854775807L;
        long j11 = 0;
        long j12 = 0;
        long jMsToUs3 = 0;
        long j13 = 0;
        long j14 = 0;
        long longAttr = 0;
        long timeSecondsToUs = 0;
        long j15 = 0;
        HlsMediaPlaylist.Part part2 = null;
        boolean optionalBooleanAttribute = false;
        DrmInitData playlistProtectionSchemes3 = null;
        int i5 = 0;
        String stringAttr = null;
        String str11 = null;
        DrmInitData drmInitData4 = null;
        boolean z5 = false;
        int i6 = 0;
        boolean z6 = false;
        int i7 = 0;
        String encryptionScheme = null;
        boolean z7 = false;
        long intAttr = -9223372036854775807L;
        boolean z8 = false;
        int intAttr2 = 1;
        while (lineIterator.hasNext()) {
            String next = lineIterator.next();
            if (next.startsWith("#EXT")) {
                arrayList11.add(next);
            }
            if (next.startsWith("#EXT-X-PLAYLIST-TYPE")) {
                String stringAttr2 = parseStringAttr(next, REGEX_PLAYLIST_TYPE, map4, matcherCache);
                if ("VOD".equals(stringAttr2)) {
                    i6 = 1;
                } else if ("EVENT".equals(stringAttr2)) {
                    i6 = 2;
                }
            } else if (next.equals("#EXT-X-I-FRAMES-ONLY")) {
                z7 = true;
            } else {
                if (next.startsWith("#EXT-X-START")) {
                    arrayList = arrayList11;
                    long doubleAttr2 = (long) (parseDoubleAttr(next, REGEX_TIME_OFFSET, matcherCache) * 1000000.0d);
                    optionalBooleanAttribute = parseOptionalBooleanAttribute(next, REGEX_PRECISE, false, matcherCache);
                    j10 = doubleAttr2;
                } else {
                    arrayList = arrayList11;
                    if (next.startsWith("#EXT-X-SERVER-CONTROL")) {
                        serverControl2 = parseServerControl(next, matcherCache);
                    } else if (next.startsWith("#EXT-X-PART-INF")) {
                        doubleAttr = (long) (parseDoubleAttr(next, REGEX_PART_TARGET_DURATION, matcherCache) * 1000000.0d);
                    } else if (next.startsWith("#EXT-X-MAP")) {
                        String stringAttr3 = parseStringAttr(next, REGEX_URI, map4, matcherCache);
                        String optionalStringAttr2 = parseOptionalStringAttr(next, REGEX_ATTR_BYTERANGE, map4, matcherCache);
                        if (optionalStringAttr2 != null) {
                            String[] strArrSplit = Util.split(optionalStringAttr2, "@");
                            j9 = Long.parseLong(strArrSplit[0]);
                            if (strArrSplit.length > 1) {
                                j13 = Long.parseLong(strArrSplit[1]);
                            }
                        }
                        long j16 = j9;
                        long j17 = j16 == j8 ? 0L : j13;
                        if (stringAttr != null && str11 == null) {
                            throw ParserException.createForMalformedManifest("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.", null);
                        }
                        HlsMediaPlaylist.Segment segment3 = new HlsMediaPlaylist.Segment(stringAttr3, j17, j16, stringAttr, str11);
                        if (j16 != j8) {
                            j17 += j16;
                        }
                        j13 = j17;
                        j9 = j8;
                        segment2 = segment3;
                    } else {
                        HlsMediaPlaylist.Part part3 = part2;
                        boolean z9 = optionalBooleanAttribute;
                        String str12 = stringAttr;
                        String str13 = str11;
                        if (next.startsWith("#EXT-X-TARGETDURATION")) {
                            intAttr = 1000000 * ((long) parseIntAttr(next, REGEX_TARGET_DURATION, matcherCache));
                        } else if (next.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                            longAttr = parseLongAttr(next, REGEX_MEDIA_SEQUENCE, matcherCache);
                            str11 = str13;
                            stringAttr = str12;
                            j11 = longAttr;
                            arrayList11 = arrayList;
                            optionalBooleanAttribute = z9;
                            part2 = part3;
                        } else if (next.startsWith("#EXT-X-VERSION")) {
                            intAttr2 = parseIntAttr(next, REGEX_VERSION, matcherCache);
                        } else {
                            if (next.startsWith("#EXT-X-DEFINE")) {
                                String optionalStringAttr3 = parseOptionalStringAttr(next, REGEX_NAME, map4, matcherCache);
                                String optionalStringAttr4 = parseOptionalStringAttr(next, REGEX_QUERY_PARAM, map4, matcherCache);
                                if (optionalStringAttr3 != null) {
                                    verifyVariableNameNotContainedOrThrow(optionalStringAttr3, map4);
                                    map4.put(optionalStringAttr3, parseStringAttr(next, REGEX_VALUE, map4, matcherCache));
                                } else if (optionalStringAttr4 != null) {
                                    verifyVariableNameNotContainedOrThrow(optionalStringAttr4, map4);
                                    String queryParameter = uri.getQueryParameter(optionalStringAttr4);
                                    if (queryParameter == null) {
                                        throw ParserException.createForMalformedManifest("QUERYPARAM \"" + optionalStringAttr4 + "\" not found in playlist URI", null);
                                    }
                                    map4.put(optionalStringAttr4, queryParameter);
                                } else {
                                    String stringAttr4 = parseStringAttr(next, REGEX_IMPORT, map4, matcherCache);
                                    verifyVariableNameNotContainedOrThrow(stringAttr4, map4);
                                    String str14 = hlsMultivariantPlaylist2.variableDefinitions.get(stringAttr4);
                                    if (str14 != null) {
                                        map4.put(stringAttr4, str14);
                                    }
                                }
                                str = str10;
                                arrayList2 = arrayList8;
                                treeMap = treeMap2;
                                linkedHashMap = linkedHashMap3;
                                i = i5;
                                j = j9;
                                z = z5;
                                str2 = encryptionScheme;
                                j2 = timeSecondsToUs;
                                str3 = optionalStringAttr;
                            } else if (next.startsWith("#EXTINF")) {
                                timeSecondsToUs = parseTimeSecondsToUs(next, REGEX_MEDIA_DURATION, matcherCache);
                                optionalStringAttr = parseOptionalStringAttr(next, REGEX_MEDIA_TITLE, str10, map4, matcherCache);
                                hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                            } else {
                                if (next.startsWith("#EXT-X-SKIP")) {
                                    int intAttr3 = parseIntAttr(next, REGEX_SKIPPED_SEGMENTS, matcherCache);
                                    Preconditions.checkState(hlsMediaPlaylist2 != null && arrayList8.isEmpty());
                                    int i8 = (int) (j11 - ((HlsMediaPlaylist) Util.castNonNull(hlsMediaPlaylist2)).mediaSequence);
                                    int i9 = intAttr3 + i8;
                                    if (i8 < 0 || i9 > hlsMediaPlaylist2.segments.size()) {
                                        throw new DeltaUpdateException();
                                    }
                                    str = str10;
                                    str11 = str13;
                                    stringAttr = str12;
                                    long j18 = j14;
                                    while (i8 < i9) {
                                        HlsMediaPlaylist.Segment segmentCopyWith = hlsMediaPlaylist2.segments.get(i8);
                                        int i10 = i8;
                                        if (j11 != hlsMediaPlaylist2.mediaSequence) {
                                            segmentCopyWith = segmentCopyWith.copyWith(j18, (hlsMediaPlaylist2.discontinuitySequence - i7) + segmentCopyWith.relativeDiscontinuitySequence);
                                        }
                                        arrayList8.add(segmentCopyWith);
                                        long j19 = j18 + segmentCopyWith.durationUs;
                                        long j20 = segmentCopyWith.byteRangeLength;
                                        if (j20 != j8) {
                                            j4 = j19;
                                            j13 = segmentCopyWith.byteRangeOffset + j20;
                                        } else {
                                            j4 = j19;
                                        }
                                        int i11 = segmentCopyWith.relativeDiscontinuitySequence;
                                        HlsMediaPlaylist.Segment segment4 = segmentCopyWith.initializationSegment;
                                        DrmInitData drmInitData5 = segmentCopyWith.drmInitData;
                                        String str15 = segmentCopyWith.fullSegmentEncryptionKeyUri;
                                        int i12 = i9;
                                        String str16 = segmentCopyWith.encryptionIV;
                                        if (str16 == null || !str16.equals(Long.toHexString(longAttr))) {
                                            str11 = segmentCopyWith.encryptionIV;
                                        }
                                        longAttr++;
                                        drmInitData4 = drmInitData5;
                                        stringAttr = str15;
                                        j12 = j4;
                                        i8 = i10 + 1;
                                        segment2 = segment4;
                                        j18 = j12;
                                        i9 = i12;
                                        i5 = i11;
                                    }
                                    hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                    j14 = j18;
                                } else {
                                    str = str10;
                                    if (next.startsWith("#EXT-X-KEY")) {
                                        String stringAttr5 = parseStringAttr(next, REGEX_METHOD, map4, matcherCache);
                                        String optionalStringAttr5 = parseOptionalStringAttr(next, REGEX_KEYFORMAT, "identity", map4, matcherCache);
                                        if ("NONE".equals(stringAttr5)) {
                                            treeMap2.clear();
                                            stringAttr = null;
                                            str11 = null;
                                            drmInitData4 = null;
                                        } else {
                                            String optionalStringAttr6 = parseOptionalStringAttr(next, REGEX_IV, map4, matcherCache);
                                            if ("identity".equals(optionalStringAttr5)) {
                                                if ("AES-128".equals(stringAttr5)) {
                                                    stringAttr = parseStringAttr(next, REGEX_URI, map4, matcherCache);
                                                    str11 = optionalStringAttr6;
                                                } else {
                                                    str11 = optionalStringAttr6;
                                                    stringAttr = null;
                                                }
                                            } else {
                                                String str17 = encryptionScheme;
                                                encryptionScheme = str17 == null ? parseEncryptionScheme(stringAttr5) : str17;
                                                DrmInitData.SchemeData drmSchemeData = parseDrmSchemeData(next, optionalStringAttr5, map4, matcherCache);
                                                if (drmSchemeData != null) {
                                                    treeMap2.put(optionalStringAttr5, drmSchemeData);
                                                    str11 = optionalStringAttr6;
                                                    stringAttr = null;
                                                    drmInitData4 = null;
                                                }
                                            }
                                        }
                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                    } else {
                                        String str18 = encryptionScheme;
                                        if (next.startsWith("#EXT-X-BYTERANGE")) {
                                            String[] strArrSplit2 = Util.split(parseStringAttr(next, REGEX_BYTERANGE, map4, matcherCache), "@");
                                            j9 = Long.parseLong(strArrSplit2[0]);
                                            if (strArrSplit2.length > 1) {
                                                j13 = Long.parseLong(strArrSplit2[1]);
                                            }
                                        } else if (next.startsWith("#EXT-X-DISCONTINUITY-SEQUENCE")) {
                                            i7 = Integer.parseInt(next.substring(next.indexOf(58) + 1));
                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                            encryptionScheme = str18;
                                            str11 = str13;
                                            stringAttr = str12;
                                            arrayList11 = arrayList;
                                            optionalBooleanAttribute = z9;
                                            part2 = part3;
                                            str10 = str;
                                            z6 = true;
                                        } else if (next.equals("#EXT-X-DISCONTINUITY")) {
                                            i5++;
                                        } else if (next.startsWith("#EXT-X-PROGRAM-DATE-TIME")) {
                                            if (jMsToUs3 == 0) {
                                                jMsToUs3 = Util.msToUs(Util.parseXsDateTime(next.substring(next.indexOf(58) + 1))) - j14;
                                            } else {
                                                str2 = str18;
                                                arrayList2 = arrayList8;
                                                treeMap = treeMap2;
                                                linkedHashMap = linkedHashMap3;
                                                i = i5;
                                                j = j9;
                                                z = z5;
                                                j2 = timeSecondsToUs;
                                                str3 = optionalStringAttr;
                                            }
                                        } else if (next.equals("#EXT-X-GAP")) {
                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                            encryptionScheme = str18;
                                            str11 = str13;
                                            stringAttr = str12;
                                            arrayList11 = arrayList;
                                            optionalBooleanAttribute = z9;
                                            part2 = part3;
                                            str10 = str;
                                            z5 = true;
                                        } else if (next.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                            encryptionScheme = str18;
                                            str11 = str13;
                                            stringAttr = str12;
                                            arrayList11 = arrayList;
                                            optionalBooleanAttribute = z9;
                                            part2 = part3;
                                            str10 = str;
                                            z4 = true;
                                        } else if (next.equals("#EXT-X-ENDLIST")) {
                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                            encryptionScheme = str18;
                                            str11 = str13;
                                            stringAttr = str12;
                                            arrayList11 = arrayList;
                                            optionalBooleanAttribute = z9;
                                            part2 = part3;
                                            str10 = str;
                                            z8 = true;
                                        } else {
                                            if (next.startsWith("#EXT-X-RENDITION-REPORT")) {
                                                map2 = map5;
                                                arrayList5 = arrayList8;
                                                arrayList10.add(new HlsMediaPlaylist.RenditionReport(Uri.parse(UriUtil.resolve(string, parseStringAttr(next, REGEX_URI, map4, matcherCache))), parseOptionalLongAttr(next, REGEX_LAST_MSN, j8, matcherCache), parseOptionalIntAttr(next, REGEX_LAST_PART, -1, matcherCache)));
                                            } else {
                                                map2 = map5;
                                                arrayList5 = arrayList8;
                                                if (next.startsWith("#EXT-X-PRELOAD-HINT")) {
                                                    if (part3 == null && "PART".equals(parseStringAttr(next, REGEX_PRELOAD_HINT_TYPE, map4, matcherCache))) {
                                                        String stringAttr6 = parseStringAttr(next, REGEX_URI, map4, matcherCache);
                                                        long optionalLongAttr = parseOptionalLongAttr(next, REGEX_BYTERANGE_START, -1L, matcherCache);
                                                        long optionalLongAttr2 = parseOptionalLongAttr(next, REGEX_BYTERANGE_LENGTH, -1L, matcherCache);
                                                        long j21 = longAttr;
                                                        String segmentEncryptionIV = getSegmentEncryptionIV(j21, str12, str13);
                                                        if (drmInitData4 != null || treeMap2.isEmpty()) {
                                                            str8 = stringAttr6;
                                                            str9 = string;
                                                            playlistProtectionSchemes2 = playlistProtectionSchemes3;
                                                            drmInitData3 = drmInitData4;
                                                        } else {
                                                            str8 = stringAttr6;
                                                            str9 = string;
                                                            DrmInitData.SchemeData[] schemeDataArr = (DrmInitData.SchemeData[]) treeMap2.values().toArray(new DrmInitData.SchemeData[0]);
                                                            DrmInitData drmInitData6 = new DrmInitData(str18, schemeDataArr);
                                                            if (playlistProtectionSchemes3 == null) {
                                                                playlistProtectionSchemes2 = getPlaylistProtectionSchemes(str18, schemeDataArr);
                                                                drmInitData3 = drmInitData6;
                                                            } else {
                                                                drmInitData3 = drmInitData6;
                                                                playlistProtectionSchemes2 = playlistProtectionSchemes3;
                                                            }
                                                        }
                                                        if (optionalLongAttr == -1 || optionalLongAttr2 != -1) {
                                                            if (optionalLongAttr == -1) {
                                                                optionalLongAttr = 0;
                                                            }
                                                            long j22 = j12;
                                                            String str19 = str8;
                                                            int i13 = i5;
                                                            part = new HlsMediaPlaylist.Part(str19, segment2, 0L, i13, j22, drmInitData3, str12, segmentEncryptionIV, optionalLongAttr, optionalLongAttr2, false, false, true);
                                                            j12 = j22;
                                                            i4 = i13;
                                                        } else {
                                                            i4 = i5;
                                                            part = part3;
                                                        }
                                                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                        str11 = str13;
                                                        drmInitData4 = drmInitData3;
                                                        i5 = i4;
                                                        string = str9;
                                                        optionalBooleanAttribute = z9;
                                                        j8 = -1;
                                                        longAttr = j21;
                                                        stringAttr = str12;
                                                        arrayList8 = arrayList5;
                                                        arrayList11 = arrayList;
                                                        map5 = map2;
                                                        encryptionScheme = str18;
                                                        part2 = part;
                                                        str10 = str;
                                                        playlistProtectionSchemes3 = playlistProtectionSchemes2;
                                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                    }
                                                } else {
                                                    i = i5;
                                                    long j23 = longAttr;
                                                    str4 = string;
                                                    if (next.startsWith("#EXT-X-PART")) {
                                                        String segmentEncryptionIV2 = getSegmentEncryptionIV(j23, str12, str13);
                                                        String stringAttr7 = parseStringAttr(next, REGEX_URI, map4, matcherCache);
                                                        long doubleAttr3 = (long) (parseDoubleAttr(next, REGEX_ATTR_DURATION, matcherCache) * 1000000.0d);
                                                        boolean optionalBooleanAttribute2 = parseOptionalBooleanAttribute(next, REGEX_INDEPENDENT, false, matcherCache) | (z4 && arrayList9.isEmpty());
                                                        boolean optionalBooleanAttribute3 = parseOptionalBooleanAttribute(next, REGEX_GAP, false, matcherCache);
                                                        String optionalStringAttr7 = parseOptionalStringAttr(next, REGEX_ATTR_BYTERANGE, map4, matcherCache);
                                                        if (optionalStringAttr7 != null) {
                                                            String[] strArrSplit3 = Util.split(optionalStringAttr7, "@");
                                                            j7 = Long.parseLong(strArrSplit3[0]);
                                                            if (strArrSplit3.length > 1) {
                                                                j15 = Long.parseLong(strArrSplit3[1]);
                                                            }
                                                        } else {
                                                            j7 = -1;
                                                        }
                                                        int i14 = (j7 > (-1L) ? 1 : (j7 == (-1L) ? 0 : -1));
                                                        if (i14 == 0) {
                                                            j15 = 0;
                                                        }
                                                        if (drmInitData4 != null || treeMap2.isEmpty()) {
                                                            i3 = i14;
                                                            playlistProtectionSchemes = playlistProtectionSchemes3;
                                                            drmInitData2 = drmInitData4;
                                                        } else {
                                                            i3 = i14;
                                                            DrmInitData.SchemeData[] schemeDataArr2 = (DrmInitData.SchemeData[]) treeMap2.values().toArray(new DrmInitData.SchemeData[0]);
                                                            DrmInitData drmInitData7 = new DrmInitData(str18, schemeDataArr2);
                                                            if (playlistProtectionSchemes3 == null) {
                                                                playlistProtectionSchemes = getPlaylistProtectionSchemes(str18, schemeDataArr2);
                                                                drmInitData2 = drmInitData7;
                                                            } else {
                                                                drmInitData2 = drmInitData7;
                                                                playlistProtectionSchemes = playlistProtectionSchemes3;
                                                            }
                                                        }
                                                        long j24 = j12;
                                                        arrayList9.add(new HlsMediaPlaylist.Part(stringAttr7, segment2, doubleAttr3, i, j24, drmInitData2, str12, segmentEncryptionIV2, j15, j7, optionalBooleanAttribute3, optionalBooleanAttribute2, false));
                                                        j12 = j24 + doubleAttr3;
                                                        if (i3 != 0) {
                                                            j15 += j7;
                                                        }
                                                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                        playlistProtectionSchemes3 = playlistProtectionSchemes;
                                                        str11 = str13;
                                                        drmInitData4 = drmInitData2;
                                                        i5 = i;
                                                        string = str4;
                                                        optionalBooleanAttribute = z9;
                                                        j8 = -1;
                                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                        longAttr = j23;
                                                        stringAttr = str12;
                                                        arrayList8 = arrayList5;
                                                        arrayList11 = arrayList;
                                                        map5 = map2;
                                                        encryptionScheme = str18;
                                                        part2 = part3;
                                                        str10 = str;
                                                    } else if (next.startsWith("#EXT-X-DATERANGE")) {
                                                        if (parseOptionalStringAttr(next, REGEX_CLASS, str, map4, matcherCache).equals("com.apple.hls.interstitial")) {
                                                            String stringAttr8 = parseStringAttr(next, REGEX_ID, map4, matcherCache);
                                                            String optionalStringAttr8 = parseOptionalStringAttr(next, REGEX_ASSET_URI, map4, matcherCache);
                                                            Uri uri2 = optionalStringAttr8 != null ? Uri.parse(optionalStringAttr8) : null;
                                                            String optionalStringAttr9 = parseOptionalStringAttr(next, REGEX_ASSET_LIST_URI, map4, matcherCache);
                                                            Uri uri3 = optionalStringAttr9 != null ? Uri.parse(optionalStringAttr9) : null;
                                                            str = str;
                                                            String optionalStringAttr10 = parseOptionalStringAttr(next, REGEX_START_DATE, map4, matcherCache);
                                                            if (optionalStringAttr10 != null) {
                                                                arrayList6 = arrayList9;
                                                                arrayList4 = arrayList10;
                                                                jMsToUs = Util.msToUs(Util.parseXsDateTime(optionalStringAttr10));
                                                            } else {
                                                                arrayList6 = arrayList9;
                                                                arrayList4 = arrayList10;
                                                                jMsToUs = -9223372036854775807L;
                                                            }
                                                            String optionalStringAttr11 = parseOptionalStringAttr(next, REGEX_END_DATE, map4, matcherCache);
                                                            if (optionalStringAttr11 != null) {
                                                                map3 = map2;
                                                                str5 = str18;
                                                                jMsToUs2 = Util.msToUs(Util.parseXsDateTime(optionalStringAttr11));
                                                            } else {
                                                                map3 = map2;
                                                                str5 = str18;
                                                                jMsToUs2 = -9223372036854775807L;
                                                            }
                                                            ArrayList arrayList12 = new ArrayList();
                                                            treeMap = treeMap2;
                                                            String optionalStringAttr12 = parseOptionalStringAttr(next, REGEX_CUE, map4, matcherCache);
                                                            str6 = str13;
                                                            if (optionalStringAttr12 != null) {
                                                                String[] strArrSplit4 = Util.split(optionalStringAttr12, ",");
                                                                j5 = j23;
                                                                int length = strArrSplit4.length;
                                                                int i15 = 0;
                                                                while (i15 < length) {
                                                                    int i16 = length;
                                                                    strTrim = strArrSplit4[i15].trim();
                                                                    strTrim.getClass();
                                                                    switch (strTrim) {
                                                                        case "PRE":
                                                                        case "ONCE":
                                                                        case "POST":
                                                                            arrayList12.add(strTrim);
                                                                            break;
                                                                    }
                                                                    i15 = i2 + 1;
                                                                    length = i16;
                                                                }
                                                            } else {
                                                                j5 = j23;
                                                            }
                                                            long j25 = jMsToUs2;
                                                            double optionalDoubleAttr = parseOptionalDoubleAttr(next, REGEX_ATTR_DURATION_PREFIXED, -1.0d, matcherCache);
                                                            long j26 = optionalDoubleAttr >= 0.0d ? (long) (optionalDoubleAttr * 1000000.0d) : -9223372036854775807L;
                                                            double optionalDoubleAttr2 = parseOptionalDoubleAttr(next, REGEX_PLANNED_DURATION, -1.0d, matcherCache);
                                                            long j27 = optionalDoubleAttr2 >= 0.0d ? (long) (optionalDoubleAttr2 * 1000000.0d) : -9223372036854775807L;
                                                            str7 = str12;
                                                            boolean optionalBooleanAttribute4 = parseOptionalBooleanAttribute(next, REGEX_END_ON_NEXT, false, matcherCache);
                                                            long j28 = j27;
                                                            double optionalDoubleAttr3 = parseOptionalDoubleAttr(next, REGEX_RESUME_OFFSET, Double.MIN_VALUE, matcherCache);
                                                            long j29 = optionalDoubleAttr3 != Double.MIN_VALUE ? (long) (optionalDoubleAttr3 * 1000000.0d) : -9223372036854775807L;
                                                            double optionalDoubleAttr4 = parseOptionalDoubleAttr(next, REGEX_PLAYOUT_LIMIT, -1.0d, matcherCache);
                                                            long j30 = optionalDoubleAttr4 >= 0.0d ? (long) (optionalDoubleAttr4 * 1000000.0d) : -9223372036854775807L;
                                                            ArrayList arrayList13 = new ArrayList();
                                                            long j31 = j30;
                                                            String optionalStringAttr13 = parseOptionalStringAttr(next, REGEX_SNAP, map4, matcherCache);
                                                            if (optionalStringAttr13 != null) {
                                                                String[] strArrSplit5 = Util.split(optionalStringAttr13, ",");
                                                                int length2 = strArrSplit5.length;
                                                                int i17 = 0;
                                                                while (i17 < length2) {
                                                                    int i18 = i17;
                                                                    String strTrim2 = strArrSplit5[i17].trim();
                                                                    strTrim2.getClass();
                                                                    int i19 = length2;
                                                                    if (strTrim2.equals("IN") || strTrim2.equals("OUT")) {
                                                                        arrayList13.add(strTrim2);
                                                                    }
                                                                    i17 = i18 + 1;
                                                                    length2 = i19;
                                                                }
                                                            }
                                                            ArrayList arrayList14 = new ArrayList();
                                                            String optionalStringAttr14 = parseOptionalStringAttr(next, REGEX_RESTRICT, map4, matcherCache);
                                                            if (optionalStringAttr14 != null) {
                                                                String[] strArrSplit6 = Util.split(optionalStringAttr14, ",");
                                                                int length3 = strArrSplit6.length;
                                                                int i20 = 0;
                                                                while (i20 < length3) {
                                                                    int i21 = i20;
                                                                    String strTrim3 = strArrSplit6[i20].trim();
                                                                    strTrim3.getClass();
                                                                    int i22 = length3;
                                                                    if (strTrim3.equals("JUMP") || strTrim3.equals("SKIP")) {
                                                                        arrayList14.add(strTrim3);
                                                                    }
                                                                    i20 = i21 + 1;
                                                                    length3 = i22;
                                                                }
                                                            }
                                                            Boolean boolValueOf = parseOptionalStringAttr(next, REGEX_CONTENT_MAY_VARY, map4, matcherCache) != null ? Boolean.valueOf(!r5.equals("NO")) : null;
                                                            String optionalStringAttr15 = parseOptionalStringAttr(next, REGEX_TIMELINE_OCCUPIES, map4, matcherCache);
                                                            Boolean bool = boolValueOf;
                                                            if (optionalStringAttr15 != null) {
                                                                String str20 = "RANGE";
                                                                if (!optionalStringAttr15.equals("RANGE")) {
                                                                    str20 = "POINT";
                                                                    if (!optionalStringAttr15.equals("POINT")) {
                                                                        str20 = null;
                                                                    }
                                                                }
                                                                String optionalStringAttr16 = parseOptionalStringAttr(next, REGEX_TIMELINE_STYLE, map4, matcherCache);
                                                                String str21 = str20;
                                                                if (optionalStringAttr16 != null) {
                                                                    String str22 = "PRIMARY";
                                                                    if (!optionalStringAttr16.equals("PRIMARY")) {
                                                                        str22 = "HIGHLIGHT";
                                                                        if (!optionalStringAttr16.equals("HIGHLIGHT")) {
                                                                            str22 = null;
                                                                        }
                                                                    }
                                                                    String str23 = str22;
                                                                    double optionalDoubleAttr5 = parseOptionalDoubleAttr(next, REGEX_SKIP_CONTROL_OFFSET, -1.0d, matcherCache);
                                                                    long j32 = optionalDoubleAttr5 >= 0.0d ? (long) (optionalDoubleAttr5 * 1000000.0d) : -9223372036854775807L;
                                                                    double optionalDoubleAttr6 = parseOptionalDoubleAttr(next, REGEX_SKIP_CONTROL_DURATION, -1.0d, matcherCache);
                                                                    long j33 = optionalDoubleAttr6 >= 0.0d ? (long) (optionalDoubleAttr6 * 1000000.0d) : -9223372036854775807L;
                                                                    String optionalStringAttr17 = parseOptionalStringAttr(next, REGEX_SKIP_CONTROL_LABEL_ID, map4, matcherCache);
                                                                    ArrayList arrayList15 = new ArrayList();
                                                                    long j34 = j33;
                                                                    String strSubstring = next.substring(17);
                                                                    Matcher matcherObtainMatcher = matcherCache.obtainMatcher(REGEX_CLIENT_DEFINED_ATTRIBUTE_PREFIX, strSubstring);
                                                                    while (matcherObtainMatcher.find()) {
                                                                        strGroup = matcherObtainMatcher.group();
                                                                        strGroup.getClass();
                                                                        switch (strGroup) {
                                                                            case "X-SNAP=":
                                                                            case "X-CONTENT-MAY-VARY=":
                                                                            case "X-PLAYOUT-LIMIT=":
                                                                            case "X-TIMELINE-STYLE=":
                                                                            case "X-ASSET-LIST=":
                                                                            case "X-TIMELINE-OCCUPIES=":
                                                                            case "X-SKIP-CONTROL-DURATION=":
                                                                            case "X-SKIP-CONTROL-OFFSET=":
                                                                            case "X-RESTRICT=":
                                                                            case "X-RESUME-OFFSET=":
                                                                            case "X-ASSET-URI=":
                                                                            case "X-SKIP-CONTROL-LABEL-ID=":
                                                                                arrayList7 = arrayList13;
                                                                                break;
                                                                            default:
                                                                                arrayList7 = arrayList13;
                                                                                arrayList15.add(parseClientDefinedAttribute(strSubstring, strGroup.substring(0, strGroup.length() - 1), map4, matcherCache));
                                                                                break;
                                                                        }
                                                                        matcherObtainMatcher = matcher;
                                                                        arrayList13 = arrayList7;
                                                                    }
                                                                    ArrayList arrayList16 = arrayList13;
                                                                    linkedHashMap = linkedHashMap3;
                                                                    if (linkedHashMap.containsKey(stringAttr8)) {
                                                                        builder = (HlsMediaPlaylist.Interstitial.Builder) linkedHashMap.get(stringAttr8);
                                                                    } else {
                                                                        builder = new HlsMediaPlaylist.Interstitial.Builder(stringAttr8);
                                                                    }
                                                                    linkedHashMap.put(stringAttr8, builder.setAssetUri(uri2).setAssetListUri(uri3).setStartDateUnixUs(jMsToUs).setEndDateUnixUs(j25).setDurationUs(j26).setPlannedDurationUs(j28).setCue(arrayList12).setEndOnNext(optionalBooleanAttribute4).setResumeOffsetUs(j29).setPlayoutLimitUs(j31).setSnapTypes(arrayList16).setRestrictions(arrayList14).setClientDefinedAttributes(arrayList15).setContentMayVary(bool).setTimelineOccupies(str21).setTimelineStyle(str23).setSkipControlOffsetUs(j32).setSkipControlDurationUs(j34).setSkipControlLabelId(optionalStringAttr17));
                                                                    arrayList3 = arrayList6;
                                                                    map = map3;
                                                                    str2 = str5;
                                                                    j3 = j5;
                                                                    str12 = str7;
                                                                    j = j9;
                                                                    z = z5;
                                                                    arrayList2 = arrayList5;
                                                                    j2 = timeSecondsToUs;
                                                                    str3 = optionalStringAttr;
                                                                    str13 = str6;
                                                                    encryptionScheme = str2;
                                                                    linkedHashMap3 = linkedHashMap;
                                                                    str11 = str13;
                                                                    optionalStringAttr = str3;
                                                                    timeSecondsToUs = j2;
                                                                    i5 = i;
                                                                    z5 = z;
                                                                    arrayList10 = arrayList4;
                                                                    optionalBooleanAttribute = z9;
                                                                    part2 = part3;
                                                                    str10 = str;
                                                                    treeMap2 = treeMap;
                                                                    j8 = -1;
                                                                    hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                                    stringAttr = str12;
                                                                    j9 = j;
                                                                    arrayList11 = arrayList;
                                                                    ArrayList arrayList17 = arrayList2;
                                                                    hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                                    long j35 = j3;
                                                                    arrayList8 = arrayList17;
                                                                    map5 = map;
                                                                    arrayList9 = arrayList3;
                                                                    string = str4;
                                                                    longAttr = j35;
                                                                }
                                                            }
                                                        } else {
                                                            str = str;
                                                            map3 = map2;
                                                            str5 = str18;
                                                            str6 = str13;
                                                            j5 = j23;
                                                            arrayList6 = arrayList9;
                                                            arrayList4 = arrayList10;
                                                            str7 = str12;
                                                            treeMap = treeMap2;
                                                            linkedHashMap = linkedHashMap3;
                                                            if (next.startsWith("#")) {
                                                            }
                                                        }
                                                    } else {
                                                        map3 = map2;
                                                        str5 = str18;
                                                        str6 = str13;
                                                        j5 = j23;
                                                        arrayList6 = arrayList9;
                                                        arrayList4 = arrayList10;
                                                        str7 = str12;
                                                        treeMap = treeMap2;
                                                        linkedHashMap = linkedHashMap3;
                                                        if (next.startsWith("#")) {
                                                            String segmentEncryptionIV3 = getSegmentEncryptionIV(j5, str7, str6);
                                                            long j36 = j5 + 1;
                                                            String strReplaceVariableReferences = replaceVariableReferences(next, map4, matcherCache);
                                                            HlsMediaPlaylist.Segment segment5 = (HlsMediaPlaylist.Segment) map3.get(strReplaceVariableReferences);
                                                            if (j9 == -1) {
                                                                j6 = 0;
                                                            } else {
                                                                if (z7 && segment2 == null && segment5 == null) {
                                                                    segment5 = new HlsMediaPlaylist.Segment(strReplaceVariableReferences, 0L, j13, null, null);
                                                                    map3.put(strReplaceVariableReferences, segment5);
                                                                }
                                                                j6 = j13;
                                                            }
                                                            if (drmInitData4 != null || treeMap.isEmpty()) {
                                                                z2 = false;
                                                                drmInitData = drmInitData4;
                                                            } else {
                                                                z2 = false;
                                                                DrmInitData.SchemeData[] schemeDataArr3 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                                DrmInitData drmInitData8 = new DrmInitData(str5, schemeDataArr3);
                                                                if (playlistProtectionSchemes3 == null) {
                                                                    playlistProtectionSchemes3 = getPlaylistProtectionSchemes(str5, schemeDataArr3);
                                                                }
                                                                drmInitData = drmInitData8;
                                                            }
                                                            long j37 = j9;
                                                            long j38 = j14;
                                                            long j39 = timeSecondsToUs;
                                                            arrayList5.add(new HlsMediaPlaylist.Segment(strReplaceVariableReferences, segment2 != null ? segment2 : segment5, optionalStringAttr, j39, i, j38, drmInitData, str7, segmentEncryptionIV3, j6, j37, z5, arrayList6));
                                                            long j40 = j38 + j39;
                                                            ArrayList arrayList18 = new ArrayList();
                                                            if (j9 != -1) {
                                                                j6 += j37;
                                                            }
                                                            j13 = j6;
                                                            arrayList9 = arrayList18;
                                                            map5 = map3;
                                                            encryptionScheme = str5;
                                                            arrayList8 = arrayList5;
                                                            linkedHashMap3 = linkedHashMap;
                                                            str11 = str6;
                                                            z5 = z2;
                                                            j14 = j40;
                                                            i5 = i;
                                                            drmInitData4 = drmInitData;
                                                            arrayList10 = arrayList4;
                                                            timeSecondsToUs = 0;
                                                            optionalBooleanAttribute = z9;
                                                            str10 = str;
                                                            optionalStringAttr = str10;
                                                            j8 = -1;
                                                            j9 = -1;
                                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                            stringAttr = str7;
                                                            j12 = j14;
                                                            arrayList11 = arrayList;
                                                            treeMap2 = treeMap;
                                                            string = str4;
                                                            longAttr = j36;
                                                            part2 = part3;
                                                        } else {
                                                            arrayList3 = arrayList6;
                                                            map = map3;
                                                            str2 = str5;
                                                            j3 = j5;
                                                            str12 = str7;
                                                            j = j9;
                                                            z = z5;
                                                            arrayList2 = arrayList5;
                                                            j2 = timeSecondsToUs;
                                                            str3 = optionalStringAttr;
                                                            str13 = str6;
                                                            encryptionScheme = str2;
                                                            linkedHashMap3 = linkedHashMap;
                                                            str11 = str13;
                                                            optionalStringAttr = str3;
                                                            timeSecondsToUs = j2;
                                                            i5 = i;
                                                            z5 = z;
                                                            arrayList10 = arrayList4;
                                                            optionalBooleanAttribute = z9;
                                                            part2 = part3;
                                                            str10 = str;
                                                            treeMap2 = treeMap;
                                                            j8 = -1;
                                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                            stringAttr = str12;
                                                            j9 = j;
                                                            arrayList11 = arrayList;
                                                            ArrayList arrayList172 = arrayList2;
                                                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                            long j352 = j3;
                                                            arrayList8 = arrayList172;
                                                            map5 = map;
                                                            arrayList9 = arrayList3;
                                                            string = str4;
                                                            longAttr = j352;
                                                        }
                                                    }
                                                }
                                            }
                                            str2 = str18;
                                            treeMap = treeMap2;
                                            linkedHashMap = linkedHashMap3;
                                            i = i5;
                                            j = j9;
                                            z = z5;
                                            arrayList2 = arrayList5;
                                            j3 = longAttr;
                                            j2 = timeSecondsToUs;
                                            str3 = optionalStringAttr;
                                            str4 = string;
                                            arrayList3 = arrayList9;
                                            arrayList4 = arrayList10;
                                            map = map2;
                                            encryptionScheme = str2;
                                            linkedHashMap3 = linkedHashMap;
                                            str11 = str13;
                                            optionalStringAttr = str3;
                                            timeSecondsToUs = j2;
                                            i5 = i;
                                            z5 = z;
                                            arrayList10 = arrayList4;
                                            optionalBooleanAttribute = z9;
                                            part2 = part3;
                                            str10 = str;
                                            treeMap2 = treeMap;
                                            j8 = -1;
                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                            stringAttr = str12;
                                            j9 = j;
                                            arrayList11 = arrayList;
                                            ArrayList arrayList1722 = arrayList2;
                                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                                            long j3522 = j3;
                                            arrayList8 = arrayList1722;
                                            map5 = map;
                                            arrayList9 = arrayList3;
                                            string = str4;
                                            longAttr = j3522;
                                        }
                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                        encryptionScheme = str18;
                                        str11 = str13;
                                        stringAttr = str12;
                                    }
                                }
                                arrayList11 = arrayList;
                                optionalBooleanAttribute = z9;
                                part2 = part3;
                                str10 = str;
                            }
                            long j41 = longAttr;
                            str4 = string;
                            arrayList3 = arrayList9;
                            arrayList4 = arrayList10;
                            map = map5;
                            j3 = j41;
                            encryptionScheme = str2;
                            linkedHashMap3 = linkedHashMap;
                            str11 = str13;
                            optionalStringAttr = str3;
                            timeSecondsToUs = j2;
                            i5 = i;
                            z5 = z;
                            arrayList10 = arrayList4;
                            optionalBooleanAttribute = z9;
                            part2 = part3;
                            str10 = str;
                            treeMap2 = treeMap;
                            j8 = -1;
                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                            stringAttr = str12;
                            j9 = j;
                            arrayList11 = arrayList;
                            ArrayList arrayList17222 = arrayList2;
                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                            long j35222 = j3;
                            arrayList8 = arrayList17222;
                            map5 = map;
                            arrayList9 = arrayList3;
                            string = str4;
                            longAttr = j35222;
                        }
                        str11 = str13;
                        stringAttr = str12;
                        arrayList11 = arrayList;
                        optionalBooleanAttribute = z9;
                        part2 = part3;
                    }
                }
                arrayList11 = arrayList;
            }
        }
        HlsMediaPlaylist.Part part4 = part2;
        boolean z10 = optionalBooleanAttribute;
        ArrayList arrayList19 = arrayList8;
        ArrayList arrayList20 = arrayList9;
        ArrayList arrayList21 = arrayList10;
        ArrayList arrayList22 = arrayList11;
        LinkedHashMap linkedHashMap4 = linkedHashMap3;
        HashMap map6 = new HashMap();
        int i23 = 0;
        while (i23 < arrayList21.size()) {
            ArrayList arrayList23 = arrayList21;
            HlsMediaPlaylist.RenditionReport renditionReport = (HlsMediaPlaylist.RenditionReport) arrayList23.get(i23);
            long size = renditionReport.lastMediaSequence;
            if (size == -1) {
                size = (j11 + ((long) arrayList19.size())) - (arrayList20.isEmpty() ? 1L : 0L);
            }
            int size2 = renditionReport.lastPartIndex;
            if (size2 == -1 && doubleAttr != -9223372036854775807L) {
                size2 = (arrayList20.isEmpty() ? ((HlsMediaPlaylist.Segment) Iterables.getLast(arrayList19)).parts : arrayList20).size() - 1;
            }
            Uri uri4 = renditionReport.playlistUri;
            map6.put(uri4, new HlsMediaPlaylist.RenditionReport(uri4, size, size2));
            i23++;
            arrayList21 = arrayList23;
        }
        if (part4 != null) {
            arrayList20.add(part4);
        }
        ArrayList arrayList24 = new ArrayList();
        Iterator it = linkedHashMap4.values().iterator();
        while (it.hasNext()) {
            HlsMediaPlaylist.Interstitial interstitialBuild = ((HlsMediaPlaylist.Interstitial.Builder) it.next()).build();
            if (interstitialBuild != null) {
                arrayList24.add(interstitialBuild);
            }
        }
        long j42 = (jMsToUs3 == 0 && hlsMediaPlaylist != null && hlsMediaPlaylist.hasProgramDateTime) ? hlsMediaPlaylist.startTimeUs : jMsToUs3;
        return new HlsMediaPlaylist(i6, uri.toString(), arrayList22, j10, z10, j42, z6, i7, j11, intAttr2, intAttr, doubleAttr, z4, z8, j42 != 0, playlistProtectionSchemes3, arrayList19, arrayList20, serverControl2, map6, arrayList24, segment2);
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
    private static int parseSelectionFlags(String str, MatcherCache matcherCache) {
        boolean optionalBooleanAttribute = parseOptionalBooleanAttribute(str, REGEX_DEFAULT, false, matcherCache);
        ?? r0 = optionalBooleanAttribute;
        if (parseOptionalBooleanAttribute(str, REGEX_FORCED, false, matcherCache)) {
            r0 = (optionalBooleanAttribute ? 1 : 0) | 2;
        }
        return parseOptionalBooleanAttribute(str, REGEX_AUTOSELECT, false, matcherCache) ? r0 | 4 : r0;
    }

    private static int parseRoleFlags(String str, Map<String, String> map, MatcherCache matcherCache) {
        String optionalStringAttr = parseOptionalStringAttr(str, REGEX_CHARACTERISTICS, map, matcherCache);
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

    private static DrmInitData.SchemeData parseDrmSchemeData(String str, String str2, Map<String, String> map, MatcherCache matcherCache) throws ParserException {
        String optionalStringAttr = parseOptionalStringAttr(str, REGEX_KEYFORMATVERSIONS, "1", map, matcherCache);
        if ("urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed".equals(str2)) {
            String stringAttr = parseStringAttr(str, REGEX_URI, map, matcherCache);
            return new DrmInitData.SchemeData(AbstractC0644C.WIDEVINE_UUID, "video/mp4", Base64.decode(stringAttr.substring(stringAttr.indexOf(44)), 0));
        }
        if ("com.widevine".equals(str2)) {
            return new DrmInitData.SchemeData(AbstractC0644C.WIDEVINE_UUID, "hls", Util.getUtf8Bytes(str));
        }
        if (!"com.microsoft.playready".equals(str2) || !"1".equals(optionalStringAttr)) {
            return null;
        }
        String stringAttr2 = parseStringAttr(str, REGEX_URI, map, matcherCache);
        byte[] bArrDecode = Base64.decode(stringAttr2.substring(stringAttr2.indexOf(44)), 0);
        UUID uuid = AbstractC0644C.PLAYREADY_UUID;
        return new DrmInitData.SchemeData(uuid, "video/mp4", PsshAtomUtil.buildPsshAtom(uuid, bArrDecode));
    }

    private static HlsMediaPlaylist.ServerControl parseServerControl(String str, MatcherCache matcherCache) {
        double d;
        long j;
        double optionalDoubleAttr = parseOptionalDoubleAttr(str, REGEX_CAN_SKIP_UNTIL, -9.223372036854776E18d, matcherCache);
        long j2 = optionalDoubleAttr == -9.223372036854776E18d ? -9223372036854775807L : (long) (optionalDoubleAttr * 1000000.0d);
        boolean optionalBooleanAttribute = parseOptionalBooleanAttribute(str, REGEX_CAN_SKIP_DATE_RANGES, false, matcherCache);
        double optionalDoubleAttr2 = parseOptionalDoubleAttr(str, REGEX_HOLD_BACK, -9.223372036854776E18d, matcherCache);
        if (optionalDoubleAttr2 == -9.223372036854776E18d) {
            d = 1000000.0d;
            j = -9223372036854775807L;
        } else {
            d = 1000000.0d;
            j = (long) (optionalDoubleAttr2 * 1000000.0d);
        }
        double optionalDoubleAttr3 = parseOptionalDoubleAttr(str, REGEX_PART_HOLD_BACK, -9.223372036854776E18d, matcherCache);
        return new HlsMediaPlaylist.ServerControl(j2, optionalBooleanAttribute, j, optionalDoubleAttr3 != -9.223372036854776E18d ? (long) (optionalDoubleAttr3 * d) : -9223372036854775807L, parseOptionalBooleanAttribute(str, REGEX_CAN_BLOCK_RELOAD, false, matcherCache));
    }

    private static String parseEncryptionScheme(String str) {
        if ("SAMPLE-AES-CENC".equals(str) || "SAMPLE-AES-CTR".equals(str)) {
            return "cenc";
        }
        return "cbcs";
    }

    private static int parseIntAttr(String str, Pattern pattern, MatcherCache matcherCache) {
        return Integer.parseInt(parseStringAttr(str, pattern, Collections.EMPTY_MAP, matcherCache));
    }

    private static int parseOptionalIntAttr(String str, Pattern pattern, int i, MatcherCache matcherCache) {
        Matcher matcherObtainMatcher = matcherCache.obtainMatcher(pattern, str);
        return matcherObtainMatcher.find() ? Integer.parseInt((String) Preconditions.checkNotNull(matcherObtainMatcher.group(1))) : i;
    }

    private static long parseLongAttr(String str, Pattern pattern, MatcherCache matcherCache) {
        return Long.parseLong(parseStringAttr(str, pattern, Collections.EMPTY_MAP, matcherCache));
    }

    private static long parseOptionalLongAttr(String str, Pattern pattern, long j, MatcherCache matcherCache) {
        Matcher matcherObtainMatcher = matcherCache.obtainMatcher(pattern, str);
        return matcherObtainMatcher.find() ? Long.parseLong((String) Preconditions.checkNotNull(matcherObtainMatcher.group(1))) : j;
    }

    private static long parseTimeSecondsToUs(String str, Pattern pattern, MatcherCache matcherCache) {
        return new BigDecimal(parseStringAttr(str, pattern, Collections.EMPTY_MAP, matcherCache)).multiply(new BigDecimal(1000000L)).longValue();
    }

    private static double parseDoubleAttr(String str, Pattern pattern, MatcherCache matcherCache) {
        return Double.parseDouble(parseStringAttr(str, pattern, Collections.EMPTY_MAP, matcherCache));
    }

    private static String parseStringAttr(String str, Pattern pattern, Map<String, String> map, MatcherCache matcherCache) throws ParserException {
        String optionalStringAttr = parseOptionalStringAttr(str, pattern, map, matcherCache);
        if (optionalStringAttr != null) {
            return optionalStringAttr;
        }
        throw ParserException.createForMalformedManifest("Couldn't match " + pattern.pattern() + " in " + str, null);
    }

    private static String parseOptionalStringAttr(String str, Pattern pattern, Map<String, String> map, MatcherCache matcherCache) {
        return parseOptionalStringAttr(str, pattern, null, map, matcherCache);
    }

    private static String parseOptionalStringAttr(String str, Pattern pattern, String str2, Map<String, String> map, MatcherCache matcherCache) {
        Matcher matcherObtainMatcher = matcherCache.obtainMatcher(pattern, str);
        if (matcherObtainMatcher.find()) {
            str2 = (String) Preconditions.checkNotNull(matcherObtainMatcher.group(1));
        }
        return (map.isEmpty() || str2 == null) ? str2 : replaceVariableReferences(str2, map, matcherCache);
    }

    private static double parseOptionalDoubleAttr(String str, Pattern pattern, double d, MatcherCache matcherCache) {
        Matcher matcherObtainMatcher = matcherCache.obtainMatcher(pattern, str);
        return matcherObtainMatcher.find() ? Double.parseDouble((String) Preconditions.checkNotNull(matcherObtainMatcher.group(1))) : d;
    }

    private static HlsMediaPlaylist.ClientDefinedAttribute parseClientDefinedAttribute(String str, String str2, Map<String, String> map, MatcherCache matcherCache) {
        String str3 = str2 + "=";
        int iIndexOf = str.indexOf(str3) + str3.length();
        String strSubstring = str.substring(iIndexOf, (str.length() == iIndexOf + 1 ? 1 : 2) + iIndexOf);
        if (strSubstring.startsWith("\"")) {
            return new HlsMediaPlaylist.ClientDefinedAttribute(str2, parseStringAttr(str, Pattern.compile(str2 + "=\"((?:.|\f)+?)\""), map, matcherCache), 0);
        }
        if (strSubstring.equals("0x") || strSubstring.equals("0X")) {
            return new HlsMediaPlaylist.ClientDefinedAttribute(str2, parseStringAttr(str, Pattern.compile(str2 + "=(0[xX][A-F0-9]+)"), map, matcherCache), 1);
        }
        return new HlsMediaPlaylist.ClientDefinedAttribute(str2, parseDoubleAttr(str, Pattern.compile(str2 + "=([\\d\\.]+)\\b"), matcherCache));
    }

    private static String replaceVariableReferences(String str, Map<String, String> map, MatcherCache matcherCache) {
        Matcher matcherObtainMatcher = matcherCache.obtainMatcher(REGEX_VARIABLE_REFERENCE, str);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcherObtainMatcher.find()) {
            String strGroup = matcherObtainMatcher.group(1);
            if (map.containsKey(strGroup)) {
                matcherObtainMatcher.appendReplacement(stringBuffer, Matcher.quoteReplacement(map.get(strGroup)));
            }
        }
        matcherObtainMatcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    private static void verifyVariableNameNotContainedOrThrow(String str, Map<String, String> map) throws ParserException {
        if (map.containsKey(str)) {
            throw ParserException.createForMalformedManifest("duplicate variable name \"" + str + "\"", null);
        }
    }

    private static boolean parseOptionalBooleanAttribute(String str, Pattern pattern, boolean z, MatcherCache matcherCache) {
        Matcher matcherObtainMatcher = matcherCache.obtainMatcher(pattern, str);
        return matcherObtainMatcher.find() ? "YES".equals(matcherObtainMatcher.group(1)) : z;
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
                this.next = (String) Preconditions.checkNotNull(this.extraLines.poll());
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
            Utils$$ExternalSyntheticBUOutline0.m1121m();
            return null;
        }
    }

    public static final class MatcherCache extends LinkedHashMap<Pattern, Matcher> {
        private MatcherCache() {
            super(16, 0.75f, true);
        }

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<Pattern, Matcher> entry) {
            return size() > 32;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Matcher obtainMatcher(Pattern pattern, CharSequence charSequence) {
            Matcher matcher = get(pattern);
            if (matcher == null) {
                Matcher matcher2 = pattern.matcher(charSequence);
                put(pattern, matcher2);
                return matcher2;
            }
            matcher.reset(charSequence);
            return matcher;
        }
    }
}
