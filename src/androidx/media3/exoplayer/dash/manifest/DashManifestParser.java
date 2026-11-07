package androidx.media3.exoplayer.dash.manifest;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import android.util.Xml;
import androidx.media3.common.AbstractC0644C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Label;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UriUtil;
import androidx.media3.common.util.Util;
import androidx.media3.common.util.XmlPullParserUtil;
import androidx.media3.exoplayer.dash.manifest.SegmentBase;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import androidx.media3.extractor.metadata.emsg.EventMessage;
import androidx.media3.extractor.mp4.PsshAtomUtil;
import com.google.android.gms.cast.MediaTrack;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.internal.url._UrlKt;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;
import org.webrtc.MediaStreamTrack;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes4.dex */
public class DashManifestParser extends DefaultHandler implements ParsingLoadable.Parser<DashManifest> {
    private final XmlPullParserFactory xmlParserFactory;
    private static final Pattern FRAME_RATE_PATTERN = Pattern.compile("(\\d+)(?:/(\\d+))?");
    private static final Pattern CEA_608_ACCESSIBILITY_PATTERN = Pattern.compile("CC([1-4])=.*");
    private static final Pattern CEA_708_ACCESSIBILITY_PATTERN = Pattern.compile("([1-9]|[1-5][0-9]|6[0-3])=.*");
    private static final int[] DOLBY_AC4_CHANNEL_CONFIGURATION_MAPPING = {2, 1, 2, 2, 2, 2, 1, 2, 2, 1, 1, 1, 1, 2, 1, 1, 2, 2, 2};
    private static final int[] MPEG_CHANNEL_CONFIGURATION_MAPPING = {-1, 1, 2, 3, 4, 5, 6, 8, 2, 3, 4, 7, 8, 24, 8, 12, 10, 12, 14, 12, 14};

    private static long getFinalAvailabilityTimeOffset(long j, long j2) {
        if (j2 != -9223372036854775807L) {
            j = j2;
        }
        if (j == LongCompanionObject.MAX_VALUE) {
            return -9223372036854775807L;
        }
        return j;
    }

    public DashManifestParser() {
        try {
            this.xmlParserFactory = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e) {
            Make$Map$$ExternalSyntheticBUOutline0.m1021m("Couldn't create XmlPullParserFactory instance", e);
            throw null;
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.media3.exoplayer.upstream.ParsingLoadable.Parser
    public DashManifest parse(Uri uri, InputStream inputStream) throws IOException {
        try {
            XmlPullParser xmlPullParserNewPullParser = this.xmlParserFactory.newPullParser();
            xmlPullParserNewPullParser.setInput(inputStream, null);
            if (xmlPullParserNewPullParser.next() != 2 || !"MPD".equals(xmlPullParserNewPullParser.getName())) {
                throw ParserException.createForMalformedManifest("inputStream does not contain a valid media presentation description", null);
            }
            return parseMediaPresentationDescription(xmlPullParserNewPullParser, uri);
        } catch (XmlPullParserException e) {
            if (e.getDetail() instanceof IOException) {
                throw ((IOException) e.getDetail());
            }
            throw ParserException.createForMalformedManifest(null, e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:81:0x01dd A[LOOP:0: B:24:0x00a5->B:81:0x01dd, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0199 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public DashManifest parseMediaPresentationDescription(XmlPullParser xmlPullParser, Uri uri) throws XmlPullParserException, IOException {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        long j;
        ArrayList arrayList4;
        long j2;
        ArrayList arrayList5;
        long j3;
        long j4;
        long j5;
        Throwable th;
        long j6;
        DashManifestParser dashManifestParser = this;
        boolean zIsDvbProfileDeclared = dashManifestParser.isDvbProfileDeclared(dashManifestParser.parseProfiles(xmlPullParser, "profiles", new String[0]));
        long dateTime = parseDateTime(xmlPullParser, "availabilityStartTime", -9223372036854775807L);
        long duration = parseDuration(xmlPullParser, "mediaPresentationDuration", -9223372036854775807L);
        long duration2 = parseDuration(xmlPullParser, "minBufferTime", -9223372036854775807L);
        boolean zEquals = "dynamic".equals(xmlPullParser.getAttributeValue(null, "type"));
        long duration3 = zEquals ? parseDuration(xmlPullParser, "minimumUpdatePeriod", -9223372036854775807L) : -9223372036854775807L;
        long duration4 = zEquals ? parseDuration(xmlPullParser, "timeShiftBufferDepth", -9223372036854775807L) : -9223372036854775807L;
        long duration5 = zEquals ? parseDuration(xmlPullParser, "suggestedPresentationDelay", -9223372036854775807L) : -9223372036854775807L;
        long dateTime2 = parseDateTime(xmlPullParser, "publishTime", -9223372036854775807L);
        long j7 = zEquals ? 0L : -9223372036854775807L;
        ArrayList arrayListNewArrayList = Lists.newArrayList(new BaseUrl(uri.toString(), uri.toString(), zIsDvbProfileDeclared ? 1 : Integer.MIN_VALUE, 1));
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        long j8 = zEquals ? -9223372036854775807L : 0L;
        ArrayList arrayList8 = arrayListNewArrayList;
        long availabilityTimeOffsetUs = j7;
        boolean z = false;
        boolean z2 = false;
        ProgramInformation programInformation = null;
        UtcTimingElement utcTiming = null;
        Uri uriResolveToUri = null;
        ServiceDescriptionElement serviceDescription = null;
        while (true) {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "BaseURL")) {
                if (!z2) {
                    availabilityTimeOffsetUs = dashManifestParser.parseAvailabilityTimeOffsetUs(xmlPullParser, availabilityTimeOffsetUs);
                    z2 = true;
                }
                arrayList = arrayList8;
                arrayList2 = arrayList6;
                arrayList7.addAll(dashManifestParser.parseBaseUrl(xmlPullParser, arrayList, zIsDvbProfileDeclared));
            } else {
                arrayList = arrayList8;
                arrayList2 = arrayList6;
                if (XmlPullParserUtil.isStartTag(xmlPullParser, "ProgramInformation")) {
                    programInformation = parseProgramInformation(xmlPullParser);
                } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "UTCTiming")) {
                    utcTiming = parseUtcTiming(xmlPullParser);
                } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "Location")) {
                    uriResolveToUri = UriUtil.resolveToUri(uri.toString(), xmlPullParser.nextText());
                } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "ServiceDescription")) {
                    serviceDescription = parseServiceDescription(xmlPullParser);
                } else {
                    if (XmlPullParserUtil.isStartTag(xmlPullParser, "Period") && !z) {
                        if (arrayList7.isEmpty()) {
                            arrayList3 = arrayList7;
                            arrayList5 = arrayList;
                            j3 = j8;
                            j4 = availabilityTimeOffsetUs;
                            arrayList4 = arrayList2;
                            arrayList8 = arrayList5;
                        } else {
                            arrayList5 = arrayList7;
                            arrayList3 = arrayList5;
                            arrayList8 = arrayList;
                            j3 = j8;
                            j4 = availabilityTimeOffsetUs;
                            arrayList4 = arrayList2;
                        }
                        Pair<Period, Long> period = parsePeriod(xmlPullParser, arrayList5, j3, j4, dateTime, duration4, zIsDvbProfileDeclared);
                        Period period2 = (Period) period.first;
                        j = duration;
                        if (period2.startMs != -9223372036854775807L) {
                            long jLongValue = ((Long) period.second).longValue();
                            j5 = jLongValue == -9223372036854775807L ? -9223372036854775807L : period2.startMs + jLongValue;
                            arrayList4.add(period2);
                        } else {
                            if (!zEquals) {
                                throw ParserException.createForMalformedManifest("Unable to determine start of period " + arrayList4.size(), null);
                            }
                            j5 = j3;
                            z = true;
                        }
                        j2 = j4;
                        j8 = j5;
                    } else {
                        arrayList3 = arrayList7;
                        j = duration;
                        arrayList8 = arrayList;
                        long j9 = j8;
                        long j10 = availabilityTimeOffsetUs;
                        arrayList4 = arrayList2;
                        maybeSkipTag(xmlPullParser);
                        j8 = j9;
                        j2 = j10;
                    }
                    if (!XmlPullParserUtil.isEndTag(xmlPullParser, "MPD")) {
                        if (j != -9223372036854775807L) {
                            th = null;
                            j6 = j;
                        } else if (j8 != -9223372036854775807L) {
                            j6 = j8;
                            th = null;
                        } else {
                            if (!zEquals) {
                                throw ParserException.createForMalformedManifest("Unable to determine duration of static manifest.", null);
                            }
                            th = null;
                            j6 = j;
                        }
                        if (arrayList4.isEmpty()) {
                            throw ParserException.createForMalformedManifest("No periods found.", th);
                        }
                        return buildMediaPresentationDescription(dateTime, j6, duration2, zEquals, duration3, duration4, duration5, dateTime2, programInformation, utcTiming, serviceDescription, uriResolveToUri, arrayList4);
                    }
                    long j11 = duration4;
                    long j12 = duration2;
                    ArrayList arrayList9 = arrayList4;
                    dashManifestParser = this;
                    zEquals = zEquals;
                    duration3 = duration3;
                    availabilityTimeOffsetUs = j2;
                    arrayList6 = arrayList9;
                    arrayList7 = arrayList3;
                    duration2 = j12;
                    duration4 = j11;
                    duration = j;
                }
            }
            arrayList3 = arrayList7;
            j2 = availabilityTimeOffsetUs;
            j = duration;
            arrayList4 = arrayList2;
            arrayList8 = arrayList;
            if (!XmlPullParserUtil.isEndTag(xmlPullParser, "MPD")) {
            }
        }
    }

    public DashManifest buildMediaPresentationDescription(long j, long j2, long j3, boolean z, long j4, long j5, long j6, long j7, ProgramInformation programInformation, UtcTimingElement utcTimingElement, ServiceDescriptionElement serviceDescriptionElement, Uri uri, List<Period> list) {
        return new DashManifest(j, j2, j3, z, j4, j5, j6, j7, programInformation, utcTimingElement, serviceDescriptionElement, uri, list);
    }

    public UtcTimingElement parseUtcTiming(XmlPullParser xmlPullParser) {
        return buildUtcTimingElement(xmlPullParser.getAttributeValue(null, "schemeIdUri"), xmlPullParser.getAttributeValue(null, "value"));
    }

    public UtcTimingElement buildUtcTimingElement(String str, String str2) {
        return new UtcTimingElement(str, str2);
    }

    public ServiceDescriptionElement parseServiceDescription(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        long j = -9223372036854775807L;
        long j2 = -9223372036854775807L;
        long j3 = -9223372036854775807L;
        float f = -3.4028235E38f;
        float f2 = -3.4028235E38f;
        while (true) {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "Latency")) {
                j = parseLong(xmlPullParser, "target", -9223372036854775807L);
                j2 = parseLong(xmlPullParser, "min", -9223372036854775807L);
                j3 = parseLong(xmlPullParser, "max", -9223372036854775807L);
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "PlaybackRate")) {
                f = parseFloat(xmlPullParser, "min", -3.4028235E38f);
                f2 = parseFloat(xmlPullParser, "max", -3.4028235E38f);
            }
            long j4 = j;
            long j5 = j2;
            long j6 = j3;
            float f3 = f;
            float f4 = f2;
            if (XmlPullParserUtil.isEndTag(xmlPullParser, "ServiceDescription")) {
                return new ServiceDescriptionElement(j4, j5, j6, f3, f4);
            }
            j = j4;
            j2 = j5;
            j3 = j6;
            f = f3;
            f2 = f4;
        }
    }

    public Pair<Period, Long> parsePeriod(XmlPullParser xmlPullParser, List<BaseUrl> list, long j, long j2, long j3, long j4, boolean z) throws XmlPullParserException, IOException {
        long availabilityTimeOffsetUs;
        SegmentBase segmentBase;
        ArrayList arrayList;
        ArrayList arrayList2;
        long j5;
        Object obj;
        long j6;
        XmlPullParser xmlPullParser2;
        long j7;
        long j8;
        SegmentBase segmentTemplate;
        long j9;
        Descriptor descriptor;
        long j10;
        SegmentBase segmentBase2;
        ArrayList arrayList3;
        boolean z2;
        long j11;
        ArrayList arrayList4;
        ArrayList arrayList5;
        ArrayList arrayList6;
        List<BaseUrl> list2;
        ArrayList arrayList7;
        DashManifestParser dashManifestParser = this;
        XmlPullParser xmlPullParser3 = xmlPullParser;
        String attributeValue = xmlPullParser3.getAttributeValue(null, "id");
        long duration = parseDuration(xmlPullParser3, "start", j);
        long j12 = j3 != -9223372036854775807L ? j3 + duration : -9223372036854775807L;
        long duration2 = parseDuration(xmlPullParser3, "duration", -9223372036854775807L);
        ArrayList arrayList8 = new ArrayList();
        long j13 = -9223372036854775807L;
        ArrayList arrayList9 = new ArrayList();
        boolean z3 = false;
        Descriptor descriptor2 = null;
        long availabilityTimeOffsetUs2 = j2;
        ArrayList arrayList10 = arrayList8;
        SegmentBase segmentBase3 = null;
        long j14 = -9223372036854775807L;
        ArrayList arrayList11 = new ArrayList();
        while (true) {
            xmlPullParser3.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser3, "BaseURL")) {
                if (!z3) {
                    availabilityTimeOffsetUs2 = dashManifestParser.parseAvailabilityTimeOffsetUs(xmlPullParser3, availabilityTimeOffsetUs2);
                    z3 = true;
                }
                arrayList11.addAll(dashManifestParser.parseBaseUrl(xmlPullParser3, list, z));
                arrayList2 = arrayList10;
                j9 = availabilityTimeOffsetUs2;
                arrayList = arrayList9;
                z2 = z3;
                j5 = j13;
                obj = null;
                j6 = duration2;
                arrayList7 = arrayList11;
                descriptor = descriptor2;
                xmlPullParser2 = xmlPullParser3;
                segmentBase2 = segmentBase3;
                j11 = j14;
                j8 = j12;
            } else {
                ArrayList arrayList12 = arrayList10;
                if (XmlPullParserUtil.isStartTag(xmlPullParser3, "AdaptationSet")) {
                    if (arrayList11.isEmpty()) {
                        arrayList6 = arrayList11;
                        list2 = list;
                    } else {
                        ArrayList arrayList13 = arrayList11;
                        arrayList6 = arrayList13;
                        list2 = arrayList13;
                    }
                    ArrayList arrayList14 = arrayList9;
                    long j15 = availabilityTimeOffsetUs2;
                    long j16 = j12;
                    long j17 = duration2;
                    AdaptationSet adaptationSet = dashManifestParser.parseAdaptationSet(xmlPullParser3, list2, segmentBase3, j17, j15, j14, j16, j4, z);
                    j12 = j16;
                    availabilityTimeOffsetUs = j14;
                    arrayList12.add(adaptationSet);
                    segmentBase = segmentBase3;
                    j6 = j17;
                    arrayList = arrayList14;
                    obj = null;
                    xmlPullParser2 = xmlPullParser3;
                    j7 = j15;
                    arrayList2 = arrayList12;
                    j5 = -9223372036854775807L;
                    arrayList5 = arrayList6;
                } else {
                    ArrayList arrayList15 = arrayList11;
                    ArrayList arrayList16 = arrayList9;
                    long j18 = availabilityTimeOffsetUs2;
                    availabilityTimeOffsetUs = j14;
                    if (XmlPullParserUtil.isStartTag(xmlPullParser3, "EventStream")) {
                        arrayList16.add(parseEventStream(xmlPullParser));
                        segmentBase = segmentBase3;
                        j6 = duration2;
                        arrayList = arrayList16;
                        arrayList2 = arrayList12;
                        j5 = -9223372036854775807L;
                        obj = null;
                        xmlPullParser2 = xmlPullParser3;
                        j7 = j18;
                        arrayList5 = arrayList15;
                    } else {
                        if (XmlPullParserUtil.isStartTag(xmlPullParser3, "SegmentBase")) {
                            segmentTemplate = dashManifestParser.parseSegmentBase(xmlPullParser3, null);
                            j9 = j18;
                            obj = null;
                            arrayList = arrayList16;
                            arrayList2 = arrayList12;
                            j5 = -9223372036854775807L;
                            j8 = j12;
                            j6 = duration2;
                            descriptor = descriptor2;
                            xmlPullParser2 = xmlPullParser3;
                        } else if (XmlPullParserUtil.isStartTag(xmlPullParser3, "SegmentList")) {
                            long j19 = j12;
                            long j20 = duration2;
                            long availabilityTimeOffsetUs3 = dashManifestParser.parseAvailabilityTimeOffsetUs(xmlPullParser3, -9223372036854775807L);
                            arrayList = arrayList16;
                            arrayList2 = arrayList12;
                            j5 = -9223372036854775807L;
                            SegmentBase.SegmentList segmentList = dashManifestParser.parseSegmentList(xmlPullParser3, null, j19, j20, j18, availabilityTimeOffsetUs3, j4);
                            j9 = j18;
                            obj = null;
                            j8 = j19;
                            j6 = j20;
                            descriptor = descriptor2;
                            xmlPullParser2 = xmlPullParser3;
                            j10 = availabilityTimeOffsetUs3;
                            segmentBase2 = segmentList;
                            arrayList3 = arrayList15;
                            z2 = z3;
                            j11 = j10;
                            arrayList7 = arrayList3;
                        } else {
                            segmentBase = segmentBase3;
                            arrayList = arrayList16;
                            arrayList2 = arrayList12;
                            j5 = -9223372036854775807L;
                            if (XmlPullParserUtil.isStartTag(xmlPullParser3, "SegmentTemplate")) {
                                availabilityTimeOffsetUs = dashManifestParser.parseAvailabilityTimeOffsetUs(xmlPullParser3, -9223372036854775807L);
                                obj = null;
                                segmentTemplate = dashManifestParser.parseSegmentTemplate(xmlPullParser3, null, ImmutableList.of(), j12, duration2, j18, availabilityTimeOffsetUs, j4);
                                j6 = duration2;
                                xmlPullParser2 = xmlPullParser3;
                                j8 = j12;
                                j9 = j18;
                                descriptor = descriptor2;
                            } else {
                                obj = null;
                                j6 = duration2;
                                xmlPullParser2 = xmlPullParser3;
                                j7 = j18;
                                j8 = j12;
                                if (XmlPullParserUtil.isStartTag(xmlPullParser2, "AssetIdentifier")) {
                                    descriptor2 = parseDescriptor(xmlPullParser2, "AssetIdentifier");
                                    arrayList4 = arrayList15;
                                } else {
                                    maybeSkipTag(xmlPullParser2);
                                    arrayList4 = arrayList15;
                                }
                                j9 = j7;
                                descriptor = descriptor2;
                                j10 = availabilityTimeOffsetUs;
                                segmentBase2 = segmentBase;
                                arrayList3 = arrayList4;
                                z2 = z3;
                                j11 = j10;
                                arrayList7 = arrayList3;
                            }
                        }
                        j10 = availabilityTimeOffsetUs;
                        segmentBase2 = segmentTemplate;
                        arrayList3 = arrayList15;
                        z2 = z3;
                        j11 = j10;
                        arrayList7 = arrayList3;
                    }
                }
                j8 = j12;
                arrayList4 = arrayList5;
                j9 = j7;
                descriptor = descriptor2;
                j10 = availabilityTimeOffsetUs;
                segmentBase2 = segmentBase;
                arrayList3 = arrayList4;
                z2 = z3;
                j11 = j10;
                arrayList7 = arrayList3;
            }
            if (XmlPullParserUtil.isEndTag(xmlPullParser2, "Period")) {
                return Pair.create(buildPeriod(attributeValue, duration, arrayList2, arrayList, descriptor), Long.valueOf(j6));
            }
            dashManifestParser = this;
            xmlPullParser3 = xmlPullParser2;
            j12 = j8;
            segmentBase3 = segmentBase2;
            j14 = j11;
            arrayList11 = arrayList7;
            arrayList10 = arrayList2;
            descriptor2 = descriptor;
            z3 = z2;
            duration2 = j6;
            j13 = j5;
            availabilityTimeOffsetUs2 = j9;
            arrayList9 = arrayList;
        }
    }

    public Period buildPeriod(String str, long j, List<AdaptationSet> list, List<EventStream> list2, Descriptor descriptor) {
        return new Period(str, j, list, list2, descriptor);
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x03cc A[LOOP:0: B:3:0x00a3->B:75:0x03cc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x037c A[EDGE_INSN: B:76:0x037c->B:69:0x037c BREAK  A[LOOP:0: B:3:0x00a3->B:75:0x03cc], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AdaptationSet parseAdaptationSet(XmlPullParser xmlPullParser, List<BaseUrl> list, SegmentBase segmentBase, long j, long j2, long j3, long j4, long j5, boolean z) throws XmlPullParserException, IOException {
        String str;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        String str2;
        int i;
        int i2;
        int iCheckContentTypeConsistency;
        long j6;
        ArrayList arrayList5;
        SegmentBase segmentTemplate;
        ArrayList arrayList6;
        String str3;
        long j7;
        int i3;
        ArrayList arrayList7;
        ArrayList arrayList8;
        ArrayList arrayList9;
        ArrayList arrayList10;
        ArrayList arrayList11;
        List<BaseUrl> list2;
        ArrayList arrayList12;
        SegmentBase segmentBase2;
        ArrayList arrayList13;
        XmlPullParser xmlPullParser2;
        DashManifestParser dashManifestParser;
        int i4;
        int i5;
        long j8;
        ArrayList arrayList14;
        ArrayList arrayList15;
        String str4;
        int i6;
        String str5;
        float f;
        long j9;
        String str6;
        long j10;
        boolean z2;
        String str7;
        long j11;
        ArrayList arrayList16;
        ArrayList arrayList17;
        ArrayList arrayList18;
        ArrayList arrayList19;
        ArrayList arrayList20;
        DashManifestParser dashManifestParser2 = this;
        XmlPullParser xmlPullParser3 = xmlPullParser;
        long j12 = parseLong(xmlPullParser3, "id", -1L);
        int contentType = parseContentType(xmlPullParser);
        String attributeValue = xmlPullParser3.getAttributeValue(null, "mimeType");
        String attributeValue2 = xmlPullParser3.getAttributeValue(null, "codecs");
        String attributeValue3 = xmlPullParser3.getAttributeValue(null, "scte214:supplementalCodecs");
        String attributeValue4 = xmlPullParser3.getAttributeValue(null, "scte214:supplementalProfiles");
        int i7 = parseInt(xmlPullParser3, "width", -1);
        int i8 = parseInt(xmlPullParser3, "height", -1);
        float frameRate = parseFrameRate(xmlPullParser3, -1.0f);
        int i9 = parseInt(xmlPullParser3, "audioSamplingRate", -1);
        String str8 = "lang";
        String attributeValue5 = xmlPullParser3.getAttributeValue(null, "lang");
        String attributeValue6 = xmlPullParser3.getAttributeValue(null, "label");
        ArrayList arrayList21 = new ArrayList();
        ArrayList arrayList22 = new ArrayList();
        ArrayList arrayList23 = new ArrayList();
        ArrayList arrayList24 = arrayList21;
        ArrayList arrayList25 = new ArrayList();
        ArrayList arrayList26 = new ArrayList();
        ArrayList arrayList27 = new ArrayList();
        ArrayList arrayList28 = arrayList23;
        ArrayList arrayList29 = new ArrayList();
        String str9 = attributeValue;
        ArrayList arrayList30 = new ArrayList();
        long j13 = j3;
        String str10 = attributeValue4;
        int i10 = i7;
        int i11 = i8;
        float f2 = frameRate;
        int iCheckContentTypeConsistency2 = contentType;
        String str11 = attributeValue5;
        boolean z3 = false;
        int audioChannelConfiguration = -1;
        String str12 = null;
        SegmentBase segmentBase3 = segmentBase;
        String str13 = attributeValue3;
        long availabilityTimeOffsetUs = j2;
        ArrayList arrayList31 = new ArrayList();
        while (true) {
            xmlPullParser3.next();
            int i12 = audioChannelConfiguration;
            if (XmlPullParserUtil.isStartTag(xmlPullParser3, "BaseURL")) {
                if (!z3) {
                    availabilityTimeOffsetUs = dashManifestParser2.parseAvailabilityTimeOffsetUs(xmlPullParser3, availabilityTimeOffsetUs);
                    z3 = true;
                }
                arrayList31.addAll(dashManifestParser2.parseBaseUrl(xmlPullParser3, list, z));
                ArrayList arrayList32 = arrayList24;
                arrayList4 = arrayList27;
                arrayList10 = arrayList32;
                audioChannelConfiguration = i12;
                availabilityTimeOffsetUs = availabilityTimeOffsetUs;
                arrayList19 = arrayList31;
                arrayList5 = arrayList22;
                str = str8;
                arrayList = arrayList25;
                segmentTemplate = segmentBase3;
                arrayList7 = arrayList30;
                arrayList8 = arrayList29;
                i = i9;
                arrayList6 = arrayList26;
                arrayList9 = arrayList28;
            } else {
                long j14 = availabilityTimeOffsetUs;
                if (XmlPullParserUtil.isStartTag(xmlPullParser3, "ContentProtection")) {
                    Pair<String, DrmInitData.SchemeData> contentProtection = parseContentProtection(xmlPullParser);
                    arrayList18 = arrayList31;
                    Object obj = contentProtection.first;
                    if (obj != null) {
                        str12 = (String) obj;
                    }
                    Object obj2 = contentProtection.second;
                    if (obj2 != null) {
                        arrayList22.add((DrmInitData.SchemeData) obj2);
                    }
                    ArrayList arrayList33 = arrayList24;
                    arrayList4 = arrayList27;
                    arrayList10 = arrayList33;
                    audioChannelConfiguration = i12;
                    arrayList8 = arrayList29;
                    str = str8;
                    arrayList = arrayList25;
                    arrayList9 = arrayList28;
                    arrayList7 = arrayList30;
                    availabilityTimeOffsetUs = j14;
                    arrayList5 = arrayList22;
                    i = i9;
                    segmentTemplate = segmentBase3;
                } else {
                    ArrayList arrayList34 = arrayList31;
                    if (XmlPullParserUtil.isStartTag(xmlPullParser3, "ContentComponent")) {
                        String strCheckLanguageConsistency = checkLanguageConsistency(str11, xmlPullParser3.getAttributeValue(null, str8));
                        iCheckContentTypeConsistency2 = checkContentTypeConsistency(iCheckContentTypeConsistency2, parseContentType(xmlPullParser));
                        ArrayList arrayList35 = arrayList24;
                        arrayList4 = arrayList27;
                        arrayList10 = arrayList35;
                        audioChannelConfiguration = i12;
                        str11 = strCheckLanguageConsistency;
                    } else {
                        if (XmlPullParserUtil.isStartTag(xmlPullParser3, "Role")) {
                            arrayList26.add(parseDescriptor(xmlPullParser3, "Role"));
                        } else if (XmlPullParserUtil.isStartTag(xmlPullParser3, "AudioChannelConfiguration")) {
                            ArrayList arrayList36 = arrayList24;
                            arrayList4 = arrayList27;
                            arrayList10 = arrayList36;
                            audioChannelConfiguration = dashManifestParser2.parseAudioChannelConfiguration(xmlPullParser3, attributeValue2);
                        } else if (XmlPullParserUtil.isStartTag(xmlPullParser3, "Accessibility")) {
                            arrayList25.add(parseDescriptor(xmlPullParser3, "Accessibility"));
                        } else if (XmlPullParserUtil.isStartTag(xmlPullParser3, "EssentialProperty")) {
                            arrayList27.add(parseDescriptor(xmlPullParser3, "EssentialProperty"));
                        } else if (XmlPullParserUtil.isStartTag(xmlPullParser3, "SupplementalProperty")) {
                            arrayList29.add(parseDescriptor(xmlPullParser3, "SupplementalProperty"));
                        } else {
                            if (XmlPullParserUtil.isStartTag(xmlPullParser3, "Representation")) {
                                if (arrayList34.isEmpty()) {
                                    list2 = list;
                                    arrayList2 = arrayList24;
                                    arrayList12 = arrayList30;
                                    segmentBase2 = segmentBase3;
                                    arrayList13 = arrayList29;
                                    xmlPullParser2 = xmlPullParser3;
                                    dashManifestParser = dashManifestParser2;
                                    i4 = iCheckContentTypeConsistency2;
                                    i5 = i10;
                                    j8 = j14;
                                    arrayList14 = arrayList34;
                                    arrayList15 = arrayList27;
                                    str = str8;
                                    str4 = str10;
                                    arrayList3 = arrayList28;
                                    i6 = i11;
                                    audioChannelConfiguration = i12;
                                    str5 = str11;
                                    f = f2;
                                    j9 = j5;
                                    arrayList5 = arrayList22;
                                    str6 = str9;
                                    j10 = j;
                                    z2 = z;
                                    str7 = str13;
                                    j11 = j4;
                                } else {
                                    arrayList2 = arrayList24;
                                    arrayList12 = arrayList30;
                                    ArrayList arrayList37 = arrayList34;
                                    segmentBase2 = segmentBase3;
                                    arrayList13 = arrayList29;
                                    xmlPullParser2 = xmlPullParser3;
                                    dashManifestParser = dashManifestParser2;
                                    i4 = iCheckContentTypeConsistency2;
                                    i5 = i10;
                                    j8 = j14;
                                    arrayList14 = arrayList37;
                                    audioChannelConfiguration = i12;
                                    arrayList15 = arrayList27;
                                    str = str8;
                                    str4 = str10;
                                    arrayList3 = arrayList28;
                                    i6 = i11;
                                    z2 = z;
                                    str5 = str11;
                                    str7 = str13;
                                    f = f2;
                                    j11 = j4;
                                    j9 = j5;
                                    arrayList5 = arrayList22;
                                    str6 = str9;
                                    j10 = j;
                                    list2 = arrayList37;
                                }
                                RepresentationInfo representation = dashManifestParser.parseRepresentation(xmlPullParser2, list2, str6, attributeValue2, str7, str4, i5, i6, f, audioChannelConfiguration, i9, str5, arrayList26, arrayList25, arrayList15, arrayList13, segmentBase2, j11, j10, j8, j13, j9, z2);
                                str9 = str6;
                                str13 = str7;
                                str10 = str4;
                                i11 = i6;
                                f2 = f;
                                String str14 = str5;
                                ArrayList arrayList38 = arrayList13;
                                segmentTemplate = segmentBase2;
                                arrayList6 = arrayList26;
                                arrayList4 = arrayList15;
                                str3 = attributeValue2;
                                arrayList = arrayList25;
                                i = i9;
                                i10 = i5;
                                iCheckContentTypeConsistency = checkContentTypeConsistency(i4, MimeTypes.getTrackType(representation.format.sampleMimeType));
                                ArrayList arrayList39 = arrayList12;
                                arrayList39.add(representation);
                                xmlPullParser3 = xmlPullParser2;
                                availabilityTimeOffsetUs = j8;
                                arrayList7 = arrayList39;
                                arrayList8 = arrayList38;
                                str11 = str14;
                                arrayList11 = arrayList14;
                            } else {
                                str = str8;
                                arrayList = arrayList25;
                                arrayList2 = arrayList24;
                                arrayList3 = arrayList28;
                                ArrayList arrayList40 = arrayList29;
                                arrayList4 = arrayList27;
                                str2 = str11;
                                i = i9;
                                ArrayList arrayList41 = arrayList30;
                                i2 = i12;
                                XmlPullParser xmlPullParser4 = xmlPullParser3;
                                DashManifestParser dashManifestParser3 = dashManifestParser2;
                                iCheckContentTypeConsistency = iCheckContentTypeConsistency2;
                                j6 = j14;
                                arrayList5 = arrayList22;
                                segmentTemplate = segmentBase3;
                                ArrayList arrayList42 = arrayList34;
                                arrayList6 = arrayList26;
                                str3 = attributeValue2;
                                j7 = j13;
                                if (XmlPullParserUtil.isStartTag(xmlPullParser4, "SegmentBase")) {
                                    SegmentBase.SingleSegmentBase segmentBase4 = dashManifestParser3.parseSegmentBase(xmlPullParser4, (SegmentBase.SingleSegmentBase) segmentTemplate);
                                    xmlPullParser3 = xmlPullParser4;
                                    segmentTemplate = segmentBase4;
                                    j13 = j7;
                                    availabilityTimeOffsetUs = j6;
                                    arrayList7 = arrayList41;
                                    arrayList8 = arrayList40;
                                    str11 = str2;
                                    audioChannelConfiguration = i2;
                                    arrayList11 = arrayList42;
                                } else if (XmlPullParserUtil.isStartTag(xmlPullParser4, "SegmentList")) {
                                    long availabilityTimeOffsetUs2 = dashManifestParser3.parseAvailabilityTimeOffsetUs(xmlPullParser4, j7);
                                    arrayList7 = arrayList41;
                                    xmlPullParser3 = xmlPullParser;
                                    segmentTemplate = dashManifestParser3.parseSegmentList(xmlPullParser3, (SegmentBase.SegmentList) segmentTemplate, j4, j, j6, availabilityTimeOffsetUs2, j5);
                                    availabilityTimeOffsetUs = j6;
                                    arrayList8 = arrayList40;
                                    audioChannelConfiguration = i2;
                                    iCheckContentTypeConsistency2 = iCheckContentTypeConsistency;
                                    arrayList9 = arrayList3;
                                    j13 = availabilityTimeOffsetUs2;
                                    str11 = str2;
                                    arrayList10 = arrayList2;
                                    arrayList20 = arrayList42;
                                    if (!XmlPullParserUtil.isEndTag(xmlPullParser3, "AdaptationSet")) {
                                        break;
                                    }
                                    ArrayList arrayList43 = arrayList4;
                                    arrayList24 = arrayList10;
                                    arrayList27 = arrayList43;
                                    dashManifestParser2 = this;
                                    arrayList30 = arrayList7;
                                    arrayList28 = arrayList9;
                                    arrayList29 = arrayList8;
                                    attributeValue2 = str3;
                                    i9 = i;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList6;
                                    arrayList31 = arrayList20;
                                    str8 = str;
                                    segmentBase3 = segmentTemplate;
                                    arrayList22 = arrayList5;
                                } else {
                                    i3 = iCheckContentTypeConsistency;
                                    xmlPullParser3 = xmlPullParser4;
                                    arrayList7 = arrayList41;
                                    if (XmlPullParserUtil.isStartTag(xmlPullParser3, "SegmentTemplate")) {
                                        long availabilityTimeOffsetUs3 = dashManifestParser3.parseAvailabilityTimeOffsetUs(xmlPullParser3, j7);
                                        arrayList8 = arrayList40;
                                        segmentTemplate = dashManifestParser3.parseSegmentTemplate(xmlPullParser3, (SegmentBase.SegmentTemplate) segmentTemplate, arrayList8, j4, j, j6, availabilityTimeOffsetUs3, j5);
                                        availabilityTimeOffsetUs = j6;
                                        iCheckContentTypeConsistency2 = i3;
                                        arrayList10 = arrayList2;
                                        arrayList9 = arrayList3;
                                        j13 = availabilityTimeOffsetUs3;
                                        arrayList16 = arrayList42;
                                        str11 = str2;
                                        audioChannelConfiguration = i2;
                                        arrayList20 = arrayList16;
                                        if (!XmlPullParserUtil.isEndTag(xmlPullParser3, "AdaptationSet")) {
                                        }
                                    } else {
                                        arrayList8 = arrayList40;
                                        if (XmlPullParserUtil.isStartTag(xmlPullParser3, "InbandEventStream")) {
                                            arrayList9 = arrayList3;
                                            arrayList9.add(parseDescriptor(xmlPullParser3, "InbandEventStream"));
                                            arrayList10 = arrayList2;
                                            arrayList17 = arrayList42;
                                        } else {
                                            arrayList9 = arrayList3;
                                            if (XmlPullParserUtil.isStartTag(xmlPullParser3, "Label")) {
                                                arrayList10 = arrayList2;
                                                arrayList10.add(parseLabel(xmlPullParser));
                                                arrayList17 = arrayList42;
                                            } else {
                                                arrayList10 = arrayList2;
                                                arrayList17 = arrayList42;
                                                if (XmlPullParserUtil.isStartTag(xmlPullParser3)) {
                                                    parseAdaptationSetChild(xmlPullParser);
                                                    arrayList17 = arrayList42;
                                                }
                                            }
                                        }
                                        iCheckContentTypeConsistency2 = i3;
                                        j13 = j7;
                                        availabilityTimeOffsetUs = j6;
                                        arrayList16 = arrayList17;
                                        str11 = str2;
                                        audioChannelConfiguration = i2;
                                        arrayList20 = arrayList16;
                                        if (!XmlPullParserUtil.isEndTag(xmlPullParser3, "AdaptationSet")) {
                                        }
                                    }
                                }
                            }
                            arrayList10 = arrayList2;
                            arrayList9 = arrayList3;
                            iCheckContentTypeConsistency2 = iCheckContentTypeConsistency;
                            arrayList20 = arrayList11;
                            if (!XmlPullParserUtil.isEndTag(xmlPullParser3, "AdaptationSet")) {
                            }
                        }
                        arrayList5 = arrayList22;
                        segmentTemplate = segmentBase3;
                        arrayList6 = arrayList26;
                        str3 = attributeValue2;
                        j7 = j13;
                        i3 = iCheckContentTypeConsistency2;
                        j6 = j14;
                        ArrayList arrayList44 = arrayList24;
                        arrayList4 = arrayList27;
                        arrayList10 = arrayList44;
                        str = str8;
                        arrayList = arrayList25;
                        arrayList7 = arrayList30;
                        arrayList17 = arrayList34;
                        i2 = i12;
                        arrayList8 = arrayList29;
                        i = i9;
                        arrayList9 = arrayList28;
                        str2 = str11;
                        iCheckContentTypeConsistency2 = i3;
                        j13 = j7;
                        availabilityTimeOffsetUs = j6;
                        arrayList16 = arrayList17;
                        str11 = str2;
                        audioChannelConfiguration = i2;
                        arrayList20 = arrayList16;
                        if (!XmlPullParserUtil.isEndTag(xmlPullParser3, "AdaptationSet")) {
                        }
                    }
                    str = str8;
                    arrayList = arrayList25;
                    arrayList7 = arrayList30;
                    availabilityTimeOffsetUs = j14;
                    arrayList8 = arrayList29;
                    arrayList5 = arrayList22;
                    i = i9;
                    segmentTemplate = segmentBase3;
                    arrayList9 = arrayList28;
                    arrayList18 = arrayList34;
                }
                arrayList19 = arrayList18;
                arrayList6 = arrayList26;
            }
            str3 = attributeValue2;
            arrayList20 = arrayList19;
            if (!XmlPullParserUtil.isEndTag(xmlPullParser3, "AdaptationSet")) {
            }
        }
        ArrayList arrayList45 = new ArrayList(arrayList7.size());
        int i13 = 0;
        while (i13 < arrayList7.size()) {
            ArrayList arrayList46 = arrayList9;
            ArrayList arrayList47 = arrayList10;
            String str15 = attributeValue6;
            arrayList45.add(buildRepresentation((RepresentationInfo) arrayList7.get(i13), str15, arrayList47, str12, arrayList5, arrayList46));
            i13++;
            attributeValue6 = str15;
            arrayList9 = arrayList46;
            arrayList10 = arrayList47;
        }
        return buildAdaptationSet(j12, iCheckContentTypeConsistency2, arrayList45, arrayList, arrayList4, arrayList8);
    }

    public AdaptationSet buildAdaptationSet(long j, int i, List<Representation> list, List<Descriptor> list2, List<Descriptor> list3, List<Descriptor> list4) {
        return new AdaptationSet(j, i, list, list2, list3, list4);
    }

    public int parseContentType(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "contentType");
        if (TextUtils.isEmpty(attributeValue)) {
            return -1;
        }
        if (MediaStreamTrack.AUDIO_TRACK_KIND.equals(attributeValue)) {
            return 1;
        }
        if (MediaStreamTrack.VIDEO_TRACK_KIND.equals(attributeValue)) {
            return 2;
        }
        if ("text".equals(attributeValue)) {
            return 3;
        }
        return "image".equals(attributeValue) ? 4 : -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x011e  */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v4, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Pair<String, DrmInitData.SchemeData> parseContentProtection(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String attributeValue;
        UUID uuid;
        UUID uuid2;
        ?? text;
        ?? BuildPsshAtom;
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "schemeIdUri");
        if (attributeValue2 != null) {
            String lowerCase = Ascii.toLowerCase(attributeValue2);
            lowerCase.getClass();
            switch (lowerCase) {
                case "urn:uuid:e2719d58-a985-b3c9-781a-b030af78d30e":
                    uuid = AbstractC0644C.CLEARKEY_UUID;
                    attributeValue = null;
                    uuid2 = null;
                    text = uuid2;
                    BuildPsshAtom = uuid2;
                    break;
                case "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95":
                    uuid = AbstractC0644C.PLAYREADY_UUID;
                    attributeValue = null;
                    uuid2 = null;
                    text = uuid2;
                    BuildPsshAtom = uuid2;
                    break;
                case "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed":
                    uuid = AbstractC0644C.WIDEVINE_UUID;
                    attributeValue = null;
                    uuid2 = null;
                    text = uuid2;
                    BuildPsshAtom = uuid2;
                    break;
                case "urn:mpeg:dash:mp4protection:2011":
                    attributeValue = xmlPullParser.getAttributeValue(null, "value");
                    String attributeValueIgnorePrefix = XmlPullParserUtil.getAttributeValueIgnorePrefix(xmlPullParser, "default_KID");
                    if (TextUtils.isEmpty(attributeValueIgnorePrefix) || "00000000-0000-0000-0000-000000000000".equals(attributeValueIgnorePrefix)) {
                        Log.m164w("MpdParser", "Ignoring <ContentProtection> with schemeIdUri=\"urn:mpeg:dash:mp4protection:2011\" (ClearKey) due to missing required default_KID attribute.");
                        uuid = null;
                        uuid2 = uuid;
                        text = uuid2;
                        BuildPsshAtom = uuid2;
                        break;
                    } else {
                        String[] strArrSplit = attributeValueIgnorePrefix.split("\\s+");
                        UUID[] uuidArr = new UUID[strArrSplit.length];
                        for (int i = 0; i < strArrSplit.length; i++) {
                            uuidArr[i] = UUID.fromString(strArrSplit[i]);
                        }
                        uuid = AbstractC0644C.COMMON_PSSH_UUID;
                        text = 0;
                        BuildPsshAtom = PsshAtomUtil.buildPsshAtom(uuid, uuidArr, null);
                        break;
                    }
                    break;
                default:
                    attributeValue = null;
                    uuid = null;
                    uuid2 = uuid;
                    text = uuid2;
                    BuildPsshAtom = uuid2;
                    break;
            }
        }
        do {
            xmlPullParser.next();
            if ((XmlPullParserUtil.isStartTag(xmlPullParser, "clearkey:Laurl") || XmlPullParserUtil.isStartTag(xmlPullParser, "dashif:Laurl")) && xmlPullParser.next() == 4) {
                BuildPsshAtom = BuildPsshAtom;
                text = xmlPullParser.getText();
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "ms:laurl")) {
                BuildPsshAtom = BuildPsshAtom;
                text = xmlPullParser.getAttributeValue(null, "licenseUrl");
            } else if (BuildPsshAtom == 0 && XmlPullParserUtil.isStartTagIgnorePrefix(xmlPullParser, "pssh") && xmlPullParser.next() == 4) {
                byte[] bArrDecode = Base64.decode(xmlPullParser.getText(), 0);
                UUID uuid3 = PsshAtomUtil.parseUuid(bArrDecode);
                if (uuid3 == null) {
                    Log.m164w("MpdParser", "Skipping malformed cenc:pssh data");
                    uuid = uuid3;
                    BuildPsshAtom = 0;
                    text = text;
                } else {
                    BuildPsshAtom = bArrDecode;
                    uuid = uuid3;
                    text = text;
                }
            } else if (BuildPsshAtom == 0) {
                UUID uuid4 = AbstractC0644C.PLAYREADY_UUID;
                if (uuid4.equals(uuid) && XmlPullParserUtil.isStartTag(xmlPullParser, "mspr:pro") && xmlPullParser.next() == 4) {
                    BuildPsshAtom = PsshAtomUtil.buildPsshAtom(uuid4, Base64.decode(xmlPullParser.getText(), 0));
                    text = text;
                } else {
                    maybeSkipTag(xmlPullParser);
                    BuildPsshAtom = BuildPsshAtom;
                    text = text;
                }
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, "ContentProtection"));
        return Pair.create(attributeValue, uuid != null ? new DrmInitData.SchemeData(uuid, text, "video/mp4", BuildPsshAtom) : null);
    }

    public void parseAdaptationSetChild(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        maybeSkipTag(xmlPullParser);
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0260 A[LOOP:0: B:3:0x007b->B:56:0x0260, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0205 A[EDGE_INSN: B:57:0x0205->B:46:0x0205 BREAK  A[LOOP:0: B:3:0x007b->B:56:0x0260], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public RepresentationInfo parseRepresentation(XmlPullParser xmlPullParser, List<BaseUrl> list, String str, String str2, String str3, String str4, int i, int i2, float f, int i3, int i4, String str5, List<Descriptor> list2, List<Descriptor> list3, List<Descriptor> list4, List<Descriptor> list5, SegmentBase segmentBase, long j, long j2, long j3, long j4, long j5, boolean z) throws XmlPullParserException, IOException {
        String str6;
        ArrayList arrayList;
        int i5;
        ArrayList arrayList2;
        XmlPullParser xmlPullParser2;
        String str7;
        ArrayList arrayList3;
        ArrayList arrayList4;
        long j6;
        String str8;
        boolean z2;
        long j7;
        int i6;
        SegmentBase singleSegmentBase;
        ArrayList arrayList5;
        ArrayList arrayList6;
        ArrayList arrayList7;
        DashManifestParser dashManifestParser = this;
        XmlPullParser xmlPullParser3 = xmlPullParser;
        String attributeValue = xmlPullParser3.getAttributeValue(null, "id");
        int i7 = parseInt(xmlPullParser3, "bandwidth", -1);
        String string = parseString(xmlPullParser3, "mimeType", str);
        String string2 = parseString(xmlPullParser3, "codecs", str2);
        String string3 = parseString(xmlPullParser3, "scte214:supplementalCodecs", str3);
        String string4 = parseString(xmlPullParser3, "scte214:supplementalProfiles", str4);
        int i8 = parseInt(xmlPullParser3, "width", i);
        int i9 = parseInt(xmlPullParser3, "height", i2);
        float frameRate = parseFrameRate(xmlPullParser3, f);
        int i10 = parseInt(xmlPullParser3, "audioSamplingRate", i4);
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList(list4);
        ArrayList arrayList11 = new ArrayList(list5);
        int i11 = i3;
        long j8 = j4;
        String str9 = null;
        boolean z3 = false;
        SegmentBase segmentBase2 = segmentBase;
        long availabilityTimeOffsetUs = j3;
        ArrayList arrayList12 = new ArrayList();
        while (true) {
            xmlPullParser3.next();
            ArrayList arrayList13 = arrayList8;
            if (XmlPullParserUtil.isStartTag(xmlPullParser3, "BaseURL")) {
                if (!z3) {
                    availabilityTimeOffsetUs = dashManifestParser.parseAvailabilityTimeOffsetUs(xmlPullParser3, availabilityTimeOffsetUs);
                    z3 = true;
                }
                SegmentBase segmentBase3 = segmentBase2;
                str6 = attributeValue;
                arrayList12.addAll(dashManifestParser.parseBaseUrl(xmlPullParser3, list, z));
                arrayList = arrayList13;
                xmlPullParser2 = xmlPullParser3;
                arrayList3 = arrayList10;
                arrayList4 = arrayList11;
                arrayList7 = arrayList12;
                j6 = j8;
                str7 = string2;
                i5 = i7;
                i6 = i11;
                str8 = str9;
                z2 = z3;
                singleSegmentBase = segmentBase3;
            } else {
                SegmentBase segmentBase4 = segmentBase2;
                str6 = attributeValue;
                if (XmlPullParserUtil.isStartTag(xmlPullParser3, "AudioChannelConfiguration")) {
                    int audioChannelConfiguration = dashManifestParser.parseAudioChannelConfiguration(xmlPullParser3, string2);
                    singleSegmentBase = segmentBase4;
                    arrayList = arrayList13;
                    xmlPullParser2 = xmlPullParser3;
                    i6 = audioChannelConfiguration;
                    arrayList3 = arrayList10;
                    arrayList4 = arrayList11;
                    arrayList7 = arrayList12;
                    j6 = j8;
                    str7 = string2;
                    i5 = i7;
                    str8 = str9;
                    z2 = z3;
                } else if (XmlPullParserUtil.isStartTag(xmlPullParser3, "SegmentBase")) {
                    SegmentBase.SingleSegmentBase segmentBase5 = dashManifestParser.parseSegmentBase(xmlPullParser3, (SegmentBase.SingleSegmentBase) segmentBase4);
                    arrayList = arrayList13;
                    xmlPullParser2 = xmlPullParser3;
                    arrayList3 = arrayList10;
                    arrayList6 = arrayList12;
                    j6 = j8;
                    str7 = string2;
                    i5 = i7;
                    i6 = i11;
                    str8 = str9;
                    z2 = z3;
                    singleSegmentBase = segmentBase5;
                    arrayList2 = arrayList9;
                    arrayList4 = arrayList11;
                    j7 = availabilityTimeOffsetUs;
                    arrayList5 = arrayList6;
                    if (XmlPullParserUtil.isEndTag(xmlPullParser2, "Representation")) {
                        break;
                    }
                    int i12 = i8;
                    ArrayList arrayList14 = arrayList2;
                    String str10 = string4;
                    i8 = i12;
                    arrayList9 = arrayList14;
                    arrayList10 = arrayList3;
                    arrayList11 = arrayList4;
                    arrayList8 = arrayList;
                    segmentBase2 = singleSegmentBase;
                    availabilityTimeOffsetUs = j7;
                    j8 = j6;
                    arrayList12 = arrayList5;
                    string2 = str7;
                    z3 = z2;
                    str9 = str8;
                    i11 = i6;
                    string3 = string3;
                    string4 = str10;
                    attributeValue = str6;
                    i7 = i5;
                    xmlPullParser3 = xmlPullParser2;
                    dashManifestParser = this;
                } else {
                    if (XmlPullParserUtil.isStartTag(xmlPullParser3, "SegmentList")) {
                        long j9 = availabilityTimeOffsetUs;
                        long availabilityTimeOffsetUs2 = dashManifestParser.parseAvailabilityTimeOffsetUs(xmlPullParser3, j8);
                        arrayList = arrayList13;
                        arrayList5 = arrayList12;
                        i5 = i7;
                        arrayList2 = arrayList9;
                        SegmentBase.SegmentList segmentList = dashManifestParser.parseSegmentList(xmlPullParser3, (SegmentBase.SegmentList) segmentBase4, j, j2, j9, availabilityTimeOffsetUs2, j5);
                        xmlPullParser2 = xmlPullParser3;
                        str7 = string2;
                        str8 = str9;
                        z2 = z3;
                        arrayList4 = arrayList11;
                        j7 = j9;
                        i6 = i11;
                        singleSegmentBase = segmentList;
                        arrayList3 = arrayList10;
                        j6 = availabilityTimeOffsetUs2;
                    } else {
                        arrayList = arrayList13;
                        ArrayList arrayList15 = arrayList10;
                        ArrayList arrayList16 = arrayList11;
                        ArrayList arrayList17 = arrayList12;
                        long j10 = availabilityTimeOffsetUs;
                        i5 = i7;
                        arrayList2 = arrayList9;
                        if (XmlPullParserUtil.isStartTag(xmlPullParser3, "SegmentTemplate")) {
                            long availabilityTimeOffsetUs3 = dashManifestParser.parseAvailabilityTimeOffsetUs(xmlPullParser3, j8);
                            str7 = string2;
                            SegmentBase.SegmentTemplate segmentTemplate = dashManifestParser.parseSegmentTemplate(xmlPullParser3, (SegmentBase.SegmentTemplate) segmentBase4, list5, j, j2, j10, availabilityTimeOffsetUs3, j5);
                            xmlPullParser2 = xmlPullParser3;
                            str8 = str9;
                            z2 = z3;
                            arrayList4 = arrayList16;
                            j7 = j10;
                            i6 = i11;
                            singleSegmentBase = segmentTemplate;
                            arrayList3 = arrayList15;
                            j6 = availabilityTimeOffsetUs3;
                            arrayList5 = arrayList17;
                        } else {
                            xmlPullParser2 = xmlPullParser3;
                            str7 = string2;
                            if (XmlPullParserUtil.isStartTag(xmlPullParser2, "ContentProtection")) {
                                Pair<String, DrmInitData.SchemeData> contentProtection = parseContentProtection(xmlPullParser);
                                Object obj = contentProtection.first;
                                if (obj != null) {
                                    str9 = (String) obj;
                                }
                                Object obj2 = contentProtection.second;
                                if (obj2 != null) {
                                    arrayList.add((DrmInitData.SchemeData) obj2);
                                }
                                str8 = str9;
                                z2 = z3;
                                arrayList3 = arrayList15;
                                arrayList4 = arrayList16;
                                j7 = j10;
                                j6 = j8;
                            } else {
                                if (XmlPullParserUtil.isStartTag(xmlPullParser2, "InbandEventStream")) {
                                    arrayList2.add(parseDescriptor(xmlPullParser2, "InbandEventStream"));
                                    arrayList3 = arrayList15;
                                } else if (XmlPullParserUtil.isStartTag(xmlPullParser2, "EssentialProperty")) {
                                    arrayList3 = arrayList15;
                                    arrayList3.add(parseDescriptor(xmlPullParser2, "EssentialProperty"));
                                } else {
                                    arrayList3 = arrayList15;
                                    if (XmlPullParserUtil.isStartTag(xmlPullParser2, "SupplementalProperty")) {
                                        arrayList4 = arrayList16;
                                        arrayList4.add(parseDescriptor(xmlPullParser2, "SupplementalProperty"));
                                    } else {
                                        arrayList4 = arrayList16;
                                        maybeSkipTag(xmlPullParser2);
                                    }
                                    j6 = j8;
                                    str8 = str9;
                                    z2 = z3;
                                    j7 = j10;
                                }
                                arrayList4 = arrayList16;
                                j6 = j8;
                                str8 = str9;
                                z2 = z3;
                                j7 = j10;
                            }
                            i6 = i11;
                            singleSegmentBase = segmentBase4;
                            arrayList5 = arrayList17;
                        }
                    }
                    if (XmlPullParserUtil.isEndTag(xmlPullParser2, "Representation")) {
                    }
                }
            }
            arrayList2 = arrayList9;
            arrayList6 = arrayList7;
            j7 = availabilityTimeOffsetUs;
            arrayList5 = arrayList6;
            if (XmlPullParserUtil.isEndTag(xmlPullParser2, "Representation")) {
            }
        }
        ArrayList arrayList18 = arrayList2;
        String str11 = string4;
        ArrayList arrayList19 = arrayList;
        String str12 = string3;
        ArrayList arrayList20 = arrayList4;
        ArrayList arrayList21 = arrayList3;
        Format formatBuildFormat = buildFormat(str6, string, i8, i9, frameRate, i6, i10, i5, str5, list2, list3, str7, str12, str11, arrayList21, arrayList20);
        if (singleSegmentBase == null) {
            singleSegmentBase = new SegmentBase.SingleSegmentBase();
        }
        boolean zIsEmpty = arrayList5.isEmpty();
        List list6 = arrayList5;
        if (zIsEmpty) {
            list6 = list;
        }
        return new RepresentationInfo(formatBuildFormat, list6, singleSegmentBase, str8, arrayList19, arrayList18, arrayList21, arrayList20, -1L);
    }

    public Format buildFormat(String str, String str2, int i, int i2, float f, int i3, int i4, int i5, String str3, List<Descriptor> list, List<Descriptor> list2, String str4, String str5, String str6, List<Descriptor> list3, List<Descriptor> list4) {
        ColorInfo colorInfo;
        String str7 = str5;
        String str8 = str4;
        String sampleMimeType = getSampleMimeType(str2, str8);
        if ("audio/eac3".equals(sampleMimeType)) {
            sampleMimeType = parseEac3SupplementalProperties(list4);
            if ("audio/eac3-joc".equals(sampleMimeType)) {
                str8 = "ec+3";
            }
        }
        if (MimeTypes.isDolbyVisionCodec(str8, str7)) {
            ColorInfo colorInfoForDolbyVision = Util.getColorInfoForDolbyVision(str8, str7, str6);
            if (str7 == null) {
                str7 = str8;
            }
            str8 = str7;
            colorInfo = colorInfoForDolbyVision;
            sampleMimeType = "video/dolby-vision";
        } else {
            colorInfo = null;
        }
        int selectionFlagsFromRoleDescriptors = parseSelectionFlagsFromRoleDescriptors(list);
        int roleFlagsFromRoleDescriptors = parseRoleFlagsFromRoleDescriptors(list) | parseRoleFlagsFromAccessibilityDescriptors(list2) | parseRoleFlagsFromProperties(list3) | parseRoleFlagsFromProperties(list4);
        Pair<Integer, Integer> tileCountFromProperties = parseTileCountFromProperties(list3);
        Format.Builder language = new Format.Builder().setId(str).setContainerMimeType(str2).setSampleMimeType(sampleMimeType).setCodecs(str8).setPeakBitrate(i5).setSelectionFlags(selectionFlagsFromRoleDescriptors).setRoleFlags(roleFlagsFromRoleDescriptors).setColorInfo(colorInfo).setLanguage(str3);
        int cea708AccessibilityChannel = -1;
        Format.Builder tileCountVertical = language.setTileCountHorizontal(tileCountFromProperties != null ? ((Integer) tileCountFromProperties.first).intValue() : -1).setTileCountVertical(tileCountFromProperties != null ? ((Integer) tileCountFromProperties.second).intValue() : -1);
        if (MimeTypes.isVideo(sampleMimeType)) {
            tileCountVertical.setWidth(i).setHeight(i2).setFrameRate(f);
        } else if (MimeTypes.isAudio(sampleMimeType)) {
            tileCountVertical.setChannelCount(i3).setSampleRate(i4);
        } else if (MimeTypes.isText(sampleMimeType)) {
            if ("application/cea-608".equals(sampleMimeType)) {
                cea708AccessibilityChannel = parseCea608AccessibilityChannel(list2);
            } else if ("application/cea-708".equals(sampleMimeType)) {
                cea708AccessibilityChannel = parseCea708AccessibilityChannel(list2);
            }
            tileCountVertical.setAccessibilityChannel(cea708AccessibilityChannel);
        } else if (MimeTypes.isImage(sampleMimeType)) {
            tileCountVertical.setWidth(i).setHeight(i2);
        }
        return tileCountVertical.build();
    }

    public Representation buildRepresentation(RepresentationInfo representationInfo, String str, List<Label> list, String str2, ArrayList<DrmInitData.SchemeData> arrayList, ArrayList<Descriptor> arrayList2) {
        Format.Builder builderBuildUpon = representationInfo.format.buildUpon();
        if (str != null && list.isEmpty()) {
            builderBuildUpon.setLabel(str);
        } else {
            builderBuildUpon.setLabels(list);
        }
        String str3 = representationInfo.drmSchemeType;
        if (str3 != null) {
            str2 = str3;
        }
        ArrayList<DrmInitData.SchemeData> arrayList3 = representationInfo.drmSchemeDatas;
        arrayList3.addAll(arrayList);
        if (!arrayList3.isEmpty()) {
            fillInClearKeyInformation(arrayList3);
            filterRedundantIncompleteSchemeDatas(arrayList3);
            builderBuildUpon.setDrmInitData(new DrmInitData(str2, arrayList3));
        }
        ArrayList<Descriptor> arrayList4 = representationInfo.inbandEventStreams;
        arrayList4.addAll(arrayList2);
        return Representation.newInstance(representationInfo.revisionId, builderBuildUpon.build(), representationInfo.baseUrls, representationInfo.segmentBase, arrayList4, representationInfo.essentialProperties, representationInfo.supplementalProperties, null);
    }

    public SegmentBase.SingleSegmentBase parseSegmentBase(XmlPullParser xmlPullParser, SegmentBase.SingleSegmentBase singleSegmentBase) throws XmlPullParserException, IOException {
        long j = parseLong(xmlPullParser, "timescale", singleSegmentBase != null ? singleSegmentBase.timescale : 1L);
        long j2 = parseLong(xmlPullParser, "presentationTimeOffset", singleSegmentBase != null ? singleSegmentBase.presentationTimeOffset : 0L);
        long j3 = singleSegmentBase != null ? singleSegmentBase.indexStart : 0L;
        long j4 = singleSegmentBase != null ? singleSegmentBase.indexLength : 0L;
        String attributeValue = xmlPullParser.getAttributeValue(null, "indexRange");
        if (attributeValue != null) {
            String[] strArrSplit = attributeValue.split("-");
            j3 = Long.parseLong(strArrSplit[0]);
            j4 = (Long.parseLong(strArrSplit[1]) - j3) + 1;
        }
        long j5 = j4;
        RangedUri initialization = singleSegmentBase != null ? singleSegmentBase.initialization : null;
        while (true) {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "Initialization")) {
                initialization = parseInitialization(xmlPullParser);
            } else {
                maybeSkipTag(xmlPullParser);
            }
            RangedUri rangedUri = initialization;
            if (XmlPullParserUtil.isEndTag(xmlPullParser, "SegmentBase")) {
                return buildSingleSegmentBase(rangedUri, j, j2, j3, j5);
            }
            initialization = rangedUri;
        }
    }

    public SegmentBase.SingleSegmentBase buildSingleSegmentBase(RangedUri rangedUri, long j, long j2, long j3, long j4) {
        return new SegmentBase.SingleSegmentBase(rangedUri, j, j2, j3, j4);
    }

    public SegmentBase.SegmentList parseSegmentList(XmlPullParser xmlPullParser, SegmentBase.SegmentList segmentList, long j, long j2, long j3, long j4, long j5) throws XmlPullParserException, IOException {
        long j6;
        long j7 = parseLong(xmlPullParser, "timescale", segmentList != null ? segmentList.timescale : 1L);
        long j8 = parseLong(xmlPullParser, "presentationTimeOffset", segmentList != null ? segmentList.presentationTimeOffset : 0L);
        long j9 = parseLong(xmlPullParser, "duration", segmentList != null ? segmentList.duration : -9223372036854775807L);
        long j10 = parseLong(xmlPullParser, "startNumber", segmentList != null ? segmentList.startNumber : 1L);
        long finalAvailabilityTimeOffset = getFinalAvailabilityTimeOffset(j3, j4);
        List<RangedUri> arrayList = null;
        RangedUri initialization = null;
        List<SegmentBase.SegmentTimelineElement> segmentTimeline = null;
        while (true) {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "Initialization")) {
                initialization = parseInitialization(xmlPullParser);
                j6 = j7;
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "SegmentTimeline")) {
                j6 = j7;
                segmentTimeline = parseSegmentTimeline(xmlPullParser, j6, j2);
            } else {
                j6 = j7;
                if (XmlPullParserUtil.isStartTag(xmlPullParser, "SegmentURL")) {
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(parseSegmentUrl(xmlPullParser));
                } else {
                    maybeSkipTag(xmlPullParser);
                }
            }
            if (XmlPullParserUtil.isEndTag(xmlPullParser, "SegmentList")) {
                break;
            }
            j7 = j6;
        }
        if (segmentList != null) {
            if (initialization == null) {
                initialization = segmentList.initialization;
            }
            if (segmentTimeline == null) {
                segmentTimeline = segmentList.segmentTimeline;
            }
            if (arrayList == null) {
                arrayList = segmentList.mediaSegments;
            }
        }
        return buildSegmentList(initialization, j6, j8, j10, j9, segmentTimeline, finalAvailabilityTimeOffset, arrayList, j5, j);
    }

    public SegmentBase.SegmentList buildSegmentList(RangedUri rangedUri, long j, long j2, long j3, long j4, List<SegmentBase.SegmentTimelineElement> list, long j5, List<RangedUri> list2, long j6, long j7) {
        return new SegmentBase.SegmentList(rangedUri, j, j2, j3, j4, list, j5, list2, Util.msToUs(j6), Util.msToUs(j7));
    }

    public SegmentBase.SegmentTemplate parseSegmentTemplate(XmlPullParser xmlPullParser, SegmentBase.SegmentTemplate segmentTemplate, List<Descriptor> list, long j, long j2, long j3, long j4, long j5) throws XmlPullParserException, IOException {
        long j6;
        DashManifestParser dashManifestParser = this;
        long j7 = parseLong(xmlPullParser, "timescale", segmentTemplate != null ? segmentTemplate.timescale : 1L);
        long j8 = parseLong(xmlPullParser, "presentationTimeOffset", segmentTemplate != null ? segmentTemplate.presentationTimeOffset : 0L);
        long j9 = parseLong(xmlPullParser, "duration", segmentTemplate != null ? segmentTemplate.duration : -9223372036854775807L);
        long j10 = parseLong(xmlPullParser, "startNumber", segmentTemplate != null ? segmentTemplate.startNumber : 1L);
        long lastSegmentNumberSupplementalProperty = parseLastSegmentNumberSupplementalProperty(list);
        long finalAvailabilityTimeOffset = getFinalAvailabilityTimeOffset(j3, j4);
        UrlTemplate urlTemplate = dashManifestParser.parseUrlTemplate(xmlPullParser, "media", segmentTemplate != null ? segmentTemplate.mediaTemplate : null);
        UrlTemplate urlTemplate2 = dashManifestParser.parseUrlTemplate(xmlPullParser, "initialization", segmentTemplate != null ? segmentTemplate.initializationTemplate : null);
        RangedUri initialization = null;
        List<SegmentBase.SegmentTimelineElement> segmentTimeline = null;
        while (true) {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "Initialization")) {
                initialization = parseInitialization(xmlPullParser);
                j6 = j7;
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "SegmentTimeline")) {
                j6 = j7;
                segmentTimeline = dashManifestParser.parseSegmentTimeline(xmlPullParser, j6, j2);
            } else {
                j6 = j7;
                maybeSkipTag(xmlPullParser);
            }
            if (XmlPullParserUtil.isEndTag(xmlPullParser, "SegmentTemplate")) {
                break;
            }
            dashManifestParser = this;
            finalAvailabilityTimeOffset = finalAvailabilityTimeOffset;
            lastSegmentNumberSupplementalProperty = lastSegmentNumberSupplementalProperty;
            j10 = j10;
            j8 = j8;
            j7 = j6;
        }
        if (segmentTemplate != null) {
            if (initialization == null) {
                initialization = segmentTemplate.initialization;
            }
            if (segmentTimeline == null) {
                segmentTimeline = segmentTemplate.segmentTimeline;
            }
        }
        return buildSegmentTemplate(initialization, j6, j8, j10, lastSegmentNumberSupplementalProperty, j9, segmentTimeline, finalAvailabilityTimeOffset, urlTemplate2, urlTemplate, j5, j);
    }

    public SegmentBase.SegmentTemplate buildSegmentTemplate(RangedUri rangedUri, long j, long j2, long j3, long j4, long j5, List<SegmentBase.SegmentTimelineElement> list, long j6, UrlTemplate urlTemplate, UrlTemplate urlTemplate2, long j7, long j8) {
        return new SegmentBase.SegmentTemplate(rangedUri, j, j2, j3, j4, j5, list, j6, urlTemplate, urlTemplate2, Util.msToUs(j7), Util.msToUs(j8));
    }

    public EventStream parseEventStream(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        DashManifestParser dashManifestParser;
        long j;
        String str;
        String str2;
        XmlPullParser xmlPullParser2;
        String string = parseString(xmlPullParser, "schemeIdUri", _UrlKt.FRAGMENT_ENCODE_SET);
        String string2 = parseString(xmlPullParser, "value", _UrlKt.FRAGMENT_ENCODE_SET);
        long j2 = parseLong(xmlPullParser, "timescale", 1L);
        long j3 = parseLong(xmlPullParser, "presentationTimeOffset", 0L);
        ArrayList arrayList = new ArrayList();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        while (true) {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "Event")) {
                dashManifestParser = this;
                j = j2;
                str = string2;
                str2 = string;
                xmlPullParser2 = xmlPullParser;
                arrayList.add(dashManifestParser.parseEvent(xmlPullParser2, str2, str, j, j3, byteArrayOutputStream));
            } else {
                dashManifestParser = this;
                j = j2;
                str = string2;
                str2 = string;
                xmlPullParser2 = xmlPullParser;
                maybeSkipTag(xmlPullParser2);
            }
            if (XmlPullParserUtil.isEndTag(xmlPullParser2, "EventStream")) {
                break;
            }
            this = dashManifestParser;
            xmlPullParser = xmlPullParser2;
            string = str2;
            string2 = str;
            j2 = j;
        }
        long[] jArr = new long[arrayList.size()];
        EventMessage[] eventMessageArr = new EventMessage[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            Pair pair = (Pair) arrayList.get(i);
            jArr[i] = ((Long) pair.first).longValue();
            eventMessageArr[i] = (EventMessage) pair.second;
        }
        return dashManifestParser.buildEventStream(str2, str, j, jArr, eventMessageArr);
    }

    public EventStream buildEventStream(String str, String str2, long j, long[] jArr, EventMessage[] eventMessageArr) {
        return new EventStream(str, str2, j, jArr, eventMessageArr);
    }

    public Pair<Long, EventMessage> parseEvent(XmlPullParser xmlPullParser, String str, String str2, long j, long j2, ByteArrayOutputStream byteArrayOutputStream) throws XmlPullParserException, IOException {
        long j3 = parseLong(xmlPullParser, "id", 0L);
        long j4 = parseLong(xmlPullParser, "duration", -9223372036854775807L);
        long j5 = parseLong(xmlPullParser, "presentationTime", 0L);
        long jScaleLargeTimestamp = Util.scaleLargeTimestamp(j4, 1000L, j);
        long jScaleLargeTimestamp2 = Util.scaleLargeTimestamp(j5 - j2, 1000000L, j);
        String string = parseString(xmlPullParser, "messageData", null);
        byte[] eventObject = parseEventObject(xmlPullParser, byteArrayOutputStream);
        Long lValueOf = Long.valueOf(jScaleLargeTimestamp2);
        if (string != null) {
            eventObject = Util.getUtf8Bytes(string);
        }
        return Pair.create(lValueOf, buildEvent(str, str2, j3, jScaleLargeTimestamp, eventObject));
    }

    public byte[] parseEventObject(XmlPullParser xmlPullParser, ByteArrayOutputStream byteArrayOutputStream) throws XmlPullParserException, IOException {
        byteArrayOutputStream.reset();
        XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
        xmlSerializerNewSerializer.setOutput(byteArrayOutputStream, StandardCharsets.UTF_8.name());
        xmlPullParser.nextToken();
        while (!XmlPullParserUtil.isEndTag(xmlPullParser, "Event")) {
            switch (xmlPullParser.getEventType()) {
                case 0:
                    xmlSerializerNewSerializer.startDocument(null, Boolean.FALSE);
                    break;
                case 1:
                    xmlSerializerNewSerializer.endDocument();
                    break;
                case 2:
                    xmlSerializerNewSerializer.startTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                    for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
                        xmlSerializerNewSerializer.attribute(xmlPullParser.getAttributeNamespace(i), xmlPullParser.getAttributeName(i), xmlPullParser.getAttributeValue(i));
                    }
                    break;
                case 3:
                    xmlSerializerNewSerializer.endTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                    break;
                case 4:
                    xmlSerializerNewSerializer.text(xmlPullParser.getText());
                    break;
                case 5:
                    xmlSerializerNewSerializer.cdsect(xmlPullParser.getText());
                    break;
                case 6:
                    xmlSerializerNewSerializer.entityRef(xmlPullParser.getText());
                    break;
                case 7:
                    xmlSerializerNewSerializer.ignorableWhitespace(xmlPullParser.getText());
                    break;
                case 8:
                    xmlSerializerNewSerializer.processingInstruction(xmlPullParser.getText());
                    break;
                case 9:
                    xmlSerializerNewSerializer.comment(xmlPullParser.getText());
                    break;
                case 10:
                    xmlSerializerNewSerializer.docdecl(xmlPullParser.getText());
                    break;
            }
            xmlPullParser.nextToken();
        }
        xmlSerializerNewSerializer.flush();
        return byteArrayOutputStream.toByteArray();
    }

    public EventMessage buildEvent(String str, String str2, long j, long j2, byte[] bArr) {
        return new EventMessage(str, str2, j2, j, bArr);
    }

    public List<SegmentBase.SegmentTimelineElement> parseSegmentTimeline(XmlPullParser xmlPullParser, long j, long j2) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        long jAddSegmentTimelineElementsToList = 0;
        long j3 = -9223372036854775807L;
        boolean z = false;
        int i = 0;
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "S")) {
                long j4 = parseLong(xmlPullParser, "t", -9223372036854775807L);
                if (z) {
                    ArrayList arrayList2 = arrayList;
                    jAddSegmentTimelineElementsToList = addSegmentTimelineElementsToList(arrayList2, jAddSegmentTimelineElementsToList, j3, i, j4);
                    arrayList = arrayList2;
                }
                if (j4 != -9223372036854775807L) {
                    jAddSegmentTimelineElementsToList = j4;
                }
                j3 = parseLong(xmlPullParser, "d", -9223372036854775807L);
                i = parseInt(xmlPullParser, "r", 0);
                z = true;
            } else {
                maybeSkipTag(xmlPullParser);
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, "SegmentTimeline"));
        if (z) {
            addSegmentTimelineElementsToList(arrayList, jAddSegmentTimelineElementsToList, j3, i, Util.scaleLargeTimestamp(j2, j, 1000L));
        }
        return arrayList;
    }

    private long addSegmentTimelineElementsToList(List<SegmentBase.SegmentTimelineElement> list, long j, long j2, int i, long j3) {
        int iCeilDivide = i >= 0 ? i + 1 : (int) Util.ceilDivide(j3 - j, j2);
        for (int i2 = 0; i2 < iCeilDivide; i2++) {
            list.add(buildSegmentTimelineElement(j, j2));
            j += j2;
        }
        return j;
    }

    public SegmentBase.SegmentTimelineElement buildSegmentTimelineElement(long j, long j2) {
        return new SegmentBase.SegmentTimelineElement(j, j2);
    }

    public UrlTemplate parseUrlTemplate(XmlPullParser xmlPullParser, String str, UrlTemplate urlTemplate) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue != null ? UrlTemplate.compile(attributeValue) : urlTemplate;
    }

    public RangedUri parseInitialization(XmlPullParser xmlPullParser) {
        return parseRangedUrl(xmlPullParser, "sourceURL", "range");
    }

    public RangedUri parseSegmentUrl(XmlPullParser xmlPullParser) {
        return parseRangedUrl(xmlPullParser, "media", "mediaRange");
    }

    public RangedUri parseRangedUrl(XmlPullParser xmlPullParser, String str, String str2) {
        long j;
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        String attributeValue2 = xmlPullParser.getAttributeValue(null, str2);
        long j2 = -1;
        if (attributeValue2 != null) {
            String[] strArrSplit = attributeValue2.split("-");
            j = Long.parseLong(strArrSplit[0]);
            if (strArrSplit.length == 2) {
                j2 = (Long.parseLong(strArrSplit[1]) - j) + 1;
            }
        } else {
            j = 0;
        }
        return buildRangedUri(attributeValue, j, j2);
    }

    public RangedUri buildRangedUri(String str, long j, long j2) {
        return new RangedUri(str, j, j2);
    }

    public ProgramInformation parseProgramInformation(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String strNextText = null;
        String string = parseString(xmlPullParser, "moreInformationURL", null);
        String string2 = parseString(xmlPullParser, "lang", null);
        String strNextText2 = null;
        String strNextText3 = null;
        while (true) {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "Title")) {
                strNextText = xmlPullParser.nextText();
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "Source")) {
                strNextText2 = xmlPullParser.nextText();
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "Copyright")) {
                strNextText3 = xmlPullParser.nextText();
            } else {
                maybeSkipTag(xmlPullParser);
            }
            String str = strNextText2;
            String str2 = strNextText;
            String str3 = strNextText3;
            if (XmlPullParserUtil.isEndTag(xmlPullParser, "ProgramInformation")) {
                return new ProgramInformation(str2, str, str3, string, string2);
            }
            strNextText = str2;
            strNextText2 = str;
            strNextText3 = str3;
        }
    }

    public Label parseLabel(XmlPullParser xmlPullParser) {
        return new Label(xmlPullParser.getAttributeValue(null, "lang"), parseText(xmlPullParser, "Label"));
    }

    public List<BaseUrl> parseBaseUrl(XmlPullParser xmlPullParser, List<BaseUrl> list, boolean z) throws XmlPullParserException, IOException {
        int i;
        String attributeValue = xmlPullParser.getAttributeValue(null, "dvb:priority");
        if (attributeValue != null) {
            i = Integer.parseInt(attributeValue);
        } else {
            i = z ? 1 : Integer.MIN_VALUE;
        }
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "dvb:weight");
        int i2 = attributeValue2 != null ? Integer.parseInt(attributeValue2) : 1;
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "serviceLocation");
        String text = parseText(xmlPullParser, "BaseURL");
        if (UriUtil.isAbsolute(text)) {
            if (attributeValue3 == null) {
                attributeValue3 = text;
            }
            return Lists.newArrayList(new BaseUrl(text, attributeValue3, i, i2));
        }
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < list.size(); i3++) {
            BaseUrl baseUrl = list.get(i3);
            String strResolve = UriUtil.resolve(baseUrl.url, text);
            String str = attributeValue3 == null ? strResolve : attributeValue3;
            if (z) {
                i = baseUrl.priority;
                i2 = baseUrl.weight;
                str = baseUrl.serviceLocation;
            }
            arrayList.add(new BaseUrl(strResolve, str, i, i2));
        }
        return arrayList;
    }

    public long parseAvailabilityTimeOffsetUs(XmlPullParser xmlPullParser, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "availabilityTimeOffset");
        return attributeValue == null ? j : "INF".equals(attributeValue) ? LongCompanionObject.MAX_VALUE : (long) (Float.parseFloat(attributeValue) * 1000000.0f);
    }

    public int parseAudioChannelConfiguration(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        int dtsChannelConfiguration;
        String string = parseString(xmlPullParser, "schemeIdUri", null);
        string.getClass();
        dtsChannelConfiguration = -1;
        switch (string) {
            case "urn:dts:dash:audio_channel_configuration:2012":
            case "tag:dts.com,2014:dash:audio_channel_configuration:2012":
                dtsChannelConfiguration = parseDtsChannelConfiguration(xmlPullParser);
                break;
            case "tag:dolby.com,2015:dash:audio_channel_configuration:2015":
                dtsChannelConfiguration = parseDolbyAC4ChannelConfiguration(xmlPullParser, str);
                break;
            case "urn:mpeg:dash:23003:3:audio_channel_configuration:2011":
                dtsChannelConfiguration = parseInt(xmlPullParser, "value", -1);
                break;
            case "tag:dolby.com,2014:dash:audio_channel_configuration:2011":
            case "urn:dolby:dash:audio_channel_configuration:2011":
                dtsChannelConfiguration = parseDolbyChannelConfiguration(xmlPullParser);
                break;
            case "urn:mpeg:mpegB:cicp:ChannelConfiguration":
                dtsChannelConfiguration = parseMpegChannelConfiguration(xmlPullParser);
                break;
            case "tag:dts.com,2018:uhd:audio_channel_configuration":
                dtsChannelConfiguration = parseDtsxChannelConfiguration(xmlPullParser);
                break;
        }
        do {
            xmlPullParser.next();
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, "AudioChannelConfiguration"));
        return dtsChannelConfiguration;
    }

    public int parseSelectionFlagsFromRoleDescriptors(List<Descriptor> list) {
        int selectionFlagsFromDashRoleScheme = 0;
        for (int i = 0; i < list.size(); i++) {
            Descriptor descriptor = list.get(i);
            if (Ascii.equalsIgnoreCase("urn:mpeg:dash:role:2011", descriptor.schemeIdUri)) {
                selectionFlagsFromDashRoleScheme |= parseSelectionFlagsFromDashRoleScheme(descriptor.value);
            }
        }
        return selectionFlagsFromDashRoleScheme;
    }

    public int parseSelectionFlagsFromDashRoleScheme(String str) {
        if (str == null) {
            return 0;
        }
        return (str.equals(MediaTrack.ROLE_FORCED_SUBTITLE) || str.equals("forced-subtitle")) ? 2 : 0;
    }

    public int parseRoleFlagsFromRoleDescriptors(List<Descriptor> list) {
        int roleFlagsFromDashRoleScheme = 0;
        for (int i = 0; i < list.size(); i++) {
            Descriptor descriptor = list.get(i);
            if (Ascii.equalsIgnoreCase("urn:mpeg:dash:role:2011", descriptor.schemeIdUri)) {
                roleFlagsFromDashRoleScheme |= parseRoleFlagsFromDashRoleScheme(descriptor.value);
            }
        }
        return roleFlagsFromDashRoleScheme;
    }

    public int parseRoleFlagsFromAccessibilityDescriptors(List<Descriptor> list) {
        int tvaAudioPurposeCsValue;
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            Descriptor descriptor = list.get(i2);
            if (Ascii.equalsIgnoreCase("urn:mpeg:dash:role:2011", descriptor.schemeIdUri)) {
                tvaAudioPurposeCsValue = parseRoleFlagsFromDashRoleScheme(descriptor.value);
            } else if (Ascii.equalsIgnoreCase("urn:tva:metadata:cs:AudioPurposeCS:2007", descriptor.schemeIdUri)) {
                tvaAudioPurposeCsValue = parseTvaAudioPurposeCsValue(descriptor.value);
            }
            i |= tvaAudioPurposeCsValue;
        }
        return i;
    }

    public int parseRoleFlagsFromProperties(List<Descriptor> list) {
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (Ascii.equalsIgnoreCase("http://dashif.org/guidelines/trickmode", list.get(i2).schemeIdUri)) {
                i = 16384;
            }
        }
        return i;
    }

    public int parseRoleFlagsFromDashRoleScheme(String str) {
        if (str == null) {
            return 0;
        }
        switch (str) {
        }
        return 0;
    }

    public int parseTvaAudioPurposeCsValue(String str) {
        if (str == null) {
            return 0;
        }
        switch (str) {
        }
        return 0;
    }

    public String[] parseProfiles(XmlPullParser xmlPullParser, String str, String[] strArr) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? strArr : attributeValue.split(",");
    }

    public Pair<Integer, Integer> parseTileCountFromProperties(List<Descriptor> list) {
        String str;
        char c2 = 0;
        for (int i = 0; i < list.size(); i++) {
            Descriptor descriptor = list.get(i);
            if ((Ascii.equalsIgnoreCase("http://dashif.org/thumbnail_tile", descriptor.schemeIdUri) || Ascii.equalsIgnoreCase("http://dashif.org/guidelines/thumbnail_tile", descriptor.schemeIdUri)) && (str = descriptor.value) != null) {
                String[] strArrSplit = Util.split(str, "x");
                if (strArrSplit.length != 2) {
                    continue;
                } else {
                    try {
                        return Pair.create(Integer.valueOf(Integer.parseInt(strArrSplit[c2])), Integer.valueOf(Integer.parseInt(strArrSplit[1])));
                    } catch (NumberFormatException unused) {
                        continue;
                    }
                }
            }
        }
        return null;
    }

    public static void maybeSkipTag(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (XmlPullParserUtil.isStartTag(xmlPullParser)) {
            int i = 1;
            while (i != 0) {
                xmlPullParser.next();
                if (XmlPullParserUtil.isStartTag(xmlPullParser)) {
                    i++;
                } else if (XmlPullParserUtil.isEndTag(xmlPullParser)) {
                    i--;
                }
            }
        }
    }

    private static void filterRedundantIncompleteSchemeDatas(ArrayList<DrmInitData.SchemeData> arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            DrmInitData.SchemeData schemeData = arrayList.get(size);
            if (!schemeData.hasData()) {
                int i = 0;
                while (true) {
                    if (i >= arrayList.size()) {
                        break;
                    }
                    if (arrayList.get(i).canReplace(schemeData)) {
                        arrayList.remove(size);
                        break;
                    }
                    i++;
                }
            }
        }
    }

    private static void fillInClearKeyInformation(ArrayList<DrmInitData.SchemeData> arrayList) {
        String str;
        int i = 0;
        while (true) {
            if (i >= arrayList.size()) {
                str = null;
                break;
            }
            DrmInitData.SchemeData schemeData = arrayList.get(i);
            if (AbstractC0644C.CLEARKEY_UUID.equals(schemeData.uuid) && (str = schemeData.licenseServerUrl) != null) {
                arrayList.remove(i);
                break;
            }
            i++;
        }
        if (str == null) {
            return;
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            DrmInitData.SchemeData schemeData2 = arrayList.get(i2);
            if (AbstractC0644C.COMMON_PSSH_UUID.equals(schemeData2.uuid) && schemeData2.licenseServerUrl == null) {
                arrayList.set(i2, new DrmInitData.SchemeData(AbstractC0644C.CLEARKEY_UUID, str, schemeData2.mimeType, schemeData2.data));
            }
        }
    }

    private static String getSampleMimeType(String str, String str2) {
        if (MimeTypes.isAudio(str)) {
            return MimeTypes.getAudioMediaMimeType(str2);
        }
        if (MimeTypes.isVideo(str)) {
            return MimeTypes.getVideoMediaMimeType(str2);
        }
        if (MimeTypes.isText(str) || MimeTypes.isImage(str)) {
            return str;
        }
        if (!"application/mp4".equals(str)) {
            return null;
        }
        String mediaMimeType = MimeTypes.getMediaMimeType(str2);
        return "text/vtt".equals(mediaMimeType) ? "application/x-mp4-vtt" : mediaMimeType;
    }

    private static String checkLanguageConsistency(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        Preconditions.checkState(str.equals(str2));
        return str;
    }

    private static int checkContentTypeConsistency(int i, int i2) {
        if (i == -1) {
            return i2;
        }
        if (i2 == -1) {
            return i;
        }
        Preconditions.checkState(i == i2);
        return i;
    }

    public static Descriptor parseDescriptor(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String string = parseString(xmlPullParser, "schemeIdUri", _UrlKt.FRAGMENT_ENCODE_SET);
        String string2 = parseString(xmlPullParser, "value", null);
        String string3 = parseString(xmlPullParser, "id", null);
        do {
            xmlPullParser.next();
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, str));
        return new Descriptor(string, string2, string3);
    }

    public static int parseCea608AccessibilityChannel(List<Descriptor> list) {
        String str;
        for (int i = 0; i < list.size(); i++) {
            Descriptor descriptor = list.get(i);
            if ("urn:scte:dash:cc:cea-608:2015".equals(descriptor.schemeIdUri) && (str = descriptor.value) != null) {
                Matcher matcher = CEA_608_ACCESSIBILITY_PATTERN.matcher(str);
                if (matcher.matches()) {
                    return Integer.parseInt(matcher.group(1));
                }
                Log.m164w("MpdParser", "Unable to parse CEA-608 channel number from: " + descriptor.value);
            }
        }
        return -1;
    }

    public static int parseCea708AccessibilityChannel(List<Descriptor> list) {
        String str;
        for (int i = 0; i < list.size(); i++) {
            Descriptor descriptor = list.get(i);
            if ("urn:scte:dash:cc:cea-708:2015".equals(descriptor.schemeIdUri) && (str = descriptor.value) != null) {
                Matcher matcher = CEA_708_ACCESSIBILITY_PATTERN.matcher(str);
                if (matcher.matches()) {
                    return Integer.parseInt(matcher.group(1));
                }
                Log.m164w("MpdParser", "Unable to parse CEA-708 service block number from: " + descriptor.value);
            }
        }
        return -1;
    }

    public static String parseEac3SupplementalProperties(List<Descriptor> list) {
        for (int i = 0; i < list.size(); i++) {
            Descriptor descriptor = list.get(i);
            String str = descriptor.schemeIdUri;
            if (!"tag:dolby.com,2018:dash:EC3_ExtensionType:2018".equals(str) || !"JOC".equals(descriptor.value)) {
                if ("tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014".equals(str) && "ec+3".equals(descriptor.value)) {
                    return "audio/eac3-joc";
                }
            } else {
                return "audio/eac3-joc";
            }
        }
        return "audio/eac3";
    }

    public static float parseFrameRate(XmlPullParser xmlPullParser, float f) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "frameRate");
        if (attributeValue != null) {
            Matcher matcher = FRAME_RATE_PATTERN.matcher(attributeValue);
            if (matcher.matches()) {
                int i = Integer.parseInt(matcher.group(1));
                return !TextUtils.isEmpty(matcher.group(2)) ? i / Integer.parseInt(r2) : i;
            }
        }
        return f;
    }

    public static long parseDuration(XmlPullParser xmlPullParser, String str, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j : Util.parseXsDuration(attributeValue);
    }

    public static long parseDateTime(XmlPullParser xmlPullParser, String str, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j : Util.parseXsDateTime(attributeValue);
    }

    public static String parseText(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String text = _UrlKt.FRAGMENT_ENCODE_SET;
        do {
            xmlPullParser.next();
            if (xmlPullParser.getEventType() == 4) {
                text = xmlPullParser.getText();
            } else {
                maybeSkipTag(xmlPullParser);
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, str));
        return text;
    }

    public static int parseInt(XmlPullParser xmlPullParser, String str, int i) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? i : Integer.parseInt(attributeValue);
    }

    public static long parseLong(XmlPullParser xmlPullParser, String str, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j : Long.parseLong(attributeValue);
    }

    public static float parseFloat(XmlPullParser xmlPullParser, String str, float f) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? f : Float.parseFloat(attributeValue);
    }

    public static String parseString(XmlPullParser xmlPullParser, String str, String str2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? str2 : attributeValue;
    }

    public static int parseMpegChannelConfiguration(XmlPullParser xmlPullParser) {
        int i = parseInt(xmlPullParser, "value", -1);
        if (i >= 0) {
            int[] iArr = MPEG_CHANNEL_CONFIGURATION_MAPPING;
            if (i < iArr.length) {
                return iArr[i];
            }
        }
        return -1;
    }

    public static int parseDtsChannelConfiguration(XmlPullParser xmlPullParser) {
        int i = parseInt(xmlPullParser, "value", -1);
        if (i <= 0 || i >= 33) {
            return -1;
        }
        return i;
    }

    public static int parseDtsxChannelConfiguration(XmlPullParser xmlPullParser) {
        int iBitCount;
        String attributeValue = xmlPullParser.getAttributeValue(null, "value");
        if (attributeValue == null || (iBitCount = Integer.bitCount(Integer.parseInt(attributeValue, 16))) == 0) {
            return -1;
        }
        return iBitCount;
    }

    public static int parseDolbyChannelConfiguration(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "value");
        if (attributeValue == null) {
            return -1;
        }
        String lowerCase = Ascii.toLowerCase(attributeValue);
        lowerCase.getClass();
        switch (lowerCase) {
        }
        return -1;
    }

    public static int parseDolbyAC4ChannelConfiguration(XmlPullParser xmlPullParser, String str) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "value");
        if (attributeValue == null || attributeValue.length() != 6) {
            return -1;
        }
        int i = Integer.parseInt(attributeValue, 16);
        if ((8388608 & i) != 0) {
            return parseDolbyAc4ObjectBasedChannelConfiguration(str);
        }
        return parseDolbyAc4ChannelBasedChannelConfiguration(i);
    }

    private static int parseDolbyAc4ObjectBasedChannelConfiguration(String str) {
        String[] strArrSplitCodecs = Util.splitCodecs(str);
        if (strArrSplitCodecs.length == 0) {
            return -1;
        }
        List<String> listSplitToList = Splitter.on('.').splitToList(Ascii.toLowerCase(strArrSplitCodecs[0].trim()));
        if (listSplitToList.size() != 4 || !listSplitToList.get(0).equals("ac-4")) {
            return -1;
        }
        String str2 = listSplitToList.get(3);
        str2.getClass();
        if (str2.equals("03")) {
            return 18;
        }
        return !str2.equals("04") ? -1 : 21;
    }

    private static int parseDolbyAc4ChannelBasedChannelConfiguration(int i) {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int[] iArr = DOLBY_AC4_CHANNEL_CONFIGURATION_MAPPING;
            if (i2 >= iArr.length) {
                break;
            }
            i3 += ((i >> i2) & 1) * iArr[i2];
            i2++;
        }
        if (i3 == 0) {
            return -1;
        }
        return i3;
    }

    public static long parseLastSegmentNumberSupplementalProperty(List<Descriptor> list) {
        for (int i = 0; i < list.size(); i++) {
            Descriptor descriptor = list.get(i);
            if (Ascii.equalsIgnoreCase("http://dashif.org/guidelines/last-segment-number", descriptor.schemeIdUri)) {
                return Long.parseLong(descriptor.value);
            }
        }
        return -1L;
    }

    private boolean isDvbProfileDeclared(String[] strArr) {
        for (String str : strArr) {
            if (str.startsWith("urn:dvb:dash:profile:dvb-dash:")) {
                return true;
            }
        }
        return false;
    }

    public static final class RepresentationInfo {
        public final ImmutableList<BaseUrl> baseUrls;
        public final ArrayList<DrmInitData.SchemeData> drmSchemeDatas;
        public final String drmSchemeType;
        public final List<Descriptor> essentialProperties;
        public final Format format;
        public final ArrayList<Descriptor> inbandEventStreams;
        public final long revisionId;
        public final SegmentBase segmentBase;
        public final List<Descriptor> supplementalProperties;

        public RepresentationInfo(Format format, List<BaseUrl> list, SegmentBase segmentBase, String str, ArrayList<DrmInitData.SchemeData> arrayList, ArrayList<Descriptor> arrayList2, List<Descriptor> list2, List<Descriptor> list3, long j) {
            this.format = format;
            this.baseUrls = ImmutableList.copyOf((Collection) list);
            this.segmentBase = segmentBase;
            this.drmSchemeType = str;
            this.drmSchemeDatas = arrayList;
            this.inbandEventStreams = arrayList2;
            this.essentialProperties = list2;
            this.supplementalProperties = list3;
            this.revisionId = j;
        }
    }
}
