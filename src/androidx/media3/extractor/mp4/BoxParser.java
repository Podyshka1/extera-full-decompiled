package androidx.media3.extractor.mp4;

import android.util.Pair;
import androidx.car.app.media.CarAudioRecord;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.DolbyVisionConfig;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.container.Mp4AlternateGroupData;
import androidx.media3.container.Mp4Box;
import androidx.media3.container.Mp4LocationData;
import androidx.media3.container.Mp4TimestampData;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.container.OpusUtil;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.Ac3Util;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.AvcConfig;
import androidx.media3.extractor.ExtractorUtil;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.HevcConfig;
import androidx.media3.extractor.VorbisUtil;
import androidx.media3.extractor.VvcConfig;
import androidx.media3.extractor.mp4.FixedSampleSizeRechunker;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;
import org.telegram.messenger.MediaController;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BoxParser {
    private static final byte[] opusMagic = Util.getUtf8Bytes("OpusHead");

    public interface SampleSizeBox {
        int getFixedSampleSize();

        int getSampleCount();

        int readNextSampleSize();
    }

    private static int getTrackTypeForHdlr(int i) {
        if (i == 1936684398) {
            return 1;
        }
        if (i == 1986618469) {
            return 2;
        }
        if (i == 1952807028 || i == 1935832172 || i == 1937072756 || i == 1668047728 || i == 1937072752) {
            return 3;
        }
        return i == 1835365473 ? 5 : -1;
    }

    public static int parseFullBoxFlags(int i) {
        return i & 16777215;
    }

    public static int parseFullBoxVersion(int i) {
        return (i >> 24) & 255;
    }

    public static List<TrackSampleTable> parseTraks(Mp4Box.ContainerBox containerBox, GaplessInfoHolder gaplessInfoHolder, long j, DrmInitData drmInitData, boolean z, boolean z2, Function<Track, Track> function, boolean z3) {
        Track trackApply;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < containerBox.containerChildren.size(); i++) {
            Mp4Box.ContainerBox containerBox2 = containerBox.containerChildren.get(i);
            if (containerBox2.type == 1953653099 && (trackApply = function.apply(parseTrak(containerBox2, (Mp4Box.LeafBox) Preconditions.checkNotNull(containerBox.getLeafBoxOfType(1836476516)), j, drmInitData, z, z2))) != null) {
                arrayList.add(parseStbl(trackApply, (Mp4Box.ContainerBox) Preconditions.checkNotNull(((Mp4Box.ContainerBox) Preconditions.checkNotNull(((Mp4Box.ContainerBox) Preconditions.checkNotNull(containerBox2.getContainerBoxOfType(1835297121))).getContainerBoxOfType(1835626086))).getContainerBoxOfType(1937007212)), gaplessInfoHolder, z3));
            }
        }
        return arrayList;
    }

    public static Metadata parseUdta(Mp4Box.LeafBox leafBox) {
        ParsableByteArray parsableByteArray = leafBox.data;
        parsableByteArray.setPosition(8);
        Metadata metadata = new Metadata(new Metadata.Entry[0]);
        while (parsableByteArray.bytesLeft() >= 8) {
            int position = parsableByteArray.getPosition();
            int i = parsableByteArray.readInt();
            int i2 = parsableByteArray.readInt();
            if (i2 == 1835365473) {
                parsableByteArray.setPosition(position);
                metadata = metadata.copyWithAppendedEntriesFrom(parseUdtaMeta(parsableByteArray, position + i));
            } else if (i2 == 1936553057) {
                parsableByteArray.setPosition(position);
                metadata = metadata.copyWithAppendedEntriesFrom(SmtaAtomUtil.parseSmta(parsableByteArray, position + i));
            } else if (i2 == -1451722374) {
                metadata = metadata.copyWithAppendedEntriesFrom(parseXyz(parsableByteArray));
            }
            parsableByteArray.setPosition(position + i);
        }
        return metadata;
    }

    public static Mp4TimestampData parseMvhd(ParsableByteArray parsableByteArray) {
        long unsignedInt;
        long unsignedInt2;
        parsableByteArray.setPosition(8);
        if (parseFullBoxVersion(parsableByteArray.readInt()) == 0) {
            unsignedInt = parsableByteArray.readUnsignedInt();
            unsignedInt2 = parsableByteArray.readUnsignedInt();
        } else {
            unsignedInt = parsableByteArray.readLong();
            unsignedInt2 = parsableByteArray.readLong();
        }
        return new Mp4TimestampData(unsignedInt, unsignedInt2, parsableByteArray.readUnsignedInt());
    }

    public static Metadata parseMdtaFromMeta(Mp4Box.ContainerBox containerBox) {
        Mp4Box.LeafBox leafBoxOfType = containerBox.getLeafBoxOfType(1751411826);
        Mp4Box.LeafBox leafBoxOfType2 = containerBox.getLeafBoxOfType(1801812339);
        Mp4Box.LeafBox leafBoxOfType3 = containerBox.getLeafBoxOfType(1768715124);
        if (leafBoxOfType == null || leafBoxOfType2 == null || leafBoxOfType3 == null || parseHdlr(leafBoxOfType.data) != 1835299937) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafBoxOfType2.data;
        parsableByteArray.setPosition(12);
        int i = parsableByteArray.readInt();
        String[] strArr = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = parsableByteArray.readInt();
            parsableByteArray.skipBytes(4);
            strArr[i2] = parsableByteArray.readString(i3 - 8);
        }
        ParsableByteArray parsableByteArray2 = leafBoxOfType3.data;
        parsableByteArray2.setPosition(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray2.bytesLeft() > 8) {
            int position = parsableByteArray2.getPosition();
            int i4 = parsableByteArray2.readInt();
            int i5 = parsableByteArray2.readInt() - 1;
            if (i5 >= 0 && i5 < i) {
                MdtaMetadataEntry mdtaMetadataEntryFromIlst = MetadataUtil.parseMdtaMetadataEntryFromIlst(parsableByteArray2, position + i4, strArr[i5]);
                if (mdtaMetadataEntryFromIlst != null) {
                    arrayList.add(mdtaMetadataEntryFromIlst);
                }
            } else {
                Log.m164w("BoxParsers", "Skipped metadata with unknown key index: " + i5);
            }
            parsableByteArray2.setPosition(position + i4);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    public static void maybeSkipRemainingMetaBoxHeaderBytes(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        parsableByteArray.skipBytes(4);
        if (parsableByteArray.readInt() != 1751411826) {
            position += 4;
        }
        parsableByteArray.setPosition(position);
    }

    public static Track parseTrak(Mp4Box.ContainerBox containerBox, Mp4Box.LeafBox leafBox, long j, DrmInitData drmInitData, boolean z, boolean z2) throws ParserException {
        long[] jArr;
        long[] jArr2;
        Format formatBuild;
        Metadata metadata;
        Mp4Box.ContainerBox containerBoxOfType;
        Pair<long[], long[]> edts;
        Mp4Box.ContainerBox containerBox2 = (Mp4Box.ContainerBox) Preconditions.checkNotNull(containerBox.getContainerBoxOfType(1835297121));
        int trackTypeForHdlr = getTrackTypeForHdlr(parseHdlr(((Mp4Box.LeafBox) Preconditions.checkNotNull(containerBox2.getLeafBoxOfType(1751411826))).data));
        if (trackTypeForHdlr == -1) {
            return null;
        }
        TkhdData tkhd = parseTkhd(((Mp4Box.LeafBox) Preconditions.checkNotNull(containerBox.getLeafBoxOfType(1953196132))).data);
        long j2 = j == -9223372036854775807L ? tkhd.duration : j;
        long j3 = parseMvhd(leafBox.data).timescale;
        long jScaleLargeTimestamp = j2 != -9223372036854775807L ? Util.scaleLargeTimestamp(j2, 1000000L, j3) : -9223372036854775807L;
        Mp4Box.ContainerBox containerBox3 = (Mp4Box.ContainerBox) Preconditions.checkNotNull(((Mp4Box.ContainerBox) Preconditions.checkNotNull(containerBox2.getContainerBoxOfType(1835626086))).getContainerBoxOfType(1937007212));
        MdhdData mdhd = parseMdhd(((Mp4Box.LeafBox) Preconditions.checkNotNull(containerBox2.getLeafBoxOfType(1835296868))).data);
        Mp4Box.LeafBox leafBoxOfType = containerBox3.getLeafBoxOfType(1937011556);
        if (leafBoxOfType == null) {
            Log.m164w("BoxParsers", "Ignoring track where sample table (stbl) box is missing a sample description (stsd).");
            return null;
        }
        StsdData stsd = parseStsd(leafBoxOfType.data, tkhd, mdhd.language, drmInitData, z2);
        if (z || (containerBoxOfType = containerBox.getContainerBoxOfType(1701082227)) == null || (edts = parseEdts(containerBoxOfType)) == null) {
            jArr = null;
            jArr2 = null;
        } else {
            long[] jArr3 = (long[]) edts.first;
            jArr2 = (long[]) edts.second;
            jArr = jArr3;
        }
        if (stsd.format == null) {
            return null;
        }
        if (tkhd.alternateGroup != 0) {
            Mp4AlternateGroupData mp4AlternateGroupData = new Mp4AlternateGroupData(tkhd.alternateGroup);
            Format.Builder builderBuildUpon = stsd.format.buildUpon();
            Metadata metadata2 = stsd.format.metadata;
            if (metadata2 != null) {
                metadata = metadata2.copyWithAppendedEntries(mp4AlternateGroupData);
            } else {
                metadata = new Metadata(mp4AlternateGroupData);
            }
            formatBuild = builderBuildUpon.setMetadata(metadata).build();
        } else {
            formatBuild = stsd.format;
        }
        return new Track(tkhd.id, trackTypeForHdlr, mdhd.timescale, j3, jScaleLargeTimestamp, mdhd.mediaDurationUs, formatBuild, stsd.requiredSampleTransformation, stsd.trackEncryptionBoxes, stsd.nalUnitLengthFieldLength, jArr, jArr2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x020c, code lost:
    
        r4 = r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0378  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0187  */
    /* JADX WARN: Type inference failed for: r26v2 */
    /* JADX WARN: Type inference failed for: r26v3 */
    /* JADX WARN: Type inference failed for: r26v4 */
    /* JADX WARN: Type inference failed for: r26v7, types: [boolean] */
    /* JADX WARN: Type inference failed for: r26v8 */
    /* JADX WARN: Type inference failed for: r29v0 */
    /* JADX WARN: Type inference failed for: r29v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r29v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static TrackSampleTable parseStbl(Track track, Mp4Box.ContainerBox containerBox, GaplessInfoHolder gaplessInfoHolder, boolean z) throws ParserException {
        SampleSizeBox stz2SampleSizeBox;
        boolean z2;
        int unsignedIntToInt;
        int unsignedIntToInt2;
        int unsignedIntToInt3;
        int i;
        int i2;
        long[] jArr;
        int[] iArrCopyOf;
        ArrayList arrayList;
        int[] iArr;
        int i3;
        int length;
        long[] jArr2;
        long j;
        int i4;
        int[] iArr2;
        long j2;
        int i5;
        ArrayList arrayList2;
        long j3;
        long[] jArr3;
        long j4;
        int[] iArr3;
        int[] iArr4;
        long[] jArr4;
        int i6;
        int i7;
        int i8;
        int i9;
        long jScaleLargeTimestamp;
        Track trackCopyWithFormat = track;
        Mp4Box.LeafBox leafBoxOfType = containerBox.getLeafBoxOfType(1937011578);
        if (leafBoxOfType != null) {
            stz2SampleSizeBox = new StszSampleSizeBox(leafBoxOfType, trackCopyWithFormat.format);
        } else {
            Mp4Box.LeafBox leafBoxOfType2 = containerBox.getLeafBoxOfType(1937013298);
            if (leafBoxOfType2 == null) {
                throw ParserException.createForMalformedContainer("Track has no sample table size information", null);
            }
            stz2SampleSizeBox = new Stz2SampleSizeBox(leafBoxOfType2);
        }
        int sampleCount = stz2SampleSizeBox.getSampleCount();
        if (sampleCount == 0) {
            return new TrackSampleTable(trackCopyWithFormat, new long[0], new int[0], 0, new long[0], new int[0], new int[0], false, 0L, 0);
        }
        if (trackCopyWithFormat.type == 2) {
            long j5 = trackCopyWithFormat.mediaDurationUs;
            if (j5 > 0) {
                trackCopyWithFormat = trackCopyWithFormat.copyWithFormat(trackCopyWithFormat.format.buildUpon().setFrameRate(sampleCount / (j5 / 1000000.0f)).build());
            }
        }
        Mp4Box.LeafBox leafBoxOfType3 = containerBox.getLeafBoxOfType(1937007471);
        if (leafBoxOfType3 == null) {
            leafBoxOfType3 = (Mp4Box.LeafBox) Preconditions.checkNotNull(containerBox.getLeafBoxOfType(1668232756));
            z2 = true;
        } else {
            z2 = false;
        }
        ParsableByteArray parsableByteArray = leafBoxOfType3.data;
        ParsableByteArray parsableByteArray2 = ((Mp4Box.LeafBox) Preconditions.checkNotNull(containerBox.getLeafBoxOfType(1937011555))).data;
        ParsableByteArray parsableByteArray3 = ((Mp4Box.LeafBox) Preconditions.checkNotNull(containerBox.getLeafBoxOfType(1937011827))).data;
        Mp4Box.LeafBox leafBoxOfType4 = containerBox.getLeafBoxOfType(1937011571);
        ParsableByteArray parsableByteArray4 = leafBoxOfType4 != null ? leafBoxOfType4.data : null;
        Mp4Box.LeafBox leafBoxOfType5 = containerBox.getLeafBoxOfType(1668576371);
        ParsableByteArray parsableByteArray5 = leafBoxOfType5 != null ? leafBoxOfType5.data : null;
        ChunkIterator chunkIterator = new ChunkIterator(parsableByteArray2, parsableByteArray, z2);
        parsableByteArray3.setPosition(12);
        int unsignedIntToInt4 = parsableByteArray3.readUnsignedIntToInt() - 1;
        int unsignedIntToInt5 = parsableByteArray3.readUnsignedIntToInt();
        int unsignedIntToInt6 = parsableByteArray3.readUnsignedIntToInt();
        if (parsableByteArray5 != null) {
            parsableByteArray5.setPosition(12);
            unsignedIntToInt = parsableByteArray5.readUnsignedIntToInt();
        } else {
            unsignedIntToInt = 0;
        }
        if (parsableByteArray4 != null) {
            parsableByteArray4.setPosition(12);
            unsignedIntToInt2 = parsableByteArray4.readUnsignedIntToInt();
            if (unsignedIntToInt2 <= 0) {
                unsignedIntToInt3 = -1;
                i = 1;
                parsableByteArray4 = null;
                int fixedSampleSize = stz2SampleSizeBox.getFixedSampleSize();
                String str = trackCopyWithFormat.format.sampleMimeType;
                i2 = (fixedSampleSize == -1 && ("audio/raw".equals(str) || "audio/g711-mlaw".equals(str) || "audio/g711-alaw".equals(str)) && unsignedIntToInt4 == 0 && unsignedIntToInt == 0 && unsignedIntToInt2 == 0) ? i : 0;
                ArrayList arrayList3 = new ArrayList();
                ?? r29 = parsableByteArray4 != null ? i : 0;
                if (i2 == 0) {
                    int i10 = chunkIterator.length;
                    long[] jArr5 = new long[i10];
                    int[] iArr5 = new int[i10];
                    while (chunkIterator.moveNext()) {
                        int i11 = chunkIterator.index;
                        jArr5[i11] = chunkIterator.offset;
                        iArr5[i11] = chunkIterator.numSamples;
                    }
                    FixedSampleSizeRechunker.Results resultsRechunk = FixedSampleSizeRechunker.rechunk(fixedSampleSize, jArr5, iArr5, unsignedIntToInt6);
                    long[] jArr6 = z ? new long[0] : resultsRechunk.offsets;
                    int[] iArr6 = z ? new int[0] : resultsRechunk.sizes;
                    jArr = z ? new long[0] : resultsRechunk.timestamps;
                    iArrCopyOf = z ? new int[0] : resultsRechunk.flags;
                    int i12 = resultsRechunk.maximumSize;
                    long j6 = resultsRechunk.duration;
                    j = resultsRechunk.totalSize;
                    length = resultsRechunk.offsets.length;
                    jArr2 = jArr6;
                    iArr2 = iArr6;
                    arrayList = arrayList3;
                    i4 = i12;
                    j2 = j6;
                } else {
                    long[] jArr7 = z ? new long[0] : new long[sampleCount];
                    ParsableByteArray parsableByteArray6 = parsableByteArray5;
                    int[] iArrCopyOf2 = z ? new int[0] : new int[sampleCount];
                    SampleSizeBox sampleSizeBox = stz2SampleSizeBox;
                    jArr = z ? new long[0] : new long[sampleCount];
                    int i13 = unsignedIntToInt2;
                    iArrCopyOf = z ? new int[0] : new int[sampleCount];
                    int i14 = unsignedIntToInt3;
                    int i15 = unsignedIntToInt;
                    int unsignedIntToInt7 = i14;
                    int i16 = unsignedIntToInt4;
                    ParsableByteArray parsableByteArray7 = parsableByteArray4;
                    long j7 = 0;
                    long j8 = 0;
                    int i17 = i13;
                    int i18 = 0;
                    int i19 = 0;
                    int i20 = 0;
                    int i21 = 0;
                    int unsignedIntToInt8 = 0;
                    long j9 = 0;
                    while (true) {
                        if (i19 >= sampleCount) {
                            arrayList = arrayList3;
                            break;
                        }
                        long j10 = j8;
                        ?? MoveNext = i;
                        while (i21 == 0) {
                            MoveNext = chunkIterator.moveNext();
                            if (MoveNext == 0) {
                                break;
                            }
                            ArrayList arrayList4 = arrayList3;
                            long j11 = chunkIterator.offset;
                            i21 = chunkIterator.numSamples;
                            j10 = j11;
                            arrayList3 = arrayList4;
                            unsignedIntToInt6 = unsignedIntToInt6;
                            sampleCount = sampleCount;
                            MoveNext = MoveNext;
                        }
                        int i22 = sampleCount;
                        arrayList = arrayList3;
                        int i23 = unsignedIntToInt6;
                        if (MoveNext == 0) {
                            Log.m164w("BoxParsers", "Unexpected end of chunk data");
                            if (z) {
                                iArr = iArrCopyOf2;
                                sampleCount = i19;
                            } else {
                                long[] jArrCopyOf = Arrays.copyOf(jArr7, i19);
                                iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i19);
                                long[] jArrCopyOf2 = Arrays.copyOf(jArr, i19);
                                jArr7 = jArrCopyOf;
                                iArrCopyOf = Arrays.copyOf(iArrCopyOf, i19);
                                sampleCount = i19;
                                jArr = jArrCopyOf2;
                            }
                        } else {
                            if (parsableByteArray6 != null) {
                                while (unsignedIntToInt8 == 0 && i15 > 0) {
                                    unsignedIntToInt8 = parsableByteArray6.readUnsignedIntToInt();
                                    i20 = parsableByteArray6.readInt();
                                    i15--;
                                }
                                unsignedIntToInt8--;
                            }
                            int nextSampleSize = sampleSizeBox.readNextSampleSize();
                            long j12 = nextSampleSize;
                            j7 += j12;
                            if (nextSampleSize > i18) {
                                i18 = nextSampleSize;
                            }
                            if (z) {
                                i5 = i18;
                            } else {
                                jArr7[i19] = j10;
                                iArrCopyOf2[i19] = nextSampleSize;
                                i5 = i18;
                                jArr[i19] = j9 + ((long) i20);
                                iArrCopyOf[i19] = parsableByteArray7 == null ? i : 0;
                                if (i19 == unsignedIntToInt7) {
                                    iArrCopyOf[i19] = i;
                                    arrayList2 = arrayList;
                                    arrayList2.add(Integer.valueOf(i19));
                                }
                                if (parsableByteArray7 != null && i19 == unsignedIntToInt7 && i17 - 1 > 0) {
                                    unsignedIntToInt7 = ((ParsableByteArray) Preconditions.checkNotNull(parsableByteArray7)).readUnsignedIntToInt() - 1;
                                }
                                ArrayList arrayList5 = arrayList2;
                                ChunkIterator chunkIterator2 = chunkIterator;
                                int i24 = i23;
                                j9 += (long) i24;
                                unsignedIntToInt5--;
                                if (unsignedIntToInt5 != 0 && i16 > 0) {
                                    i16--;
                                    unsignedIntToInt5 = parsableByteArray3.readUnsignedIntToInt();
                                    i24 = parsableByteArray3.readInt();
                                }
                                long j13 = j10 + j12;
                                i21--;
                                i19++;
                                unsignedIntToInt6 = i24;
                                i18 = i5;
                                arrayList3 = arrayList5;
                                chunkIterator = chunkIterator2;
                                j8 = j13;
                                sampleCount = i22;
                            }
                            arrayList2 = arrayList;
                            if (parsableByteArray7 != null) {
                                unsignedIntToInt7 = ((ParsableByteArray) Preconditions.checkNotNull(parsableByteArray7)).readUnsignedIntToInt() - 1;
                            }
                            ArrayList arrayList52 = arrayList2;
                            ChunkIterator chunkIterator22 = chunkIterator;
                            int i242 = i23;
                            j9 += (long) i242;
                            unsignedIntToInt5--;
                            if (unsignedIntToInt5 != 0) {
                            }
                            long j132 = j10 + j12;
                            i21--;
                            i19++;
                            unsignedIntToInt6 = i242;
                            i18 = i5;
                            arrayList3 = arrayList52;
                            chunkIterator = chunkIterator22;
                            j8 = j132;
                            sampleCount = i22;
                        }
                    }
                    int i25 = i21;
                    long j14 = j9 + ((long) i20);
                    if (parsableByteArray6 != null) {
                        for (int i26 = i15; i26 > 0; i26--) {
                            if (parsableByteArray6.readUnsignedIntToInt() != 0) {
                                i3 = 0;
                                break;
                            }
                            parsableByteArray6.readInt();
                        }
                        i3 = i;
                        if (i17 == 0 || unsignedIntToInt5 != 0 || i25 != 0 || i16 != 0 || unsignedIntToInt8 != 0 || i3 == 0) {
                            StringBuilder sb = new StringBuilder("Inconsistent stbl box for track ");
                            sb.append(trackCopyWithFormat.id);
                            sb.append(": remainingSynchronizationSamples ");
                            sb.append(i17);
                            sb.append(", remainingSamplesAtTimestampDelta ");
                            sb.append(unsignedIntToInt5);
                            sb.append(", remainingSamplesInChunk ");
                            sb.append(i25);
                            sb.append(", remainingTimestampDeltaChanges ");
                            sb.append(i16);
                            sb.append(", remainingSamplesAtTimestampOffset ");
                            sb.append(unsignedIntToInt8);
                            sb.append(i3 != 0 ? ", ctts invalid" : _UrlKt.FRAGMENT_ENCODE_SET);
                            Log.m164w("BoxParsers", sb.toString());
                        }
                        length = sampleCount;
                        jArr2 = jArr7;
                        j = j7;
                        i4 = i18;
                        iArr2 = iArr;
                        j2 = j14;
                    } else {
                        i3 = i;
                        if (i17 == 0) {
                            StringBuilder sb2 = new StringBuilder("Inconsistent stbl box for track ");
                            sb2.append(trackCopyWithFormat.id);
                            sb2.append(": remainingSynchronizationSamples ");
                            sb2.append(i17);
                            sb2.append(", remainingSamplesAtTimestampDelta ");
                            sb2.append(unsignedIntToInt5);
                            sb2.append(", remainingSamplesInChunk ");
                            sb2.append(i25);
                            sb2.append(", remainingTimestampDeltaChanges ");
                            sb2.append(i16);
                            sb2.append(", remainingSamplesAtTimestampOffset ");
                            sb2.append(unsignedIntToInt8);
                            sb2.append(i3 != 0 ? ", ctts invalid" : _UrlKt.FRAGMENT_ENCODE_SET);
                            Log.m164w("BoxParsers", sb2.toString());
                            length = sampleCount;
                            jArr2 = jArr7;
                            j = j7;
                            i4 = i18;
                            iArr2 = iArr;
                            j2 = j14;
                        }
                    }
                }
                long[] jArr8 = jArr;
                j3 = trackCopyWithFormat.mediaDurationUs;
                if (j3 > 0) {
                    long jScaleLargeValue = Util.scaleLargeValue(j * 8, 1000000L, j3, RoundingMode.HALF_DOWN);
                    if (jScaleLargeValue > 0 && jScaleLargeValue < 2147483647L) {
                        trackCopyWithFormat = trackCopyWithFormat.copyWithFormat(trackCopyWithFormat.format.buildUpon().setAverageBitrate((int) jScaleLargeValue).build());
                    }
                }
                long jScaleLargeTimestamp2 = Util.scaleLargeTimestamp(j2, 1000000L, trackCopyWithFormat.timescale);
                int[] array = Ints.toArray(arrayList);
                jArr3 = trackCopyWithFormat.editListDurations;
                if (jArr3 != null) {
                    if (!z) {
                        Util.scaleLargeTimestampsInPlace(jArr8, 1000000L, trackCopyWithFormat.timescale);
                    }
                    return new TrackSampleTable(trackCopyWithFormat, jArr2, iArr2, i4, jArr8, iArrCopyOf, array, r29, jScaleLargeTimestamp2, length);
                }
                Track track2 = trackCopyWithFormat;
                ArrayList arrayList6 = arrayList;
                int[] iArr7 = iArrCopyOf;
                if (z) {
                    long[] jArr9 = (long[]) Preconditions.checkNotNull(track2.editListMediaTimes);
                    long[] jArr10 = track2.editListDurations;
                    if (jArr10.length == i && jArr10[0] == 0) {
                        jScaleLargeTimestamp = Util.scaleLargeTimestamp(j2 - jArr9[0], 1000000L, track2.timescale);
                    } else {
                        long j15 = 0;
                        int i27 = 0;
                        while (true) {
                            long[] jArr11 = track2.editListDurations;
                            if (i27 >= jArr11.length) {
                                break;
                            }
                            if (jArr9[i27] != -1) {
                                j15 += jArr11[i27];
                            }
                            i27++;
                        }
                        jScaleLargeTimestamp = Util.scaleLargeTimestamp(j15, 1000000L, track2.movieTimescale);
                    }
                    return new TrackSampleTable(track2, jArr2, iArr2, i4, jArr8, iArr7, array, r29, jScaleLargeTimestamp, length);
                }
                if (jArr3.length == 1 && track2.type == 1 && jArr8.length >= 2) {
                    long j16 = ((long[]) Preconditions.checkNotNull(track2.editListMediaTimes))[0];
                    j4 = -1;
                    long jScaleLargeTimestamp3 = Util.scaleLargeTimestamp(track2.editListDurations[0], track2.timescale, track2.movieTimescale) + j16;
                    if (canApplyEditWithGaplessInfo(jArr8, j2, j16, jScaleLargeTimestamp3)) {
                        long jMax = Math.max(0L, j2 - jScaleLargeTimestamp3);
                        long jScaleLargeTimestamp4 = Util.scaleLargeTimestamp(j16 - jArr8[0], track2.format.sampleRate, track2.timescale);
                        long jScaleLargeTimestamp5 = Util.scaleLargeTimestamp(jMax, track2.format.sampleRate, track2.timescale);
                        if ((jScaleLargeTimestamp4 != 0 || jScaleLargeTimestamp5 != 0) && jScaleLargeTimestamp4 <= 2147483647L && jScaleLargeTimestamp5 <= 2147483647L) {
                            gaplessInfoHolder.encoderDelay = (int) jScaleLargeTimestamp4;
                            gaplessInfoHolder.encoderPadding = (int) jScaleLargeTimestamp5;
                            Util.scaleLargeTimestampsInPlace(jArr8, 1000000L, track2.timescale);
                            return new TrackSampleTable(track2, jArr2, iArr2, i4, jArr8, iArr7, array, r29, Util.scaleLargeTimestamp(track2.editListDurations[0], 1000000L, track2.movieTimescale), length);
                        }
                    }
                } else {
                    j4 = -1;
                }
                long[] jArr12 = track2.editListDurations;
                if (jArr12.length == 1 && jArr12[0] == 0) {
                    long j17 = ((long[]) Preconditions.checkNotNull(track2.editListMediaTimes))[0];
                    for (int i28 = 0; i28 < jArr8.length; i28++) {
                        jArr8[i28] = Util.scaleLargeTimestamp(jArr8[i28] - j17, 1000000L, track2.timescale);
                    }
                    return new TrackSampleTable(track2, jArr2, iArr2, i4, jArr8, iArr7, array, r29, Util.scaleLargeTimestamp(j2 - j17, 1000000L, track2.timescale), length);
                }
                long[] jArr13 = jArr2;
                int[] iArr8 = iArr2;
                int i29 = length;
                boolean z3 = track2.type == 1;
                int[] iArr9 = new int[jArr12.length];
                int[] iArr10 = new int[jArr12.length];
                long[] jArr14 = (long[]) Preconditions.checkNotNull(track2.editListMediaTimes);
                int i30 = 0;
                boolean z4 = false;
                int i31 = 0;
                int i32 = 0;
                while (true) {
                    long[] jArr15 = track2.editListDurations;
                    iArr3 = iArr10;
                    if (i30 >= jArr15.length) {
                        break;
                    }
                    ArrayList arrayList7 = arrayList6;
                    long j18 = jArr14[i30];
                    if (j18 != j4) {
                        long j19 = jArr15[i30];
                        iArr4 = iArr9;
                        jArr4 = jArr14;
                        long jScaleLargeTimestamp6 = Util.scaleLargeTimestamp(j19, track2.timescale, track2.movieTimescale) + j18;
                        i6 = i30;
                        iArr4[i6] = Util.binarySearchFloor(jArr8, j18, true, true);
                        int iBinarySearchCeil = Util.binarySearchCeil(jArr8, jScaleLargeTimestamp6, z3, false);
                        int i33 = iBinarySearchCeil - 1;
                        int i34 = 0;
                        while (true) {
                            i7 = i33;
                            if (iBinarySearchCeil >= jArr8.length) {
                                break;
                            }
                            if (jArr8[iBinarySearchCeil] < jScaleLargeTimestamp6) {
                                i33 = iBinarySearchCeil;
                            } else {
                                i34++;
                                if (i34 > track2.format.maxNumReorderSamples) {
                                    break;
                                }
                                i33 = i7;
                            }
                            iBinarySearchCeil++;
                        }
                        iArr3[i6] = i7 + 1;
                        int i35 = iArr4[i6];
                        while (true) {
                            i8 = iArr4[i6];
                            if (i8 <= 0) {
                                i9 = 1;
                                break;
                            }
                            i9 = 1;
                            if ((iArr7[i8] & 1) != 0) {
                                break;
                            }
                            iArr4[i6] = i8 - 1;
                        }
                        if (i8 == 0 && (iArr7[0] & i9) == 0) {
                            iArr4[i6] = i35;
                            while (true) {
                                int i36 = iArr4[i6];
                                if (i36 >= iArr3[i6] || (iArr7[i36] & i9) != 0) {
                                    break;
                                }
                                iArr4[i6] = i36 + 1;
                                i9 = 1;
                            }
                        }
                        int i37 = iArr3[i6];
                        int i38 = iArr4[i6];
                        i31 += i37 - i38;
                        boolean z5 = i32 != i38;
                        i32 = i37;
                        z4 = z5 | z4;
                    } else {
                        iArr4 = iArr9;
                        jArr4 = jArr14;
                        i6 = i30;
                    }
                    i30 = i6 + 1;
                    jArr14 = jArr4;
                    iArr9 = iArr4;
                    iArr10 = iArr3;
                    arrayList6 = arrayList7;
                }
                ArrayList arrayList8 = arrayList6;
                int[] iArr11 = iArr9;
                boolean z6 = false;
                boolean z7 = (i31 != i29) | z4;
                long[] jArr16 = z7 ? new long[i31] : jArr13;
                int[] iArr12 = z7 ? new int[i31] : iArr8;
                int i39 = z7 ? 0 : i4;
                int[] iArr13 = z7 ? new int[i31] : iArr7;
                ArrayList arrayList9 = z7 ? new ArrayList() : arrayList8;
                long[] jArr17 = new long[i31];
                int i40 = i39;
                int i41 = 0;
                int i42 = 0;
                long j20 = 0;
                while (i41 < track2.editListDurations.length) {
                    long j21 = track2.editListMediaTimes[i41];
                    int i43 = iArr11[i41];
                    int i44 = iArr3[i41];
                    boolean z8 = z7;
                    if (z7) {
                        int i45 = i44 - i43;
                        System.arraycopy(jArr13, i43, jArr16, i42, i45);
                        System.arraycopy(iArr8, i43, iArr12, i42, i45);
                        System.arraycopy(iArr7, i43, iArr13, i42, i45);
                    }
                    int i46 = i40;
                    while (i43 < i44) {
                        int[] iArr14 = iArr12;
                        long[] jArr18 = jArr13;
                        long jScaleLargeTimestamp7 = Util.scaleLargeTimestamp(j20, 1000000L, track2.movieTimescale);
                        long jScaleLargeTimestamp8 = Util.scaleLargeTimestamp(jArr8[i43] - j21, 1000000L, track2.timescale);
                        if (jScaleLargeTimestamp8 < 0) {
                            z6 = true;
                        }
                        jArr17[i42] = jScaleLargeTimestamp7 + jScaleLargeTimestamp8;
                        if (z8 && iArr14[i42] > i46) {
                            i46 = iArr8[i43];
                        }
                        if (z8 && r29 == 0 && (iArr13[i42] & 1) != 0) {
                            arrayList9.add(Integer.valueOf(i42));
                        }
                        i42++;
                        i43++;
                        jArr13 = jArr18;
                        iArr12 = iArr14;
                    }
                    j20 += track2.editListDurations[i41];
                    i41++;
                    i40 = i46;
                    iArr12 = iArr12;
                    z7 = z8;
                }
                return new TrackSampleTable(z6 ? track2.copyWithFormat(track2.format.buildUpon().setHasPrerollSamples(true).build()) : track2, jArr16, iArr12, i40, jArr17, iArr13, Ints.toArray(arrayList9), r29, Util.scaleLargeTimestamp(j20, 1000000L, track2.movieTimescale), jArr16.length);
            }
            unsignedIntToInt3 = parsableByteArray4.readUnsignedIntToInt() - 1;
        } else {
            unsignedIntToInt2 = 0;
            unsignedIntToInt3 = -1;
        }
        i = 1;
        int fixedSampleSize2 = stz2SampleSizeBox.getFixedSampleSize();
        String str2 = trackCopyWithFormat.format.sampleMimeType;
        if (fixedSampleSize2 == -1) {
        }
        ArrayList arrayList32 = new ArrayList();
        if (parsableByteArray4 != null) {
        }
        if (i2 == 0) {
        }
        long[] jArr82 = jArr;
        j3 = trackCopyWithFormat.mediaDurationUs;
        if (j3 > 0) {
        }
        long jScaleLargeTimestamp22 = Util.scaleLargeTimestamp(j2, 1000000L, trackCopyWithFormat.timescale);
        int[] array2 = Ints.toArray(arrayList);
        jArr3 = trackCopyWithFormat.editListDurations;
        if (jArr3 != null) {
        }
    }

    private static Metadata parseUdtaMeta(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(8);
        maybeSkipRemainingMetaBoxHeaderBytes(parsableByteArray);
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int i2 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1768715124) {
                parsableByteArray.setPosition(position);
                return parseIlst(parsableByteArray, position + i2);
            }
            parsableByteArray.setPosition(position + i2);
        }
        return null;
    }

    private static Metadata parseIlst(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray.getPosition() < i) {
            Metadata.Entry ilstElement = MetadataUtil.parseIlstElement(parsableByteArray);
            if (ilstElement != null) {
                arrayList.add(ilstElement);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static Metadata parseXyz(ParsableByteArray parsableByteArray) {
        short s = parsableByteArray.readShort();
        parsableByteArray.skipBytes(2);
        String string = parsableByteArray.readString(s);
        int iMax = Math.max(string.lastIndexOf(43), string.lastIndexOf(45));
        try {
            return new Metadata(new Mp4LocationData(Float.parseFloat(string.substring(0, iMax)), Float.parseFloat(string.substring(iMax, string.length() - 1))));
        } catch (IndexOutOfBoundsException | NumberFormatException unused) {
            return null;
        }
    }

    private static TkhdData parseTkhd(ParsableByteArray parsableByteArray) {
        long j;
        parsableByteArray.setPosition(8);
        int fullBoxVersion = parseFullBoxVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(fullBoxVersion == 0 ? 8 : 16);
        int i = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int position = parsableByteArray.getPosition();
        int i2 = fullBoxVersion == 0 ? 4 : 8;
        int i3 = 0;
        while (true) {
            j = -9223372036854775807L;
            if (i3 < i2) {
                if (parsableByteArray.getData()[position + i3] != -1) {
                    long unsignedInt = fullBoxVersion == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
                    if (unsignedInt != 0) {
                        j = unsignedInt;
                    }
                } else {
                    i3++;
                }
            } else {
                parsableByteArray.skipBytes(i2);
                break;
            }
        }
        parsableByteArray.skipBytes(10);
        int i4 = 0;
        long j2 = j;
        int unsignedShort = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(4);
        int i5 = parsableByteArray.readInt();
        int i6 = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int i7 = parsableByteArray.readInt();
        int i8 = parsableByteArray.readInt();
        if (i5 == 0 && i6 == 65536 && ((i7 == -65536 || i7 == 65536) && i8 == 0)) {
            i4 = 90;
        } else if (i5 == 0 && i6 == -65536 && ((i7 == 65536 || i7 == -65536) && i8 == 0)) {
            i4 = 270;
        } else if ((i5 == -65536 || i5 == 65536) && i6 == 0 && i7 == 0 && i8 == -65536) {
            i4 = 180;
        }
        int i9 = i4;
        parsableByteArray.skipBytes(16);
        short s = parsableByteArray.readShort();
        parsableByteArray.skipBytes(2);
        return new TkhdData(i, j2, unsignedShort, i9, s, parsableByteArray.readShort());
    }

    private static int parseHdlr(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(16);
        return parsableByteArray.readInt();
    }

    private static MdhdData parseMdhd(ParsableByteArray parsableByteArray) {
        long j;
        parsableByteArray.setPosition(8);
        int fullBoxVersion = parseFullBoxVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(fullBoxVersion == 0 ? 8 : 16);
        long unsignedInt = parsableByteArray.readUnsignedInt();
        int position = parsableByteArray.getPosition();
        int i = fullBoxVersion == 0 ? 4 : 8;
        int i2 = 0;
        while (true) {
            j = -9223372036854775807L;
            if (i2 < i) {
                if (parsableByteArray.getData()[position + i2] != -1) {
                    long unsignedInt2 = fullBoxVersion == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
                    if (unsignedInt2 != 0) {
                        long jScaleLargeTimestamp = Util.scaleLargeTimestamp(unsignedInt2, 1000000L, unsignedInt);
                        unsignedInt = unsignedInt;
                        j = jScaleLargeTimestamp;
                    }
                } else {
                    i2++;
                }
            } else {
                parsableByteArray.skipBytes(i);
                break;
            }
        }
        return new MdhdData(unsignedInt, j, getLanguageFromCode(parsableByteArray.readUnsignedShort()));
    }

    private static String getLanguageFromCode(int i) {
        char[] cArr = {(char) (((i >> 10) & 31) + 96), (char) (((i >> 5) & 31) + 96), (char) ((i & 31) + 96)};
        for (int i2 = 0; i2 < 3; i2++) {
            char c2 = cArr[i2];
            if (c2 < 'a' || c2 > 'z') {
                return null;
            }
        }
        return new String(cArr);
    }

    private static StsdData parseStsd(ParsableByteArray parsableByteArray, TkhdData tkhdData, String str, DrmInitData drmInitData, boolean z) throws ParserException {
        parsableByteArray.setPosition(12);
        int i = parsableByteArray.readInt();
        StsdData stsdData = new StsdData(i);
        for (int i2 = 0; i2 < i; i2++) {
            int position = parsableByteArray.getPosition();
            int i3 = parsableByteArray.readInt();
            ExtractorUtil.checkContainerInput(i3 > 0, "childAtomSize must be positive");
            int i4 = parsableByteArray.readInt();
            if (i4 == 1635148593 || i4 == 1635148595 || i4 == 1701733238 || i4 == 1831958048 || i4 == 1836070006 || i4 == 1752589105 || i4 == 1751479857 || i4 == 1987470129 || i4 == 1987471665 || i4 == 1932670515 || i4 == 1211250227 || i4 == 1748121139 || i4 == 1987063864 || i4 == 1987063865 || i4 == 1635135537 || i4 == 1685479798 || i4 == 1685479729 || i4 == 1685481573 || i4 == 1685481521 || i4 == 1634760241 || i4 == 1684108849 || i4 == 1634743416 || i4 == 1634743400 || i4 == 1634755432 || i4 == 1634755438 || i4 == 1634755443 || i4 == 1634755439) {
                parseVideoSampleEntry(parsableByteArray, i4, position, i3, tkhdData.id, str, tkhdData.rotationDegrees, drmInitData, stsdData, i2);
            } else if (i4 == 1836069985 || i4 == 1701733217 || i4 == 1633889587 || i4 == 1700998451 || i4 == 1633889588 || i4 == 1835823201 || i4 == 1685353315 || i4 == 1685353317 || i4 == 1685353320 || i4 == 1685353324 || i4 == 1685353336 || i4 == 1935764850 || i4 == 1935767394 || i4 == 1819304813 || i4 == 1936684916 || i4 == 1953984371 || i4 == 778924082 || i4 == 778924083 || i4 == 1835557169 || i4 == 1835560241 || i4 == 1634492771 || i4 == 1634492791 || i4 == 1970037111 || i4 == 1332770163 || i4 == 1716281667 || i4 == 1767992678 || i4 == 1768973165 || i4 == 1718641517) {
                parseAudioSampleEntry(parsableByteArray, i4, position, i3, tkhdData.id, str, z, drmInitData, stsdData, i2);
            } else if (i4 == 1414810956 || i4 == 1954034535 || i4 == 2004251764 || i4 == 1937010800 || i4 == 1664495672 || i4 == 1836070003) {
                StsdData stsdData2 = stsdData;
                parseTextSampleEntry(parsableByteArray, i4, position, i3, tkhdData, str, stsdData2);
                stsdData = stsdData2;
            } else if (i4 == 1835365492) {
                parseMetaDataSampleEntry(parsableByteArray, i4, position, tkhdData.id, stsdData);
            } else if (i4 == 1667329389) {
                stsdData.format = new Format.Builder().setId(tkhdData.id).setSampleMimeType("application/x-camera-motion").build();
            }
            parsableByteArray.setPosition(position + i3);
        }
        return stsdData;
    }

    private static void parseTextSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, TkhdData tkhdData, String str, StsdData stsdData) {
        parsableByteArray.setPosition(i2 + 16);
        String str2 = "application/ttml+xml";
        ImmutableList immutableListOf = null;
        long j = LongCompanionObject.MAX_VALUE;
        if (i != 1414810956) {
            if (i == 1954034535) {
                int i4 = i3 - 16;
                byte[] bArr = new byte[i4];
                parsableByteArray.readBytes(bArr, 0, i4);
                immutableListOf = ImmutableList.of(bArr);
                str2 = "application/x-quicktime-tx3g";
            } else if (i == 2004251764) {
                str2 = "application/x-mp4-vtt";
            } else if (i == 1937010800) {
                j = 0;
            } else if (i == 1664495672) {
                stsdData.requiredSampleTransformation = 1;
                str2 = "application/x-mp4-cea-608";
            } else if (i == 1836070003) {
                int position = parsableByteArray.getPosition();
                parsableByteArray.skipBytes(4);
                if (parsableByteArray.readInt() == 1702061171) {
                    EsdsData esdsFromParent = parseEsdsFromParent(parsableByteArray, position);
                    if (esdsFromParent.initializationData == null || esdsFromParent.initializationData.length != 64) {
                        return;
                    }
                    immutableListOf = ImmutableList.of(Util.getUtf8Bytes(formatVobsubIdx(esdsFromParent.initializationData, tkhdData.width, tkhdData.height)));
                    str2 = "application/vobsub";
                } else {
                    str2 = null;
                }
            } else {
                MethodWriter$$ExternalSyntheticBUOutline0.m1007m();
                return;
            }
        }
        if (str2 != null) {
            stsdData.format = new Format.Builder().setId(tkhdData.id).setSampleMimeType(str2).setLanguage(str).setSubsampleOffsetUs(j).setInitializationData(immutableListOf).build();
        }
    }

    private static String formatVobsubIdx(byte[] bArr, int i, int i2) {
        Preconditions.checkState(bArr.length == 64);
        ArrayList arrayList = new ArrayList(16);
        for (int i3 = 0; i3 < bArr.length - 3; i3 += 4) {
            arrayList.add(String.format("%06x", Integer.valueOf(vobsubYuvToRgb(Ints.fromBytes(bArr[i3], bArr[i3 + 1], bArr[i3 + 2], bArr[i3 + 3])))));
        }
        return "size: " + i + "x" + i2 + "\npalette: " + Joiner.on(", ").join(arrayList) + "\n";
    }

    private static int vobsubYuvToRgb(int i) {
        int i2 = (i >> 16) & 255;
        int i3 = ((i >> 8) & 255) - 128;
        int i4 = (i & 255) - 128;
        return Util.constrainValue(i2 + ((i4 * 17790) / 10000), 0, 255) | (Util.constrainValue(((i3 * 14075) / 10000) + i2, 0, 255) << 16) | (Util.constrainValue((i2 - ((i4 * 3455) / 10000)) - ((i3 * 7169) / 10000), 0, 255) << 8);
    }

    /* JADX WARN: Removed duplicated region for block: B:234:0x056c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void parseVideoSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, String str, int i5, DrmInitData drmInitData, StsdData stsdData, int i6) throws ParserException {
        String str2;
        DrmInitData drmInitData2;
        int i7;
        List<byte[]> list;
        int i8;
        int i9;
        int i10;
        int i11;
        byte[] bArr;
        String str3;
        int i12;
        DolbyVisionConfig dolbyVisionConfig;
        String str4;
        String str5;
        int i13;
        String str6;
        int iIsoColorPrimariesToColorSpace;
        int i14;
        DrmInitData drmInitData3;
        int i15;
        List<byte[]> list2;
        String str7;
        int i16;
        int i17;
        int i18;
        int i19;
        NalUnitUtil.H265VpsData h265VpsData;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24 = i2;
        int i25 = i3;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        StsdData stsdData2 = stsdData;
        parsableByteArray.setPosition(i24 + 16);
        parsableByteArray.skipBytes(16);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int unsignedShort2 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(50);
        int position = parsableByteArray.getPosition();
        int iIntValue = i;
        if (iIntValue == 1701733238) {
            Pair<Integer, TrackEncryptionBox> sampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i24, i25);
            if (sampleEntryEncryptionData != null) {
                iIntValue = ((Integer) sampleEntryEncryptionData.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((TrackEncryptionBox) sampleEntryEncryptionData.second).schemeType);
                stsdData2.trackEncryptionBoxes[i6] = (TrackEncryptionBox) sampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
        }
        String str8 = "video/3gpp";
        if (iIntValue == 1831958048) {
            str2 = "video/mpeg";
        } else if (iIntValue == 1211250227) {
            str2 = "video/3gpp";
        } else {
            str2 = (iIntValue == 1634743416 || iIntValue == 1634743400 || iIntValue == 1634755432 || iIntValue == 1634755438 || iIntValue == 1634755443 || iIntValue == 1634755439) ? "video/prores" : null;
        }
        float paspFromParent = 1.0f;
        int i26 = 8;
        int i27 = 8;
        ByteBuffer byteBuffer = null;
        DolbyVisionConfig dolbyVisionConfig2 = null;
        List<byte[]> listOf = null;
        String strBuildApvCodecString = null;
        byte[] projFromParent = null;
        int i28 = -1;
        int i29 = -1;
        int i30 = -1;
        int i31 = -1;
        int i32 = -1;
        int i33 = -1;
        int i34 = -1;
        int iIsoTransferCharacteristicsToColorTransfer = -1;
        BtrtData btrtFromParent = null;
        EsdsData esdsFromParent = null;
        NalUnitUtil.H265VpsData h265VpsData2 = null;
        boolean z = false;
        while (true) {
            if (position - i24 >= i25) {
                drmInitData2 = drmInitDataCopyWithSchemeType;
                i7 = i26;
                list = listOf;
                i8 = i28;
                i9 = i33;
                i10 = i34;
                i11 = iIsoTransferCharacteristicsToColorTransfer;
                bArr = null;
                str3 = str2;
                i12 = i27;
                dolbyVisionConfig = dolbyVisionConfig2;
                break;
            }
            parsableByteArray.setPosition(position);
            int position2 = parsableByteArray.getPosition();
            int i35 = parsableByteArray.readInt();
            if (i35 == 0 && parsableByteArray.getPosition() - i2 == i25) {
                drmInitData2 = drmInitDataCopyWithSchemeType;
                i7 = i26;
                dolbyVisionConfig = dolbyVisionConfig2;
                list = listOf;
                i8 = i28;
                i9 = i33;
                i10 = i34;
                i11 = iIsoTransferCharacteristicsToColorTransfer;
                bArr = null;
                str3 = str2;
                i12 = i27;
                break;
            }
            ExtractorUtil.checkContainerInput(i35 > 0, "childAtomSize must be positive");
            int i36 = parsableByteArray.readInt();
            if (i36 == 1635148611) {
                ExtractorUtil.checkContainerInput(str2 == null, null);
                parsableByteArray.setPosition(position2 + 8);
                AvcConfig avcConfig = AvcConfig.parse(parsableByteArray);
                List<byte[]> list3 = avcConfig.initializationData;
                stsdData2.nalUnitLengthFieldLength = avcConfig.nalUnitLengthFieldLength;
                if (!z) {
                    paspFromParent = avcConfig.pixelWidthHeightRatio;
                }
                String str9 = avcConfig.codecs;
                int i37 = avcConfig.maxNumReorderFrames;
                int i38 = avcConfig.colorSpace;
                int i39 = avcConfig.colorRange;
                listOf = list3;
                int i40 = avcConfig.colorTransfer;
                int i41 = avcConfig.bitdepthLuma;
                int i42 = avcConfig.bitdepthChroma;
                drmInitData3 = drmInitDataCopyWithSchemeType;
                i13 = position;
                i16 = iIntValue;
                str6 = str8;
                iIsoColorPrimariesToColorSpace = i38;
                i14 = i39;
                iIsoTransferCharacteristicsToColorTransfer = i40;
                str7 = MediaController.VIDEO_MIME_TYPE;
                i27 = i42;
                strBuildApvCodecString = str9;
                i29 = i37;
                h265VpsData = h265VpsData2;
                i15 = i41;
            } else {
                i13 = position;
                if (i36 == 1752589123) {
                    ExtractorUtil.checkContainerInput(str2 == null, null);
                    parsableByteArray.setPosition(position2 + 8);
                    HevcConfig hevcConfig = HevcConfig.parse(parsableByteArray);
                    List<byte[]> list4 = hevcConfig.initializationData;
                    stsdData2.nalUnitLengthFieldLength = hevcConfig.nalUnitLengthFieldLength;
                    if (!z) {
                        paspFromParent = hevcConfig.pixelWidthHeightRatio;
                    }
                    int i43 = hevcConfig.maxNumReorderPics;
                    int i44 = hevcConfig.maxSubLayers;
                    String str10 = hevcConfig.codecs;
                    int i45 = hevcConfig.stereoMode;
                    listOf = list4;
                    if (i45 != -1) {
                        i28 = i45;
                    }
                    int i46 = hevcConfig.decodedWidth;
                    int i47 = hevcConfig.decodedHeight;
                    int i48 = hevcConfig.colorSpace;
                    int i49 = hevcConfig.colorRange;
                    int i50 = hevcConfig.colorTransfer;
                    int i51 = hevcConfig.bitdepthLuma;
                    int i52 = hevcConfig.bitdepthChroma;
                    h265VpsData = hevcConfig.vpsData;
                    drmInitData3 = drmInitDataCopyWithSchemeType;
                    str7 = "video/hevc";
                    i16 = iIntValue;
                    str6 = str8;
                    iIsoColorPrimariesToColorSpace = i48;
                    i14 = i49;
                    iIsoTransferCharacteristicsToColorTransfer = i50;
                    i15 = i51;
                    i29 = i43;
                    i30 = i44;
                    i32 = i47;
                    i31 = i46;
                    i27 = i52;
                    strBuildApvCodecString = str10;
                } else {
                    str6 = str8;
                    if (i36 == 1818785347) {
                        ExtractorUtil.checkContainerInput("video/hevc".equals(str2), "lhvC must follow hvcC atom");
                        NalUnitUtil.H265VpsData h265VpsData3 = h265VpsData2;
                        ExtractorUtil.checkContainerInput(h265VpsData3 != null && h265VpsData3.layerInfos.size() >= 2, "must have at least two layers");
                        parsableByteArray.setPosition(position2 + 8);
                        HevcConfig layered = HevcConfig.parseLayered(parsableByteArray, (NalUnitUtil.H265VpsData) Preconditions.checkNotNull(h265VpsData3));
                        ExtractorUtil.checkContainerInput(stsdData2.nalUnitLengthFieldLength == layered.nalUnitLengthFieldLength, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms");
                        int i53 = layered.colorSpace;
                        int i54 = i33;
                        if (i53 != -1) {
                            ExtractorUtil.checkContainerInput(i54 == i53, "colorSpace must be the same for both views");
                        }
                        int i55 = layered.colorRange;
                        int i56 = i34;
                        if (i55 != -1) {
                            ExtractorUtil.checkContainerInput(i56 == i55, "colorRange must be the same for both views");
                        }
                        int i57 = layered.colorTransfer;
                        if (i57 != -1) {
                            int i58 = iIsoTransferCharacteristicsToColorTransfer;
                            i22 = i58;
                            ExtractorUtil.checkContainerInput(i58 == i57, "colorTransfer must be the same for both views");
                        } else {
                            i22 = iIsoTransferCharacteristicsToColorTransfer;
                        }
                        ExtractorUtil.checkContainerInput(i26 == layered.bitdepthLuma, "bitdepthLuma must be the same for both views");
                        ExtractorUtil.checkContainerInput(i27 == layered.bitdepthChroma, "bitdepthChroma must be the same for both views");
                        List<byte[]> listBuild = listOf;
                        if (listBuild != null) {
                            listBuild = ImmutableList.builder().addAll((Iterable) listBuild).addAll((Iterable) layered.initializationData).build();
                            i23 = i54;
                        } else {
                            i23 = i54;
                            ExtractorUtil.checkContainerInput(false, "initializationData must be already set from hvcC atom");
                        }
                        drmInitData3 = drmInitDataCopyWithSchemeType;
                        i15 = i26;
                        str7 = "video/mv-hevc";
                        i16 = iIntValue;
                        i14 = i56;
                        iIsoColorPrimariesToColorSpace = i23;
                        iIsoTransferCharacteristicsToColorTransfer = i22;
                        strBuildApvCodecString = layered.codecs;
                        h265VpsData = h265VpsData3;
                        listOf = listBuild;
                    } else {
                        List<byte[]> listBuildVp9CodecPrivateInitializationData = listOf;
                        iIsoColorPrimariesToColorSpace = i33;
                        i14 = i34;
                        int i59 = iIsoTransferCharacteristicsToColorTransfer;
                        NalUnitUtil.H265VpsData h265VpsData4 = h265VpsData2;
                        if (i36 == 1987470147) {
                            ExtractorUtil.checkContainerInput(str2 == null, null);
                            parsableByteArray.setPosition(position2 + 8);
                            VvcConfig vvcConfig = VvcConfig.parse(parsableByteArray);
                            List<byte[]> list5 = vvcConfig.initializationData;
                            stsdData2.nalUnitLengthFieldLength = vvcConfig.nalUnitLengthFieldLength;
                            String str11 = vvcConfig.codecs;
                            i27 = vvcConfig.bitdepthLuma;
                            i15 = i27;
                            h265VpsData = h265VpsData4;
                            drmInitData3 = drmInitDataCopyWithSchemeType;
                            listOf = list5;
                            strBuildApvCodecString = str11;
                            str7 = "video/vvc";
                            i16 = iIntValue;
                            iIsoTransferCharacteristicsToColorTransfer = i59;
                            i29 = 16;
                        } else if (i36 == 1986361461) {
                            VexuData videoExtendedUsageBox = parseVideoExtendedUsageBox(parsableByteArray, position2, i35);
                            if (videoExtendedUsageBox == null || videoExtendedUsageBox.eyesData == null) {
                                i21 = i28;
                                i28 = i21;
                                h265VpsData = h265VpsData4;
                                drmInitData3 = drmInitDataCopyWithSchemeType;
                                i15 = i26;
                                listOf = listBuildVp9CodecPrivateInitializationData;
                                str7 = str2;
                                i16 = iIntValue;
                                iIsoTransferCharacteristicsToColorTransfer = i59;
                            } else if (h265VpsData4 == null || h265VpsData4.layerInfos.size() < 2) {
                                i21 = i28;
                                if (i21 == -1) {
                                    i28 = videoExtendedUsageBox.eyesData.striData.eyeViewsReversed ? 5 : 4;
                                } else {
                                    i28 = i21;
                                }
                                h265VpsData = h265VpsData4;
                                drmInitData3 = drmInitDataCopyWithSchemeType;
                                i15 = i26;
                                listOf = listBuildVp9CodecPrivateInitializationData;
                                str7 = str2;
                                i16 = iIntValue;
                                iIsoTransferCharacteristicsToColorTransfer = i59;
                            } else {
                                ExtractorUtil.checkContainerInput(videoExtendedUsageBox.hasBothEyeViews(), "both eye views must be marked as available");
                                ExtractorUtil.checkContainerInput(!videoExtendedUsageBox.eyesData.striData.eyeViewsReversed, "for MV-HEVC, eye_views_reversed must be set to false");
                                i21 = i28;
                                i28 = i21;
                                h265VpsData = h265VpsData4;
                                drmInitData3 = drmInitDataCopyWithSchemeType;
                                i15 = i26;
                                listOf = listBuildVp9CodecPrivateInitializationData;
                                str7 = str2;
                                i16 = iIntValue;
                                iIsoTransferCharacteristicsToColorTransfer = i59;
                            }
                        } else {
                            int i60 = i28;
                            if (i36 == 1685480259 || i36 == 1685485123 || i36 == 1685485379) {
                                drmInitData3 = drmInitDataCopyWithSchemeType;
                                i15 = i26;
                                list2 = listBuildVp9CodecPrivateInitializationData;
                                str7 = str2;
                                i16 = iIntValue;
                                i17 = i27;
                                i18 = iIsoColorPrimariesToColorSpace;
                                i19 = i59;
                                dolbyVisionConfig2 = DolbyVisionConfig.parse(parsableByteArray);
                            } else if (i36 == 1987076931) {
                                ExtractorUtil.checkContainerInput(str2 == null, null);
                                String str12 = iIntValue == 1987063864 ? "video/x-vnd.on2.vp8" : "video/x-vnd.on2.vp9";
                                parsableByteArray.setPosition(position2 + 12);
                                byte unsignedByte = (byte) parsableByteArray.readUnsignedByte();
                                byte unsignedByte2 = (byte) parsableByteArray.readUnsignedByte();
                                int unsignedByte3 = parsableByteArray.readUnsignedByte();
                                i27 = unsignedByte3 >> 4;
                                i16 = iIntValue;
                                byte b2 = (byte) ((unsignedByte3 >> 1) & 7);
                                if (str12.equals("video/x-vnd.on2.vp9")) {
                                    listBuildVp9CodecPrivateInitializationData = CodecSpecificDataUtil.buildVp9CodecPrivateInitializationData(unsignedByte, unsignedByte2, (byte) i27, b2);
                                }
                                boolean z2 = (unsignedByte3 & 1) != 0;
                                int unsignedByte4 = parsableByteArray.readUnsignedByte();
                                int unsignedByte5 = parsableByteArray.readUnsignedByte();
                                int iIsoColorPrimariesToColorSpace2 = ColorInfo.isoColorPrimariesToColorSpace(unsignedByte4);
                                int i61 = z2 ? 1 : 2;
                                iIsoTransferCharacteristicsToColorTransfer = ColorInfo.isoTransferCharacteristicsToColorTransfer(unsignedByte5);
                                drmInitData3 = drmInitDataCopyWithSchemeType;
                                i15 = i27;
                                i14 = i61;
                                iIsoColorPrimariesToColorSpace = iIsoColorPrimariesToColorSpace2;
                                str7 = str12;
                                listOf = listBuildVp9CodecPrivateInitializationData;
                                h265VpsData = h265VpsData4;
                                i28 = i60;
                            } else {
                                i16 = iIntValue;
                                if (i36 == 1635135811) {
                                    int i62 = i35 - 8;
                                    byte[] bArr2 = new byte[i62];
                                    parsableByteArray.readBytes(bArr2, 0, i62);
                                    listOf = ImmutableList.of(bArr2);
                                    parsableByteArray.setPosition(position2 + 8);
                                    ColorInfo av1c = parseAv1c(parsableByteArray);
                                    int i63 = av1c.lumaBitdepth;
                                    int i64 = av1c.chromaBitdepth;
                                    int i65 = av1c.colorSpace;
                                    int i66 = av1c.colorRange;
                                    iIsoTransferCharacteristicsToColorTransfer = av1c.colorTransfer;
                                    i15 = i63;
                                    drmInitData3 = drmInitDataCopyWithSchemeType;
                                    i27 = i64;
                                    iIsoColorPrimariesToColorSpace = i65;
                                    i14 = i66;
                                    str7 = "video/av01";
                                    h265VpsData = h265VpsData4;
                                } else if (i36 == 1668050025) {
                                    ByteBuffer byteBufferAllocateHdrStaticInfo = byteBuffer == null ? allocateHdrStaticInfo() : byteBuffer;
                                    byteBufferAllocateHdrStaticInfo.position(21);
                                    byteBufferAllocateHdrStaticInfo.putShort(parsableByteArray.readShort());
                                    byteBufferAllocateHdrStaticInfo.putShort(parsableByteArray.readShort());
                                    byteBuffer = byteBufferAllocateHdrStaticInfo;
                                    drmInitData3 = drmInitDataCopyWithSchemeType;
                                    i15 = i26;
                                    listOf = listBuildVp9CodecPrivateInitializationData;
                                    str7 = str2;
                                    h265VpsData = h265VpsData4;
                                    iIsoTransferCharacteristicsToColorTransfer = i59;
                                } else if (i36 == 1835295606) {
                                    ByteBuffer byteBufferAllocateHdrStaticInfo2 = byteBuffer == null ? allocateHdrStaticInfo() : byteBuffer;
                                    short s = parsableByteArray.readShort();
                                    short s2 = parsableByteArray.readShort();
                                    short s3 = parsableByteArray.readShort();
                                    str7 = str2;
                                    short s4 = parsableByteArray.readShort();
                                    short s5 = parsableByteArray.readShort();
                                    int i67 = i27;
                                    short s6 = parsableByteArray.readShort();
                                    i15 = i26;
                                    short s7 = parsableByteArray.readShort();
                                    drmInitData3 = drmInitDataCopyWithSchemeType;
                                    short s8 = parsableByteArray.readShort();
                                    long unsignedInt = parsableByteArray.readUnsignedInt();
                                    long unsignedInt2 = parsableByteArray.readUnsignedInt();
                                    byteBufferAllocateHdrStaticInfo2.position(1);
                                    byteBufferAllocateHdrStaticInfo2.putShort(s5);
                                    byteBufferAllocateHdrStaticInfo2.putShort(s6);
                                    byteBufferAllocateHdrStaticInfo2.putShort(s);
                                    byteBufferAllocateHdrStaticInfo2.putShort(s2);
                                    byteBufferAllocateHdrStaticInfo2.putShort(s3);
                                    byteBufferAllocateHdrStaticInfo2.putShort(s4);
                                    byteBufferAllocateHdrStaticInfo2.putShort(s7);
                                    byteBufferAllocateHdrStaticInfo2.putShort(s8);
                                    byteBufferAllocateHdrStaticInfo2.putShort((short) (unsignedInt / NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS));
                                    byteBufferAllocateHdrStaticInfo2.putShort((short) (unsignedInt2 / NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS));
                                    byteBuffer = byteBufferAllocateHdrStaticInfo2;
                                    h265VpsData = h265VpsData4;
                                    i27 = i67;
                                    iIsoTransferCharacteristicsToColorTransfer = i59;
                                    listOf = listBuildVp9CodecPrivateInitializationData;
                                } else {
                                    drmInitData3 = drmInitDataCopyWithSchemeType;
                                    i15 = i26;
                                    list2 = listBuildVp9CodecPrivateInitializationData;
                                    str7 = str2;
                                    i17 = i27;
                                    if (i36 == 1681012275) {
                                        ExtractorUtil.checkContainerInput(str7 == null, null);
                                        h265VpsData = h265VpsData4;
                                        i27 = i17;
                                        str7 = str6;
                                    } else if (i36 == 1702061171) {
                                        ExtractorUtil.checkContainerInput(str7 == null, null);
                                        esdsFromParent = parseEsdsFromParent(parsableByteArray, position2);
                                        String str13 = esdsFromParent.mimeType;
                                        byte[] bArr3 = esdsFromParent.initializationData;
                                        listOf = bArr3 != null ? ImmutableList.of(bArr3) : list2;
                                        str7 = str13;
                                        h265VpsData = h265VpsData4;
                                        i27 = i17;
                                        iIsoTransferCharacteristicsToColorTransfer = i59;
                                        i28 = i60;
                                    } else {
                                        if (i36 == 1651798644) {
                                            btrtFromParent = parseBtrtFromParent(parsableByteArray, position2);
                                        } else {
                                            if (i36 == 1885434736) {
                                                paspFromParent = parsePaspFromParent(parsableByteArray, position2);
                                                h265VpsData = h265VpsData4;
                                                i27 = i17;
                                                iIsoTransferCharacteristicsToColorTransfer = i59;
                                                listOf = list2;
                                                z = true;
                                            } else if (i36 == 1937126244) {
                                                projFromParent = parseProjFromParent(parsableByteArray, position2, i35);
                                            } else if (i36 == 1936995172) {
                                                int unsignedByte6 = parsableByteArray.readUnsignedByte();
                                                parsableByteArray.skipBytes(3);
                                                if (unsignedByte6 != 0) {
                                                    i20 = i60;
                                                    h265VpsData = h265VpsData4;
                                                    i27 = i17;
                                                    iIsoTransferCharacteristicsToColorTransfer = i59;
                                                    listOf = list2;
                                                    i28 = i20;
                                                } else {
                                                    int unsignedByte7 = parsableByteArray.readUnsignedByte();
                                                    if (unsignedByte7 != 0) {
                                                        i20 = 1;
                                                        if (unsignedByte7 != 1) {
                                                            if (unsignedByte7 == 2) {
                                                                i20 = 2;
                                                            } else if (unsignedByte7 == 3) {
                                                                i20 = 3;
                                                            }
                                                        }
                                                    } else {
                                                        i20 = 0;
                                                    }
                                                    h265VpsData = h265VpsData4;
                                                    i27 = i17;
                                                    iIsoTransferCharacteristicsToColorTransfer = i59;
                                                    listOf = list2;
                                                    i28 = i20;
                                                }
                                            } else {
                                                if (i36 == 1634760259) {
                                                    int i68 = i35 - 12;
                                                    byte[] bArr4 = new byte[i68];
                                                    parsableByteArray.setPosition(position2 + 12);
                                                    parsableByteArray.readBytes(bArr4, 0, i68);
                                                    strBuildApvCodecString = CodecSpecificDataUtil.buildApvCodecString(bArr4);
                                                    listOf = ImmutableList.of(bArr4);
                                                    ColorInfo apvc = parseApvc(new ParsableByteArray(bArr4));
                                                    int i69 = apvc.lumaBitdepth;
                                                    int i70 = apvc.chromaBitdepth;
                                                    int i71 = apvc.colorSpace;
                                                    int i72 = apvc.colorRange;
                                                    iIsoTransferCharacteristicsToColorTransfer = apvc.colorTransfer;
                                                    i15 = i69;
                                                    i27 = i70;
                                                    iIsoColorPrimariesToColorSpace = i71;
                                                    i14 = i72;
                                                    str7 = "video/apv";
                                                    h265VpsData = h265VpsData4;
                                                } else {
                                                    i18 = iIsoColorPrimariesToColorSpace;
                                                    if (i36 == 1668246642) {
                                                        i19 = i59;
                                                        if (i18 == -1 && i19 == -1) {
                                                            int i73 = parsableByteArray.readInt();
                                                            if (i73 == 1852009592 || i73 == 1852009571) {
                                                                int unsignedShort3 = parsableByteArray.readUnsignedShort();
                                                                int unsignedShort4 = parsableByteArray.readUnsignedShort();
                                                                parsableByteArray.skipBytes(2);
                                                                boolean z3 = i35 == 19 && (parsableByteArray.readUnsignedByte() & 128) != 0;
                                                                iIsoColorPrimariesToColorSpace = ColorInfo.isoColorPrimariesToColorSpace(unsignedShort3);
                                                                i14 = z3 ? 1 : 2;
                                                                h265VpsData = h265VpsData4;
                                                                i27 = i17;
                                                                listOf = list2;
                                                                iIsoTransferCharacteristicsToColorTransfer = ColorInfo.isoTransferCharacteristicsToColorTransfer(unsignedShort4);
                                                            } else {
                                                                Log.m164w("BoxParsers", "Unsupported color type: " + Mp4Box.getBoxTypeString(i73));
                                                            }
                                                        }
                                                    } else {
                                                        i19 = i59;
                                                    }
                                                }
                                            }
                                            i28 = i60;
                                        }
                                        h265VpsData = h265VpsData4;
                                        i27 = i17;
                                    }
                                    iIsoTransferCharacteristicsToColorTransfer = i59;
                                    listOf = list2;
                                    i28 = i60;
                                }
                                i28 = i60;
                            }
                            iIsoColorPrimariesToColorSpace = i18;
                            i27 = i17;
                            listOf = list2;
                            iIsoTransferCharacteristicsToColorTransfer = i19;
                            h265VpsData = h265VpsData4;
                            i28 = i60;
                        }
                        position = i13 + i35;
                        i25 = i3;
                        stsdData2 = stsdData;
                        str2 = str7;
                        iIntValue = i16;
                        i26 = i15;
                        str8 = str6;
                        i33 = iIsoColorPrimariesToColorSpace;
                        i34 = i14;
                        drmInitDataCopyWithSchemeType = drmInitData3;
                        h265VpsData2 = h265VpsData;
                        i24 = i2;
                    }
                }
            }
            position = i13 + i35;
            i25 = i3;
            stsdData2 = stsdData;
            str2 = str7;
            iIntValue = i16;
            i26 = i15;
            str8 = str6;
            i33 = iIsoColorPrimariesToColorSpace;
            i34 = i14;
            drmInitDataCopyWithSchemeType = drmInitData3;
            h265VpsData2 = h265VpsData;
            i24 = i2;
        }
        if (dolbyVisionConfig != null) {
            str4 = dolbyVisionConfig.codecs;
            str5 = "video/dolby-vision";
        } else {
            str4 = strBuildApvCodecString;
            str5 = str3;
        }
        if (str5 == null) {
            return;
        }
        Format.Builder colorInfo = new Format.Builder().setId(i4).setSampleMimeType(str5).setCodecs(str4).setWidth(unsignedShort).setHeight(unsignedShort2).setDecodedWidth(i31).setDecodedHeight(i32).setPixelWidthHeightRatio(paspFromParent).setRotationDegrees(i5).setProjectionData(projFromParent).setStereoMode(i8).setInitializationData(list).setMaxNumReorderSamples(i29).setMaxSubLayers(i30).setDrmInitData(drmInitData2).setLanguage(str).setColorInfo(new ColorInfo.Builder().setColorSpace(i9).setColorRange(i10).setColorTransfer(i11).setHdrStaticInfo(byteBuffer != null ? byteBuffer.array() : bArr).setLumaBitdepth(i7).setChromaBitdepth(i12).build());
        if (btrtFromParent != null) {
            colorInfo.setAverageBitrate(Ints.saturatedCast(btrtFromParent.avgBitrate)).setPeakBitrate(Ints.saturatedCast(btrtFromParent.maxBitrate));
        } else if (esdsFromParent != null) {
            colorInfo.setAverageBitrate(Ints.saturatedCast(esdsFromParent.bitrate)).setPeakBitrate(Ints.saturatedCast(esdsFromParent.peakBitrate));
        }
        stsdData.format = colorInfo.build();
    }

    private static ColorInfo parseAv1c(ParsableByteArray parsableByteArray) {
        ColorInfo.Builder builder = new ColorInfo.Builder();
        ParsableBitArray parsableBitArray = new ParsableBitArray(parsableByteArray.getData());
        parsableBitArray.setPosition(parsableByteArray.getPosition() * 8);
        parsableBitArray.skipBytes(1);
        int bits = parsableBitArray.readBits(3);
        parsableBitArray.skipBits(6);
        boolean bit = parsableBitArray.readBit();
        boolean bit2 = parsableBitArray.readBit();
        if (bits == 2 && bit) {
            builder.setLumaBitdepth(bit2 ? 12 : 10);
            builder.setChromaBitdepth(bit2 ? 12 : 10);
        } else if (bits <= 2) {
            builder.setLumaBitdepth(bit ? 10 : 8);
            builder.setChromaBitdepth(bit ? 10 : 8);
        }
        parsableBitArray.skipBits(13);
        parsableBitArray.skipBit();
        int bits2 = parsableBitArray.readBits(4);
        if (bits2 != 1) {
            Log.m163i("BoxParsers", "Unsupported obu_type: " + bits2);
            return builder.build();
        }
        if (parsableBitArray.readBit()) {
            Log.m163i("BoxParsers", "Unsupported obu_extension_flag");
            return builder.build();
        }
        boolean bit3 = parsableBitArray.readBit();
        parsableBitArray.skipBit();
        if (bit3 && parsableBitArray.readBits(8) > 127) {
            Log.m163i("BoxParsers", "Excessive obu_size");
            return builder.build();
        }
        int bits3 = parsableBitArray.readBits(3);
        parsableBitArray.skipBit();
        if (parsableBitArray.readBit()) {
            Log.m163i("BoxParsers", "Unsupported reduced_still_picture_header");
            return builder.build();
        }
        if (parsableBitArray.readBit()) {
            Log.m163i("BoxParsers", "Unsupported timing_info_present_flag");
            return builder.build();
        }
        if (parsableBitArray.readBit()) {
            Log.m163i("BoxParsers", "Unsupported initial_display_delay_present_flag");
            return builder.build();
        }
        int bits4 = parsableBitArray.readBits(5);
        boolean z = false;
        for (int i = 0; i <= bits4; i++) {
            parsableBitArray.skipBits(12);
            if (parsableBitArray.readBits(5) > 7) {
                parsableBitArray.skipBit();
            }
        }
        int bits5 = parsableBitArray.readBits(4);
        int bits6 = parsableBitArray.readBits(4);
        parsableBitArray.skipBits(bits5 + 1);
        parsableBitArray.skipBits(bits6 + 1);
        if (parsableBitArray.readBit()) {
            parsableBitArray.skipBits(7);
        }
        parsableBitArray.skipBits(7);
        boolean bit4 = parsableBitArray.readBit();
        if (bit4) {
            parsableBitArray.skipBits(2);
        }
        if ((parsableBitArray.readBit() ? 2 : parsableBitArray.readBits(1)) > 0 && !parsableBitArray.readBit()) {
            parsableBitArray.skipBits(1);
        }
        if (bit4) {
            parsableBitArray.skipBits(3);
        }
        parsableBitArray.skipBits(3);
        boolean bit5 = parsableBitArray.readBit();
        if (bits3 == 2 && bit5) {
            parsableBitArray.skipBit();
        }
        if (bits3 != 1 && parsableBitArray.readBit()) {
            z = true;
        }
        if (parsableBitArray.readBit()) {
            int bits7 = parsableBitArray.readBits(8);
            int bits8 = parsableBitArray.readBits(8);
            builder.setColorSpace(ColorInfo.isoColorPrimariesToColorSpace(bits7)).setColorRange(((z || bits7 != 1 || bits8 != 13 || parsableBitArray.readBits(8) != 0) ? parsableBitArray.readBits(1) : 1) != 1 ? 2 : 1).setColorTransfer(ColorInfo.isoTransferCharacteristicsToColorTransfer(bits8));
        }
        return builder.build();
    }

    private static ColorInfo parseApvc(ParsableByteArray parsableByteArray) {
        ColorInfo.Builder builder = new ColorInfo.Builder();
        ParsableBitArray parsableBitArray = new ParsableBitArray(parsableByteArray.getData());
        parsableBitArray.setPosition(parsableByteArray.getPosition() * 8);
        parsableBitArray.skipBytes(1);
        int bits = parsableBitArray.readBits(8);
        for (int i = 0; i < bits; i++) {
            parsableBitArray.skipBytes(1);
            int bits2 = parsableBitArray.readBits(8);
            for (int i2 = 0; i2 < bits2; i2++) {
                parsableBitArray.skipBits(6);
                boolean bit = parsableBitArray.readBit();
                parsableBitArray.skipBit();
                parsableBitArray.skipBytes(11);
                parsableBitArray.skipBits(4);
                int bits3 = parsableBitArray.readBits(4) + 8;
                builder.setLumaBitdepth(bits3);
                builder.setChromaBitdepth(bits3);
                parsableBitArray.skipBytes(1);
                if (bit) {
                    int bits4 = parsableBitArray.readBits(8);
                    int bits5 = parsableBitArray.readBits(8);
                    parsableBitArray.skipBytes(1);
                    builder.setColorSpace(ColorInfo.isoColorPrimariesToColorSpace(bits4)).setColorRange(parsableBitArray.readBit() ? 1 : 2).setColorTransfer(ColorInfo.isoTransferCharacteristicsToColorTransfer(bits5));
                }
            }
        }
        return builder.build();
    }

    private static ByteBuffer allocateHdrStaticInfo() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    private static void parseMetaDataSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, StsdData stsdData) {
        parsableByteArray.setPosition(i2 + 16);
        if (i == 1835365492) {
            parsableByteArray.readNullTerminatedString();
            String nullTerminatedString = parsableByteArray.readNullTerminatedString();
            if (nullTerminatedString != null) {
                stsdData.format = new Format.Builder().setId(i3).setSampleMimeType(nullTerminatedString).build();
            }
        }
    }

    private static Pair<long[], long[]> parseEdts(Mp4Box.ContainerBox containerBox) {
        Mp4Box.LeafBox leafBoxOfType = containerBox.getLeafBoxOfType(1701606260);
        if (leafBoxOfType == null) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafBoxOfType.data;
        parsableByteArray.setPosition(8);
        int fullBoxVersion = parseFullBoxVersion(parsableByteArray.readInt());
        int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        long[] jArr = new long[unsignedIntToInt];
        long[] jArr2 = new long[unsignedIntToInt];
        for (int i = 0; i < unsignedIntToInt; i++) {
            jArr[i] = fullBoxVersion == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
            jArr2[i] = fullBoxVersion == 1 ? parsableByteArray.readLong() : parsableByteArray.readInt();
            if (parsableByteArray.readShort() != 1) {
                f$$ExternalSyntheticBUOutline1.m215m("Unsupported media rate.");
                return null;
            }
            parsableByteArray.skipBytes(2);
        }
        return Pair.create(jArr, jArr2);
    }

    private static float parsePaspFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8);
        return parsableByteArray.readUnsignedIntToInt() / parsableByteArray.readUnsignedIntToInt();
    }

    /* JADX WARN: Removed duplicated region for block: B:142:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x03aa A[PHI: r2 r8 r9 r11 r16 r23
  0x03aa: PHI (r2v17 java.util.List<byte[]>) = 
  (r2v2 java.util.List<byte[]>)
  (r2v2 java.util.List<byte[]>)
  (r2v16 java.util.List<byte[]>)
  (r2v2 java.util.List<byte[]>)
  (r2v26 java.util.List<byte[]>)
 binds: [B:241:0x045c, B:243:0x046a, B:246:0x0474, B:234:0x0420, B:207:0x037a] A[DONT_GENERATE, DONT_INLINE]
  0x03aa: PHI (r8v11 int) = (r8v8 int), (r8v8 int), (r8v8 int), (r8v8 int), (r8v15 int) binds: [B:241:0x045c, B:243:0x046a, B:246:0x0474, B:234:0x0420, B:207:0x037a] A[DONT_GENERATE, DONT_INLINE]
  0x03aa: PHI (r9v8 int) = (r9v5 int), (r9v5 int), (r9v5 int), (r9v5 int), (r9v10 int) binds: [B:241:0x045c, B:243:0x046a, B:246:0x0474, B:234:0x0420, B:207:0x037a] A[DONT_GENERATE, DONT_INLINE]
  0x03aa: PHI (r11v11 java.lang.String) = 
  (r11v9 java.lang.String)
  (r11v10 java.lang.String)
  (r11v10 java.lang.String)
  (r11v12 java.lang.String)
  (r11v9 java.lang.String)
 binds: [B:241:0x045c, B:243:0x046a, B:246:0x0474, B:234:0x0420, B:207:0x037a] A[DONT_GENERATE, DONT_INLINE]
  0x03aa: PHI (r16v3 androidx.media3.extractor.mp4.BoxParser$EsdsData) = 
  (r16v1 androidx.media3.extractor.mp4.BoxParser$EsdsData)
  (r16v2 androidx.media3.extractor.mp4.BoxParser$EsdsData)
  (r16v2 androidx.media3.extractor.mp4.BoxParser$EsdsData)
  (r16v1 androidx.media3.extractor.mp4.BoxParser$EsdsData)
  (r16v1 androidx.media3.extractor.mp4.BoxParser$EsdsData)
 binds: [B:241:0x045c, B:243:0x046a, B:246:0x0474, B:234:0x0420, B:207:0x037a] A[DONT_GENERATE, DONT_INLINE]
  0x03aa: PHI (r23v2 int) = (r23v1 int), (r23v1 int), (r23v1 int), (r23v3 int), (r23v4 int) binds: [B:241:0x045c, B:243:0x046a, B:246:0x0474, B:234:0x0420, B:207:0x037a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x015a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void parseAudioSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, String str, boolean z, DrmInitData drmInitData, StsdData stsdData, int i5) throws ParserException {
        int unsignedShort;
        int unsignedShort2;
        int unsignedFixedPoint1616;
        int i6;
        int i7;
        int i8;
        String str2;
        int i9;
        String str3;
        String str4;
        String str5;
        String str6;
        int pcmEncoding;
        int i10;
        String str7;
        int iIntValue = i;
        int i11 = i3;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        parsableByteArray.setPosition(i2 + 16);
        if (z) {
            unsignedShort = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
        } else {
            parsableByteArray.skipBytes(8);
            unsignedShort = 0;
        }
        if (unsignedShort == 0 || unsignedShort == 1) {
            unsignedShort2 = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
            unsignedFixedPoint1616 = parsableByteArray.readUnsignedFixedPoint1616();
            parsableByteArray.setPosition(parsableByteArray.getPosition() - 4);
            i6 = parsableByteArray.readInt();
            i7 = 2;
            if (unsignedShort == 1) {
                parsableByteArray.skipBytes(16);
            }
            i8 = -1;
        } else {
            if (unsignedShort != 2) {
                return;
            }
            parsableByteArray.skipBytes(16);
            unsignedFixedPoint1616 = (int) Math.round(parsableByteArray.readDouble());
            int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            parsableByteArray.skipBytes(4);
            int unsignedIntToInt2 = parsableByteArray.readUnsignedIntToInt();
            int unsignedIntToInt3 = parsableByteArray.readUnsignedIntToInt();
            boolean z2 = (unsignedIntToInt3 & 1) != 0;
            boolean z3 = (unsignedIntToInt3 & 2) != 0;
            if (!z2) {
                i8 = unsignedIntToInt2 == 8 ? 3 : unsignedIntToInt2 == 16 ? z3 ? 268435456 : 2 : unsignedIntToInt2 == 24 ? z3 ? 1342177280 : 21 : unsignedIntToInt2 == 32 ? z3 ? 1610612736 : 22 : -1;
                parsableByteArray.skipBytes(8);
                unsignedShort2 = unsignedIntToInt;
                i7 = 2;
                i6 = 0;
            } else {
                if (!z3 && unsignedIntToInt2 == 32) {
                    i8 = 4;
                }
                parsableByteArray.skipBytes(8);
                unsignedShort2 = unsignedIntToInt;
                i7 = 2;
                i6 = 0;
            }
        }
        if (iIntValue == 1767992678) {
            unsignedFixedPoint1616 = -1;
            unsignedShort2 = -1;
        } else {
            if (iIntValue != 1935764850) {
                unsignedFixedPoint1616 = iIntValue == 1935767394 ? CarAudioRecord.AUDIO_CONTENT_SAMPLING_RATE : 8000;
            }
            unsignedShort2 = 1;
        }
        int position = parsableByteArray.getPosition();
        if (iIntValue == 1701733217) {
            Pair<Integer, TrackEncryptionBox> sampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i2, i11);
            if (sampleEntryEncryptionData != null) {
                iIntValue = ((Integer) sampleEntryEncryptionData.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((TrackEncryptionBox) sampleEntryEncryptionData.second).schemeType);
                stsdData.trackEncryptionBoxes[i5] = (TrackEncryptionBox) sampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
        }
        String str8 = "audio/mhm1";
        if (iIntValue == 1633889587) {
            str2 = "audio/ac3";
        } else if (iIntValue == 1700998451) {
            str2 = "audio/eac3";
        } else if (iIntValue == 1633889588) {
            str2 = "audio/ac4";
        } else if (iIntValue == 1685353315) {
            str2 = "audio/vnd.dts";
        } else if (iIntValue == 1685353320 || iIntValue == 1685353324) {
            str2 = "audio/vnd.dts.hd";
        } else if (iIntValue == 1685353317) {
            str2 = "audio/vnd.dts.hd;profile=lbr";
        } else if (iIntValue == 1685353336) {
            str2 = "audio/vnd.dts.uhd;profile=p2";
        } else if (iIntValue == 1935764850) {
            str2 = "audio/3gpp";
        } else if (iIntValue == 1935767394) {
            str2 = "audio/amr-wb";
        } else {
            if (iIntValue != 1936684916) {
                if (iIntValue == 1953984371) {
                    str3 = "audio/raw";
                    i9 = 268435456;
                } else if (iIntValue == 1819304813) {
                    i9 = i8 == -1 ? i7 : i8;
                    str3 = "audio/raw";
                } else if (iIntValue == 778924082 || iIntValue == 778924083) {
                    str2 = "audio/mpeg";
                } else if (iIntValue == 1835557169) {
                    str2 = "audio/mha1";
                } else if (iIntValue == 1835560241) {
                    i9 = i8;
                    str3 = "audio/mhm1";
                } else if (iIntValue == 1634492771) {
                    str2 = "audio/alac";
                } else if (iIntValue == 1634492791) {
                    str2 = "audio/g711-alaw";
                } else if (iIntValue == 1970037111) {
                    str2 = "audio/g711-mlaw";
                } else if (iIntValue == 1332770163) {
                    str2 = "audio/opus";
                } else if (iIntValue == 1716281667) {
                    str2 = "audio/flac";
                } else if (iIntValue == 1835823201) {
                    str2 = "audio/true-hd";
                } else if (iIntValue == 1767992678) {
                    str2 = "audio/iamf";
                } else {
                    i9 = i8;
                    str3 = null;
                }
            }
            int pcmEncoding2 = i9;
            List<byte[]> vorbisCsdFromEsdsInitializationData = null;
            String str9 = null;
            EsdsData esdsFromParent = null;
            BtrtData btrtFromParent = null;
            while (position - i2 < i11) {
                parsableByteArray.setPosition(position);
                int i12 = parsableByteArray.readInt();
                String str10 = str9;
                ExtractorUtil.checkContainerInput(i12 > 0, "childAtomSize must be positive");
                int i13 = parsableByteArray.readInt();
                if (i13 == 1835557187) {
                    parsableByteArray.setPosition(position + 8);
                    parsableByteArray.skipBytes(1);
                    int unsignedByte = parsableByteArray.readUnsignedByte();
                    parsableByteArray.skipBytes(1);
                    if (Objects.equals(str3, str8)) {
                        str7 = String.format("mhm1.%02X", Integer.valueOf(unsignedByte));
                    } else {
                        str7 = String.format("mha1.%02X", Integer.valueOf(unsignedByte));
                    }
                    String str11 = str7;
                    int unsignedShort3 = parsableByteArray.readUnsignedShort();
                    str10 = str11;
                    byte[] bArr = new byte[unsignedShort3];
                    str4 = str8;
                    parsableByteArray.readBytes(bArr, 0, unsignedShort3);
                    if (vorbisCsdFromEsdsInitializationData == null) {
                        vorbisCsdFromEsdsInitializationData = ImmutableList.of(bArr);
                    } else {
                        vorbisCsdFromEsdsInitializationData = ImmutableList.of(bArr, vorbisCsdFromEsdsInitializationData.get(0));
                    }
                } else {
                    str4 = str8;
                    if (i13 == 1835557200) {
                        parsableByteArray.setPosition(position + 8);
                        int unsignedByte2 = parsableByteArray.readUnsignedByte();
                        if (unsignedByte2 > 0) {
                            byte[] bArr2 = new byte[unsignedByte2];
                            parsableByteArray.readBytes(bArr2, 0, unsignedByte2);
                            if (vorbisCsdFromEsdsInitializationData == null) {
                                vorbisCsdFromEsdsInitializationData = ImmutableList.of(bArr2);
                            } else {
                                vorbisCsdFromEsdsInitializationData = ImmutableList.of(vorbisCsdFromEsdsInitializationData.get(0), bArr2);
                            }
                        }
                    } else {
                        if (i13 == 1702061171 || (z && i13 == 2002876005)) {
                            int iFindBoxPosition = i13 == 1702061171 ? position : findBoxPosition(parsableByteArray, 1702061171, position, i12);
                            if (iFindBoxPosition != -1) {
                                esdsFromParent = parseEsdsFromParent(parsableByteArray, iFindBoxPosition);
                                str3 = esdsFromParent.mimeType;
                                byte[] bArr3 = esdsFromParent.initializationData;
                                if (bArr3 == null) {
                                    str6 = str10;
                                } else if ("audio/vorbis".equals(str3)) {
                                    vorbisCsdFromEsdsInitializationData = VorbisUtil.parseVorbisCsdFromEsdsInitializationData(bArr3);
                                    str6 = str10;
                                } else {
                                    if (MediaController.AUDIO_MIME_TYPE.equals(str3)) {
                                        AacUtil.Config audioSpecificConfig = AacUtil.parseAudioSpecificConfig(bArr3);
                                        unsignedFixedPoint1616 = audioSpecificConfig.sampleRateHz;
                                        unsignedShort2 = audioSpecificConfig.channelCount;
                                        str5 = audioSpecificConfig.codecs;
                                    } else {
                                        str5 = str10;
                                    }
                                    ImmutableList immutableListOf = ImmutableList.of(bArr3);
                                    str6 = str5;
                                    vorbisCsdFromEsdsInitializationData = immutableListOf;
                                }
                            }
                        } else if (i13 == 1651798644) {
                            btrtFromParent = parseBtrtFromParent(parsableByteArray, position);
                        } else {
                            if (i13 == 1684103987) {
                                parsableByteArray.setPosition(position + 8);
                                stsdData.format = Ac3Util.parseAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), str, drmInitDataCopyWithSchemeType);
                            } else if (i13 == 1684366131) {
                                parsableByteArray.setPosition(position + 8);
                                stsdData.format = Ac3Util.parseEAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), str, drmInitDataCopyWithSchemeType);
                            } else if (i13 == 1684103988) {
                                parsableByteArray.setPosition(position + 8);
                                stsdData.format = Ac4Util.parseAc4AnnexEFormat(parsableByteArray, Integer.toString(i4), str, drmInitDataCopyWithSchemeType);
                            } else if (i13 == 1684892784) {
                                if (i6 <= 0) {
                                    throw ParserException.createForMalformedContainer("Invalid sample rate for Dolby TrueHD MLP stream: " + i6, null);
                                }
                                str6 = str10;
                                unsignedFixedPoint1616 = i6;
                                unsignedShort2 = i7;
                            } else if (i13 == 1684305011 || i13 == 1969517683) {
                                stsdData.format = new Format.Builder().setId(i4).setSampleMimeType(str3).setChannelCount(unsignedShort2).setSampleRate(unsignedFixedPoint1616).setDrmInitData(drmInitDataCopyWithSchemeType).setLanguage(str).build();
                                str6 = str10;
                            } else if (i13 == 1682927731) {
                                int i14 = i12 - 8;
                                byte[] bArr4 = opusMagic;
                                byte[] bArrCopyOf = Arrays.copyOf(bArr4, bArr4.length + i14);
                                parsableByteArray.setPosition(position + 8);
                                parsableByteArray.readBytes(bArrCopyOf, bArr4.length, i14);
                                vorbisCsdFromEsdsInitializationData = OpusUtil.buildInitializationData(bArrCopyOf);
                            } else if (i13 == 1684425825) {
                                byte[] bArr5 = new byte[i12 - 8];
                                bArr5[0] = 102;
                                bArr5[1] = 76;
                                bArr5[i7] = 97;
                                bArr5[3] = 67;
                                parsableByteArray.setPosition(position + 12);
                                parsableByteArray.readBytes(bArr5, 4, i12 - 12);
                                vorbisCsdFromEsdsInitializationData = ImmutableList.of(bArr5);
                            } else {
                                if (i13 == 1634492771) {
                                    int i15 = i12 - 12;
                                    byte[] bArr6 = new byte[i15];
                                    parsableByteArray.setPosition(position + 12);
                                    parsableByteArray.readBytes(bArr6, 0, i15);
                                    int[] alacAudioSpecificConfig = CodecSpecificDataUtil.parseAlacAudioSpecificConfig(bArr6);
                                    int i16 = alacAudioSpecificConfig[0];
                                    unsignedShort2 = alacAudioSpecificConfig[1];
                                    unsignedFixedPoint1616 = i16;
                                    pcmEncoding2 = Util.getPcmEncoding(alacAudioSpecificConfig[i7]);
                                    vorbisCsdFromEsdsInitializationData = ImmutableList.of(bArr6);
                                } else if (i13 == 1767990114) {
                                    parsableByteArray.setPosition(position + 9);
                                    int unsignedLeb128ToInt = parsableByteArray.readUnsignedLeb128ToInt();
                                    byte[] bArr7 = new byte[unsignedLeb128ToInt];
                                    parsableByteArray.readBytes(bArr7, 0, unsignedLeb128ToInt);
                                    String strBuildIamfCodecString = CodecSpecificDataUtil.buildIamfCodecString(bArr7);
                                    ImmutableList immutableListOf2 = ImmutableList.of(bArr7);
                                    str6 = strBuildIamfCodecString;
                                    vorbisCsdFromEsdsInitializationData = immutableListOf2;
                                } else if (i13 == 1885564227) {
                                    parsableByteArray.setPosition(position + 12);
                                    ByteOrder byteOrder = (parsableByteArray.readUnsignedByte() & 1) != 0 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN;
                                    int unsignedByte3 = parsableByteArray.readUnsignedByte();
                                    if (iIntValue == 1768973165) {
                                        pcmEncoding = Util.getPcmEncoding(unsignedByte3, byteOrder);
                                        i10 = -1;
                                    } else {
                                        pcmEncoding = (iIntValue == 1718641517 && unsignedByte3 == 32 && byteOrder.equals(ByteOrder.LITTLE_ENDIAN)) ? 4 : pcmEncoding2;
                                        i10 = -1;
                                    }
                                    pcmEncoding2 = pcmEncoding;
                                    if (pcmEncoding != i10) {
                                        str3 = "audio/raw";
                                    }
                                }
                                str6 = str10;
                            }
                            str6 = str10;
                        }
                        position += i12;
                        str8 = str4;
                        str9 = str6;
                        i11 = i3;
                    }
                }
                str6 = str10;
                position += i12;
                str8 = str4;
                str9 = str6;
                i11 = i3;
            }
            String str12 = str9;
            if (stsdData.format == null || str3 == null) {
            }
            Format.Builder language = new Format.Builder().setId(i4).setSampleMimeType(str3).setCodecs(str12).setChannelCount(unsignedShort2).setSampleRate(unsignedFixedPoint1616).setPcmEncoding(pcmEncoding2).setInitializationData(vorbisCsdFromEsdsInitializationData).setDrmInitData(drmInitDataCopyWithSchemeType).setLanguage(str);
            if (esdsFromParent != null) {
                language.setAverageBitrate(Ints.saturatedCast(esdsFromParent.bitrate)).setPeakBitrate(Ints.saturatedCast(esdsFromParent.peakBitrate));
            } else if (btrtFromParent != null) {
                language.setAverageBitrate(Ints.saturatedCast(btrtFromParent.avgBitrate)).setPeakBitrate(Ints.saturatedCast(btrtFromParent.maxBitrate));
            }
            stsdData.format = language.build();
            return;
        }
        String str13 = str2;
        i9 = i8;
        str3 = str13;
        int pcmEncoding22 = i9;
        List<byte[]> vorbisCsdFromEsdsInitializationData2 = null;
        String str92 = null;
        EsdsData esdsFromParent2 = null;
        BtrtData btrtFromParent2 = null;
        while (position - i2 < i11) {
        }
        String str122 = str92;
        if (stsdData.format == null) {
        }
    }

    private static int findBoxPosition(ParsableByteArray parsableByteArray, int i, int i2, int i3) throws ParserException {
        int position = parsableByteArray.getPosition();
        ExtractorUtil.checkContainerInput(position >= i2, null);
        while (position - i2 < i3) {
            parsableByteArray.setPosition(position);
            int i4 = parsableByteArray.readInt();
            ExtractorUtil.checkContainerInput(i4 > 0, "childAtomSize must be positive");
            if (parsableByteArray.readInt() == i) {
                return position;
            }
            position += i4;
        }
        return -1;
    }

    private static EsdsData parseEsdsFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 12);
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        parsableByteArray.skipBytes(2);
        int unsignedByte = parsableByteArray.readUnsignedByte();
        if ((unsignedByte & 128) != 0) {
            parsableByteArray.skipBytes(2);
        }
        if ((unsignedByte & 64) != 0) {
            parsableByteArray.skipBytes(parsableByteArray.readUnsignedByte());
        }
        if ((unsignedByte & 32) != 0) {
            parsableByteArray.skipBytes(2);
        }
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        String mimeTypeFromMp4ObjectType = MimeTypes.getMimeTypeFromMp4ObjectType(parsableByteArray.readUnsignedByte());
        if ("audio/mpeg".equals(mimeTypeFromMp4ObjectType) || "audio/vnd.dts".equals(mimeTypeFromMp4ObjectType) || "audio/vnd.dts.hd".equals(mimeTypeFromMp4ObjectType)) {
            return new EsdsData(mimeTypeFromMp4ObjectType, null, -1L, -1L);
        }
        parsableByteArray.skipBytes(4);
        long unsignedInt = parsableByteArray.readUnsignedInt();
        long unsignedInt2 = parsableByteArray.readUnsignedInt();
        parsableByteArray.skipBytes(1);
        int expandableClassSize = parseExpandableClassSize(parsableByteArray);
        long j = unsignedInt2;
        byte[] bArr = new byte[expandableClassSize];
        parsableByteArray.readBytes(bArr, 0, expandableClassSize);
        if (j <= 0) {
            j = -1;
        }
        return new EsdsData(mimeTypeFromMp4ObjectType, bArr, j, unsignedInt > 0 ? unsignedInt : -1L);
    }

    private static BtrtData parseBtrtFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8);
        parsableByteArray.skipBytes(4);
        return new BtrtData(parsableByteArray.readUnsignedInt(), parsableByteArray.readUnsignedInt());
    }

    public static VexuData parseVideoExtendedUsageBox(ParsableByteArray parsableByteArray, int i, int i2) throws ParserException {
        parsableByteArray.setPosition(i + 8);
        int position = parsableByteArray.getPosition();
        EyesData stereoViewBox = null;
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int i3 = parsableByteArray.readInt();
            ExtractorUtil.checkContainerInput(i3 > 0, "childAtomSize must be positive");
            if (parsableByteArray.readInt() == 1702454643) {
                stereoViewBox = parseStereoViewBox(parsableByteArray, position, i3);
            }
            position += i3;
        }
        if (stereoViewBox == null) {
            return null;
        }
        return new VexuData(stereoViewBox);
    }

    private static EyesData parseStereoViewBox(ParsableByteArray parsableByteArray, int i, int i2) throws ParserException {
        parsableByteArray.setPosition(i + 8);
        int position = parsableByteArray.getPosition();
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int i3 = parsableByteArray.readInt();
            ExtractorUtil.checkContainerInput(i3 > 0, "childAtomSize must be positive");
            if (parsableByteArray.readInt() == 1937011305) {
                parsableByteArray.skipBytes(4);
                int unsignedByte = parsableByteArray.readUnsignedByte();
                return new EyesData(new StriData((unsignedByte & 1) == 1, (unsignedByte & 2) == 2, (unsignedByte & 8) == 8));
            }
            position += i3;
        }
        return null;
    }

    private static Pair<Integer, TrackEncryptionBox> parseSampleEntryEncryptionData(ParsableByteArray parsableByteArray, int i, int i2) throws ParserException {
        Pair<Integer, TrackEncryptionBox> commonEncryptionSinfFromParent;
        int position = parsableByteArray.getPosition();
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int i3 = parsableByteArray.readInt();
            ExtractorUtil.checkContainerInput(i3 > 0, "childAtomSize must be positive");
            if (parsableByteArray.readInt() == 1936289382 && (commonEncryptionSinfFromParent = parseCommonEncryptionSinfFromParent(parsableByteArray, position, i3)) != null) {
                return commonEncryptionSinfFromParent;
            }
            position += i3;
        }
        return null;
    }

    public static Pair<Integer, TrackEncryptionBox> parseCommonEncryptionSinfFromParent(ParsableByteArray parsableByteArray, int i, int i2) throws ParserException {
        int i3 = i + 8;
        int i4 = -1;
        int i5 = 0;
        String string = null;
        Integer numValueOf = null;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int i6 = parsableByteArray.readInt();
            int i7 = parsableByteArray.readInt();
            if (i7 == 1718775137) {
                numValueOf = Integer.valueOf(parsableByteArray.readInt());
            } else if (i7 == 1935894637) {
                parsableByteArray.skipBytes(4);
                string = parsableByteArray.readString(4);
            } else if (i7 == 1935894633) {
                i4 = i3;
                i5 = i6;
            }
            i3 += i6;
        }
        if (!"cenc".equals(string) && !"cbc1".equals(string) && !"cens".equals(string) && !"cbcs".equals(string)) {
            return null;
        }
        ExtractorUtil.checkContainerInput(numValueOf != null, "frma atom is mandatory");
        ExtractorUtil.checkContainerInput(i4 != -1, "schi atom is mandatory");
        TrackEncryptionBox schiFromParent = parseSchiFromParent(parsableByteArray, i4, i5, string);
        ExtractorUtil.checkContainerInput(schiFromParent != null, "tenc atom is mandatory");
        return Pair.create(numValueOf, (TrackEncryptionBox) Util.castNonNull(schiFromParent));
    }

    private static TrackEncryptionBox parseSchiFromParent(ParsableByteArray parsableByteArray, int i, int i2, String str) {
        int i3;
        int i4;
        int i5 = i + 8;
        while (true) {
            byte[] bArr = null;
            if (i5 - i >= i2) {
                return null;
            }
            parsableByteArray.setPosition(i5);
            int i6 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1952804451) {
                int fullBoxVersion = parseFullBoxVersion(parsableByteArray.readInt());
                parsableByteArray.skipBytes(1);
                if (fullBoxVersion == 0) {
                    parsableByteArray.skipBytes(1);
                    i4 = 0;
                    i3 = 0;
                } else {
                    int unsignedByte = parsableByteArray.readUnsignedByte();
                    i3 = unsignedByte & 15;
                    i4 = (unsignedByte & 240) >> 4;
                }
                boolean z = parsableByteArray.readUnsignedByte() == 1;
                int unsignedByte2 = parsableByteArray.readUnsignedByte();
                byte[] bArr2 = new byte[16];
                parsableByteArray.readBytes(bArr2, 0, 16);
                if (z && unsignedByte2 == 0) {
                    int unsignedByte3 = parsableByteArray.readUnsignedByte();
                    bArr = new byte[unsignedByte3];
                    parsableByteArray.readBytes(bArr, 0, unsignedByte3);
                }
                return new TrackEncryptionBox(z, str, unsignedByte2, bArr2, i4, i3, bArr);
            }
            i5 += i6;
        }
    }

    private static byte[] parseProjFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int i4 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1886547818) {
                return Arrays.copyOfRange(parsableByteArray.getData(), i3, i4 + i3);
            }
            i3 += i4;
        }
        return null;
    }

    private static int parseExpandableClassSize(ParsableByteArray parsableByteArray) {
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int i = unsignedByte & 127;
        while ((unsignedByte & 128) == 128) {
            unsignedByte = parsableByteArray.readUnsignedByte();
            i = (i << 7) | (unsignedByte & 127);
        }
        return i;
    }

    private static boolean canApplyEditWithGaplessInfo(long[] jArr, long j, long j2, long j3) {
        int length = jArr.length - 1;
        return jArr[0] <= j2 && j2 < jArr[Util.constrainValue(4, 0, length)] && jArr[Util.constrainValue(jArr.length - 4, 0, length)] < j3 && j3 <= j + 2;
    }

    public static final class ChunkIterator {
        private final ParsableByteArray chunkOffsets;
        private final boolean chunkOffsetsAreLongs;
        public int index;
        public final int length;
        private int nextSamplesPerChunkChangeIndex;
        public int numSamples;
        public long offset;
        private int remainingSamplesPerChunkChanges;
        private final ParsableByteArray stsc;

        public ChunkIterator(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, boolean z) throws ParserException {
            this.stsc = parsableByteArray;
            this.chunkOffsets = parsableByteArray2;
            this.chunkOffsetsAreLongs = z;
            parsableByteArray2.setPosition(12);
            this.length = parsableByteArray2.readUnsignedIntToInt();
            parsableByteArray.setPosition(12);
            this.remainingSamplesPerChunkChanges = parsableByteArray.readUnsignedIntToInt();
            ExtractorUtil.checkContainerInput(parsableByteArray.readInt() == 1, "first_chunk must be 1");
            this.index = -1;
        }

        public boolean moveNext() {
            long unsignedInt;
            int i = this.index + 1;
            this.index = i;
            if (i == this.length) {
                return false;
            }
            boolean z = this.chunkOffsetsAreLongs;
            ParsableByteArray parsableByteArray = this.chunkOffsets;
            if (z) {
                unsignedInt = parsableByteArray.readUnsignedLongToLong();
            } else {
                unsignedInt = parsableByteArray.readUnsignedInt();
            }
            this.offset = unsignedInt;
            if (this.index == this.nextSamplesPerChunkChangeIndex) {
                this.numSamples = this.stsc.readUnsignedIntToInt();
                this.stsc.skipBytes(4);
                int i2 = this.remainingSamplesPerChunkChanges - 1;
                this.remainingSamplesPerChunkChanges = i2;
                this.nextSamplesPerChunkChangeIndex = i2 > 0 ? this.stsc.readUnsignedIntToInt() - 1 : -1;
            }
            return true;
        }
    }

    public static final class TkhdData {
        private final int alternateGroup;
        private final long duration;
        private final int height;
        private final int id;
        private final int rotationDegrees;
        private final int width;

        public TkhdData(int i, long j, int i2, int i3, int i4, int i5) {
            this.id = i;
            this.duration = j;
            this.alternateGroup = i2;
            this.rotationDegrees = i3;
            this.width = i4;
            this.height = i5;
        }
    }

    public static final class StsdData {
        public Format format;
        public int nalUnitLengthFieldLength;
        public int requiredSampleTransformation = 0;
        public final TrackEncryptionBox[] trackEncryptionBoxes;

        public StsdData(int i) {
            this.trackEncryptionBoxes = new TrackEncryptionBox[i];
        }
    }

    public static final class EsdsData {
        private final long bitrate;
        private final byte[] initializationData;
        private final String mimeType;
        private final long peakBitrate;

        public EsdsData(String str, byte[] bArr, long j, long j2) {
            this.mimeType = str;
            this.initializationData = bArr;
            this.bitrate = j;
            this.peakBitrate = j2;
        }
    }

    public static final class BtrtData {
        private final long avgBitrate;
        private final long maxBitrate;

        public BtrtData(long j, long j2) {
            this.avgBitrate = j;
            this.maxBitrate = j2;
        }
    }

    public static final class StriData {
        private final boolean eyeViewsReversed;
        private final boolean hasLeftEyeView;
        private final boolean hasRightEyeView;

        public StriData(boolean z, boolean z2, boolean z3) {
            this.hasLeftEyeView = z;
            this.hasRightEyeView = z2;
            this.eyeViewsReversed = z3;
        }
    }

    public static final class EyesData {
        private final StriData striData;

        public EyesData(StriData striData) {
            this.striData = striData;
        }
    }

    public static final class MdhdData {
        private final String language;
        private final long mediaDurationUs;
        private final long timescale;

        public MdhdData(long j, long j2, String str) {
            this.timescale = j;
            this.mediaDurationUs = j2;
            this.language = str;
        }
    }

    public static final class VexuData {
        private final EyesData eyesData;

        public VexuData(EyesData eyesData) {
            this.eyesData = eyesData;
        }

        public boolean hasBothEyeViews() {
            EyesData eyesData = this.eyesData;
            return eyesData != null && eyesData.striData.hasLeftEyeView && this.eyesData.striData.hasRightEyeView;
        }
    }

    public static final class StszSampleSizeBox implements SampleSizeBox {
        private final ParsableByteArray data;
        private final int fixedSampleSize;
        private final int sampleCount;

        public StszSampleSizeBox(Mp4Box.LeafBox leafBox, Format format) {
            ParsableByteArray parsableByteArray = leafBox.data;
            this.data = parsableByteArray;
            parsableByteArray.setPosition(12);
            int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            if ("audio/raw".equals(format.sampleMimeType)) {
                int pcmFrameSize = Util.getPcmFrameSize(format.pcmEncoding, format.channelCount);
                if (unsignedIntToInt % pcmFrameSize != 0) {
                    Log.m164w("BoxParsers", "Audio sample size mismatch. stsd sample size: " + pcmFrameSize + ", stsz sample size: " + unsignedIntToInt);
                    unsignedIntToInt = pcmFrameSize;
                }
            }
            this.fixedSampleSize = unsignedIntToInt == 0 ? -1 : unsignedIntToInt;
            this.sampleCount = parsableByteArray.readUnsignedIntToInt();
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public int getFixedSampleSize() {
            return this.fixedSampleSize;
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public int readNextSampleSize() {
            int i = this.fixedSampleSize;
            return i == -1 ? this.data.readUnsignedIntToInt() : i;
        }
    }

    public static final class Stz2SampleSizeBox implements SampleSizeBox {
        private int currentByte;
        private final ParsableByteArray data;
        private final int fieldSize;
        private final int sampleCount;
        private int sampleIndex;

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public int getFixedSampleSize() {
            return -1;
        }

        public Stz2SampleSizeBox(Mp4Box.LeafBox leafBox) {
            ParsableByteArray parsableByteArray = leafBox.data;
            this.data = parsableByteArray;
            parsableByteArray.setPosition(12);
            this.fieldSize = parsableByteArray.readUnsignedIntToInt() & 255;
            this.sampleCount = parsableByteArray.readUnsignedIntToInt();
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public int readNextSampleSize() {
            int i = this.fieldSize;
            if (i == 8) {
                return this.data.readUnsignedByte();
            }
            if (i == 16) {
                return this.data.readUnsignedShort();
            }
            int i2 = this.sampleIndex;
            this.sampleIndex = i2 + 1;
            if (i2 % 2 == 0) {
                int unsignedByte = this.data.readUnsignedByte();
                this.currentByte = unsignedByte;
                return (unsignedByte & 240) >> 4;
            }
            return this.currentByte & 15;
        }
    }
}
