package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import androidx.media3.common.AbstractC0644C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UriUtil;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.hls.HlsTrackMetadataEntry;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.hls.playlist.HlsMultivariantPlaylist;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import androidx.media3.extractor.mp4.PsshAtomUtil;
import com.exteragram.messenger.plugins.PluginsConstants;
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
    /* JADX WARN: Failed to find 'out' block for switch in B:117:0x03ec. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:100:0x03be  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x027c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static HlsMultivariantPlaylist parseMultivariantPlaylist(LineIterator lineIterator, String str) throws ParserException {
        String str2;
        String stringAttr;
        String stringAttr2;
        ArrayList arrayList;
        Format.Builder language;
        Uri uriResolveToUri;
        Metadata metadata;
        ArrayList arrayList2;
        String mediaMimeType;
        ArrayList arrayList3;
        int i;
        String str3;
        HlsMultivariantPlaylist.Variant variant;
        String mediaMimeType2;
        ArrayList arrayList4;
        ArrayList arrayList5;
        ArrayList arrayList6;
        ArrayList arrayList7;
        ArrayList arrayList8;
        ArrayList arrayList9;
        int i2;
        String str4;
        String str5;
        String codecsOfType;
        String optionalStringAttr;
        HashMap map;
        int i3;
        int i4;
        Uri uriResolveToUri2;
        ArrayList arrayList10;
        HashMap map2;
        ArrayList arrayList11;
        int i5;
        String str6 = str;
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
            ArrayList arrayList20 = arrayList16;
            if (lineIterator.hasNext()) {
                String next = lineIterator.next();
                if (next.startsWith("#EXT")) {
                    arrayList19.add(next);
                }
                boolean zStartsWith = next.startsWith("#EXT-X-I-FRAME-STREAM-INF");
                if (next.startsWith("#EXT-X-DEFINE")) {
                    map4.put(parseStringAttr(next, REGEX_NAME, map4), parseStringAttr(next, REGEX_VALUE, map4));
                } else {
                    if (next.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                        ArrayList arrayList21 = arrayList12;
                        map2 = map3;
                        arrayList10 = arrayList21;
                        arrayList8 = arrayList17;
                        arrayList9 = arrayList13;
                        arrayList7 = arrayList14;
                        arrayList6 = arrayList15;
                        arrayList4 = arrayList19;
                        arrayList5 = arrayList18;
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
                        arrayList4 = arrayList19;
                        int intAttr = parseIntAttr(next, REGEX_BANDWIDTH);
                        arrayList5 = arrayList18;
                        int optionalIntAttr = parseOptionalIntAttr(next, REGEX_AVERAGE_BANDWIDTH, -1);
                        String optionalStringAttr2 = parseOptionalStringAttr(next, REGEX_VIDEO_RANGE, map4);
                        boolean z3 = z2;
                        String optionalStringAttr3 = parseOptionalStringAttr(next, REGEX_CODECS, map4);
                        arrayList6 = arrayList15;
                        String optionalStringAttr4 = parseOptionalStringAttr(next, REGEX_SUPPLEMENTAL_CODECS, map4);
                        arrayList7 = arrayList14;
                        if (optionalStringAttr4 != null) {
                            String[] strArrSplit = Util.split(Util.splitAtFirst(optionalStringAttr4, ",")[0], "/");
                            String str7 = strArrSplit[0];
                            if (strArrSplit.length > 1) {
                                str5 = strArrSplit[1];
                                arrayList8 = arrayList17;
                                arrayList9 = arrayList13;
                                str4 = str7;
                                i2 = 2;
                                codecsOfType = Util.getCodecsOfType(optionalStringAttr3, i2);
                                if (isDolbyVisionFormat(optionalStringAttr2, codecsOfType, str4, str5)) {
                                    if (str4 == null) {
                                        str4 = codecsOfType;
                                    }
                                    String codecsWithoutType = Util.getCodecsWithoutType(optionalStringAttr3, i2);
                                    optionalStringAttr3 = codecsWithoutType != null ? str4 + "," + codecsWithoutType : str4;
                                }
                                String optionalStringAttr5 = parseOptionalStringAttr(next, REGEX_MIME, map4);
                                boolean zEquals = TextUtils.equals(parseOptionalStringAttr(next, REGEX_CACHED, map4), "true");
                                String optionalStringAttr6 = parseOptionalStringAttr(next, REGEX_DOC_ID, map4);
                                String optionalStringAttr7 = parseOptionalStringAttr(next, REGEX_DOC_FILENAME, map4);
                                String optionalStringAttr8 = parseOptionalStringAttr(next, REGEX_ACCOUNT, map4);
                                optionalStringAttr = parseOptionalStringAttr(next, REGEX_RESOLUTION, map4);
                                if (optionalStringAttr == null) {
                                    map = map3;
                                    String[] strArrSplit2 = Util.split(optionalStringAttr, "x");
                                    int i7 = Integer.parseInt(strArrSplit2[0]);
                                    int i8 = Integer.parseInt(strArrSplit2[1]);
                                    if (i7 <= 0 || i8 <= 0) {
                                        i8 = -1;
                                        i5 = -1;
                                    } else {
                                        i5 = i7;
                                    }
                                    i4 = i8;
                                    i3 = i5;
                                } else {
                                    map = map3;
                                    i3 = -1;
                                    i4 = -1;
                                }
                                ArrayList arrayList22 = arrayList12;
                                String optionalStringAttr9 = parseOptionalStringAttr(next, REGEX_FRAME_RATE, map4);
                                float f = optionalStringAttr9 == null ? Float.parseFloat(optionalStringAttr9) : -1.0f;
                                String optionalStringAttr10 = parseOptionalStringAttr(next, REGEX_VIDEO, map4);
                                String optionalStringAttr11 = parseOptionalStringAttr(next, REGEX_AUDIO, map4);
                                String optionalStringAttr12 = parseOptionalStringAttr(next, REGEX_SUBTITLES, map4);
                                String optionalStringAttr13 = parseOptionalStringAttr(next, REGEX_CLOSED_CAPTIONS, map4);
                                if (!zStartsWith) {
                                    uriResolveToUri2 = UriUtil.resolveToUri(str6, parseStringAttr(next, REGEX_URI, map4));
                                } else {
                                    if (!lineIterator.hasNext()) {
                                        throw ParserException.createForMalformedManifest("#EXT-X-STREAM-INF must be followed by another line", null);
                                    }
                                    uriResolveToUri2 = UriUtil.resolveToUri(str6, replaceVariableReferences(lineIterator.next(), map4));
                                }
                                Uri uri = uriResolveToUri2;
                                HlsMultivariantPlaylist.Variant variant2 = new HlsMultivariantPlaylist.Variant(uri, new Format.Builder().setId(arrayList22.size()).setContainerMimeType("application/x-mpegURL").setCodecs(optionalStringAttr3).setSampleMimeType(optionalStringAttr5).setAverageBitrate(optionalIntAttr).setPeakBitrate(intAttr).setWidth(i3).setHeight(i4).setFrameRate(f).setRoleFlags(i6).setCached(zEquals).setDocumentId(optionalStringAttr6).setDocumentFilename(optionalStringAttr7).setCurrentAccount(optionalStringAttr8).build(), optionalStringAttr10, optionalStringAttr11, optionalStringAttr12, optionalStringAttr13);
                                arrayList10 = arrayList22;
                                arrayList10.add(variant2);
                                map2 = map;
                                arrayList11 = (ArrayList) map2.get(uri);
                                if (arrayList11 == null) {
                                    arrayList11 = new ArrayList();
                                    map2.put(uri, arrayList11);
                                }
                                arrayList11.add(new HlsTrackMetadataEntry.VariantInfo(optionalIntAttr, intAttr, optionalStringAttr10, optionalStringAttr11, optionalStringAttr12, optionalStringAttr13));
                                z = zContains;
                                z2 = z3;
                            } else {
                                arrayList8 = arrayList17;
                                arrayList9 = arrayList13;
                                str4 = str7;
                                i2 = 2;
                            }
                        } else {
                            arrayList8 = arrayList17;
                            arrayList9 = arrayList13;
                            i2 = 2;
                            str4 = null;
                        }
                        str5 = null;
                        codecsOfType = Util.getCodecsOfType(optionalStringAttr3, i2);
                        if (isDolbyVisionFormat(optionalStringAttr2, codecsOfType, str4, str5)) {
                        }
                        String optionalStringAttr52 = parseOptionalStringAttr(next, REGEX_MIME, map4);
                        boolean zEquals2 = TextUtils.equals(parseOptionalStringAttr(next, REGEX_CACHED, map4), "true");
                        String optionalStringAttr62 = parseOptionalStringAttr(next, REGEX_DOC_ID, map4);
                        String optionalStringAttr72 = parseOptionalStringAttr(next, REGEX_DOC_FILENAME, map4);
                        String optionalStringAttr82 = parseOptionalStringAttr(next, REGEX_ACCOUNT, map4);
                        optionalStringAttr = parseOptionalStringAttr(next, REGEX_RESOLUTION, map4);
                        if (optionalStringAttr == null) {
                        }
                        ArrayList arrayList222 = arrayList12;
                        String optionalStringAttr92 = parseOptionalStringAttr(next, REGEX_FRAME_RATE, map4);
                        if (optionalStringAttr92 == null) {
                        }
                        String optionalStringAttr102 = parseOptionalStringAttr(next, REGEX_VIDEO, map4);
                        String optionalStringAttr112 = parseOptionalStringAttr(next, REGEX_AUDIO, map4);
                        String optionalStringAttr122 = parseOptionalStringAttr(next, REGEX_SUBTITLES, map4);
                        String optionalStringAttr132 = parseOptionalStringAttr(next, REGEX_CLOSED_CAPTIONS, map4);
                        if (!zStartsWith) {
                        }
                        Uri uri2 = uriResolveToUri2;
                        HlsMultivariantPlaylist.Variant variant22 = new HlsMultivariantPlaylist.Variant(uri2, new Format.Builder().setId(arrayList222.size()).setContainerMimeType("application/x-mpegURL").setCodecs(optionalStringAttr3).setSampleMimeType(optionalStringAttr52).setAverageBitrate(optionalIntAttr).setPeakBitrate(intAttr).setWidth(i3).setHeight(i4).setFrameRate(f).setRoleFlags(i6).setCached(zEquals2).setDocumentId(optionalStringAttr62).setDocumentFilename(optionalStringAttr72).setCurrentAccount(optionalStringAttr82).build(), optionalStringAttr102, optionalStringAttr112, optionalStringAttr122, optionalStringAttr132);
                        arrayList10 = arrayList222;
                        arrayList10.add(variant22);
                        map2 = map;
                        arrayList11 = (ArrayList) map2.get(uri2);
                        if (arrayList11 == null) {
                        }
                        arrayList11.add(new HlsTrackMetadataEntry.VariantInfo(optionalIntAttr, intAttr, optionalStringAttr102, optionalStringAttr112, optionalStringAttr122, optionalStringAttr132));
                        z = zContains;
                        z2 = z3;
                    }
                    HashMap map5 = map2;
                    arrayList12 = arrayList10;
                    map3 = map5;
                    arrayList16 = arrayList20;
                    arrayList19 = arrayList4;
                    arrayList18 = arrayList5;
                    arrayList15 = arrayList6;
                    arrayList14 = arrayList7;
                    arrayList13 = arrayList9;
                    arrayList17 = arrayList8;
                }
                ArrayList arrayList23 = arrayList12;
                map2 = map3;
                arrayList10 = arrayList23;
                arrayList8 = arrayList17;
                arrayList9 = arrayList13;
                arrayList7 = arrayList14;
                arrayList6 = arrayList15;
                arrayList4 = arrayList19;
                arrayList5 = arrayList18;
                HashMap map52 = map2;
                arrayList12 = arrayList10;
                map3 = map52;
                arrayList16 = arrayList20;
                arrayList19 = arrayList4;
                arrayList18 = arrayList5;
                arrayList15 = arrayList6;
                arrayList14 = arrayList7;
                arrayList13 = arrayList9;
                arrayList17 = arrayList8;
            } else {
                ArrayList arrayList24 = arrayList12;
                HashMap map6 = map3;
                ArrayList arrayList25 = arrayList17;
                ArrayList arrayList26 = arrayList13;
                ArrayList arrayList27 = arrayList14;
                ArrayList arrayList28 = arrayList15;
                ArrayList arrayList29 = arrayList19;
                ArrayList arrayList30 = arrayList18;
                boolean z4 = z2;
                ArrayList arrayList31 = new ArrayList();
                HashSet hashSet = new HashSet();
                for (int i9 = 0; i9 < arrayList24.size(); i9++) {
                    HlsMultivariantPlaylist.Variant variant3 = (HlsMultivariantPlaylist.Variant) arrayList24.get(i9);
                    if (hashSet.add(variant3.url)) {
                        Assertions.checkState(variant3.format.metadata == null);
                        arrayList31.add(variant3.copyWithFormat(variant3.format.buildUpon().setMetadata(new Metadata(new HlsTrackMetadataEntry(null, null, (List) Assertions.checkNotNull((ArrayList) map6.get(variant3.url))))).build()));
                    }
                }
                ArrayList arrayList32 = null;
                Format format = null;
                int i10 = 0;
                while (i10 < arrayList25.size()) {
                    ArrayList arrayList33 = arrayList25;
                    str2 = (String) arrayList33.get(i10);
                    stringAttr = parseStringAttr(str2, REGEX_GROUP_ID, map4);
                    stringAttr2 = parseStringAttr(str2, REGEX_NAME, map4);
                    Format.Builder builder = new Format.Builder();
                    StringBuilder sb = new StringBuilder();
                    sb.append(stringAttr);
                    arrayList = arrayList32;
                    sb.append(":");
                    sb.append(stringAttr2);
                    language = builder.setId(sb.toString()).setLabel(stringAttr2).setContainerMimeType("application/x-mpegURL").setSelectionFlags(parseSelectionFlags(str2)).setRoleFlags(parseRoleFlags(str2, map4)).setLanguage(parseOptionalStringAttr(str2, REGEX_LANGUAGE, map4));
                    String optionalStringAttr14 = parseOptionalStringAttr(str2, REGEX_URI, map4);
                    uriResolveToUri = optionalStringAttr14 == null ? null : UriUtil.resolveToUri(str6, optionalStringAttr14);
                    ArrayList arrayList34 = arrayList31;
                    metadata = new Metadata(new HlsTrackMetadataEntry(stringAttr, stringAttr2, Collections.EMPTY_LIST));
                    String stringAttr3 = parseStringAttr(str2, REGEX_TYPE, map4);
                    stringAttr3.getClass();
                    switch (stringAttr3) {
                        case "SUBTITLES":
                            arrayList2 = arrayList27;
                            HlsMultivariantPlaylist.Variant variantWithSubtitleGroup = getVariantWithSubtitleGroup(arrayList24, stringAttr);
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
                                arrayList3 = arrayList28;
                                arrayList3.add(new HlsMultivariantPlaylist.Rendition(uriResolveToUri, language.build(), stringAttr, stringAttr2));
                            } else {
                                arrayList3 = arrayList28;
                                Log.m163w("HlsPlaylistParser", "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping");
                            }
                            arrayList32 = arrayList;
                            break;
                        case "CLOSED-CAPTIONS":
                            arrayList2 = arrayList27;
                            String stringAttr4 = parseStringAttr(str2, REGEX_INSTREAM_ID, map4);
                            if (stringAttr4.startsWith("CC")) {
                                i = Integer.parseInt(stringAttr4.substring(2));
                                str3 = "application/cea-608";
                            } else {
                                i = Integer.parseInt(stringAttr4.substring(7));
                                str3 = "application/cea-708";
                            }
                            ArrayList arrayList35 = arrayList == null ? new ArrayList() : arrayList;
                            language.setSampleMimeType(str3).setAccessibilityChannel(i);
                            arrayList35.add(language.build());
                            arrayList32 = arrayList35;
                            arrayList3 = arrayList28;
                            break;
                        case "AUDIO":
                            ArrayList arrayList36 = arrayList26;
                            HlsMultivariantPlaylist.Variant variantWithAudioGroup = getVariantWithAudioGroup(arrayList24, stringAttr);
                            if (variantWithAudioGroup != null) {
                                arrayList26 = arrayList36;
                                variant = variantWithAudioGroup;
                                String codecsOfType3 = Util.getCodecsOfType(variantWithAudioGroup.format.codecs, 1);
                                language.setCodecs(codecsOfType3);
                                mediaMimeType2 = MimeTypes.getMediaMimeType(codecsOfType3);
                            } else {
                                variant = variantWithAudioGroup;
                                arrayList26 = arrayList36;
                                mediaMimeType2 = null;
                            }
                            String optionalStringAttr15 = parseOptionalStringAttr(str2, REGEX_CHANNELS, map4);
                            if (optionalStringAttr15 != null) {
                                language.setChannelCount(Integer.parseInt(Util.splitAtFirst(optionalStringAttr15, "/")[0]));
                                if ("audio/eac3".equals(mediaMimeType2) && optionalStringAttr15.endsWith("/JOC")) {
                                    language.setCodecs("ec+3");
                                    mediaMimeType2 = "audio/eac3-joc";
                                }
                            }
                            language.setSampleMimeType(mediaMimeType2);
                            if (uriResolveToUri == null) {
                                arrayList2 = arrayList27;
                                if (variant != null) {
                                    Format formatBuild = language.build();
                                    arrayList32 = arrayList;
                                    format = formatBuild;
                                    arrayList3 = arrayList28;
                                }
                                break;
                            } else {
                                language.setMetadata(metadata);
                                arrayList2 = arrayList27;
                                arrayList2.add(new HlsMultivariantPlaylist.Rendition(uriResolveToUri, language.build(), stringAttr, stringAttr2));
                            }
                            arrayList3 = arrayList28;
                            arrayList32 = arrayList;
                            break;
                        case "VIDEO":
                            HlsMultivariantPlaylist.Variant variantWithVideoGroup = getVariantWithVideoGroup(arrayList24, stringAttr);
                            if (variantWithVideoGroup != null) {
                                Format format2 = variantWithVideoGroup.format;
                                String codecsOfType4 = Util.getCodecsOfType(format2.codecs, 2);
                                language.setCodecs(codecsOfType4).setSampleMimeType(MimeTypes.getMediaMimeType(codecsOfType4)).setWidth(format2.width).setHeight(format2.height).setFrameRate(format2.frameRate);
                            }
                            if (uriResolveToUri != null) {
                                language.setMetadata(metadata);
                                arrayList26.add(new HlsMultivariantPlaylist.Rendition(uriResolveToUri, language.build(), stringAttr, stringAttr2));
                                break;
                            }
                        default:
                            arrayList3 = arrayList28;
                            arrayList2 = arrayList27;
                            arrayList32 = arrayList;
                            break;
                    }
                    i10++;
                    str6 = str;
                    arrayList27 = arrayList2;
                    arrayList25 = arrayList33;
                    arrayList28 = arrayList3;
                    arrayList31 = arrayList34;
                }
                return new HlsMultivariantPlaylist(str, arrayList29, arrayList31, arrayList26, arrayList27, arrayList28, arrayList20, format, z ? Collections.EMPTY_LIST : arrayList32, z4, map4, arrayList30);
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

    /* JADX WARN: Code restructure failed: missing block: B:236:0x068d, code lost:
    
        r33 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x0691, code lost:
    
        r33 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x069f, code lost:
    
        r33 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x06ac, code lost:
    
        r33 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x081d, code lost:
    
        r66 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x0822, code lost:
    
        r66 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x0832, code lost:
    
        r66 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x0841, code lost:
    
        r66 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x084e, code lost:
    
        r66 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x085b, code lost:
    
        r66 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x0868, code lost:
    
        r66 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x0875, code lost:
    
        r66 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x0883, code lost:
    
        r66 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x0890, code lost:
    
        r66 = r8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0331 A[PHI: r14
  0x0331: PHI (r14v9 java.lang.String) = (r14v7 java.lang.String), (r14v2 java.lang.String) binds: [B:119:0x0340, B:113:0x0324] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:237:0x068f A[PHI: r33
  0x068f: PHI (r33v15 int) = (r33v11 int), (r33v12 int), (r33v13 int), (r33v16 int) binds: [B:247:0x06b4, B:243:0x06a7, B:239:0x0699, B:236:0x068d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:305:0x07d4  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x07f2  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x081f A[PHI: r66
  0x081f: PHI (r66v13 java.util.ArrayList) = 
  (r66v3 java.util.ArrayList)
  (r66v4 java.util.ArrayList)
  (r66v5 java.util.ArrayList)
  (r66v6 java.util.ArrayList)
  (r66v7 java.util.ArrayList)
  (r66v8 java.util.ArrayList)
  (r66v9 java.util.ArrayList)
  (r66v10 java.util.ArrayList)
  (r66v11 java.util.ArrayList)
  (r66v14 java.util.ArrayList)
 binds: [B:355:0x0898, B:351:0x088b, B:347:0x087d, B:343:0x0870, B:339:0x0863, B:335:0x0856, B:331:0x0849, B:327:0x083a, B:323:0x082a, B:320:0x081d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r0v107 */
    /* JADX WARN: Type inference failed for: r0v108 */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Type inference failed for: r0v51 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v62 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v76 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v35 */
    /* JADX WARN: Type inference failed for: r10v9, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r1v25, types: [androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist$Interstitial$Builder] */
    /* JADX WARN: Type inference failed for: r1v37, types: [androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist$Interstitial$Builder] */
    /* JADX WARN: Type inference failed for: r1v38, types: [androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist$Interstitial$Builder] */
    /* JADX WARN: Type inference failed for: r1v39, types: [androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist$Interstitial$Builder] */
    /* JADX WARN: Type inference failed for: r1v41 */
    /* JADX WARN: Type inference failed for: r33v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r33v6, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r34v0 */
    /* JADX WARN: Type inference failed for: r34v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r34v10 */
    /* JADX WARN: Type inference failed for: r34v11 */
    /* JADX WARN: Type inference failed for: r34v12 */
    /* JADX WARN: Type inference failed for: r34v13 */
    /* JADX WARN: Type inference failed for: r34v14 */
    /* JADX WARN: Type inference failed for: r34v2 */
    /* JADX WARN: Type inference failed for: r34v20 */
    /* JADX WARN: Type inference failed for: r34v22 */
    /* JADX WARN: Type inference failed for: r34v26 */
    /* JADX WARN: Type inference failed for: r34v3 */
    /* JADX WARN: Type inference failed for: r34v30 */
    /* JADX WARN: Type inference failed for: r34v31 */
    /* JADX WARN: Type inference failed for: r34v32 */
    /* JADX WARN: Type inference failed for: r34v33 */
    /* JADX WARN: Type inference failed for: r34v34 */
    /* JADX WARN: Type inference failed for: r34v35 */
    /* JADX WARN: Type inference failed for: r34v36 */
    /* JADX WARN: Type inference failed for: r34v38 */
    /* JADX WARN: Type inference failed for: r34v4 */
    /* JADX WARN: Type inference failed for: r34v5 */
    /* JADX WARN: Type inference failed for: r34v9 */
    /* JADX WARN: Type inference failed for: r54v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r55v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r56v10, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r56v15 */
    /* JADX WARN: Type inference failed for: r56v9 */
    /* JADX WARN: Type inference failed for: r60v0 */
    /* JADX WARN: Type inference failed for: r60v1 */
    /* JADX WARN: Type inference failed for: r60v10 */
    /* JADX WARN: Type inference failed for: r60v16 */
    /* JADX WARN: Type inference failed for: r60v18 */
    /* JADX WARN: Type inference failed for: r60v2 */
    /* JADX WARN: Type inference failed for: r60v21 */
    /* JADX WARN: Type inference failed for: r60v26 */
    /* JADX WARN: Type inference failed for: r60v27 */
    /* JADX WARN: Type inference failed for: r60v28 */
    /* JADX WARN: Type inference failed for: r60v29 */
    /* JADX WARN: Type inference failed for: r60v3 */
    /* JADX WARN: Type inference failed for: r60v30 */
    /* JADX WARN: Type inference failed for: r60v31 */
    /* JADX WARN: Type inference failed for: r60v32 */
    /* JADX WARN: Type inference failed for: r60v4 */
    /* JADX WARN: Type inference failed for: r60v5 */
    /* JADX WARN: Type inference failed for: r60v6 */
    /* JADX WARN: Type inference failed for: r60v7 */
    /* JADX WARN: Type inference failed for: r60v8 */
    /* JADX WARN: Type inference failed for: r60v9 */
    /* JADX WARN: Type inference failed for: r64v1 */
    /* JADX WARN: Type inference failed for: r64v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r64v3 */
    /* JADX WARN: Type inference failed for: r64v4 */
    /* JADX WARN: Type inference failed for: r64v5 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r7v31, types: [androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist$Interstitial$Builder] */
    /* JADX WARN: Type inference failed for: r7v54 */
    /* JADX WARN: Type inference failed for: r7v55 */
    /* JADX WARN: Type inference failed for: r8v28, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v11, types: [java.lang.Throwable] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static HlsMediaPlaylist parseMediaPlaylist(HlsMultivariantPlaylist hlsMultivariantPlaylist, HlsMediaPlaylist hlsMediaPlaylist, LineIterator lineIterator, String str) throws DeltaUpdateException, ParserException {
        LinkedHashMap linkedHashMap;
        HlsMediaPlaylist.Part part;
        HashMap map;
        ArrayList arrayList;
        ArrayList arrayList2;
        ?? r0;
        TreeMap treeMap;
        DrmInitData drmInitData;
        long j;
        String str2;
        String str3;
        HlsMediaPlaylist.Segment segment;
        int i;
        long j2;
        long j3;
        LinkedHashMap linkedHashMap2;
        ?? r10;
        ?? r02;
        Object obj;
        Object stringAttr;
        ?? r03;
        ?? r64;
        ArrayList arrayList3;
        String str4;
        ?? r56;
        long j4;
        HashMap map2;
        ArrayList arrayList4;
        int i2;
        HlsMediaPlaylist.Segment segment2;
        boolean z;
        DrmInitData playlistProtectionSchemes;
        int i3;
        DrmInitData drmInitData2;
        long jMsToUs;
        long jMsToUs2;
        ?? builder;
        String strGroup;
        ArrayList arrayList5;
        ArrayList arrayList6;
        String strTrim;
        int i4;
        long j5;
        HlsMultivariantPlaylist hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
        HlsMediaPlaylist hlsMediaPlaylist2 = hlsMediaPlaylist;
        boolean z2 = hlsMultivariantPlaylist2.hasIndependentSegments;
        HashMap map3 = new HashMap();
        HashMap map4 = new HashMap();
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        HlsMediaPlaylist.ServerControl serverControl = new HlsMediaPlaylist.ServerControl(-9223372036854775807L, false, -9223372036854775807L, -9223372036854775807L, false);
        TreeMap treeMap2 = new TreeMap();
        boolean z3 = z2;
        long j6 = -9223372036854775807L;
        long j7 = 0;
        long j8 = 0;
        long jMsToUs3 = 0;
        long j9 = 0;
        long longAttr = 0;
        long timeSecondsToUs = 0;
        long j10 = 0;
        String optionalStringAttr = _UrlKt.FRAGMENT_ENCODE_SET;
        String str5 = optionalStringAttr;
        HlsMediaPlaylist.Part part2 = null;
        String encryptionScheme = null;
        DrmInitData drmInitData3 = null;
        DrmInitData playlistProtectionSchemes2 = null;
        DrmInitData drmInitData4 = null;
        ?? r34 = 0;
        long j11 = -1;
        boolean z4 = false;
        int i5 = 0;
        int intAttr = 1;
        boolean z5 = false;
        boolean z6 = false;
        int i6 = 0;
        HlsMediaPlaylist.Segment segment3 = null;
        int i7 = 0;
        ?? r60 = 0;
        long j12 = -1;
        boolean z7 = false;
        long intAttr2 = -9223372036854775807L;
        long doubleAttr = -9223372036854775807L;
        long j13 = 0;
        boolean optionalBooleanAttribute = false;
        while (lineIterator.hasNext()) {
            String next = lineIterator.next();
            if (next.startsWith("#EXT")) {
                arrayList10.add(next);
            }
            if (next.startsWith("#EXT-X-PLAYLIST-TYPE")) {
                String stringAttr2 = parseStringAttr(next, REGEX_PLAYLIST_TYPE, map3);
                if ("VOD".equals(stringAttr2)) {
                    i5 = 1;
                } else if ("EVENT".equals(stringAttr2)) {
                    i5 = 2;
                }
            } else if (next.equals("#EXT-X-I-FRAMES-ONLY")) {
                z7 = true;
            } else {
                if (next.startsWith("#EXT-X-START")) {
                    ArrayList arrayList11 = arrayList10;
                    linkedHashMap = linkedHashMap3;
                    long doubleAttr2 = (long) (parseDoubleAttr(next, REGEX_TIME_OFFSET) * 1000000.0d);
                    optionalBooleanAttribute = parseOptionalBooleanAttribute(next, REGEX_PRECISE, false);
                    arrayList10 = arrayList11;
                    j6 = doubleAttr2;
                } else {
                    ArrayList arrayList12 = arrayList10;
                    linkedHashMap = linkedHashMap3;
                    if (next.startsWith("#EXT-X-SERVER-CONTROL")) {
                        serverControl = parseServerControl(next);
                    } else if (next.startsWith("#EXT-X-PART-INF")) {
                        doubleAttr = (long) (parseDoubleAttr(next, REGEX_PART_TARGET_DURATION) * 1000000.0d);
                    } else if (next.startsWith("#EXT-X-MAP")) {
                        String stringAttr3 = parseStringAttr(next, REGEX_URI, map3);
                        String optionalStringAttr2 = parseOptionalStringAttr(next, REGEX_ATTR_BYTERANGE, map3);
                        if (optionalStringAttr2 != null) {
                            String[] strArrSplit = Util.split(optionalStringAttr2, "@");
                            j11 = Long.parseLong(strArrSplit[0]);
                            if (strArrSplit.length > 1) {
                                j7 = Long.parseLong(strArrSplit[1]);
                            }
                        }
                        long j14 = j11;
                        long j15 = j14 == j12 ? 0L : j7;
                        if (r60 != 0 && r34 == 0) {
                            throw ParserException.createForMalformedManifest("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.", drmInitData4);
                        }
                        DrmInitData drmInitData5 = drmInitData4;
                        HlsMediaPlaylist.Segment segment4 = new HlsMediaPlaylist.Segment(stringAttr3, j15, j14, r60, r34);
                        if (j14 != j12) {
                            j15 += j14;
                        }
                        j7 = j15;
                        arrayList10 = arrayList12;
                        segment3 = segment4;
                        j11 = j12;
                        drmInitData4 = drmInitData5;
                    } else {
                        HlsMediaPlaylist.ServerControl serverControl2 = serverControl;
                        DrmInitData drmInitData6 = drmInitData4;
                        ?? r8 = r34;
                        ?? r102 = r60;
                        if (next.startsWith("#EXT-X-TARGETDURATION")) {
                            intAttr2 = 1000000 * ((long) parseIntAttr(next, REGEX_TARGET_DURATION));
                        } else if (next.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                            longAttr = parseLongAttr(next, REGEX_MEDIA_SEQUENCE);
                            r34 = r8;
                            r60 = r102;
                            j13 = longAttr;
                            linkedHashMap3 = linkedHashMap;
                            serverControl = serverControl2;
                            drmInitData4 = drmInitData6;
                            arrayList10 = arrayList12;
                        } else if (next.startsWith("#EXT-X-VERSION")) {
                            intAttr = parseIntAttr(next, REGEX_VERSION);
                        } else {
                            if (next.startsWith("#EXT-X-DEFINE")) {
                                String optionalStringAttr3 = parseOptionalStringAttr(next, REGEX_IMPORT, map3);
                                if (optionalStringAttr3 != null) {
                                    String str6 = hlsMultivariantPlaylist2.variableDefinitions.get(optionalStringAttr3);
                                    if (str6 != null) {
                                        map3.put(optionalStringAttr3, str6);
                                    }
                                } else {
                                    map3.put(parseStringAttr(next, REGEX_NAME, map3), parseStringAttr(next, REGEX_VALUE, map3));
                                }
                                part = part2;
                                map = map4;
                                arrayList = arrayList7;
                                arrayList2 = arrayList9;
                                r0 = r8;
                                treeMap = treeMap2;
                                drmInitData = drmInitData3;
                                j = j8;
                                str2 = optionalStringAttr;
                                str3 = str5;
                            } else if (next.startsWith("#EXTINF")) {
                                timeSecondsToUs = parseTimeSecondsToUs(next, REGEX_MEDIA_DURATION);
                                optionalStringAttr = parseOptionalStringAttr(next, REGEX_MEDIA_TITLE, str5, map3);
                            } else {
                                String str7 = str5;
                                if (next.startsWith("#EXT-X-SKIP")) {
                                    int intAttr3 = parseIntAttr(next, REGEX_SKIPPED_SEGMENTS);
                                    Assertions.checkState(hlsMediaPlaylist2 != null && arrayList7.isEmpty());
                                    str3 = str7;
                                    int i8 = (int) (j13 - ((HlsMediaPlaylist) Util.castNonNull(hlsMediaPlaylist2)).mediaSequence);
                                    int i9 = intAttr3 + i8;
                                    if (i8 < 0 || i9 > hlsMediaPlaylist2.segments.size()) {
                                        throw new DeltaUpdateException();
                                    }
                                    ?? r342 = r8;
                                    ?? r602 = r102;
                                    long j16 = j8;
                                    while (i8 < i9) {
                                        HlsMediaPlaylist.Segment segmentCopyWith = hlsMediaPlaylist2.segments.get(i8);
                                        int i10 = i8;
                                        if (j13 != hlsMediaPlaylist2.mediaSequence) {
                                            segmentCopyWith = segmentCopyWith.copyWith(j16, (hlsMediaPlaylist2.discontinuitySequence - i6) + segmentCopyWith.relativeDiscontinuitySequence);
                                        }
                                        arrayList7.add(segmentCopyWith);
                                        j9 = j16 + segmentCopyWith.durationUs;
                                        long j17 = segmentCopyWith.byteRangeLength;
                                        if (j17 != j12) {
                                            j7 = segmentCopyWith.byteRangeOffset + j17;
                                        }
                                        int i11 = segmentCopyWith.relativeDiscontinuitySequence;
                                        HlsMediaPlaylist.Segment segment5 = segmentCopyWith.initializationSegment;
                                        drmInitData3 = segmentCopyWith.drmInitData;
                                        String str8 = segmentCopyWith.fullSegmentEncryptionKeyUri;
                                        String str9 = segmentCopyWith.encryptionIV;
                                        int i12 = i9;
                                        if (str9 == null || !str9.equals(Long.toHexString(longAttr))) {
                                            r342 = segmentCopyWith.encryptionIV;
                                        }
                                        longAttr++;
                                        i7 = i11;
                                        segment3 = segment5;
                                        r602 = str8;
                                        j16 = j9;
                                        i8 = i10 + 1;
                                        i9 = i12;
                                        r342 = r342;
                                    }
                                    hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                    j8 = j16;
                                    r34 = r342;
                                    r60 = r602;
                                } else {
                                    str3 = str7;
                                    if (next.startsWith("#EXT-X-KEY")) {
                                        String stringAttr4 = parseStringAttr(next, REGEX_METHOD, map3);
                                        String optionalStringAttr4 = parseOptionalStringAttr(next, REGEX_KEYFORMAT, "identity", map3);
                                        if ("NONE".equals(stringAttr4)) {
                                            treeMap2.clear();
                                            drmInitData3 = drmInitData6;
                                            DrmInitData drmInitData7 = drmInitData3;
                                            stringAttr = drmInitData7;
                                            obj = drmInitData7;
                                        } else {
                                            String optionalStringAttr5 = parseOptionalStringAttr(next, REGEX_IV, map3);
                                            if ("identity".equals(optionalStringAttr4)) {
                                                if ("AES-128".equals(stringAttr4)) {
                                                    stringAttr = parseStringAttr(next, REGEX_URI, map3);
                                                    obj = optionalStringAttr5;
                                                } else {
                                                    obj = optionalStringAttr5;
                                                    stringAttr = drmInitData6;
                                                }
                                            } else {
                                                if (encryptionScheme == null) {
                                                    encryptionScheme = parseEncryptionScheme(stringAttr4);
                                                }
                                                DrmInitData.SchemeData drmSchemeData = parseDrmSchemeData(next, optionalStringAttr4, map3);
                                                if (drmSchemeData != null) {
                                                    treeMap2.put(optionalStringAttr4, drmSchemeData);
                                                    obj = optionalStringAttr5;
                                                    drmInitData3 = drmInitData6;
                                                    stringAttr = drmInitData3;
                                                }
                                            }
                                        }
                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                        r34 = obj;
                                        r60 = stringAttr;
                                    } else {
                                        if (next.startsWith("#EXT-X-BYTERANGE")) {
                                            String[] strArrSplit2 = Util.split(parseStringAttr(next, REGEX_BYTERANGE, map3), "@");
                                            j11 = Long.parseLong(strArrSplit2[0]);
                                            if (strArrSplit2.length > 1) {
                                                j7 = Long.parseLong(strArrSplit2[1]);
                                            }
                                        } else if (next.startsWith("#EXT-X-DISCONTINUITY-SEQUENCE")) {
                                            i6 = Integer.parseInt(next.substring(next.indexOf(58) + 1));
                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                            r34 = r8;
                                            r60 = r102;
                                            linkedHashMap3 = linkedHashMap;
                                            serverControl = serverControl2;
                                            drmInitData4 = drmInitData6;
                                            arrayList10 = arrayList12;
                                            str5 = str3;
                                            z6 = true;
                                        } else if (next.equals("#EXT-X-DISCONTINUITY")) {
                                            i7++;
                                        } else {
                                            if (next.startsWith("#EXT-X-PROGRAM-DATE-TIME")) {
                                                if (jMsToUs3 == 0) {
                                                    jMsToUs3 = Util.msToUs(Util.parseXsDateTime(next.substring(next.indexOf(58) + 1))) - j8;
                                                } else {
                                                    part = part2;
                                                    map = map4;
                                                    arrayList = arrayList7;
                                                    arrayList2 = arrayList9;
                                                    r03 = r8;
                                                    treeMap = treeMap2;
                                                }
                                            } else if (next.equals("#EXT-X-GAP")) {
                                                hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                r34 = r8;
                                                r60 = r102;
                                                linkedHashMap3 = linkedHashMap;
                                                serverControl = serverControl2;
                                                drmInitData4 = drmInitData6;
                                                arrayList10 = arrayList12;
                                                str5 = str3;
                                                z4 = true;
                                            } else if (next.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                                                hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                r34 = r8;
                                                r60 = r102;
                                                linkedHashMap3 = linkedHashMap;
                                                serverControl = serverControl2;
                                                drmInitData4 = drmInitData6;
                                                arrayList10 = arrayList12;
                                                str5 = str3;
                                                z3 = true;
                                            } else if (next.equals("#EXT-X-ENDLIST")) {
                                                hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                r34 = r8;
                                                r60 = r102;
                                                linkedHashMap3 = linkedHashMap;
                                                serverControl = serverControl2;
                                                drmInitData4 = drmInitData6;
                                                arrayList10 = arrayList12;
                                                str5 = str3;
                                                z5 = true;
                                            } else {
                                                if (next.startsWith("#EXT-X-RENDITION-REPORT")) {
                                                    treeMap = treeMap2;
                                                    arrayList9.add(new HlsMediaPlaylist.RenditionReport(Uri.parse(UriUtil.resolve(str, parseStringAttr(next, REGEX_URI, map3))), parseOptionalLongAttr(next, REGEX_LAST_MSN, j12), parseOptionalIntAttr(next, REGEX_LAST_PART, -1)));
                                                } else {
                                                    treeMap = treeMap2;
                                                    if (next.startsWith("#EXT-X-PRELOAD-HINT")) {
                                                        if (part2 == null && "PART".equals(parseStringAttr(next, REGEX_PRELOAD_HINT_TYPE, map3))) {
                                                            String stringAttr5 = parseStringAttr(next, REGEX_URI, map3);
                                                            long optionalLongAttr = parseOptionalLongAttr(next, REGEX_BYTERANGE_START, -1L);
                                                            long optionalLongAttr2 = parseOptionalLongAttr(next, REGEX_BYTERANGE_LENGTH, -1L);
                                                            long j18 = longAttr;
                                                            String segmentEncryptionIV = getSegmentEncryptionIV(j18, r102, r8);
                                                            if (drmInitData3 == null && !treeMap.isEmpty()) {
                                                                DrmInitData.SchemeData[] schemeDataArr = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                                drmInitData3 = new DrmInitData(encryptionScheme, schemeDataArr);
                                                                if (playlistProtectionSchemes2 == null) {
                                                                    playlistProtectionSchemes2 = getPlaylistProtectionSchemes(encryptionScheme, schemeDataArr);
                                                                }
                                                            }
                                                            DrmInitData drmInitData8 = drmInitData3;
                                                            if (optionalLongAttr == -1 || optionalLongAttr2 != -1) {
                                                                part2 = new HlsMediaPlaylist.Part(stringAttr5, segment3, 0L, i7, j9, drmInitData8, r102, segmentEncryptionIV, optionalLongAttr != -1 ? optionalLongAttr : 0L, optionalLongAttr2, false, false, true);
                                                            }
                                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                            r34 = r8;
                                                            r60 = r102;
                                                            longAttr = j18;
                                                            drmInitData3 = drmInitData8;
                                                            linkedHashMap3 = linkedHashMap;
                                                            serverControl = serverControl2;
                                                            drmInitData4 = drmInitData6;
                                                            arrayList10 = arrayList12;
                                                            str5 = str3;
                                                            treeMap2 = treeMap;
                                                            j12 = -1;
                                                        }
                                                    } else {
                                                        long j19 = longAttr;
                                                        if (next.startsWith("#EXT-X-PART")) {
                                                            String segmentEncryptionIV2 = getSegmentEncryptionIV(j19, r102, r8);
                                                            String stringAttr6 = parseStringAttr(next, REGEX_URI, map3);
                                                            long doubleAttr3 = (long) (parseDoubleAttr(next, REGEX_ATTR_DURATION) * 1000000.0d);
                                                            boolean optionalBooleanAttribute2 = parseOptionalBooleanAttribute(next, REGEX_INDEPENDENT, false) | (z3 && arrayList8.isEmpty());
                                                            boolean optionalBooleanAttribute3 = parseOptionalBooleanAttribute(next, REGEX_GAP, false);
                                                            String optionalStringAttr6 = parseOptionalStringAttr(next, REGEX_ATTR_BYTERANGE, map3);
                                                            if (optionalStringAttr6 != null) {
                                                                String[] strArrSplit3 = Util.split(optionalStringAttr6, "@");
                                                                long j20 = Long.parseLong(strArrSplit3[0]);
                                                                if (strArrSplit3.length > 1) {
                                                                    j10 = Long.parseLong(strArrSplit3[1]);
                                                                }
                                                                j5 = j20;
                                                            } else {
                                                                j5 = -1;
                                                            }
                                                            long j21 = j5 == -1 ? 0L : j10;
                                                            if (drmInitData3 == null && !treeMap.isEmpty()) {
                                                                DrmInitData.SchemeData[] schemeDataArr2 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                                drmInitData3 = new DrmInitData(encryptionScheme, schemeDataArr2);
                                                                if (playlistProtectionSchemes2 == null) {
                                                                    playlistProtectionSchemes2 = getPlaylistProtectionSchemes(encryptionScheme, schemeDataArr2);
                                                                }
                                                            }
                                                            DrmInitData drmInitData9 = drmInitData3;
                                                            HlsMediaPlaylist.Segment segment6 = segment3;
                                                            int i13 = i7;
                                                            arrayList8.add(new HlsMediaPlaylist.Part(stringAttr6, segment3, doubleAttr3, i7, j9, drmInitData9, r102, segmentEncryptionIV2, j21, j5, optionalBooleanAttribute3, optionalBooleanAttribute2, false));
                                                            j9 += doubleAttr3;
                                                            if (j5 != -1) {
                                                                j21 += j5;
                                                            }
                                                            j10 = j21;
                                                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                            segment3 = segment6;
                                                            r34 = r8;
                                                            i7 = i13;
                                                            r60 = r102;
                                                            longAttr = j19;
                                                            drmInitData3 = drmInitData9;
                                                            linkedHashMap3 = linkedHashMap;
                                                            serverControl = serverControl2;
                                                            drmInitData4 = drmInitData6;
                                                            arrayList10 = arrayList12;
                                                            str5 = str3;
                                                            treeMap2 = treeMap;
                                                            j12 = -1;
                                                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                        } else {
                                                            HlsMediaPlaylist.Segment segment7 = segment3;
                                                            int i14 = i7;
                                                            if (next.startsWith("#EXT-X-DATERANGE")) {
                                                                segment = segment7;
                                                                if (parseOptionalStringAttr(next, REGEX_CLASS, str3, map3).equals("com.apple.hls.interstitial")) {
                                                                    String stringAttr7 = parseStringAttr(next, REGEX_ID, map3);
                                                                    String optionalStringAttr7 = parseOptionalStringAttr(next, REGEX_ASSET_URI, map3);
                                                                    ?? r1 = optionalStringAttr7 != null ? Uri.parse(optionalStringAttr7) : drmInitData6;
                                                                    arrayList4 = arrayList8;
                                                                    String optionalStringAttr8 = parseOptionalStringAttr(next, REGEX_ASSET_LIST_URI, map3);
                                                                    ?? r6 = optionalStringAttr8 != null ? Uri.parse(optionalStringAttr8) : drmInitData6;
                                                                    i2 = i14;
                                                                    String optionalStringAttr9 = parseOptionalStringAttr(next, REGEX_START_DATE, map3);
                                                                    if (optionalStringAttr9 != null) {
                                                                        str4 = encryptionScheme;
                                                                        drmInitData = drmInitData3;
                                                                        jMsToUs = Util.msToUs(Util.parseXsDateTime(optionalStringAttr9));
                                                                    } else {
                                                                        str4 = encryptionScheme;
                                                                        drmInitData = drmInitData3;
                                                                        jMsToUs = -9223372036854775807L;
                                                                    }
                                                                    String optionalStringAttr10 = parseOptionalStringAttr(next, REGEX_END_DATE, map3);
                                                                    if (optionalStringAttr10 != null) {
                                                                        map2 = map4;
                                                                        arrayList3 = arrayList7;
                                                                        jMsToUs2 = Util.msToUs(Util.parseXsDateTime(optionalStringAttr10));
                                                                    } else {
                                                                        map2 = map4;
                                                                        arrayList3 = arrayList7;
                                                                        jMsToUs2 = -9223372036854775807L;
                                                                    }
                                                                    ArrayList arrayList13 = new ArrayList();
                                                                    part = part2;
                                                                    String optionalStringAttr11 = parseOptionalStringAttr(next, REGEX_CUE, map3);
                                                                    arrayList2 = arrayList9;
                                                                    if (optionalStringAttr11 != null) {
                                                                        String[] strArrSplit4 = Util.split(optionalStringAttr11, ",");
                                                                        r64 = r8;
                                                                        int length = strArrSplit4.length;
                                                                        int i15 = 0;
                                                                        while (i15 < length) {
                                                                            int i16 = i15;
                                                                            strTrim = strArrSplit4[i15].trim();
                                                                            strTrim.getClass();
                                                                            switch (strTrim) {
                                                                                case "PRE":
                                                                                case "ONCE":
                                                                                case "POST":
                                                                                    arrayList13.add(strTrim);
                                                                                    break;
                                                                            }
                                                                            i15 = i16 + 1;
                                                                            length = i4;
                                                                        }
                                                                    } else {
                                                                        r64 = r8;
                                                                    }
                                                                    j4 = j19;
                                                                    double optionalDoubleAttr = parseOptionalDoubleAttr(next, REGEX_ATTR_DURATION_PREFIXED, -1.0d);
                                                                    long j22 = optionalDoubleAttr >= 0.0d ? (long) (optionalDoubleAttr * 1000000.0d) : -9223372036854775807L;
                                                                    r56 = r102;
                                                                    double optionalDoubleAttr2 = parseOptionalDoubleAttr(next, REGEX_PLANNED_DURATION, -1.0d);
                                                                    long j23 = optionalDoubleAttr2 >= 0.0d ? (long) (optionalDoubleAttr2 * 1000000.0d) : -9223372036854775807L;
                                                                    boolean optionalBooleanAttribute4 = parseOptionalBooleanAttribute(next, REGEX_END_ON_NEXT, false);
                                                                    long j24 = j23;
                                                                    double optionalDoubleAttr3 = parseOptionalDoubleAttr(next, REGEX_RESUME_OFFSET, Double.MIN_VALUE);
                                                                    long j25 = optionalDoubleAttr3 != Double.MIN_VALUE ? (long) (optionalDoubleAttr3 * 1000000.0d) : -9223372036854775807L;
                                                                    double optionalDoubleAttr4 = parseOptionalDoubleAttr(next, REGEX_PLAYOUT_LIMIT, -1.0d);
                                                                    long j26 = optionalDoubleAttr4 >= 0.0d ? (long) (optionalDoubleAttr4 * 1000000.0d) : -9223372036854775807L;
                                                                    ArrayList arrayList14 = new ArrayList();
                                                                    long j27 = j26;
                                                                    String optionalStringAttr12 = parseOptionalStringAttr(next, REGEX_SNAP, map3);
                                                                    if (optionalStringAttr12 != null) {
                                                                        String[] strArrSplit5 = Util.split(optionalStringAttr12, ",");
                                                                        int length2 = strArrSplit5.length;
                                                                        int i17 = 0;
                                                                        while (i17 < length2) {
                                                                            int i18 = i17;
                                                                            String strTrim2 = strArrSplit5[i17].trim();
                                                                            strTrim2.getClass();
                                                                            int i19 = length2;
                                                                            if (strTrim2.equals("IN") || strTrim2.equals("OUT")) {
                                                                                arrayList14.add(strTrim2);
                                                                            }
                                                                            i17 = i18 + 1;
                                                                            length2 = i19;
                                                                        }
                                                                    }
                                                                    ArrayList arrayList15 = new ArrayList();
                                                                    String optionalStringAttr13 = parseOptionalStringAttr(next, REGEX_RESTRICT, map3);
                                                                    if (optionalStringAttr13 != null) {
                                                                        String[] strArrSplit6 = Util.split(optionalStringAttr13, ",");
                                                                        int length3 = strArrSplit6.length;
                                                                        int i20 = 0;
                                                                        while (i20 < length3) {
                                                                            int i21 = i20;
                                                                            String strTrim3 = strArrSplit6[i20].trim();
                                                                            strTrim3.getClass();
                                                                            int i22 = length3;
                                                                            if (strTrim3.equals("JUMP") || strTrim3.equals("SKIP")) {
                                                                                arrayList15.add(strTrim3);
                                                                            }
                                                                            i20 = i21 + 1;
                                                                            length3 = i22;
                                                                        }
                                                                    }
                                                                    Object objValueOf = parseOptionalStringAttr(next, REGEX_CONTENT_MAY_VARY, map3) != null ? Boolean.valueOf(!r7.equals("NO")) : drmInitData6;
                                                                    String optionalStringAttr14 = parseOptionalStringAttr(next, REGEX_TIMELINE_OCCUPIES, map3);
                                                                    ?? r33 = objValueOf;
                                                                    if (optionalStringAttr14 != null) {
                                                                        Object obj2 = "RANGE";
                                                                        if (!optionalStringAttr14.equals("RANGE")) {
                                                                            obj2 = "POINT";
                                                                            if (!optionalStringAttr14.equals("POINT")) {
                                                                                obj2 = drmInitData6;
                                                                            }
                                                                        }
                                                                        String optionalStringAttr15 = parseOptionalStringAttr(next, REGEX_TIMELINE_STYLE, map3);
                                                                        ?? r54 = obj2;
                                                                        if (optionalStringAttr15 != null) {
                                                                            Object obj3 = "PRIMARY";
                                                                            if (!optionalStringAttr15.equals("PRIMARY")) {
                                                                                obj3 = "HIGHLIGHT";
                                                                                if (!optionalStringAttr15.equals("HIGHLIGHT")) {
                                                                                    obj3 = drmInitData6;
                                                                                }
                                                                            }
                                                                            ArrayList arrayList16 = new ArrayList();
                                                                            ?? r55 = obj3;
                                                                            String strSubstring = next.substring(17);
                                                                            Matcher matcher = REGEX_CLIENT_DEFINED_ATTRIBUTE_PREFIX.matcher(strSubstring);
                                                                            while (matcher.find()) {
                                                                                Matcher matcher2 = matcher;
                                                                                strGroup = matcher2.group();
                                                                                strGroup.getClass();
                                                                                switch (strGroup) {
                                                                                    case "X-SNAP=":
                                                                                    case "X-CONTENT-MAY-VARY=":
                                                                                    case "X-PLAYOUT-LIMIT=":
                                                                                    case "X-TIMELINE-STYLE=":
                                                                                    case "X-ASSET-LIST=":
                                                                                    case "X-TIMELINE-OCCUPIES=":
                                                                                    case "X-RESTRICT=":
                                                                                    case "X-RESUME-OFFSET=":
                                                                                    case "X-ASSET-URI=":
                                                                                        arrayList6 = arrayList14;
                                                                                        break;
                                                                                    default:
                                                                                        arrayList6 = arrayList14;
                                                                                        arrayList16.add(parseClientDefinedAttribute(strSubstring, strGroup.substring(0, strGroup.length() - 1), map3));
                                                                                        break;
                                                                                }
                                                                                matcher = matcher2;
                                                                                arrayList15 = arrayList5;
                                                                                arrayList14 = arrayList6;
                                                                            }
                                                                            ArrayList arrayList17 = arrayList15;
                                                                            ArrayList arrayList18 = arrayList14;
                                                                            linkedHashMap2 = linkedHashMap;
                                                                            if (linkedHashMap2.containsKey(stringAttr7)) {
                                                                                builder = (HlsMediaPlaylist.Interstitial.Builder) linkedHashMap2.get(stringAttr7);
                                                                            } else {
                                                                                builder = new HlsMediaPlaylist.Interstitial.Builder(stringAttr7);
                                                                            }
                                                                            linkedHashMap2.put(stringAttr7, builder.setAssetUri(r1).setAssetListUri(r6).setStartDateUnixUs(jMsToUs).setEndDateUnixUs(jMsToUs2).setDurationUs(j22).setPlannedDurationUs(j24).setCue(arrayList13).setEndOnNext(optionalBooleanAttribute4).setResumeOffsetUs(j25).setPlayoutLimitUs(j27).setSnapTypes(arrayList18).setRestrictions(arrayList17).setClientDefinedAttributes(arrayList16).setContentMayVary(r33).setTimelineOccupies(r54).setTimelineStyle(r55));
                                                                        }
                                                                    }
                                                                }
                                                                i = i2;
                                                                j = j8;
                                                                str2 = optionalStringAttr;
                                                                arrayList8 = arrayList4;
                                                                map = map2;
                                                                j2 = j4;
                                                                r10 = r56;
                                                                encryptionScheme = str4;
                                                                arrayList = arrayList3;
                                                                r02 = r64;
                                                                j3 = timeSecondsToUs;
                                                                arrayList7 = arrayList;
                                                                map4 = map;
                                                                linkedHashMap3 = linkedHashMap2;
                                                                r60 = r10;
                                                                longAttr = j2;
                                                                optionalStringAttr = str2;
                                                                timeSecondsToUs = j3;
                                                                j8 = j;
                                                                drmInitData3 = drmInitData;
                                                                j7 = j7;
                                                                segment3 = segment;
                                                                part2 = part;
                                                                arrayList9 = arrayList2;
                                                                serverControl = serverControl2;
                                                                drmInitData4 = drmInitData6;
                                                                arrayList10 = arrayList12;
                                                                str5 = str3;
                                                                treeMap2 = treeMap;
                                                                j12 = -1;
                                                                hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                                r34 = r02;
                                                                i7 = i;
                                                                hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                            } else {
                                                                segment = segment7;
                                                            }
                                                            part = part2;
                                                            map2 = map4;
                                                            arrayList3 = arrayList7;
                                                            arrayList4 = arrayList8;
                                                            arrayList2 = arrayList9;
                                                            r64 = r8;
                                                            i2 = i14;
                                                            r56 = r102;
                                                            j4 = j19;
                                                            str4 = encryptionScheme;
                                                            drmInitData = drmInitData3;
                                                            linkedHashMap2 = linkedHashMap;
                                                            if (next.startsWith("#")) {
                                                                i = i2;
                                                                j = j8;
                                                                str2 = optionalStringAttr;
                                                                arrayList8 = arrayList4;
                                                                map = map2;
                                                                j2 = j4;
                                                                r10 = r56;
                                                                encryptionScheme = str4;
                                                                arrayList = arrayList3;
                                                                r02 = r64;
                                                                j3 = timeSecondsToUs;
                                                                arrayList7 = arrayList;
                                                                map4 = map;
                                                                linkedHashMap3 = linkedHashMap2;
                                                                r60 = r10;
                                                                longAttr = j2;
                                                                optionalStringAttr = str2;
                                                                timeSecondsToUs = j3;
                                                                j8 = j;
                                                                drmInitData3 = drmInitData;
                                                                j7 = j7;
                                                                segment3 = segment;
                                                                part2 = part;
                                                                arrayList9 = arrayList2;
                                                                serverControl = serverControl2;
                                                                drmInitData4 = drmInitData6;
                                                                arrayList10 = arrayList12;
                                                                str5 = str3;
                                                                treeMap2 = treeMap;
                                                                j12 = -1;
                                                                hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                                r34 = r02;
                                                                i7 = i;
                                                                hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                            } else {
                                                                long j28 = j8;
                                                                String segmentEncryptionIV3 = getSegmentEncryptionIV(j4, r56, r64);
                                                                longAttr = j4 + 1;
                                                                String strReplaceVariableReferences = replaceVariableReferences(next, map3);
                                                                HlsMediaPlaylist.Segment segment8 = (HlsMediaPlaylist.Segment) map2.get(strReplaceVariableReferences);
                                                                if (j11 == -1) {
                                                                    segment2 = segment8;
                                                                    j7 = 0;
                                                                } else if (z7 && segment == null && segment8 == null) {
                                                                    HlsMediaPlaylist.Segment segment9 = new HlsMediaPlaylist.Segment(strReplaceVariableReferences, 0L, j7, null, null);
                                                                    map2.put(strReplaceVariableReferences, segment9);
                                                                    segment2 = segment9;
                                                                } else {
                                                                    segment2 = segment8;
                                                                    j7 = j7;
                                                                }
                                                                if (drmInitData != null || treeMap.isEmpty()) {
                                                                    encryptionScheme = str4;
                                                                    z = false;
                                                                    playlistProtectionSchemes = playlistProtectionSchemes2;
                                                                    i3 = i2;
                                                                    drmInitData2 = drmInitData;
                                                                } else {
                                                                    z = false;
                                                                    DrmInitData.SchemeData[] schemeDataArr3 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                                    encryptionScheme = str4;
                                                                    DrmInitData drmInitData10 = new DrmInitData(encryptionScheme, schemeDataArr3);
                                                                    if (playlistProtectionSchemes2 == null) {
                                                                        playlistProtectionSchemes = getPlaylistProtectionSchemes(encryptionScheme, schemeDataArr3);
                                                                        drmInitData2 = drmInitData10;
                                                                    } else {
                                                                        drmInitData2 = drmInitData10;
                                                                        playlistProtectionSchemes = playlistProtectionSchemes2;
                                                                    }
                                                                    i3 = i2;
                                                                }
                                                                long j29 = j7;
                                                                int i23 = i3;
                                                                long j30 = timeSecondsToUs;
                                                                arrayList3.add(new HlsMediaPlaylist.Segment(strReplaceVariableReferences, segment != null ? segment : segment2, optionalStringAttr, j30, i23, j28, drmInitData2, r56, segmentEncryptionIV3, j29, j11, z4, arrayList4));
                                                                j9 = j28 + j30;
                                                                arrayList8 = new ArrayList();
                                                                j7 = j11 != -1 ? j29 + j11 : j29;
                                                                r34 = r64;
                                                                arrayList7 = arrayList3;
                                                                playlistProtectionSchemes2 = playlistProtectionSchemes;
                                                                linkedHashMap3 = linkedHashMap2;
                                                                r60 = r56;
                                                                z4 = z;
                                                                i7 = i23;
                                                                drmInitData3 = drmInitData2;
                                                                j8 = j9;
                                                                segment3 = segment;
                                                                arrayList9 = arrayList2;
                                                                timeSecondsToUs = 0;
                                                                serverControl = serverControl2;
                                                                drmInitData4 = drmInitData6;
                                                                arrayList10 = arrayList12;
                                                                optionalStringAttr = str3;
                                                                str5 = optionalStringAttr;
                                                                treeMap2 = treeMap;
                                                                j11 = -1;
                                                                j12 = -1;
                                                                hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                                                hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                                map4 = map2;
                                                                part2 = part;
                                                            }
                                                        }
                                                    }
                                                }
                                                part = part2;
                                                map = map4;
                                                arrayList = arrayList7;
                                                arrayList2 = arrayList9;
                                                r03 = r8;
                                            }
                                            drmInitData = drmInitData3;
                                            j = j8;
                                            str2 = optionalStringAttr;
                                            r0 = r03;
                                        }
                                        hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                                        r34 = r8;
                                        r60 = r102;
                                    }
                                }
                                linkedHashMap3 = linkedHashMap;
                                serverControl = serverControl2;
                                drmInitData4 = drmInitData6;
                                arrayList10 = arrayList12;
                                str5 = str3;
                            }
                            segment = segment3;
                            i = i7;
                            j2 = longAttr;
                            j3 = timeSecondsToUs;
                            linkedHashMap2 = linkedHashMap;
                            r02 = r0;
                            r10 = r102;
                            arrayList7 = arrayList;
                            map4 = map;
                            linkedHashMap3 = linkedHashMap2;
                            r60 = r10;
                            longAttr = j2;
                            optionalStringAttr = str2;
                            timeSecondsToUs = j3;
                            j8 = j;
                            drmInitData3 = drmInitData;
                            j7 = j7;
                            segment3 = segment;
                            part2 = part;
                            arrayList9 = arrayList2;
                            serverControl = serverControl2;
                            drmInitData4 = drmInitData6;
                            arrayList10 = arrayList12;
                            str5 = str3;
                            treeMap2 = treeMap;
                            j12 = -1;
                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                            r34 = r02;
                            i7 = i;
                            hlsMultivariantPlaylist2 = hlsMultivariantPlaylist;
                        }
                        r34 = r8;
                        r60 = r102;
                        linkedHashMap3 = linkedHashMap;
                        serverControl = serverControl2;
                        drmInitData4 = drmInitData6;
                        arrayList10 = arrayList12;
                    }
                    arrayList10 = arrayList12;
                }
                linkedHashMap3 = linkedHashMap;
            }
        }
        HlsMediaPlaylist.Part part3 = part2;
        ArrayList arrayList19 = arrayList7;
        ArrayList arrayList20 = arrayList9;
        ArrayList arrayList21 = arrayList10;
        LinkedHashMap linkedHashMap4 = linkedHashMap3;
        HlsMediaPlaylist.ServerControl serverControl3 = serverControl;
        HashMap map5 = new HashMap();
        int i24 = 0;
        while (i24 < arrayList20.size()) {
            ArrayList arrayList22 = arrayList20;
            HlsMediaPlaylist.RenditionReport renditionReport = (HlsMediaPlaylist.RenditionReport) arrayList22.get(i24);
            long size = renditionReport.lastMediaSequence;
            if (size == -1) {
                size = (j13 + ((long) arrayList19.size())) - (arrayList8.isEmpty() ? 1L : 0L);
            }
            int size2 = renditionReport.lastPartIndex;
            if (size2 == -1 && doubleAttr != -9223372036854775807L) {
                size2 = (arrayList8.isEmpty() ? ((HlsMediaPlaylist.Segment) Iterables.getLast(arrayList19)).parts : arrayList8).size() - 1;
            }
            Uri uri = renditionReport.playlistUri;
            map5.put(uri, new HlsMediaPlaylist.RenditionReport(uri, size, size2));
            i24++;
            arrayList20 = arrayList22;
        }
        if (part3 != null) {
            arrayList8.add(part3);
        }
        ArrayList arrayList23 = new ArrayList();
        Iterator it = linkedHashMap4.values().iterator();
        while (it.hasNext()) {
            HlsMediaPlaylist.Interstitial interstitialBuild = ((HlsMediaPlaylist.Interstitial.Builder) it.next()).build();
            if (interstitialBuild != null) {
                arrayList23.add(interstitialBuild);
            }
        }
        return new HlsMediaPlaylist(i5, str, arrayList21, j6, optionalBooleanAttribute, jMsToUs3, z6, i6, j13, intAttr, intAttr2, doubleAttr, z3, z5, jMsToUs3 != 0, playlistProtectionSchemes2, arrayList19, arrayList8, serverControl3, map5, arrayList23);
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
            return new DrmInitData.SchemeData(AbstractC0644C.WIDEVINE_UUID, "video/mp4", Base64.decode(stringAttr.substring(stringAttr.indexOf(44)), 0));
        }
        if ("com.widevine".equals(str2)) {
            return new DrmInitData.SchemeData(AbstractC0644C.WIDEVINE_UUID, "hls", Util.getUtf8Bytes(str));
        }
        if (!"com.microsoft.playready".equals(str2) || !"1".equals(optionalStringAttr)) {
            return null;
        }
        String stringAttr2 = parseStringAttr(str, REGEX_URI, map);
        byte[] bArrDecode = Base64.decode(stringAttr2.substring(stringAttr2.indexOf(44)), 0);
        UUID uuid = AbstractC0644C.PLAYREADY_UUID;
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

    private static HlsMediaPlaylist.ClientDefinedAttribute parseClientDefinedAttribute(String str, String str2, Map<String, String> map) {
        String str3 = str2 + "=";
        int iIndexOf = str.indexOf(str3) + str3.length();
        String strSubstring = str.substring(iIndexOf, (str.length() == iIndexOf + 1 ? 1 : 2) + iIndexOf);
        if (strSubstring.startsWith("\"")) {
            return new HlsMediaPlaylist.ClientDefinedAttribute(str2, parseStringAttr(str, Pattern.compile(str2 + "=\"((?:.|\f)+?)\""), map), 0);
        }
        if (strSubstring.equals("0x") || strSubstring.equals("0X")) {
            return new HlsMediaPlaylist.ClientDefinedAttribute(str2, parseStringAttr(str, Pattern.compile(str2 + "=(0[xX][A-F0-9]+)"), map), 1);
        }
        return new HlsMediaPlaylist.ClientDefinedAttribute(str2, parseDoubleAttr(str, Pattern.compile(str2 + "=([\\d\\.]+)\\b")));
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
            Utils$$ExternalSyntheticBUOutline0.m1068m();
            return null;
        }
    }
}
