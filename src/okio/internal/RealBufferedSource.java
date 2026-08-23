package okio.internal;

import com.google.android.gms.cast.MediaStatus;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Buffer;
import okio.ByteString;
import okio.Segment$$ExternalSyntheticBUOutline1;
import okio.SegmentedByteString;

/* JADX INFO: renamed from: okio.internal.-RealBufferedSource, reason: invalid class name */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u001aA\u0010\t\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\t\u0010\n\u001a;\u0010\r\u001a\u00020\f*\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lokio/RealBufferedSource;", "Lokio/ByteString;", "bytes", _UrlKt.FRAGMENT_ENCODE_SET, "bytesOffset", "byteCount", _UrlKt.FRAGMENT_ENCODE_SET, "fromIndex", "toIndex", "commonIndexOf", "(Lokio/RealBufferedSource;Lokio/ByteString;IIJJ)J", "Lokio/Buffer;", _UrlKt.FRAGMENT_ENCODE_SET, "isMatchPossibleByExpandingBuffer", "(Lokio/Buffer;Lokio/ByteString;IIJJ)Z", "okio"}, m754k = 2, mv = {2, 2, 0}, xi = 48)
@JvmName(name = "-RealBufferedSource")
@SourceDebugExtension({"SMAP\nRealBufferedSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealBufferedSource.kt\nokio/internal/-RealBufferedSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 4 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,472:1\n1#2:473\n63#3:474\n63#3:475\n63#3:476\n63#3:477\n63#3:478\n63#3:479\n63#3:480\n63#3:481\n63#3:482\n63#3:483\n63#3:484\n63#3:485\n63#3:486\n63#3:487\n63#3:488\n63#3:489\n63#3:490\n63#3:491\n63#3:492\n63#3:493\n63#3:494\n63#3:495\n63#3:496\n63#3:498\n63#3:499\n63#3:500\n63#3:501\n63#3:502\n63#3:503\n63#3:504\n63#3:505\n63#3:506\n63#3:507\n63#3:508\n63#3:509\n63#3:510\n63#3:511\n63#3:512\n63#3:513\n63#3:514\n63#3:515\n63#3:516\n63#3:517\n63#3:519\n63#3:520\n63#3:521\n63#3:522\n63#3:523\n63#3:524\n63#3:525\n63#3:526\n63#3:527\n63#3:528\n63#3:529\n63#3:530\n63#3:531\n63#3:532\n63#3:533\n63#3:534\n63#3:535\n63#3:536\n63#3:537\n63#3:538\n63#3:539\n63#3:540\n63#3:541\n63#3:543\n63#3:544\n63#3:545\n63#3:546\n88#4:497\n88#4:518\n88#4:542\n*S KotlinDebug\n*F\n+ 1 RealBufferedSource.kt\nokio/internal/-RealBufferedSource\n*L\n42#1:474\n44#1:475\n48#1:476\n49#1:477\n54#1:478\n64#1:479\n65#1:480\n72#1:481\n76#1:482\n77#1:483\n82#1:484\n89#1:485\n96#1:486\n101#1:487\n109#1:488\n110#1:489\n115#1:490\n124#1:491\n125#1:492\n132#1:493\n138#1:494\n140#1:495\n144#1:496\n145#1:498\n153#1:499\n157#1:500\n162#1:501\n163#1:502\n166#1:503\n169#1:504\n170#1:505\n171#1:506\n177#1:507\n178#1:508\n183#1:509\n190#1:510\n191#1:511\n196#1:512\n204#1:513\n206#1:514\n207#1:515\n209#1:516\n212#1:517\n214#1:519\n222#1:520\n229#1:521\n234#1:522\n239#1:523\n244#1:524\n249#1:525\n254#1:526\n259#1:527\n267#1:528\n278#1:529\n286#1:530\n300#1:531\n307#1:532\n310#1:533\n311#1:534\n322#1:535\n327#1:536\n328#1:537\n349#1:538\n358#1:539\n362#1:540\n372#1:541\n425#1:543\n428#1:544\n429#1:545\n466#1:546\n144#1:497\n212#1:518\n406#1:542\n*E\n"})
public abstract class RealBufferedSource {
    public static /* synthetic */ long commonIndexOf$default(okio.RealBufferedSource realBufferedSource, ByteString byteString, int i, int i2, long j, long j2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        int i4 = i;
        if ((i3 & 4) != 0) {
            i2 = byteString.size();
        }
        return commonIndexOf(realBufferedSource, byteString, i4, i2, j, (i3 & 16) != 0 ? Long.MAX_VALUE : j2);
    }

    public static final long commonIndexOf(okio.RealBufferedSource realBufferedSource, ByteString byteString, int i, int i2, long j, long j2) {
        int i3 = i;
        int i4 = i2;
        long j3 = i4;
        SegmentedByteString.checkOffsetAndCount(byteString.size(), i3, j3);
        if (realBufferedSource.closed) {
            Segment$$ExternalSyntheticBUOutline1.m848m("closed");
            return 0L;
        }
        long jMax = j;
        while (true) {
            long j4 = jMax;
            long jCommonIndexOf = Buffer.commonIndexOf(realBufferedSource.bufferField, byteString, j4, j2, i3, i4);
            if (jCommonIndexOf != -1) {
                return jCommonIndexOf;
            }
            long size = (realBufferedSource.bufferField.getSize() - j3) + 1;
            if (size >= j2 || !isMatchPossibleByExpandingBuffer(realBufferedSource.bufferField, byteString, i, i2, j4, j2) || realBufferedSource.source.read(realBufferedSource.bufferField, MediaStatus.COMMAND_PLAYBACK_RATE) == -1) {
                return -1L;
            }
            jMax = Math.max(j4, size);
            i3 = i;
            i4 = i2;
        }
    }

    private static final boolean isMatchPossibleByExpandingBuffer(Buffer buffer, ByteString byteString, int i, int i2, long j, long j2) {
        if (buffer.getSize() < j2) {
            return true;
        }
        int iMax = (int) Math.max(1L, (buffer.getSize() - j2) + 1);
        int iMin = ((int) Math.min(i2, (buffer.getSize() - j) + 1)) - 1;
        if (iMax > iMin) {
            return false;
        }
        int i3 = iMin;
        while (true) {
            Buffer buffer2 = buffer;
            ByteString byteString2 = byteString;
            int i4 = i;
            if (buffer2.rangeEquals(buffer.getSize() - ((long) i3), byteString2, i4, i3)) {
                return true;
            }
            if (i3 == iMax) {
                return false;
            }
            i3--;
            buffer = buffer2;
            byteString = byteString2;
            i = i4;
        }
    }
}
