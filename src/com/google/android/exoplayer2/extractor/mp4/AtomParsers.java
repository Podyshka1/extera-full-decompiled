package com.google.android.exoplayer2.extractor.mp4;

import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.android.exoplayer2.audio.Ac3Util;
import com.google.android.exoplayer2.audio.Ac4Util;
import com.google.android.exoplayer2.audio.OpusUtil;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.ExtractorUtil;
import com.google.android.exoplayer2.extractor.GaplessInfoHolder;
import com.google.android.exoplayer2.extractor.mp4.Atom;
import com.google.android.exoplayer2.extractor.mp4.FixedSampleSizeRechunker;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.CodecSpecificDataUtil;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.AvcConfig;
import com.google.android.exoplayer2.video.ColorInfo;
import com.google.android.exoplayer2.video.DolbyVisionConfig;
import com.google.android.exoplayer2.video.HevcConfig;
import com.google.common.base.Function;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;
import org.telegram.messenger.MediaController;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
abstract class AtomParsers {
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
        if (i == 1952807028 || i == 1935832172 || i == 1937072756 || i == 1668047728) {
            return 3;
        }
        return i == 1835365473 ? 5 : -1;
    }

    public static List<TrackSampleTable> parseTraks(Atom.ContainerAtom containerAtom, GaplessInfoHolder gaplessInfoHolder, long j, DrmInitData drmInitData, boolean z, boolean z2, Function<Track, Track> function) {
        Track trackApply;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < containerAtom.containerChildren.size(); i++) {
            Atom.ContainerAtom containerAtom2 = containerAtom.containerChildren.get(i);
            if (containerAtom2.type == 1953653099 && (trackApply = function.apply(parseTrak(containerAtom2, (Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(1836476516)), j, drmInitData, z, z2))) != null) {
                arrayList.add(parseStbl(trackApply, (Atom.ContainerAtom) Assertions.checkNotNull(((Atom.ContainerAtom) Assertions.checkNotNull(((Atom.ContainerAtom) Assertions.checkNotNull(containerAtom2.getContainerAtomOfType(1835297121))).getContainerAtomOfType(1835626086))).getContainerAtomOfType(1937007212)), gaplessInfoHolder));
            }
        }
        return arrayList;
    }

    public static Pair<Metadata, Metadata> parseUdta(Atom.LeafAtom leafAtom) {
        ParsableByteArray parsableByteArray = leafAtom.data;
        parsableByteArray.setPosition(8);
        Metadata udtaMeta = null;
        Metadata smta = null;
        while (parsableByteArray.bytesLeft() >= 8) {
            int position = parsableByteArray.getPosition();
            int i = parsableByteArray.readInt();
            int i2 = parsableByteArray.readInt();
            if (i2 == 1835365473) {
                parsableByteArray.setPosition(position);
                udtaMeta = parseUdtaMeta(parsableByteArray, position + i);
            } else if (i2 == 1936553057) {
                parsableByteArray.setPosition(position);
                smta = parseSmta(parsableByteArray, position + i);
            }
            parsableByteArray.setPosition(position + i);
        }
        return Pair.create(udtaMeta, smta);
    }

    public static Metadata parseMdtaFromMeta(Atom.ContainerAtom containerAtom) {
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(1751411826);
        Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(1801812339);
        Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(1768715124);
        if (leafAtomOfType == null || leafAtomOfType2 == null || leafAtomOfType3 == null || parseHdlr(leafAtomOfType.data) != 1835299937) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafAtomOfType2.data;
        parsableByteArray.setPosition(12);
        int i = parsableByteArray.readInt();
        String[] strArr = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = parsableByteArray.readInt();
            parsableByteArray.skipBytes(4);
            strArr[i2] = parsableByteArray.readString(i3 - 8);
        }
        ParsableByteArray parsableByteArray2 = leafAtomOfType3.data;
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
                Log.m274w("AtomParsers", "Skipped metadata with unknown key index: " + i5);
            }
            parsableByteArray2.setPosition(position + i4);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    public static void maybeSkipRemainingMetaAtomHeaderBytes(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        parsableByteArray.skipBytes(4);
        if (parsableByteArray.readInt() != 1751411826) {
            position += 4;
        }
        parsableByteArray.setPosition(position);
    }

    private static Track parseTrak(Atom.ContainerAtom containerAtom, Atom.LeafAtom leafAtom, long j, DrmInitData drmInitData, boolean z, boolean z2) throws ParserException {
        long[] jArr;
        long[] jArr2;
        Atom.ContainerAtom containerAtomOfType;
        Pair<long[], long[]> edts;
        Atom.ContainerAtom containerAtom2 = (Atom.ContainerAtom) Assertions.checkNotNull(containerAtom.getContainerAtomOfType(1835297121));
        int trackTypeForHdlr = getTrackTypeForHdlr(parseHdlr(((Atom.LeafAtom) Assertions.checkNotNull(containerAtom2.getLeafAtomOfType(1751411826))).data));
        if (trackTypeForHdlr == -1) {
            return null;
        }
        TkhdData tkhd = parseTkhd(((Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(1953196132))).data);
        long j2 = j == -9223372036854775807L ? tkhd.duration : j;
        long mvhd = parseMvhd(leafAtom.data);
        long jScaleLargeTimestamp = j2 != -9223372036854775807L ? Util.scaleLargeTimestamp(j2, 1000000L, mvhd) : -9223372036854775807L;
        Atom.ContainerAtom containerAtom3 = (Atom.ContainerAtom) Assertions.checkNotNull(((Atom.ContainerAtom) Assertions.checkNotNull(containerAtom2.getContainerAtomOfType(1835626086))).getContainerAtomOfType(1937007212));
        Pair<Long, String> mdhd = parseMdhd(((Atom.LeafAtom) Assertions.checkNotNull(containerAtom2.getLeafAtomOfType(1835296868))).data);
        Atom.LeafAtom leafAtomOfType = containerAtom3.getLeafAtomOfType(1937011556);
        if (leafAtomOfType == null) {
            throw ParserException.createForMalformedContainer("Malformed sample table (stbl) missing sample description (stsd)", null);
        }
        StsdData stsd = parseStsd(leafAtomOfType.data, tkhd.id, tkhd.rotationDegrees, (String) mdhd.second, drmInitData, z2);
        if (z || (containerAtomOfType = containerAtom.getContainerAtomOfType(1701082227)) == null || (edts = parseEdts(containerAtomOfType)) == null) {
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
        return new Track(tkhd.id, trackTypeForHdlr, ((Long) mdhd.first).longValue(), mvhd, jScaleLargeTimestamp, stsd.format, stsd.requiredSampleTransformation, stsd.trackEncryptionBoxes, stsd.nalUnitLengthFieldLength, jArr, jArr2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:107:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x027a  */
    /* JADX WARN: Type inference failed for: r11v15, types: [int] */
    /* JADX WARN: Type inference failed for: r11v29 */
    /* JADX WARN: Type inference failed for: r11v30 */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v15, types: [int] */
    /* JADX WARN: Type inference failed for: r12v16, types: [int] */
    /* JADX WARN: Type inference failed for: r12v43 */
    /* JADX WARN: Type inference failed for: r12v44 */
    /* JADX WARN: Type inference failed for: r12v45 */
    /* JADX WARN: Type inference failed for: r38v2 */
    /* JADX WARN: Type inference failed for: r38v3 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static TrackSampleTable parseStbl(Track track, Atom.ContainerAtom containerAtom, GaplessInfoHolder gaplessInfoHolder) throws ParserException {
        SampleSizeBox stz2SampleSizeBox;
        boolean z;
        int unsignedIntToInt;
        int unsignedIntToInt2;
        int unsignedIntToInt3;
        boolean z2;
        long j;
        long[] jArrCopyOf;
        int i;
        int i2;
        long j2;
        boolean z3;
        int[] iArr;
        long[] jArr;
        ?? r4;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        int i3;
        boolean z4;
        int i4;
        int i5;
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(1937011578);
        if (leafAtomOfType != null) {
            stz2SampleSizeBox = new StszSampleSizeBox(leafAtomOfType, track.format);
        } else {
            Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(1937013298);
            if (leafAtomOfType2 == null) {
                throw ParserException.createForMalformedContainer("Track has no sample table size information", null);
            }
            stz2SampleSizeBox = new Stz2SampleSizeBox(leafAtomOfType2);
        }
        int sampleCount = stz2SampleSizeBox.getSampleCount();
        if (sampleCount == 0) {
            return new TrackSampleTable(track, new long[0], new int[0], 0, new long[0], new int[0], 0L);
        }
        Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(1937007471);
        if (leafAtomOfType3 == null) {
            leafAtomOfType3 = (Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(1668232756));
            z = true;
        } else {
            z = false;
        }
        ParsableByteArray parsableByteArray = leafAtomOfType3.data;
        ParsableByteArray parsableByteArray2 = ((Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(1937011555))).data;
        ParsableByteArray parsableByteArray3 = ((Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(1937011827))).data;
        Atom.LeafAtom leafAtomOfType4 = containerAtom.getLeafAtomOfType(1937011571);
        ParsableByteArray parsableByteArray4 = leafAtomOfType4 != null ? leafAtomOfType4.data : null;
        Atom.LeafAtom leafAtomOfType5 = containerAtom.getLeafAtomOfType(1668576371);
        ParsableByteArray parsableByteArray5 = leafAtomOfType5 != null ? leafAtomOfType5.data : null;
        ChunkIterator chunkIterator = new ChunkIterator(parsableByteArray2, parsableByteArray, z);
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
            unsignedIntToInt3 = parsableByteArray4.readUnsignedIntToInt();
            if (unsignedIntToInt3 > 0) {
                unsignedIntToInt2 = parsableByteArray4.readUnsignedIntToInt() - 1;
                z2 = false;
            } else {
                unsignedIntToInt2 = -1;
                z2 = false;
                parsableByteArray4 = null;
            }
        } else {
            unsignedIntToInt2 = -1;
            unsignedIntToInt3 = 0;
            z2 = false;
        }
        int fixedSampleSize = stz2SampleSizeBox.getFixedSampleSize();
        String str = track.format.sampleMimeType;
        boolean z5 = (fixedSampleSize == -1 || !(("audio/raw".equals(str) || "audio/g711-mlaw".equals(str) || "audio/g711-alaw".equals(str)) && unsignedIntToInt4 == 0 && unsignedIntToInt == 0 && unsignedIntToInt3 == 0)) ? z2 ? 1 : 0 : true;
        SampleSizeBox sampleSizeBox = stz2SampleSizeBox;
        if (z5) {
            int i6 = chunkIterator.length;
            long[] jArr2 = new long[i6];
            int[] iArr5 = new int[i6];
            while (chunkIterator.moveNext()) {
                int i7 = chunkIterator.index;
                jArr2[i7] = chunkIterator.offset;
                iArr5[i7] = chunkIterator.numSamples;
            }
            FixedSampleSizeRechunker.Results resultsRechunk = FixedSampleSizeRechunker.rechunk(fixedSampleSize, jArr2, iArr5, unsignedIntToInt6);
            long[] jArr3 = resultsRechunk.offsets;
            iArr = resultsRechunk.sizes;
            int i8 = resultsRechunk.maximumSize;
            long[] jArr4 = resultsRechunk.timestamps;
            int[] iArr6 = resultsRechunk.flags;
            j2 = resultsRechunk.duration;
            jArr = jArr3;
            r4 = i8;
            jArrCopyOf = jArr4;
            iArr2 = iArr6;
            j = 0;
        } else {
            long[] jArr5 = new long[sampleCount];
            j = 0;
            int[] iArrCopyOf = new int[sampleCount];
            jArrCopyOf = new long[sampleCount];
            ParsableByteArray parsableByteArray6 = parsableByteArray5;
            int[] iArrCopyOf2 = new int[sampleCount];
            ParsableByteArray parsableByteArray7 = parsableByteArray4;
            int unsignedIntToInt7 = unsignedIntToInt2;
            int i9 = z2 ? 1 : 0;
            int i10 = i9;
            int i11 = i10 == true ? 1 : 0;
            int i12 = i11;
            long j3 = 0;
            long j4 = 0;
            int i13 = unsignedIntToInt;
            int i14 = unsignedIntToInt6;
            int i15 = unsignedIntToInt5;
            int i16 = unsignedIntToInt4;
            int i17 = i12 == true ? 1 : 0;
            while (true) {
                if (i9 >= sampleCount) {
                    boolean z6 = sampleCount == true ? 1 : 0;
                    i = i15;
                    i2 = i11;
                    break;
                }
                long j5 = j4;
                int i18 = i11;
                boolean zMoveNext = true;
                while (i18 == 0) {
                    zMoveNext = chunkIterator.moveNext();
                    if (!zMoveNext) {
                        break;
                    }
                    int i19 = i15;
                    long j6 = chunkIterator.offset;
                    i18 = chunkIterator.numSamples;
                    j5 = j6;
                    i15 = i19;
                    i14 = i14;
                    sampleCount = sampleCount == true ? 1 : 0;
                }
                int i20 = sampleCount;
                i = i15;
                int i21 = i14;
                if (!zMoveNext) {
                    Log.m274w("AtomParsers", "Unexpected end of chunk data");
                    long[] jArrCopyOf2 = Arrays.copyOf(jArr5, i9);
                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i9);
                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i9);
                    iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i9);
                    jArr5 = jArrCopyOf2;
                    sampleCount = i9;
                    i2 = i18;
                    break;
                }
                if (parsableByteArray6 != null) {
                    int unsignedIntToInt8 = i12 == true ? 1 : 0;
                    while (unsignedIntToInt8 == 0 && i13 > 0) {
                        unsignedIntToInt8 = parsableByteArray6.readUnsignedIntToInt();
                        i10 = parsableByteArray6.readInt();
                        i13--;
                    }
                    i12 = unsignedIntToInt8 - 1;
                }
                jArr5[i9] = j5;
                int nextSampleSize = sampleSizeBox.readNextSampleSize();
                iArrCopyOf[i9] = nextSampleSize;
                if (nextSampleSize > i17) {
                    i17 = nextSampleSize;
                }
                jArrCopyOf[i9] = j3 + ((long) i10);
                iArrCopyOf2[i9] = parsableByteArray7 == null ? 1 : z2 ? 1 : 0;
                if (i9 == unsignedIntToInt7) {
                    iArrCopyOf2[i9] = 1;
                    unsignedIntToInt3--;
                    if (unsignedIntToInt3 > 0) {
                        unsignedIntToInt7 = ((ParsableByteArray) Assertions.checkNotNull(parsableByteArray7)).readUnsignedIntToInt() - 1;
                    }
                }
                j3 += (long) i21;
                int unsignedIntToInt9 = i - 1;
                if (unsignedIntToInt9 != 0 || i16 <= 0) {
                    i14 = i21;
                } else {
                    unsignedIntToInt9 = parsableByteArray3.readUnsignedIntToInt();
                    i16--;
                    i14 = parsableByteArray3.readInt();
                }
                i15 = unsignedIntToInt9;
                long j7 = j5 + ((long) iArrCopyOf[i9]);
                i11 = i18 - 1;
                i9++;
                j4 = j7;
                sampleCount = i20 == true ? 1 : 0;
            }
            j2 = j3 + ((long) i10);
            if (parsableByteArray6 != null) {
                while (i13 > 0) {
                    if (parsableByteArray6.readUnsignedIntToInt() != 0) {
                        z3 = z2 ? 1 : 0;
                        break;
                    }
                    parsableByteArray6.readInt();
                    i13--;
                }
                z3 = true;
                if (unsignedIntToInt3 == 0 || i != 0 || i2 != 0 || i16 != 0 || i12 != 0 || !z3) {
                    StringBuilder sb = new StringBuilder("Inconsistent stbl box for track ");
                    sb.append(track.id);
                    sb.append(": remainingSynchronizationSamples ");
                    sb.append(unsignedIntToInt3);
                    sb.append(", remainingSamplesAtTimestampDelta ");
                    sb.append(i);
                    sb.append(", remainingSamplesInChunk ");
                    sb.append(i2);
                    sb.append(", remainingTimestampDeltaChanges ");
                    sb.append(i16);
                    sb.append(", remainingSamplesAtTimestampOffset ");
                    sb.append(i12 == true ? 1 : 0 ? 1 : 0);
                    sb.append(z3 ? ", ctts invalid" : _UrlKt.FRAGMENT_ENCODE_SET);
                    Log.m274w("AtomParsers", sb.toString());
                }
                iArr = iArrCopyOf;
                jArr = jArr5;
                r4 = i17 == true ? 1 : 0;
                iArr2 = iArrCopyOf2;
            } else {
                z3 = true;
                if (unsignedIntToInt3 == 0) {
                    StringBuilder sb2 = new StringBuilder("Inconsistent stbl box for track ");
                    sb2.append(track.id);
                    sb2.append(": remainingSynchronizationSamples ");
                    sb2.append(unsignedIntToInt3);
                    sb2.append(", remainingSamplesAtTimestampDelta ");
                    sb2.append(i);
                    sb2.append(", remainingSamplesInChunk ");
                    sb2.append(i2);
                    sb2.append(", remainingTimestampDeltaChanges ");
                    sb2.append(i16);
                    sb2.append(", remainingSamplesAtTimestampOffset ");
                    sb2.append(i12 == true ? 1 : 0 ? 1 : 0);
                    sb2.append(z3 ? ", ctts invalid" : _UrlKt.FRAGMENT_ENCODE_SET);
                    Log.m274w("AtomParsers", sb2.toString());
                    iArr = iArrCopyOf;
                    jArr = jArr5;
                    r4 = i17 == true ? 1 : 0;
                    iArr2 = iArrCopyOf2;
                }
            }
        }
        long j8 = j2;
        long jScaleLargeTimestamp = Util.scaleLargeTimestamp(j8, 1000000L, track.timescale);
        long[] jArr6 = track.editListDurations;
        if (jArr6 == null) {
            Util.scaleLargeTimestampsInPlace(jArrCopyOf, 1000000L, track.timescale);
            return new TrackSampleTable(track, jArr, iArr, r4 == true ? 1 : 0, jArrCopyOf, iArr2, jScaleLargeTimestamp);
        }
        int[] iArr7 = iArr;
        int i22 = sampleCount;
        int[] iArr8 = iArr7;
        int[] iArr9 = iArr8;
        if (jArr6.length == 1) {
            iArr9 = iArr8;
            if (track.type == 1) {
                iArr9 = iArr8;
                if (jArrCopyOf.length >= 2) {
                    long j9 = ((long[]) Assertions.checkNotNull(track.editListMediaTimes))[z2 ? 1 : 0];
                    long jScaleLargeTimestamp2 = j9 + Util.scaleLargeTimestamp(track.editListDurations[z2 ? 1 : 0], track.timescale, track.movieTimescale);
                    long[] jArr7 = jArr;
                    long[] jArr8 = jArrCopyOf;
                    boolean zCanApplyEditWithGaplessInfo = canApplyEditWithGaplessInfo(jArr8, j8, j9, jScaleLargeTimestamp2);
                    jArrCopyOf = jArr8;
                    j8 = j8;
                    if (zCanApplyEditWithGaplessInfo) {
                        long jScaleLargeTimestamp3 = Util.scaleLargeTimestamp(j9 - jArrCopyOf[z2 ? 1 : 0], track.format.sampleRate, track.timescale);
                        long jScaleLargeTimestamp4 = Util.scaleLargeTimestamp(j8 - jScaleLargeTimestamp2, track.format.sampleRate, track.timescale);
                        if ((jScaleLargeTimestamp3 != j || jScaleLargeTimestamp4 != j) && jScaleLargeTimestamp3 <= 2147483647L && jScaleLargeTimestamp4 <= 2147483647L) {
                            gaplessInfoHolder.encoderDelay = (int) jScaleLargeTimestamp3;
                            gaplessInfoHolder.encoderPadding = (int) jScaleLargeTimestamp4;
                            Util.scaleLargeTimestampsInPlace(jArrCopyOf, 1000000L, track.timescale);
                            return new TrackSampleTable(track, jArr7, iArr8, r4 == true ? 1 : 0, jArrCopyOf, iArr2, Util.scaleLargeTimestamp(track.editListDurations[z2 ? 1 : 0], 1000000L, track.movieTimescale));
                        }
                    }
                    jArr = jArr7;
                    iArr9 = iArr8;
                }
            }
        }
        long[] jArr9 = track.editListDurations;
        if (jArr9.length == 1 && jArr9[z2 ? 1 : 0] == j) {
            long j10 = ((long[]) Assertions.checkNotNull(track.editListMediaTimes))[z2 ? 1 : 0];
            for (int i23 = z2 ? 1 : 0; i23 < jArrCopyOf.length; i23++) {
                jArrCopyOf[i23] = Util.scaleLargeTimestamp(jArrCopyOf[i23] - j10, 1000000L, track.timescale);
            }
            return new TrackSampleTable(track, jArr, iArr9, r4 == true ? 1 : 0, jArrCopyOf, iArr2, Util.scaleLargeTimestamp(j8 - j10, 1000000L, track.timescale));
        }
        boolean z7 = track.type == 1 ? true : z2 ? 1 : 0;
        int[] iArr10 = new int[jArr9.length];
        int[] iArr11 = new int[jArr9.length];
        long[] jArr10 = (long[]) Assertions.checkNotNull(track.editListMediaTimes);
        int i24 = z2 ? 1 : 0;
        boolean z8 = i24 == true ? 1 : 0;
        int i25 = z8 ? 1 : 0;
        int i26 = i25;
        boolean z9 = z8;
        while (true) {
            long[] jArr11 = track.editListDurations;
            iArr3 = iArr11;
            if (i24 >= jArr11.length) {
                break;
            }
            int[] iArr12 = iArr10;
            long[] jArr12 = jArr10;
            long j11 = jArr12[i24];
            if (j11 != -1) {
                long j12 = jArr11[i24];
                i3 = i24;
                boolean z10 = z9 ? 1 : 0;
                long jScaleLargeTimestamp5 = Util.scaleLargeTimestamp(j12, track.timescale, track.movieTimescale);
                iArr4 = iArr12;
                iArr4[i3 == true ? 1 : 0] = Util.binarySearchFloor(jArrCopyOf, j11, true, true);
                long j13 = j11 + jScaleLargeTimestamp5;
                z4 = z2;
                iArr3[i3 == true ? 1 : 0] = Util.binarySearchCeil(jArrCopyOf, j13, z7, z4);
                while (true) {
                    i4 = iArr4[i3 == true ? 1 : 0];
                    i5 = iArr3[i3 == true ? 1 : 0];
                    if (i4 >= i5 || (iArr2[i4] & 1) != 0) {
                        break;
                    }
                    iArr4[i3 == true ? 1 : 0] = i4 + 1;
                }
                i25 += i5 - i4;
                z9 = (z10 ? 1 : 0) | (i26 != i4 ? true : z4 ? 1 : 0);
                i26 = i5;
            } else {
                iArr4 = iArr12;
                i3 = i24;
                boolean z11 = z9 ? 1 : 0;
                z4 = z2;
            }
            jArr10 = jArr12;
            z2 = z4;
            iArr11 = iArr3;
            i24 = i3 + 1;
            iArr10 = iArr4;
            z9 = z9;
        }
        int[] iArr13 = iArr10;
        boolean z12 = z2;
        boolean z13 = (z9 ? 1 : 0 ? 1 : 0) | (i25 != i22 ? true : z12);
        long[] jArr13 = z13 != 0 ? new long[i25] : jArr;
        int[] iArr14 = z13 != 0 ? new int[i25] : iArr9;
        if (z13 != 0) {
            r4 = z12;
        }
        int[] iArr15 = z13 != 0 ? new int[i25] : iArr2;
        long[] jArr14 = new long[i25];
        ?? r12 = z12;
        long j14 = j;
        boolean z14 = z13;
        int[] iArr16 = iArr9;
        ?? r42 = r4;
        ?? r11 = z12;
        while (r11 < track.editListDurations.length) {
            long j15 = track.editListMediaTimes[r11];
            int i27 = iArr13[r11];
            boolean z15 = z14;
            int i28 = iArr3[r11];
            ?? r38 = r42;
            if (z15 != 0) {
                int i29 = i28 - i27;
                System.arraycopy(jArr, i27, jArr13, r12, i29);
                System.arraycopy(iArr16, i27, iArr14, r12, i29);
                System.arraycopy(iArr2, i27, iArr15, r12, i29);
            }
            int i30 = r38 == true ? 1 : 0;
            int[] iArr17 = iArr16;
            ?? r122 = r12;
            while (i27 < i28) {
                long[] jArr15 = jArr;
                int[] iArr18 = iArr17;
                long jScaleLargeTimestamp6 = Util.scaleLargeTimestamp(j14, 1000000L, track.movieTimescale);
                long j16 = jArrCopyOf[i27] - j15;
                long[] jArr16 = jArrCopyOf;
                int[] iArr19 = iArr2;
                long j17 = j;
                jArr14[r122] = jScaleLargeTimestamp6 + Util.scaleLargeTimestamp(Math.max(j17, j16), 1000000L, track.timescale);
                if (z15 != 0 && iArr14[r122] > i30) {
                    i30 = iArr18[i27];
                }
                i27++;
                j = j17;
                jArr = jArr15;
                iArr17 = iArr18;
                iArr2 = iArr19;
                jArrCopyOf = jArr16;
                i30 = i30;
                r122++;
            }
            j14 += track.editListDurations[r11];
            z14 = z15;
            jArr = jArr;
            iArr16 = iArr17;
            iArr2 = iArr2;
            jArrCopyOf = jArrCopyOf;
            r42 = i30;
            r11++;
            r12 = r122;
        }
        return new TrackSampleTable(track, jArr13, iArr14, r42, jArr14, iArr15, Util.scaleLargeTimestamp(j14, 1000000L, track.movieTimescale));
    }

    private static Metadata parseUdtaMeta(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(8);
        maybeSkipRemainingMetaAtomHeaderBytes(parsableByteArray);
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

    private static Metadata parseSmta(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(12);
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int i2 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1935766900) {
                if (i2 < 14) {
                    return null;
                }
                parsableByteArray.skipBytes(5);
                int unsignedByte = parsableByteArray.readUnsignedByte();
                if (unsignedByte != 12 && unsignedByte != 13) {
                    return null;
                }
                float f = unsignedByte == 12 ? 240.0f : 120.0f;
                parsableByteArray.skipBytes(1);
                return new Metadata(new SmtaMetadataEntry(f, parsableByteArray.readUnsignedByte()));
            }
            parsableByteArray.setPosition(position + i2);
        }
        return null;
    }

    private static long parseMvhd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        parsableByteArray.skipBytes(Atom.parseFullAtomVersion(parsableByteArray.readInt()) != 0 ? 16 : 8);
        return parsableByteArray.readUnsignedInt();
    }

    private static TkhdData parseTkhd(ParsableByteArray parsableByteArray) {
        long j;
        parsableByteArray.setPosition(8);
        int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 8 : 16);
        int i = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int position = parsableByteArray.getPosition();
        int i2 = fullAtomVersion == 0 ? 4 : 8;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            j = -9223372036854775807L;
            if (i4 < i2) {
                if (parsableByteArray.getData()[position + i4] != -1) {
                    long unsignedInt = fullAtomVersion == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
                    if (unsignedInt != 0) {
                        j = unsignedInt;
                    }
                } else {
                    i4++;
                }
            } else {
                parsableByteArray.skipBytes(i2);
                break;
            }
        }
        parsableByteArray.skipBytes(16);
        int i5 = parsableByteArray.readInt();
        int i6 = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int i7 = parsableByteArray.readInt();
        int i8 = parsableByteArray.readInt();
        if (i5 == 0 && i6 == 65536 && i7 == -65536 && i8 == 0) {
            i3 = 90;
        } else if (i5 == 0 && i6 == -65536 && i7 == 65536 && i8 == 0) {
            i3 = 270;
        } else if (i5 == -65536 && i6 == 0 && i7 == 0 && i8 == -65536) {
            i3 = 180;
        }
        return new TkhdData(i, j, i3);
    }

    private static int parseHdlr(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(16);
        return parsableByteArray.readInt();
    }

    private static Pair<Long, String> parseMdhd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 8 : 16);
        long unsignedInt = parsableByteArray.readUnsignedInt();
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 4 : 8);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        return Pair.create(Long.valueOf(unsignedInt), _UrlKt.FRAGMENT_ENCODE_SET + ((char) (((unsignedShort >> 10) & 31) + 96)) + ((char) (((unsignedShort >> 5) & 31) + 96)) + ((char) ((unsignedShort & 31) + 96)));
    }

    private static StsdData parseStsd(ParsableByteArray parsableByteArray, int i, int i2, String str, DrmInitData drmInitData, boolean z) throws ParserException {
        parsableByteArray.setPosition(12);
        int i3 = parsableByteArray.readInt();
        StsdData stsdData = new StsdData(i3);
        int i4 = 0;
        while (i4 < i3) {
            int position = parsableByteArray.getPosition();
            int i5 = parsableByteArray.readInt();
            ExtractorUtil.checkContainerInput(i5 > 0, "childAtomSize must be positive");
            int i6 = parsableByteArray.readInt();
            if (i6 == 1635148593 || i6 == 1635148595 || i6 == 1701733238 || i6 == 1831958048 || i6 == 1836070006 || i6 == 1752589105 || i6 == 1751479857 || i6 == 1932670515 || i6 == 1211250227 || i6 == 1987063864 || i6 == 1987063865 || i6 == 1635135537 || i6 == 1685479798 || i6 == 1685479729 || i6 == 1685481573 || i6 == 1685481521) {
                StsdData stsdData2 = stsdData;
                int i7 = i4;
                parseVideoSampleEntry(parsableByteArray, i6, position, i5, i, i2, drmInitData, stsdData2, i7);
                stsdData = stsdData2;
                i4 = i7;
            } else if (i6 == 1836069985 || i6 == 1701733217 || i6 == 1633889587 || i6 == 1700998451 || i6 == 1633889588 || i6 == 1835823201 || i6 == 1685353315 || i6 == 1685353317 || i6 == 1685353320 || i6 == 1685353324 || i6 == 1685353336 || i6 == 1935764850 || i6 == 1935767394 || i6 == 1819304813 || i6 == 1936684916 || i6 == 1953984371 || i6 == 778924082 || i6 == 778924083 || i6 == 1835557169 || i6 == 1835560241 || i6 == 1634492771 || i6 == 1634492791 || i6 == 1970037111 || i6 == 1332770163 || i6 == 1716281667) {
                StsdData stsdData3 = stsdData;
                parseAudioSampleEntry(parsableByteArray, i6, position, i5, i, str, z, drmInitData, stsdData3, i4);
                stsdData = stsdData3;
            } else if (i6 == 1414810956 || i6 == 1954034535 || i6 == 2004251764 || i6 == 1937010800 || i6 == 1664495672) {
                parseTextSampleEntry(parsableByteArray, i6, position, i5, i, str, stsdData);
            } else if (i6 == 1835365492) {
                parseMetaDataSampleEntry(parsableByteArray, i6, position, i, stsdData);
            } else if (i6 == 1667329389) {
                stsdData.format = new Format.Builder().setId(i).setSampleMimeType("application/x-camera-motion").build();
            }
            parsableByteArray.setPosition(position + i5);
            i4++;
        }
        return stsdData;
    }

    private static void parseTextSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, String str, StsdData stsdData) {
        parsableByteArray.setPosition(i2 + 16);
        String str2 = "application/ttml+xml";
        ImmutableList immutableListOf = null;
        long j = LongCompanionObject.MAX_VALUE;
        if (i != 1414810956) {
            if (i == 1954034535) {
                int i5 = i3 - 16;
                byte[] bArr = new byte[i5];
                parsableByteArray.readBytes(bArr, 0, i5);
                immutableListOf = ImmutableList.of(bArr);
                str2 = "application/x-quicktime-tx3g";
            } else if (i == 2004251764) {
                str2 = "application/x-mp4-vtt";
            } else if (i == 1937010800) {
                j = 0;
            } else if (i == 1664495672) {
                stsdData.requiredSampleTransformation = 1;
                str2 = "application/x-mp4-cea-608";
            } else {
                MethodWriter$$ExternalSyntheticBUOutline0.m863m();
                return;
            }
        }
        stsdData.format = new Format.Builder().setId(i4).setSampleMimeType(str2).setLanguage(str).setSubsampleOffsetUs(j).setInitializationData(immutableListOf).build();
    }

    private static void parseVideoSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, int i5, DrmInitData drmInitData, StsdData stsdData, int i6) throws ParserException {
        String str;
        int i7;
        DrmInitData drmInitData2;
        int i8;
        String str2;
        byte[] bArr;
        float f;
        List<byte[]> list;
        String str3;
        int i9 = i2;
        int i10 = i3;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        StsdData stsdData2 = stsdData;
        parsableByteArray.setPosition(i9 + 16);
        parsableByteArray.skipBytes(16);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int unsignedShort2 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(50);
        int position = parsableByteArray.getPosition();
        int iIntValue = i;
        if (iIntValue == 1701733238) {
            Pair<Integer, TrackEncryptionBox> sampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i9, i10);
            if (sampleEntryEncryptionData != null) {
                iIntValue = ((Integer) sampleEntryEncryptionData.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((TrackEncryptionBox) sampleEntryEncryptionData.second).schemeType);
                stsdData2.trackEncryptionBoxes[i6] = (TrackEncryptionBox) sampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
        }
        String str4 = "video/3gpp";
        if (iIntValue != 1831958048) {
            str = iIntValue == 1211250227 ? "video/3gpp" : null;
        } else {
            str = "video/mpeg";
        }
        float paspFromParent = 1.0f;
        byte[] projFromParent = null;
        String str5 = null;
        List<byte[]> listOf = null;
        int i11 = -1;
        int iIsoColorPrimariesToColorSpace = -1;
        int i12 = -1;
        int iIsoTransferCharacteristicsToColorTransfer = -1;
        ByteBuffer byteBuffer = null;
        EsdsData esdsFromParent = null;
        boolean z = false;
        while (position - i9 < i10) {
            parsableByteArray.setPosition(position);
            int position2 = parsableByteArray.getPosition();
            int i13 = parsableByteArray.readInt();
            if (i13 == 0) {
                i7 = position;
                if (parsableByteArray.getPosition() - i2 == i10) {
                    break;
                }
            } else {
                i7 = position;
            }
            ExtractorUtil.checkContainerInput(i13 > 0, "childAtomSize must be positive");
            int i14 = parsableByteArray.readInt();
            if (i14 == 1635148611) {
                ExtractorUtil.checkContainerInput(str == null, null);
                parsableByteArray.setPosition(position2 + 8);
                AvcConfig avcConfig = AvcConfig.parse(parsableByteArray);
                listOf = avcConfig.initializationData;
                stsdData2.nalUnitLengthFieldLength = avcConfig.nalUnitLengthFieldLength;
                if (!z) {
                    paspFromParent = avcConfig.pixelWidthHeightRatio;
                }
                str5 = avcConfig.codecs;
                str3 = MediaController.VIDEO_MIME_TYPE;
            } else if (i14 == 1752589123) {
                ExtractorUtil.checkContainerInput(str == null, null);
                parsableByteArray.setPosition(position2 + 8);
                HevcConfig hevcConfig = HevcConfig.parse(parsableByteArray);
                listOf = hevcConfig.initializationData;
                stsdData2.nalUnitLengthFieldLength = hevcConfig.nalUnitLengthFieldLength;
                if (!z) {
                    paspFromParent = hevcConfig.pixelWidthHeightRatio;
                }
                str5 = hevcConfig.codecs;
                str3 = "video/hevc";
            } else {
                if (i14 == 1685480259 || i14 == 1685485123) {
                    drmInitData2 = drmInitDataCopyWithSchemeType;
                    i8 = iIntValue;
                    str2 = str4;
                    bArr = projFromParent;
                    f = paspFromParent;
                    list = listOf;
                    DolbyVisionConfig dolbyVisionConfig = DolbyVisionConfig.parse(parsableByteArray);
                    if (dolbyVisionConfig != null) {
                        str5 = dolbyVisionConfig.codecs;
                        str = "video/dolby-vision";
                    }
                } else if (i14 == 1987076931) {
                    ExtractorUtil.checkContainerInput(str == null, null);
                    str3 = iIntValue == 1987063864 ? "video/x-vnd.on2.vp8" : "video/x-vnd.on2.vp9";
                } else if (i14 == 1635135811) {
                    ExtractorUtil.checkContainerInput(str == null, null);
                    str3 = "video/av01";
                } else if (i14 == 1668050025) {
                    ByteBuffer byteBufferAllocateHdrStaticInfo = byteBuffer == null ? allocateHdrStaticInfo() : byteBuffer;
                    byteBufferAllocateHdrStaticInfo.position(21);
                    byteBufferAllocateHdrStaticInfo.putShort(parsableByteArray.readShort());
                    byteBufferAllocateHdrStaticInfo.putShort(parsableByteArray.readShort());
                    byteBuffer = byteBufferAllocateHdrStaticInfo;
                    drmInitData2 = drmInitDataCopyWithSchemeType;
                    i8 = iIntValue;
                    str2 = str4;
                    position = i7 + i13;
                    i9 = i2;
                    i10 = i3;
                    stsdData2 = stsdData;
                    iIntValue = i8;
                    str4 = str2;
                    drmInitDataCopyWithSchemeType = drmInitData2;
                } else if (i14 == 1835295606) {
                    ByteBuffer byteBufferAllocateHdrStaticInfo2 = byteBuffer == null ? allocateHdrStaticInfo() : byteBuffer;
                    short s = parsableByteArray.readShort();
                    short s2 = parsableByteArray.readShort();
                    i8 = iIntValue;
                    short s3 = parsableByteArray.readShort();
                    str2 = str4;
                    short s4 = parsableByteArray.readShort();
                    short s5 = parsableByteArray.readShort();
                    drmInitData2 = drmInitDataCopyWithSchemeType;
                    short s6 = parsableByteArray.readShort();
                    List<byte[]> list2 = listOf;
                    short s7 = parsableByteArray.readShort();
                    byte[] bArr2 = projFromParent;
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
                    byteBufferAllocateHdrStaticInfo2.putShort((short) (unsignedInt / 10000));
                    byteBufferAllocateHdrStaticInfo2.putShort((short) (unsignedInt2 / 10000));
                    byteBuffer = byteBufferAllocateHdrStaticInfo2;
                    listOf = list2;
                    projFromParent = bArr2;
                    paspFromParent = paspFromParent;
                    position = i7 + i13;
                    i9 = i2;
                    i10 = i3;
                    stsdData2 = stsdData;
                    iIntValue = i8;
                    str4 = str2;
                    drmInitDataCopyWithSchemeType = drmInitData2;
                } else {
                    drmInitData2 = drmInitDataCopyWithSchemeType;
                    i8 = iIntValue;
                    str2 = str4;
                    bArr = projFromParent;
                    f = paspFromParent;
                    list = listOf;
                    if (i14 == 1681012275) {
                        ExtractorUtil.checkContainerInput(str == null, null);
                        str = str2;
                    } else if (i14 == 1702061171) {
                        ExtractorUtil.checkContainerInput(str == null, null);
                        esdsFromParent = parseEsdsFromParent(parsableByteArray, position2);
                        String str6 = esdsFromParent.mimeType;
                        byte[] bArr3 = esdsFromParent.initializationData;
                        listOf = bArr3 != null ? ImmutableList.of(bArr3) : list;
                        str = str6;
                        projFromParent = bArr;
                        paspFromParent = f;
                        position = i7 + i13;
                        i9 = i2;
                        i10 = i3;
                        stsdData2 = stsdData;
                        iIntValue = i8;
                        str4 = str2;
                        drmInitDataCopyWithSchemeType = drmInitData2;
                    } else if (i14 == 1885434736) {
                        paspFromParent = parsePaspFromParent(parsableByteArray, position2);
                        listOf = list;
                        projFromParent = bArr;
                        z = true;
                        position = i7 + i13;
                        i9 = i2;
                        i10 = i3;
                        stsdData2 = stsdData;
                        iIntValue = i8;
                        str4 = str2;
                        drmInitDataCopyWithSchemeType = drmInitData2;
                    } else if (i14 == 1937126244) {
                        projFromParent = parseProjFromParent(parsableByteArray, position2, i13);
                        listOf = list;
                        paspFromParent = f;
                        position = i7 + i13;
                        i9 = i2;
                        i10 = i3;
                        stsdData2 = stsdData;
                        iIntValue = i8;
                        str4 = str2;
                        drmInitDataCopyWithSchemeType = drmInitData2;
                    } else if (i14 == 1936995172) {
                        int unsignedByte = parsableByteArray.readUnsignedByte();
                        parsableByteArray.skipBytes(3);
                        if (unsignedByte == 0) {
                            int unsignedByte2 = parsableByteArray.readUnsignedByte();
                            if (unsignedByte2 == 0) {
                                i11 = 0;
                            } else if (unsignedByte2 == 1) {
                                i11 = 1;
                            } else if (unsignedByte2 == 2) {
                                i11 = 2;
                            } else if (unsignedByte2 == 3) {
                                i11 = 3;
                            }
                        }
                    } else if (i14 == 1668246642) {
                        int i15 = parsableByteArray.readInt();
                        if (i15 == 1852009592 || i15 == 1852009571) {
                            int unsignedShort3 = parsableByteArray.readUnsignedShort();
                            int unsignedShort4 = parsableByteArray.readUnsignedShort();
                            parsableByteArray.skipBytes(2);
                            boolean z2 = i13 == 19 && (parsableByteArray.readUnsignedByte() & 128) != 0;
                            iIsoColorPrimariesToColorSpace = ColorInfo.isoColorPrimariesToColorSpace(unsignedShort3);
                            i12 = z2 ? 1 : 2;
                            iIsoTransferCharacteristicsToColorTransfer = ColorInfo.isoTransferCharacteristicsToColorTransfer(unsignedShort4);
                        } else {
                            Log.m274w("AtomParsers", "Unsupported color type: " + Atom.getAtomTypeString(i15));
                        }
                    }
                }
                listOf = list;
                projFromParent = bArr;
                paspFromParent = f;
                position = i7 + i13;
                i9 = i2;
                i10 = i3;
                stsdData2 = stsdData;
                iIntValue = i8;
                str4 = str2;
                drmInitDataCopyWithSchemeType = drmInitData2;
            }
            str = str3;
            drmInitData2 = drmInitDataCopyWithSchemeType;
            i8 = iIntValue;
            str2 = str4;
            position = i7 + i13;
            i9 = i2;
            i10 = i3;
            stsdData2 = stsdData;
            iIntValue = i8;
            str4 = str2;
            drmInitDataCopyWithSchemeType = drmInitData2;
        }
        DrmInitData drmInitData3 = drmInitDataCopyWithSchemeType;
        byte[] bArr4 = projFromParent;
        float f2 = paspFromParent;
        List<byte[]> list3 = listOf;
        if (str == null) {
            return;
        }
        Format.Builder drmInitData4 = new Format.Builder().setId(i4).setSampleMimeType(str).setCodecs(str5).setWidth(unsignedShort).setHeight(unsignedShort2).setPixelWidthHeightRatio(f2).setRotationDegrees(i5).setProjectionData(bArr4).setStereoMode(i11).setInitializationData(list3).setDrmInitData(drmInitData3);
        int i16 = iIsoColorPrimariesToColorSpace;
        int i17 = i12;
        int i18 = iIsoTransferCharacteristicsToColorTransfer;
        if (i16 != -1 || i17 != -1 || i18 != -1 || byteBuffer != null) {
            drmInitData4.setColorInfo(new ColorInfo(i16, i17, i18, byteBuffer != null ? byteBuffer.array() : null));
        }
        if (esdsFromParent != null) {
            drmInitData4.setAverageBitrate(Ints.saturatedCast(esdsFromParent.bitrate)).setPeakBitrate(Ints.saturatedCast(esdsFromParent.peakBitrate));
        }
        stsdData.format = drmInitData4.build();
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

    private static Pair<long[], long[]> parseEdts(Atom.ContainerAtom containerAtom) {
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(1701606260);
        if (leafAtomOfType == null) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafAtomOfType.data;
        parsableByteArray.setPosition(8);
        int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        long[] jArr = new long[unsignedIntToInt];
        long[] jArr2 = new long[unsignedIntToInt];
        for (int i = 0; i < unsignedIntToInt; i++) {
            jArr[i] = fullAtomVersion == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
            jArr2[i] = fullAtomVersion == 1 ? parsableByteArray.readLong() : parsableByteArray.readInt();
            if (parsableByteArray.readShort() != 1) {
                f$$ExternalSyntheticBUOutline1.m178m("Unsupported media rate.");
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

    /* JADX WARN: Removed duplicated region for block: B:99:0x016a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void parseAudioSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, String str, boolean z, DrmInitData drmInitData, StsdData stsdData, int i5) throws ParserException {
        int unsignedShort;
        int unsignedFixedPoint1616;
        int i6;
        int unsignedIntToInt;
        String str2;
        String str3;
        int i7;
        boolean z2;
        int i8 = i2;
        int i9 = i3;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        parsableByteArray.setPosition(i8 + 16);
        if (z) {
            unsignedShort = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
        } else {
            parsableByteArray.skipBytes(8);
            unsignedShort = 0;
        }
        if (unsignedShort == 0 || unsignedShort == 1) {
            int unsignedShort2 = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
            unsignedFixedPoint1616 = parsableByteArray.readUnsignedFixedPoint1616();
            parsableByteArray.setPosition(parsableByteArray.getPosition() - 4);
            i6 = parsableByteArray.readInt();
            if (unsignedShort == 1) {
                parsableByteArray.skipBytes(16);
            }
            unsignedIntToInt = unsignedShort2;
        } else {
            if (unsignedShort != 2) {
                return;
            }
            parsableByteArray.skipBytes(16);
            unsignedFixedPoint1616 = (int) Math.round(parsableByteArray.readDouble());
            unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            parsableByteArray.skipBytes(20);
            i6 = 0;
        }
        int position = parsableByteArray.getPosition();
        int iIntValue = i;
        if (iIntValue == 1701733217) {
            Pair<Integer, TrackEncryptionBox> sampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i8, i9);
            if (sampleEntryEncryptionData != null) {
                iIntValue = ((Integer) sampleEntryEncryptionData.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((TrackEncryptionBox) sampleEntryEncryptionData.second).schemeType);
                stsdData.trackEncryptionBoxes[i5] = (TrackEncryptionBox) sampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
        }
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
            str3 = "audio/raw";
            if (iIntValue == 1819304813 || iIntValue == 1936684916) {
                i7 = 2;
            } else if (iIntValue == 1953984371) {
                i7 = 268435456;
            } else if (iIntValue == 778924082 || iIntValue == 778924083) {
                str2 = "audio/mpeg";
            } else if (iIntValue == 1835557169) {
                str2 = "audio/mha1";
            } else if (iIntValue == 1835560241) {
                str2 = "audio/mhm1";
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
            } else {
                i7 = -1;
                str3 = null;
            }
            String str4 = str3;
            EsdsData esdsFromParent = null;
            String str5 = null;
            List<byte[]> listOf = null;
            while (position - i8 < i9) {
                parsableByteArray.setPosition(position);
                int i10 = parsableByteArray.readInt();
                ExtractorUtil.checkContainerInput(i10 > 0, "childAtomSize must be positive");
                int i11 = parsableByteArray.readInt();
                if (i11 == 1835557187) {
                    int i12 = i10 - 13;
                    byte[] bArr = new byte[i12];
                    parsableByteArray.setPosition(position + 13);
                    parsableByteArray.readBytes(bArr, 0, i12);
                    listOf = ImmutableList.of(bArr);
                } else {
                    if (i11 == 1702061171 || (z && i11 == 2002876005)) {
                        int iFindBoxPosition = i11 == 1702061171 ? position : findBoxPosition(parsableByteArray, 1702061171, position, i10);
                        if (iFindBoxPosition != -1) {
                            esdsFromParent = parseEsdsFromParent(parsableByteArray, iFindBoxPosition);
                            str4 = esdsFromParent.mimeType;
                            byte[] bArr2 = esdsFromParent.initializationData;
                            if (bArr2 != null) {
                                if (MediaController.AUDIO_MIME_TYPE.equals(str4)) {
                                    AacUtil.Config audioSpecificConfig = AacUtil.parseAudioSpecificConfig(bArr2);
                                    unsignedFixedPoint1616 = audioSpecificConfig.sampleRateHz;
                                    unsignedIntToInt = audioSpecificConfig.channelCount;
                                    str5 = audioSpecificConfig.codecs;
                                }
                                listOf = ImmutableList.of(bArr2);
                            }
                        }
                    } else {
                        if (i11 == 1684103987) {
                            parsableByteArray.setPosition(position + 8);
                            stsdData.format = Ac3Util.parseAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), str, drmInitDataCopyWithSchemeType);
                        } else if (i11 == 1684366131) {
                            parsableByteArray.setPosition(position + 8);
                            stsdData.format = Ac3Util.parseEAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), str, drmInitDataCopyWithSchemeType);
                        } else if (i11 == 1684103988) {
                            parsableByteArray.setPosition(position + 8);
                            stsdData.format = Ac4Util.parseAc4AnnexEFormat(parsableByteArray, Integer.toString(i4), str, drmInitDataCopyWithSchemeType);
                        } else if (i11 == 1684892784) {
                            if (i6 <= 0) {
                                throw ParserException.createForMalformedContainer("Invalid sample rate for Dolby TrueHD MLP stream: " + i6, null);
                            }
                            unsignedFixedPoint1616 = i6;
                            unsignedIntToInt = 2;
                        } else if (i11 == 1684305011) {
                            stsdData.format = new Format.Builder().setId(i4).setSampleMimeType(str4).setChannelCount(unsignedIntToInt).setSampleRate(unsignedFixedPoint1616).setDrmInitData(drmInitDataCopyWithSchemeType).setLanguage(str).build();
                        } else if (i11 == 1682927731) {
                            int i13 = i10 - 8;
                            byte[] bArr3 = opusMagic;
                            byte[] bArrCopyOf = Arrays.copyOf(bArr3, bArr3.length + i13);
                            parsableByteArray.setPosition(position + 8);
                            parsableByteArray.readBytes(bArrCopyOf, bArr3.length, i13);
                            listOf = OpusUtil.buildInitializationData(bArrCopyOf);
                        } else if (i11 == 1684425825) {
                            byte[] bArr4 = new byte[i10 - 8];
                            bArr4[0] = 102;
                            bArr4[1] = 76;
                            bArr4[2] = 97;
                            bArr4[3] = 67;
                            parsableByteArray.setPosition(position + 12);
                            parsableByteArray.readBytes(bArr4, 4, i10 - 12);
                            listOf = ImmutableList.of(bArr4);
                        } else if (i11 == 1634492771) {
                            int i14 = i10 - 12;
                            byte[] bArr5 = new byte[i14];
                            parsableByteArray.setPosition(position + 12);
                            parsableByteArray.readBytes(bArr5, 0, i14);
                            Pair<Integer, Integer> alacAudioSpecificConfig = CodecSpecificDataUtil.parseAlacAudioSpecificConfig(bArr5);
                            int iIntValue2 = ((Integer) alacAudioSpecificConfig.first).intValue();
                            int iIntValue3 = ((Integer) alacAudioSpecificConfig.second).intValue();
                            listOf = ImmutableList.of(bArr5);
                            unsignedFixedPoint1616 = iIntValue2;
                            unsignedIntToInt = iIntValue3;
                        } else {
                            z2 = false;
                        }
                        z2 = false;
                    }
                    position += i10;
                    i8 = i2;
                    i9 = i3;
                }
                position += i10;
                i8 = i2;
                i9 = i3;
            }
            if (stsdData.format == null || str4 == null) {
            }
            Format.Builder language = new Format.Builder().setId(i4).setSampleMimeType(str4).setCodecs(str5).setChannelCount(unsignedIntToInt).setSampleRate(unsignedFixedPoint1616).setPcmEncoding(i7).setInitializationData(listOf).setDrmInitData(drmInitDataCopyWithSchemeType).setLanguage(str);
            if (esdsFromParent != null) {
                language.setAverageBitrate(Ints.saturatedCast(esdsFromParent.bitrate)).setPeakBitrate(Ints.saturatedCast(esdsFromParent.peakBitrate));
            }
            stsdData.format = language.build();
            return;
        }
        str3 = str2;
        i7 = -1;
        String str42 = str3;
        EsdsData esdsFromParent2 = null;
        String str52 = null;
        List<byte[]> listOf2 = null;
        while (position - i8 < i9) {
        }
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
                int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
                parsableByteArray.skipBytes(1);
                if (fullAtomVersion == 0) {
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
        return jArr[0] <= j2 && j2 < jArr[Util.constrainValue(4, 0, length)] && jArr[Util.constrainValue(jArr.length - 4, 0, length)] < j3 && j3 <= j;
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
        private final long duration;
        private final int id;
        private final int rotationDegrees;

        public TkhdData(int i, long j, int i2) {
            this.id = i;
            this.duration = j;
            this.rotationDegrees = i2;
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

    public static final class StszSampleSizeBox implements SampleSizeBox {
        private final ParsableByteArray data;
        private final int fixedSampleSize;
        private final int sampleCount;

        public StszSampleSizeBox(Atom.LeafAtom leafAtom, Format format) {
            ParsableByteArray parsableByteArray = leafAtom.data;
            this.data = parsableByteArray;
            parsableByteArray.setPosition(12);
            int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            if ("audio/raw".equals(format.sampleMimeType)) {
                int pcmFrameSize = Util.getPcmFrameSize(format.pcmEncoding, format.channelCount);
                if (unsignedIntToInt == 0 || unsignedIntToInt % pcmFrameSize != 0) {
                    Log.m274w("AtomParsers", "Audio sample size mismatch. stsd sample size: " + pcmFrameSize + ", stsz sample size: " + unsignedIntToInt);
                    unsignedIntToInt = pcmFrameSize;
                }
            }
            this.fixedSampleSize = unsignedIntToInt == 0 ? -1 : unsignedIntToInt;
            this.sampleCount = parsableByteArray.readUnsignedIntToInt();
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getFixedSampleSize() {
            return this.fixedSampleSize;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
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

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getFixedSampleSize() {
            return -1;
        }

        public Stz2SampleSizeBox(Atom.LeafAtom leafAtom) {
            ParsableByteArray parsableByteArray = leafAtom.data;
            this.data = parsableByteArray;
            parsableByteArray.setPosition(12);
            this.fieldSize = parsableByteArray.readUnsignedIntToInt() & 255;
            this.sampleCount = parsableByteArray.readUnsignedIntToInt();
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
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
