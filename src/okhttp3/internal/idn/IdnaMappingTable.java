package okhttp3.internal.idn;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.BufferedSink;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B!\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J \u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000fH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0016"}, d2 = {"Lokhttp3/internal/idn/IdnaMappingTable;", _UrlKt.FRAGMENT_ENCODE_SET, "sections", _UrlKt.FRAGMENT_ENCODE_SET, "ranges", "mappings", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getSections", "()Ljava/lang/String;", "getRanges", "getMappings", "map", _UrlKt.FRAGMENT_ENCODE_SET, "codePoint", _UrlKt.FRAGMENT_ENCODE_SET, "sink", "Lokio/BufferedSink;", "findSectionsIndex", "findRangesOffset", "position", "limit", "okhttp"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nIdnaMappingTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IdnaMappingTable.kt\nokhttp3/internal/idn/IdnaMappingTable\n+ 2 IdnaMappingTable.kt\nokhttp3/internal/idn/IdnaMappingTableKt\n*L\n1#1,286:1\n272#2,13:287\n272#2,13:300\n*S KotlinDebug\n*F\n+ 1 IdnaMappingTable.kt\nokhttp3/internal/idn/IdnaMappingTable\n*L\n209#1:287,13\n237#1:300,13\n*E\n"})
public final class IdnaMappingTable {
    private final String mappings;
    private final String ranges;
    private final String sections;

    public IdnaMappingTable(String str, String str2, String str3) {
        this.sections = str;
        this.ranges = str2;
        this.mappings = str3;
    }

    public final String getSections() {
        return this.sections;
    }

    public final String getRanges() {
        return this.ranges;
    }

    public final String getMappings() {
        return this.mappings;
    }

    public final boolean map(int codePoint, BufferedSink sink) {
        int iFindSectionsIndex = findSectionsIndex(codePoint);
        int iFindRangesOffset = findRangesOffset(codePoint, IdnaMappingTableKt.read14BitInt(this.sections, iFindSectionsIndex + 2), iFindSectionsIndex + 4 < this.sections.length() ? IdnaMappingTableKt.read14BitInt(this.sections, iFindSectionsIndex + 6) : this.ranges.length() / 4);
        char cCharAt = this.ranges.charAt(iFindRangesOffset + 1);
        if (cCharAt >= 0 && cCharAt < '@') {
            int i = IdnaMappingTableKt.read14BitInt(this.ranges, iFindRangesOffset + 2);
            sink.writeUtf8(this.mappings, i, cCharAt + i);
            return true;
        }
        if ('@' <= cCharAt && cCharAt < 'P') {
            sink.writeUtf8CodePoint(codePoint - (this.ranges.charAt(iFindRangesOffset + 3) | (((cCharAt & 15) << 14) | (this.ranges.charAt(iFindRangesOffset + 2) << 7))));
            return true;
        }
        if ('P' <= cCharAt && cCharAt < '`') {
            sink.writeUtf8CodePoint(codePoint + (this.ranges.charAt(iFindRangesOffset + 3) | ((cCharAt & 15) << 14) | (this.ranges.charAt(iFindRangesOffset + 2) << 7)));
            return true;
        }
        if (cCharAt == 'w') {
            Unit unit = Unit.INSTANCE;
            return true;
        }
        if (cCharAt == 'x') {
            sink.writeUtf8CodePoint(codePoint);
            return true;
        }
        if (cCharAt == 'y') {
            sink.writeUtf8CodePoint(codePoint);
            return false;
        }
        if (cCharAt == 'z') {
            sink.writeByte(this.ranges.charAt(iFindRangesOffset + 2));
            return true;
        }
        if (cCharAt == '{') {
            sink.writeByte(this.ranges.charAt(iFindRangesOffset + 2) | 128);
            return true;
        }
        if (cCharAt == '|') {
            sink.writeByte(this.ranges.charAt(iFindRangesOffset + 2));
            sink.writeByte(this.ranges.charAt(iFindRangesOffset + 3));
            return true;
        }
        if (cCharAt == '}') {
            sink.writeByte(this.ranges.charAt(iFindRangesOffset + 2) | 128);
            sink.writeByte(this.ranges.charAt(iFindRangesOffset + 3));
            return true;
        }
        if (cCharAt == '~') {
            sink.writeByte(this.ranges.charAt(iFindRangesOffset + 2));
            sink.writeByte(this.ranges.charAt(iFindRangesOffset + 3) | 128);
            return true;
        }
        if (cCharAt == 127) {
            sink.writeByte(this.ranges.charAt(iFindRangesOffset + 2) | 128);
            sink.writeByte(this.ranges.charAt(iFindRangesOffset + 3) | 128);
            return true;
        }
        throw new IllegalStateException(("unexpected rangesIndex for " + codePoint).toString());
    }

    private final int findSectionsIndex(int codePoint) {
        int i;
        int i2 = (codePoint & 2097024) >> 7;
        int length = (this.sections.length() / 4) - 1;
        int i3 = 0;
        while (true) {
            if (i3 > length) {
                i = (-i3) - 1;
                break;
            }
            i = (i3 + length) / 2;
            int iCompare = Intrinsics.compare(i2, IdnaMappingTableKt.read14BitInt(this.sections, i * 4));
            if (iCompare >= 0) {
                if (iCompare <= 0) {
                    break;
                }
                i3 = i + 1;
            } else {
                length = i - 1;
            }
        }
        return i >= 0 ? i * 4 : ((-i) - 2) * 4;
    }

    private final int findRangesOffset(int codePoint, int position, int limit) {
        int i;
        int i2 = codePoint & 127;
        int i3 = limit - 1;
        while (true) {
            if (position > i3) {
                i = (-position) - 1;
                break;
            }
            i = (position + i3) / 2;
            int iCompare = Intrinsics.compare(i2, (int) this.ranges.charAt(i * 4));
            if (iCompare >= 0) {
                if (iCompare <= 0) {
                    break;
                }
                position = i + 1;
            } else {
                i3 = i - 1;
            }
        }
        return i >= 0 ? i * 4 : ((-i) - 2) * 4;
    }
}
