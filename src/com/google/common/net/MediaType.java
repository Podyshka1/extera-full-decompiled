package com.google.common.net;

import com.google.android.gms.cast.HlsSegmentFormat;
import com.google.common.base.Ascii;
import com.google.common.base.CharMatcher;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimaps;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import kotlin.text.Typography;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes5.dex */
public final class MediaType {
    private int hashCode;
    private final ImmutableListMultimap<String, String> parameters;
    private Optional<Charset> parsedCharset;
    private final String subtype;
    private String toString;
    private final String type;
    private static final ImmutableListMultimap<String, String> UTF_8_CONSTANT_PARAMETERS = ImmutableListMultimap.of("charset", Ascii.toLowerCase(StandardCharsets.UTF_8.name()));
    private static final CharMatcher TOKEN_MATCHER = CharMatcher.ascii().and(CharMatcher.javaIsoControl().negate()).and(CharMatcher.isNot(' ')).and(CharMatcher.noneOf("()<>@,;:\\\"/[]?="));
    private static final CharMatcher QUOTED_TEXT_MATCHER = CharMatcher.ascii().and(CharMatcher.noneOf("\"\\\r"));
    private static final CharMatcher LINEAR_WHITE_SPACE = CharMatcher.anyOf(" \t\r\n");
    private static final Map<MediaType, MediaType> knownTypes = new HashMap();
    public static final MediaType ANY_TYPE = createConstant("*", "*");
    public static final MediaType ANY_TEXT_TYPE = createConstant("text", "*");
    public static final MediaType ANY_IMAGE_TYPE = createConstant("image", "*");
    public static final MediaType ANY_AUDIO_TYPE = createConstant(MediaStreamTrack.AUDIO_TRACK_KIND, "*");
    public static final MediaType ANY_VIDEO_TYPE = createConstant(MediaStreamTrack.VIDEO_TRACK_KIND, "*");
    public static final MediaType ANY_APPLICATION_TYPE = createConstant("application", "*");
    public static final MediaType ANY_FONT_TYPE = createConstant("font", "*");
    public static final MediaType CACHE_MANIFEST_UTF_8 = createConstantUtf8("text", "cache-manifest");
    public static final MediaType CSS_UTF_8 = createConstantUtf8("text", "css");
    public static final MediaType CSV_UTF_8 = createConstantUtf8("text", "csv");
    public static final MediaType HTML_UTF_8 = createConstantUtf8("text", "html");
    public static final MediaType I_CALENDAR_UTF_8 = createConstantUtf8("text", "calendar");
    public static final MediaType MD_UTF_8 = createConstantUtf8("text", "markdown");
    public static final MediaType PLAIN_TEXT_UTF_8 = createConstantUtf8("text", "plain");
    public static final MediaType TEXT_JAVASCRIPT_UTF_8 = createConstantUtf8("text", "javascript");
    public static final MediaType TSV_UTF_8 = createConstantUtf8("text", "tab-separated-values");
    public static final MediaType VCARD_UTF_8 = createConstantUtf8("text", "vcard");
    public static final MediaType WML_UTF_8 = createConstantUtf8("text", "vnd.wap.wml");
    public static final MediaType XML_UTF_8 = createConstantUtf8("text", "xml");
    public static final MediaType VTT_UTF_8 = createConstantUtf8("text", "vtt");
    public static final MediaType BMP = createConstant("image", "bmp");
    public static final MediaType CRW = createConstant("image", "x-canon-crw");
    public static final MediaType GIF = createConstant("image", "gif");
    public static final MediaType ICO = createConstant("image", "vnd.microsoft.icon");
    public static final MediaType JPEG = createConstant("image", "jpeg");
    public static final MediaType PNG = createConstant("image", "png");
    public static final MediaType PSD = createConstant("image", "vnd.adobe.photoshop");
    public static final MediaType SVG_UTF_8 = createConstantUtf8("image", "svg+xml");
    public static final MediaType TIFF = createConstant("image", "tiff");
    public static final MediaType AVIF = createConstant("image", "avif");
    public static final MediaType WEBP = createConstant("image", "webp");
    public static final MediaType HEIF = createConstant("image", "heif");
    public static final MediaType JP2K = createConstant("image", "jp2");
    public static final MediaType MP4_AUDIO = createConstant(MediaStreamTrack.AUDIO_TRACK_KIND, "mp4");
    public static final MediaType MPEG_AUDIO = createConstant(MediaStreamTrack.AUDIO_TRACK_KIND, "mpeg");
    public static final MediaType OGG_AUDIO = createConstant(MediaStreamTrack.AUDIO_TRACK_KIND, "ogg");
    public static final MediaType WEBM_AUDIO = createConstant(MediaStreamTrack.AUDIO_TRACK_KIND, "webm");
    public static final MediaType L16_AUDIO = createConstant(MediaStreamTrack.AUDIO_TRACK_KIND, "l16");
    public static final MediaType L24_AUDIO = createConstant(MediaStreamTrack.AUDIO_TRACK_KIND, "l24");
    public static final MediaType BASIC_AUDIO = createConstant(MediaStreamTrack.AUDIO_TRACK_KIND, "basic");
    public static final MediaType AAC_AUDIO = createConstant(MediaStreamTrack.AUDIO_TRACK_KIND, HlsSegmentFormat.AAC);
    public static final MediaType VORBIS_AUDIO = createConstant(MediaStreamTrack.AUDIO_TRACK_KIND, "vorbis");
    public static final MediaType WMA_AUDIO = createConstant(MediaStreamTrack.AUDIO_TRACK_KIND, "x-ms-wma");
    public static final MediaType WAX_AUDIO = createConstant(MediaStreamTrack.AUDIO_TRACK_KIND, "x-ms-wax");
    public static final MediaType VND_REAL_AUDIO = createConstant(MediaStreamTrack.AUDIO_TRACK_KIND, "vnd.rn-realaudio");
    public static final MediaType VND_WAVE_AUDIO = createConstant(MediaStreamTrack.AUDIO_TRACK_KIND, "vnd.wave");
    public static final MediaType MP4_VIDEO = createConstant(MediaStreamTrack.VIDEO_TRACK_KIND, "mp4");
    public static final MediaType MPEG_VIDEO = createConstant(MediaStreamTrack.VIDEO_TRACK_KIND, "mpeg");
    public static final MediaType OGG_VIDEO = createConstant(MediaStreamTrack.VIDEO_TRACK_KIND, "ogg");
    public static final MediaType QUICKTIME = createConstant(MediaStreamTrack.VIDEO_TRACK_KIND, "quicktime");
    public static final MediaType WEBM_VIDEO = createConstant(MediaStreamTrack.VIDEO_TRACK_KIND, "webm");
    public static final MediaType WMV = createConstant(MediaStreamTrack.VIDEO_TRACK_KIND, "x-ms-wmv");
    public static final MediaType FLV_VIDEO = createConstant(MediaStreamTrack.VIDEO_TRACK_KIND, "x-flv");
    public static final MediaType THREE_GPP_VIDEO = createConstant(MediaStreamTrack.VIDEO_TRACK_KIND, "3gpp");
    public static final MediaType THREE_GPP2_VIDEO = createConstant(MediaStreamTrack.VIDEO_TRACK_KIND, "3gpp2");
    public static final MediaType APPLICATION_XML_UTF_8 = createConstantUtf8("application", "xml");
    public static final MediaType ATOM_UTF_8 = createConstantUtf8("application", "atom+xml");
    public static final MediaType BZIP2 = createConstant("application", "x-bzip2");
    public static final MediaType DART_UTF_8 = createConstantUtf8("application", "dart");
    public static final MediaType APPLE_PASSBOOK = createConstant("application", "vnd.apple.pkpass");
    public static final MediaType EOT = createConstant("application", "vnd.ms-fontobject");
    public static final MediaType EPUB = createConstant("application", "epub+zip");
    public static final MediaType FORM_DATA = createConstant("application", "x-www-form-urlencoded");
    public static final MediaType KEY_ARCHIVE = createConstant("application", "pkcs12");
    public static final MediaType APPLICATION_BINARY = createConstant("application", "binary");
    public static final MediaType CBOR = createConstant("application", "cbor");
    public static final MediaType GEO_JSON = createConstant("application", "geo+json");
    public static final MediaType GZIP = createConstant("application", "x-gzip");
    public static final MediaType HAL_JSON = createConstant("application", "hal+json");
    public static final MediaType JAVASCRIPT_UTF_8 = createConstantUtf8("application", "javascript");
    public static final MediaType JOSE = createConstant("application", "jose");
    public static final MediaType JOSE_JSON = createConstant("application", "jose+json");
    public static final MediaType JSON_UTF_8 = createConstantUtf8("application", "json");
    public static final MediaType JWT = createConstant("application", "jwt");
    public static final MediaType MANIFEST_JSON_UTF_8 = createConstantUtf8("application", "manifest+json");
    public static final MediaType KML = createConstant("application", "vnd.google-earth.kml+xml");
    public static final MediaType KMZ = createConstant("application", "vnd.google-earth.kmz");
    public static final MediaType MBOX = createConstant("application", "mbox");
    public static final MediaType APPLE_MOBILE_CONFIG = createConstant("application", "x-apple-aspen-config");
    public static final MediaType MICROSOFT_EXCEL = createConstant("application", "vnd.ms-excel");
    public static final MediaType MICROSOFT_OUTLOOK = createConstant("application", "vnd.ms-outlook");
    public static final MediaType MICROSOFT_POWERPOINT = createConstant("application", "vnd.ms-powerpoint");
    public static final MediaType MICROSOFT_WORD = createConstant("application", "msword");
    public static final MediaType MEDIA_PRESENTATION_DESCRIPTION = createConstant("application", "dash+xml");
    public static final MediaType WASM_APPLICATION = createConstant("application", "wasm");
    public static final MediaType NACL_APPLICATION = createConstant("application", "x-nacl");
    public static final MediaType PEM = createConstant("application", "x-pem-file");
    public static final MediaType NACL_PORTABLE_APPLICATION = createConstant("application", "x-pnacl");
    public static final MediaType OCTET_STREAM = createConstant("application", "octet-stream");
    public static final MediaType OGG_CONTAINER = createConstant("application", "ogg");
    public static final MediaType OOXML_DOCUMENT = createConstant("application", "vnd.openxmlformats-officedocument.wordprocessingml.document");
    public static final MediaType OOXML_PRESENTATION = createConstant("application", "vnd.openxmlformats-officedocument.presentationml.presentation");
    public static final MediaType OOXML_SHEET = createConstant("application", "vnd.openxmlformats-officedocument.spreadsheetml.sheet");
    public static final MediaType OPENDOCUMENT_GRAPHICS = createConstant("application", "vnd.oasis.opendocument.graphics");
    public static final MediaType OPENDOCUMENT_PRESENTATION = createConstant("application", "vnd.oasis.opendocument.presentation");
    public static final MediaType OPENDOCUMENT_SPREADSHEET = createConstant("application", "vnd.oasis.opendocument.spreadsheet");
    public static final MediaType OPENDOCUMENT_TEXT = createConstant("application", "vnd.oasis.opendocument.text");
    public static final MediaType OPENSEARCH_DESCRIPTION_UTF_8 = createConstantUtf8("application", "opensearchdescription+xml");
    public static final MediaType PDF = createConstant("application", "pdf");
    public static final MediaType POSTSCRIPT = createConstant("application", "postscript");
    public static final MediaType PROTOBUF = createConstant("application", "protobuf");
    public static final MediaType RDF_XML_UTF_8 = createConstantUtf8("application", "rdf+xml");
    public static final MediaType RTF_UTF_8 = createConstantUtf8("application", "rtf");
    public static final MediaType SFNT = createConstant("application", "font-sfnt");
    public static final MediaType SHOCKWAVE_FLASH = createConstant("application", "x-shockwave-flash");
    public static final MediaType SKETCHUP = createConstant("application", "vnd.sketchup.skp");
    public static final MediaType SOAP_XML_UTF_8 = createConstantUtf8("application", "soap+xml");
    public static final MediaType TAR = createConstant("application", "x-tar");
    public static final MediaType WOFF = createConstant("application", "font-woff");
    public static final MediaType WOFF2 = createConstant("application", "font-woff2");
    public static final MediaType XHTML_UTF_8 = createConstantUtf8("application", "xhtml+xml");
    public static final MediaType XRD_UTF_8 = createConstantUtf8("application", "xrd+xml");
    public static final MediaType ZIP = createConstant("application", "zip");
    public static final MediaType FONT_COLLECTION = createConstant("font", "collection");
    public static final MediaType FONT_OTF = createConstant("font", "otf");
    public static final MediaType FONT_SFNT = createConstant("font", "sfnt");
    public static final MediaType FONT_TTF = createConstant("font", "ttf");
    public static final MediaType FONT_WOFF = createConstant("font", "woff");
    public static final MediaType FONT_WOFF2 = createConstant("font", "woff2");
    public static final MediaType YAML = createConstant("application", "yaml");
    private static final Joiner.MapJoiner PARAMETER_JOINER = Joiner.on("; ").withKeyValueSeparator("=");

    private static MediaType createConstant(String str, String str2) {
        MediaType mediaTypeAddKnownType = addKnownType(new MediaType(str, str2, ImmutableListMultimap.of()));
        mediaTypeAddKnownType.parsedCharset = Optional.absent();
        return mediaTypeAddKnownType;
    }

    private static MediaType createConstantUtf8(String str, String str2) {
        MediaType mediaTypeAddKnownType = addKnownType(new MediaType(str, str2, UTF_8_CONSTANT_PARAMETERS));
        mediaTypeAddKnownType.parsedCharset = Optional.of(StandardCharsets.UTF_8);
        return mediaTypeAddKnownType;
    }

    private static MediaType addKnownType(MediaType mediaType) {
        knownTypes.put(mediaType, mediaType);
        return mediaType;
    }

    private MediaType(String str, String str2, ImmutableListMultimap<String, String> immutableListMultimap) {
        this.type = str;
        this.subtype = str2;
        this.parameters = immutableListMultimap;
    }

    private Map<String, ImmutableMultiset<String>> parametersAsMap() {
        return Maps.transformValues(this.parameters.asMap(), new Function() { // from class: com.google.common.net.MediaType$$ExternalSyntheticLambda1
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return ImmutableMultiset.copyOf((Collection) obj);
            }
        });
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof MediaType) {
            MediaType mediaType = (MediaType) obj;
            if (this.type.equals(mediaType.type) && this.subtype.equals(mediaType.subtype) && parametersAsMap().equals(mediaType.parametersAsMap())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHash = Objects.hash(this.type, this.subtype, parametersAsMap());
        this.hashCode = iHash;
        return iHash;
    }

    public String toString() {
        String str = this.toString;
        if (str != null) {
            return str;
        }
        String strComputeToString = computeToString();
        this.toString = strComputeToString;
        return strComputeToString;
    }

    private String computeToString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.type);
        sb.append('/');
        sb.append(this.subtype);
        if (!this.parameters.isEmpty()) {
            sb.append("; ");
            PARAMETER_JOINER.appendTo(sb, Multimaps.transformValues(this.parameters, new Function() { // from class: com.google.common.net.MediaType$$ExternalSyntheticLambda0
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return MediaType.m3504$r8$lambda$1FAfH1BZbwbgXu_qO3UWiV5ltY((String) obj);
                }
            }).entries());
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: $r8$lambda$1FA-fH1BZbwbgXu_qO3UWiV5ltY, reason: not valid java name */
    public static /* synthetic */ String m3504$r8$lambda$1FAfH1BZbwbgXu_qO3UWiV5ltY(String str) {
        return (!TOKEN_MATCHER.matchesAllOf(str) || str.isEmpty()) ? escapeAndQuote(str) : str;
    }

    private static String escapeAndQuote(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 16);
        sb.append(Typography.quote);
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\r' || cCharAt == '\\' || cCharAt == '\"') {
                sb.append('\\');
            }
            sb.append(cCharAt);
        }
        sb.append(Typography.quote);
        return sb.toString();
    }
}
