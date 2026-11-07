package androidx.media3.extractor.mkv;

import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.AbstractC0644C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DataReader;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.DolbyVisionConfig;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.AvcConfig;
import androidx.media3.extractor.ChunkIndex;
import androidx.media3.extractor.ChunkIndexProvider;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.HevcConfig;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.TrueHdSampleRechunker;
import androidx.media3.extractor.metadata.ThumbnailMetadata;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.SubtitleTranscodingExtractorOutput;
import com.android.dx.io.Opcodes;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import okio.Segment$$ExternalSyntheticBUOutline0;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import org.telegram.messenger.MediaController;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes4.dex */
public class MatroskaExtractor implements Extractor {
    private static final Map<String, Integer> TRACK_NAME_TO_ROTATION_DEGREES;
    private int blockAdditionalId;
    private long blockDurationUs;
    private int blockFlags;
    private long blockGroupDiscardPaddingNs;
    private boolean blockHasReferenceBlock;
    private int blockSampleCount;
    private int blockSampleIndex;
    private int[] blockSampleSizes;
    private int blockState;
    private long blockTimeUs;
    private int blockTrackNumber;
    private int blockTrackNumberLength;
    private long clusterTimecodeUs;
    private long cuesContentPosition;
    private long currentCueClusterPosition;
    private long currentCueRelativePosition;
    private long currentCueTimeUs;
    private int currentCueTrackNumber;
    private Track currentTrack;
    private long durationTimecode;
    private long durationUs;
    private final ParsableByteArray encryptionInitializationVector;
    private final ParsableByteArray encryptionSubsampleData;
    private ByteBuffer encryptionSubsampleDataBuffer;
    private ExtractorOutput extractorOutput;
    private boolean haveOutputSample;
    private boolean inCuesElement;
    private boolean isWebm;
    private final ParsableByteArray nalLength;
    private final ParsableByteArray nalStartCode;
    private final boolean parseSubtitlesDuringExtraction;
    private boolean pendingEndTracks;
    private final SparseArray<List<MatroskaSeekMap.CuePointData>> perTrackCues;
    private int primarySeekTrackNumber;
    private final EbmlReader reader;
    private int sampleBytesRead;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private boolean sampleEncodingHandled;
    private boolean sampleInitializationVectorRead;
    private int samplePartitionCount;
    private boolean samplePartitionCountRead;
    private byte sampleSignalByte;
    private boolean sampleSignalByteRead;
    private final ParsableByteArray sampleStrippedBytes;
    private final ParsableByteArray scratch;
    private int seekEntryId;
    private final ParsableByteArray seekEntryIdBytes;
    private long seekEntryPosition;
    private boolean seekForCues;
    private final boolean seekForCuesEnabled;
    private long seekPositionAfterBuildingCues;
    private long segmentContentPosition;
    private long segmentContentSize;
    private boolean sentSeekMap;
    private final SubtitleParser.Factory subtitleParserFactory;
    private final ParsableByteArray subtitleSample;
    private final ParsableByteArray supplementalData;
    private long timecodeScale;
    private final SparseArray<Track> tracks;
    private final VarintReader varintReader;
    private final ParsableByteArray vorbisNumPageSamples;

    @Deprecated
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.mkv.MatroskaExtractor$$ExternalSyntheticLambda0
        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return MatroskaExtractor.m1993$r8$lambda$kMhMytRa6Vcol9U__NkwwlQDB4();
        }
    };
    private static final byte[] SUBRIP_PREFIX = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] SSA_DIALOGUE_FORMAT = Util.getUtf8Bytes("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");
    private static final byte[] SSA_PREFIX = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
    private static final byte[] VTT_PREFIX = {87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
    private static final UUID WAVE_SUBFORMAT_PCM = new UUID(72057594037932032L, -9223371306706625679L);

    public int getElementType(int i) {
        switch (i) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case Opcodes.XOR_INT_LIT16 /* 215 */:
            case 231:
            case 238:
            case 240:
            case 241:
            case 247:
            case Opcodes.INVOKE_POLYMORPHIC_RANGE /* 251 */:
            case 16871:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21938:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 21998:
            case 22186:
            case 22203:
            case 25188:
            case 30114:
            case 30321:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 21358:
            case 2274716:
                return 3;
            case 160:
            case 166:
            case 174:
            case 183:
            case 187:
            case Opcodes.SHL_INT_LIT8 /* 224 */:
            case Opcodes.SHR_INT_LIT8 /* 225 */:
            case 16868:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30113:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 165:
            case 16877:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
            case 30323:
            case 30324:
            case 30325:
                return 5;
            default:
                return 0;
        }
    }

    public boolean isLevel1Element(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
    }

    static {
        HashMap map = new HashMap();
        map.put("htc_video_rotA-000", 0);
        map.put("htc_video_rotA-090", 90);
        map.put("htc_video_rotA-180", 180);
        map.put("htc_video_rotA-270", 270);
        TRACK_NAME_TO_ROTATION_DEGREES = Collections.unmodifiableMap(map);
    }

    /* JADX INFO: renamed from: $r8$lambda$kMhMytRa6Vcol9U_-_NkwwlQDB4, reason: not valid java name */
    public static /* synthetic */ Extractor[] m1993$r8$lambda$kMhMytRa6Vcol9U__NkwwlQDB4() {
        return new Extractor[]{new MatroskaExtractor(SubtitleParser.Factory.UNSUPPORTED, 2)};
    }

    public MatroskaExtractor(SubtitleParser.Factory factory, int i) {
        this(new DefaultEbmlReader(), i, factory);
    }

    public MatroskaExtractor(EbmlReader ebmlReader, int i, SubtitleParser.Factory factory) {
        this.segmentContentPosition = -1L;
        this.timecodeScale = -9223372036854775807L;
        this.durationTimecode = -9223372036854775807L;
        this.durationUs = -9223372036854775807L;
        this.currentCueTimeUs = -9223372036854775807L;
        this.currentCueTrackNumber = -1;
        this.currentCueClusterPosition = -1L;
        this.currentCueRelativePosition = -1L;
        this.primarySeekTrackNumber = -1;
        this.cuesContentPosition = -1L;
        this.seekPositionAfterBuildingCues = -1L;
        this.clusterTimecodeUs = -9223372036854775807L;
        this.reader = ebmlReader;
        ebmlReader.init(new InnerEbmlProcessor());
        this.subtitleParserFactory = factory;
        this.perTrackCues = new SparseArray<>();
        this.seekForCuesEnabled = (i & 1) == 0;
        this.parseSubtitlesDuringExtraction = (i & 2) == 0;
        this.varintReader = new VarintReader();
        this.tracks = new SparseArray<>();
        this.scratch = new ParsableByteArray(4);
        this.vorbisNumPageSamples = new ParsableByteArray(ByteBuffer.allocate(4).putInt(-1).array());
        this.seekEntryIdBytes = new ParsableByteArray(4);
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalLength = new ParsableByteArray(4);
        this.sampleStrippedBytes = new ParsableByteArray();
        this.subtitleSample = new ParsableByteArray();
        this.encryptionInitializationVector = new ParsableByteArray(8);
        this.encryptionSubsampleData = new ParsableByteArray();
        this.supplementalData = new ParsableByteArray();
        this.blockSampleSizes = new int[1];
        this.pendingEndTracks = true;
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean sniff(ExtractorInput extractorInput) {
        return new Sniffer().sniff(extractorInput);
    }

    @Override // androidx.media3.extractor.Extractor
    public final void init(ExtractorOutput extractorOutput) {
        if (this.parseSubtitlesDuringExtraction) {
            extractorOutput = new SubtitleTranscodingExtractorOutput(extractorOutput, this.subtitleParserFactory);
        }
        this.extractorOutput = extractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j, long j2) {
        this.clusterTimecodeUs = -9223372036854775807L;
        this.blockState = 0;
        this.reader.reset();
        this.varintReader.reset();
        resetWriteSampleData();
        this.inCuesElement = false;
        this.currentCueTimeUs = -9223372036854775807L;
        this.currentCueTrackNumber = -1;
        this.currentCueClusterPosition = -1L;
        this.currentCueRelativePosition = -1L;
        if (!this.sentSeekMap) {
            this.perTrackCues.clear();
        }
        for (int i = 0; i < this.tracks.size(); i++) {
            this.tracks.valueAt(i).reset();
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final int read(ExtractorInput extractorInput, PositionHolder positionHolder) {
        this.haveOutputSample = false;
        boolean z = true;
        while (z && !this.haveOutputSample) {
            z = this.reader.read(extractorInput);
            if (z && maybeSeekForCues(positionHolder, extractorInput.getPosition())) {
                return 1;
            }
        }
        if (z) {
            return 0;
        }
        for (int i = 0; i < this.tracks.size(); i++) {
            Track trackValueAt = this.tracks.valueAt(i);
            trackValueAt.assertOutputInitialized();
            trackValueAt.outputPendingSampleMetadata();
        }
        return -1;
    }

    public void startMasterElement(int i, long j, long j2) throws ParserException {
        assertInitialized();
        if (i == 160) {
            this.blockHasReferenceBlock = false;
            this.blockGroupDiscardPaddingNs = 0L;
            return;
        }
        if (i == 174) {
            Track track = new Track();
            this.currentTrack = track;
            track.isWebm = this.isWebm;
            return;
        }
        if (i == 183) {
            if (this.sentSeekMap) {
                return;
            }
            assertInCues(i);
            this.currentCueTrackNumber = -1;
            this.currentCueClusterPosition = -1L;
            this.currentCueRelativePosition = -1L;
            return;
        }
        if (i == 187) {
            if (this.sentSeekMap) {
                return;
            }
            assertInCues(i);
            this.currentCueTimeUs = -9223372036854775807L;
            return;
        }
        if (i == 19899) {
            this.seekEntryId = -1;
            this.seekEntryPosition = -1L;
            return;
        }
        if (i == 20533) {
            getCurrentTrack(i).hasContentEncryption = true;
            return;
        }
        if (i == 21968) {
            getCurrentTrack(i).hasColorInfo = true;
            return;
        }
        if (i == 408125543) {
            long j3 = this.segmentContentPosition;
            if (j3 != -1 && j3 != j) {
                throw ParserException.createForMalformedContainer("Multiple Segment elements not supported", null);
            }
            this.segmentContentPosition = j;
            this.segmentContentSize = j2;
            return;
        }
        if (i == 475249515) {
            if (this.sentSeekMap) {
                return;
            }
            this.inCuesElement = true;
        } else if (i == 524531317 && !this.sentSeekMap) {
            if (this.seekForCuesEnabled && this.cuesContentPosition != -1) {
                this.seekForCues = true;
            } else {
                this.extractorOutput.seekMap(new SeekMap.Unseekable(this.durationUs));
                this.sentSeekMap = true;
            }
        }
    }

    public void endMasterElement(int i) throws ParserException {
        int i2;
        SparseArray<List<MatroskaSeekMap.CuePointData>> sparseArray;
        assertInitialized();
        if (i == 160) {
            if (this.blockState != 2) {
                return;
            }
            Track track = this.tracks.get(this.blockTrackNumber);
            track.assertOutputInitialized();
            if (this.blockGroupDiscardPaddingNs > 0 && "A_OPUS".equals(track.codecId)) {
                this.supplementalData.reset(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.blockGroupDiscardPaddingNs).array());
            }
            int i3 = 0;
            for (int i4 = 0; i4 < this.blockSampleCount; i4++) {
                i3 += this.blockSampleSizes[i4];
            }
            int i5 = 0;
            while (i5 < this.blockSampleCount) {
                long j = this.blockTimeUs + ((long) ((track.defaultSampleDurationNs * i5) / 1000));
                int i6 = this.blockFlags;
                if (i5 == 0 && !this.blockHasReferenceBlock) {
                    i6 |= 1;
                }
                int i7 = this.blockSampleSizes[i5];
                int i8 = i3 - i7;
                commitSampleToOutput(track, j, i6, i7, i8);
                i5++;
                i3 = i8;
            }
            this.blockState = 0;
            return;
        }
        if (i == 174) {
            Track track2 = (Track) Preconditions.checkNotNull(this.currentTrack);
            String str = track2.codecId;
            if (str == null) {
                throw ParserException.createForMalformedContainer("CodecId is missing in TrackEntry element", null);
            }
            if (isCodecSupported(str)) {
                track2.initializeFormat(track2.number);
                track2.output = this.extractorOutput.track(track2.number, track2.type);
                this.tracks.put(track2.number, track2);
            }
            this.currentTrack = null;
            return;
        }
        if (i == 183) {
            if (this.sentSeekMap) {
                return;
            }
            assertInCues(i);
            if (this.currentCueTimeUs == -9223372036854775807L || (i2 = this.currentCueTrackNumber) == -1 || this.currentCueClusterPosition == -1) {
                return;
            }
            List<MatroskaSeekMap.CuePointData> arrayList = this.perTrackCues.get(i2);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.perTrackCues.put(this.currentCueTrackNumber, arrayList);
            }
            arrayList.add(new MatroskaSeekMap.CuePointData(this.currentCueTimeUs, this.segmentContentPosition + this.currentCueClusterPosition, this.currentCueRelativePosition));
            return;
        }
        if (i == 19899) {
            int i9 = this.seekEntryId;
            if (i9 != -1) {
                long j2 = this.seekEntryPosition;
                if (j2 != -1) {
                    if (i9 == 475249515) {
                        this.cuesContentPosition = j2;
                        return;
                    }
                    return;
                }
            }
            throw ParserException.createForMalformedContainer("Mandatory element SeekID or SeekPosition not found", null);
        }
        if (i == 25152) {
            assertInTrackEntry(i);
            Track track3 = this.currentTrack;
            if (track3.hasContentEncryption) {
                if (track3.cryptoData == null) {
                    throw ParserException.createForMalformedContainer("Encrypted Track found but ContentEncKeyID was not found", null);
                }
                track3.drmInitData = new DrmInitData(new DrmInitData.SchemeData(AbstractC0644C.UUID_NIL, "video/webm", this.currentTrack.cryptoData.encryptionKey));
                return;
            }
            return;
        }
        if (i == 28032) {
            assertInTrackEntry(i);
            Track track4 = this.currentTrack;
            if (track4.hasContentEncryption && track4.sampleStrippedBytes != null) {
                throw ParserException.createForMalformedContainer("Combining encryption and compression is not supported", null);
            }
            return;
        }
        if (i == 357149030) {
            if (this.timecodeScale == -9223372036854775807L) {
                this.timecodeScale = 1000000L;
            }
            long j3 = this.durationTimecode;
            if (j3 != -9223372036854775807L) {
                this.durationUs = scaleTimecodeToUs(j3);
                return;
            }
            return;
        }
        if (i != 374648427) {
            if (i == 475249515 && !this.sentSeekMap) {
                int i10 = 0;
                while (true) {
                    if (i10 >= this.perTrackCues.size()) {
                        break;
                    }
                    if (this.perTrackCues.valueAt(i10).isEmpty()) {
                        i10++;
                    } else {
                        if (this.durationUs == -9223372036854775807L) {
                            break;
                        }
                        int i11 = 0;
                        while (true) {
                            int size = this.perTrackCues.size();
                            sparseArray = this.perTrackCues;
                            if (i11 >= size) {
                                break;
                            }
                            Collections.sort(sparseArray.valueAt(i11));
                            i11++;
                        }
                        this.extractorOutput.seekMap(new MatroskaSeekMap(sparseArray, this.durationUs, this.primarySeekTrackNumber, this.segmentContentPosition, this.segmentContentSize));
                    }
                }
                this.extractorOutput.seekMap(new SeekMap.Unseekable(this.durationUs));
                this.sentSeekMap = true;
                this.inCuesElement = false;
                for (int i12 = 0; i12 < this.tracks.size(); i12++) {
                    Track trackValueAt = this.tracks.valueAt(i12);
                    trackValueAt.maybeAddThumbnailMetadata(this.perTrackCues, this.durationUs, this.segmentContentPosition, this.segmentContentSize);
                    if (!trackValueAt.waitingForDtsAnalysis) {
                        trackValueAt.assertOutputInitialized();
                        trackValueAt.output.format((Format) Preconditions.checkNotNull(trackValueAt.format));
                    }
                }
                maybeEndTracks();
                return;
            }
            return;
        }
        if (this.tracks.size() == 0) {
            throw ParserException.createForMalformedContainer("No valid tracks were found", null);
        }
        boolean z = !this.seekForCuesEnabled || this.cuesContentPosition == -1;
        int i13 = -1;
        int i14 = -1;
        int i15 = -1;
        int i16 = -1;
        for (int i17 = 0; i17 < this.tracks.size(); i17++) {
            Track trackValueAt2 = this.tracks.valueAt(i17);
            int i18 = trackValueAt2.type;
            if (i18 == 2) {
                if (trackValueAt2.flagDefault) {
                    i13 = trackValueAt2.number;
                }
                if (i14 == -1) {
                    i14 = trackValueAt2.number;
                }
            } else if (i18 == 1) {
                if (trackValueAt2.flagDefault) {
                    i15 = trackValueAt2.number;
                }
                if (i16 == -1) {
                    i16 = trackValueAt2.number;
                }
            }
            if (z) {
                trackValueAt2.assertOutputInitialized();
                if (!trackValueAt2.waitingForDtsAnalysis) {
                    trackValueAt2.output.format((Format) Preconditions.checkNotNull(trackValueAt2.format));
                }
            }
        }
        if (i13 != -1) {
            this.primarySeekTrackNumber = i13;
        } else if (i14 != -1) {
            this.primarySeekTrackNumber = i14;
        } else if (i15 != -1) {
            this.primarySeekTrackNumber = i15;
        } else if (i16 != -1) {
            this.primarySeekTrackNumber = i16;
        } else {
            this.primarySeekTrackNumber = this.tracks.size() > 0 ? this.tracks.valueAt(0).number : -1;
        }
        if (z) {
            maybeEndTracks();
        }
    }

    public void integerElement(int i, long j) throws ParserException {
        if (i == 240) {
            if (this.sentSeekMap) {
                return;
            }
            assertInCues(i);
            if (this.currentCueRelativePosition == -1) {
                this.currentCueRelativePosition = j;
                return;
            }
            return;
        }
        if (i == 241) {
            if (this.sentSeekMap) {
                return;
            }
            assertInCues(i);
            if (this.currentCueClusterPosition == -1) {
                this.currentCueClusterPosition = j;
                return;
            }
            return;
        }
        if (i == 20529) {
            if (j == 0) {
                return;
            }
            throw ParserException.createForMalformedContainer("ContentEncodingOrder " + j + " not supported", null);
        }
        if (i == 20530) {
            if (j == 1) {
                return;
            }
            throw ParserException.createForMalformedContainer("ContentEncodingScope " + j + " not supported", null);
        }
        switch (i) {
            case 131:
                int i2 = (int) j;
                if (i2 == 1) {
                    getCurrentTrack(i).type = 2;
                    return;
                }
                if (i2 == 2) {
                    getCurrentTrack(i).type = 1;
                    return;
                }
                if (i2 == 17) {
                    getCurrentTrack(i).type = 3;
                    return;
                } else if (i2 == 33) {
                    getCurrentTrack(i).type = 5;
                    return;
                } else {
                    getCurrentTrack(i).type = -1;
                    return;
                }
            case 136:
                getCurrentTrack(i).flagDefault = j == 1;
                return;
            case 155:
                this.blockDurationUs = scaleTimecodeToUs(j);
                return;
            case 159:
                getCurrentTrack(i).channelCount = (int) j;
                return;
            case 176:
                getCurrentTrack(i).width = (int) j;
                return;
            case 179:
                if (this.sentSeekMap) {
                    return;
                }
                assertInCues(i);
                this.currentCueTimeUs = scaleTimecodeToUs(j);
                return;
            case 186:
                getCurrentTrack(i).height = (int) j;
                return;
            case Opcodes.XOR_INT_LIT16 /* 215 */:
                getCurrentTrack(i).number = (int) j;
                return;
            case 231:
                this.clusterTimecodeUs = scaleTimecodeToUs(j);
                return;
            case 238:
                this.blockAdditionalId = (int) j;
                return;
            case 247:
                if (this.sentSeekMap) {
                    return;
                }
                assertInCues(i);
                this.currentCueTrackNumber = (int) j;
                return;
            case Opcodes.INVOKE_POLYMORPHIC_RANGE /* 251 */:
                this.blockHasReferenceBlock = true;
                return;
            case 16871:
                getCurrentTrack(i).blockAddIdType = (int) j;
                return;
            case 16980:
                if (j == 3) {
                    return;
                }
                throw ParserException.createForMalformedContainer("ContentCompAlgo " + j + " not supported", null);
            case 17029:
                if (j < 1 || j > 2) {
                    throw ParserException.createForMalformedContainer("DocTypeReadVersion " + j + " not supported", null);
                }
                return;
            case 17143:
                if (j == 1) {
                    return;
                }
                throw ParserException.createForMalformedContainer("EBMLReadVersion " + j + " not supported", null);
            case 18401:
                if (j == 5) {
                    return;
                }
                throw ParserException.createForMalformedContainer("ContentEncAlgo " + j + " not supported", null);
            case 18408:
                if (j == 1) {
                    return;
                }
                throw ParserException.createForMalformedContainer("AESSettingsCipherMode " + j + " not supported", null);
            case 21420:
                this.seekEntryPosition = j + this.segmentContentPosition;
                return;
            case 21432:
                int i3 = (int) j;
                assertInTrackEntry(i);
                if (i3 == 0) {
                    this.currentTrack.stereoMode = 0;
                    return;
                }
                if (i3 == 1) {
                    this.currentTrack.stereoMode = 2;
                    return;
                } else if (i3 == 3) {
                    this.currentTrack.stereoMode = 1;
                    return;
                } else {
                    if (i3 != 15) {
                        return;
                    }
                    this.currentTrack.stereoMode = 3;
                    return;
                }
            case 21680:
                getCurrentTrack(i).displayWidth = (int) j;
                return;
            case 21682:
                getCurrentTrack(i).displayUnit = (int) j;
                return;
            case 21690:
                getCurrentTrack(i).displayHeight = (int) j;
                return;
            case 21930:
                getCurrentTrack(i).flagForced = j == 1;
                return;
            case 21938:
                assertInTrackEntry(i);
                Track track = this.currentTrack;
                track.hasColorInfo = true;
                track.bitsPerChannel = (int) j;
                return;
            case 21998:
                getCurrentTrack(i).maxBlockAdditionId = (int) j;
                return;
            case 22186:
                getCurrentTrack(i).codecDelayNs = j;
                return;
            case 22203:
                getCurrentTrack(i).seekPreRollNs = j;
                return;
            case 25188:
                getCurrentTrack(i).audioBitDepth = (int) j;
                return;
            case 30114:
                this.blockGroupDiscardPaddingNs = j;
                return;
            case 30321:
                assertInTrackEntry(i);
                int i4 = (int) j;
                if (i4 == 0) {
                    this.currentTrack.projectionType = 0;
                    return;
                }
                if (i4 == 1) {
                    this.currentTrack.projectionType = 1;
                    return;
                } else if (i4 == 2) {
                    this.currentTrack.projectionType = 2;
                    return;
                } else {
                    if (i4 != 3) {
                        return;
                    }
                    this.currentTrack.projectionType = 3;
                    return;
                }
            case 2352003:
                getCurrentTrack(i).defaultSampleDurationNs = (int) j;
                return;
            case 2807729:
                this.timecodeScale = j;
                return;
            default:
                switch (i) {
                    case 21945:
                        assertInTrackEntry(i);
                        int i5 = (int) j;
                        if (i5 == 1) {
                            this.currentTrack.colorRange = 2;
                            return;
                        } else {
                            if (i5 != 2) {
                                return;
                            }
                            this.currentTrack.colorRange = 1;
                            return;
                        }
                    case 21946:
                        assertInTrackEntry(i);
                        int iIsoTransferCharacteristicsToColorTransfer = ColorInfo.isoTransferCharacteristicsToColorTransfer((int) j);
                        if (iIsoTransferCharacteristicsToColorTransfer != -1) {
                            this.currentTrack.colorTransfer = iIsoTransferCharacteristicsToColorTransfer;
                            return;
                        }
                        return;
                    case 21947:
                        assertInTrackEntry(i);
                        this.currentTrack.hasColorInfo = true;
                        int iIsoColorPrimariesToColorSpace = ColorInfo.isoColorPrimariesToColorSpace((int) j);
                        if (iIsoColorPrimariesToColorSpace != -1) {
                            this.currentTrack.colorSpace = iIsoColorPrimariesToColorSpace;
                            return;
                        }
                        return;
                    case 21948:
                        getCurrentTrack(i).maxContentLuminance = (int) j;
                        return;
                    case 21949:
                        getCurrentTrack(i).maxFrameAverageLuminance = (int) j;
                        return;
                    default:
                        return;
                }
        }
    }

    public void floatElement(int i, double d) throws ParserException {
        if (i == 181) {
            getCurrentTrack(i).sampleRate = (int) d;
            return;
        }
        if (i == 17545) {
            this.durationTimecode = (long) d;
            return;
        }
        switch (i) {
            case 21969:
                getCurrentTrack(i).primaryRChromaticityX = (float) d;
                break;
            case 21970:
                getCurrentTrack(i).primaryRChromaticityY = (float) d;
                break;
            case 21971:
                getCurrentTrack(i).primaryGChromaticityX = (float) d;
                break;
            case 21972:
                getCurrentTrack(i).primaryGChromaticityY = (float) d;
                break;
            case 21973:
                getCurrentTrack(i).primaryBChromaticityX = (float) d;
                break;
            case 21974:
                getCurrentTrack(i).primaryBChromaticityY = (float) d;
                break;
            case 21975:
                getCurrentTrack(i).whitePointChromaticityX = (float) d;
                break;
            case 21976:
                getCurrentTrack(i).whitePointChromaticityY = (float) d;
                break;
            case 21977:
                getCurrentTrack(i).maxMasteringLuminance = (float) d;
                break;
            case 21978:
                getCurrentTrack(i).minMasteringLuminance = (float) d;
                break;
            default:
                switch (i) {
                    case 30323:
                        getCurrentTrack(i).projectionPoseYaw = (float) d;
                        break;
                    case 30324:
                        getCurrentTrack(i).projectionPosePitch = (float) d;
                        break;
                    case 30325:
                        getCurrentTrack(i).projectionPoseRoll = (float) d;
                        break;
                }
                break;
        }
    }

    public void stringElement(int i, String str) throws ParserException {
        if (i == 134) {
            getCurrentTrack(i).codecId = str;
            return;
        }
        if (i != 17026) {
            if (i == 21358) {
                getCurrentTrack(i).name = str;
                return;
            } else {
                if (i != 2274716) {
                    return;
                }
                getCurrentTrack(i).language = str;
                return;
            }
        }
        if (!"webm".equals(str) && !"matroska".equals(str)) {
            throw ParserException.createForMalformedContainer("DocType " + str + " not supported", null);
        }
        this.isWebm = Objects.equals(str, "webm");
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0294  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void binaryElement(int i, int i2, ExtractorInput extractorInput) throws ParserException {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        long j;
        int i9;
        int[] iArr;
        int i10;
        int i11;
        int i12 = 2;
        int i13 = 0;
        int i14 = 1;
        if (i != 161 && i != 163) {
            if (i == 165) {
                if (this.blockState != 2) {
                    return;
                }
                handleBlockAdditionalData(this.tracks.get(this.blockTrackNumber), this.blockAdditionalId, extractorInput, i2);
                return;
            }
            if (i == 16877) {
                handleBlockAddIDExtraData(getCurrentTrack(i), extractorInput, i2);
                return;
            }
            if (i == 16981) {
                assertInTrackEntry(i);
                byte[] bArr = new byte[i2];
                this.currentTrack.sampleStrippedBytes = bArr;
                extractorInput.readFully(bArr, 0, i2);
                return;
            }
            if (i == 18402) {
                byte[] bArr2 = new byte[i2];
                extractorInput.readFully(bArr2, 0, i2);
                getCurrentTrack(i).cryptoData = new TrackOutput.CryptoData(1, bArr2, 0, 0);
                return;
            }
            if (i == 21419) {
                Arrays.fill(this.seekEntryIdBytes.getData(), (byte) 0);
                extractorInput.readFully(this.seekEntryIdBytes.getData(), 4 - i2, i2);
                this.seekEntryIdBytes.setPosition(0);
                this.seekEntryId = (int) this.seekEntryIdBytes.readUnsignedInt();
                return;
            }
            if (i == 25506) {
                assertInTrackEntry(i);
                byte[] bArr3 = new byte[i2];
                this.currentTrack.codecPrivate = bArr3;
                extractorInput.readFully(bArr3, 0, i2);
                return;
            }
            if (i == 30322) {
                assertInTrackEntry(i);
                byte[] bArr4 = new byte[i2];
                this.currentTrack.projectionData = bArr4;
                extractorInput.readFully(bArr4, 0, i2);
                return;
            }
            throw ParserException.createForMalformedContainer("Unexpected id: " + i, null);
        }
        int i15 = 8;
        if (this.blockState == 0) {
            this.blockTrackNumber = (int) this.varintReader.readUnsignedVarint(extractorInput, false, true, 8);
            this.blockTrackNumberLength = this.varintReader.getLastLength();
            this.blockDurationUs = -9223372036854775807L;
            this.blockState = 1;
            this.scratch.reset(0);
        }
        Track track = this.tracks.get(this.blockTrackNumber);
        if (track == null) {
            extractorInput.skipFully(i2 - this.blockTrackNumberLength);
            this.blockState = 0;
            return;
        }
        track.assertOutputInitialized();
        if (this.blockState == 1) {
            readScratch(extractorInput, 3);
            int i16 = (this.scratch.getData()[2] & 6) >> 1;
            if (i16 == 0) {
                this.blockSampleCount = 1;
                int[] iArrEnsureArrayCapacity = ensureArrayCapacity(this.blockSampleSizes, 1);
                this.blockSampleSizes = iArrEnsureArrayCapacity;
                iArrEnsureArrayCapacity[0] = (i2 - this.blockTrackNumberLength) - 3;
            } else {
                readScratch(extractorInput, 4);
                int i17 = (this.scratch.getData()[3] & UByte.MAX_VALUE) + 1;
                this.blockSampleCount = i17;
                int[] iArrEnsureArrayCapacity2 = ensureArrayCapacity(this.blockSampleSizes, i17);
                this.blockSampleSizes = iArrEnsureArrayCapacity2;
                if (i16 == 2) {
                    int i18 = (i2 - this.blockTrackNumberLength) - 4;
                    int i19 = this.blockSampleCount;
                    Arrays.fill(iArrEnsureArrayCapacity2, 0, i19, i18 / i19);
                } else {
                    if (i16 != 1) {
                        i4 = 0;
                        if (i16 == 3) {
                            int i20 = 4;
                            int i21 = 0;
                            int i22 = 0;
                            while (true) {
                                int i23 = this.blockSampleCount;
                                int i24 = i23 - 1;
                                i5 = i12;
                                int[] iArr2 = this.blockSampleSizes;
                                if (i21 < i24) {
                                    iArr2[i21] = 0;
                                    int i25 = i20 + 1;
                                    readScratch(extractorInput, i25);
                                    if (this.scratch.getData()[i20] == 0) {
                                        throw ParserException.createForMalformedContainer("No valid varint length mask found", null);
                                    }
                                    int i26 = 0;
                                    while (true) {
                                        if (i26 >= i15) {
                                            i7 = i14;
                                            i8 = i15;
                                            j = 0;
                                            break;
                                        }
                                        int i27 = i14 << (7 - i26);
                                        i8 = i15;
                                        if ((this.scratch.getData()[i20] & i27) != 0) {
                                            i25 += i26;
                                            readScratch(extractorInput, i25);
                                            int i28 = i20 + 1;
                                            j = this.scratch.getData()[i20] & UByte.MAX_VALUE & (~i27);
                                            int i29 = i28;
                                            while (i29 < i25) {
                                                j = (j << i8) | ((long) (this.scratch.getData()[i29] & UByte.MAX_VALUE));
                                                i29++;
                                                i14 = i14;
                                            }
                                            i7 = i14;
                                            if (i21 > 0) {
                                                j -= (1 << ((i26 * 7) + 6)) - 1;
                                            }
                                        } else {
                                            i26++;
                                            i15 = i8;
                                        }
                                    }
                                    if (j < -2147483648L || j > 2147483647L) {
                                        break;
                                    }
                                    int i30 = (int) j;
                                    int[] iArr3 = this.blockSampleSizes;
                                    if (i21 != 0) {
                                        i30 += iArr3[i21 - 1];
                                    }
                                    iArr3[i21] = i30;
                                    i22 += i30;
                                    i21++;
                                    i20 = i25;
                                    i12 = i5;
                                    i15 = i8;
                                    i14 = i7;
                                } else {
                                    i6 = i14;
                                    iArr2[i23 - 1] = ((i2 - this.blockTrackNumberLength) - i20) - i22;
                                    break;
                                }
                            }
                            throw ParserException.createForMalformedContainer("EBML lacing sample size out of range.", null);
                        }
                        throw ParserException.createForMalformedContainer("Unexpected lacing value: " + i16, null);
                    }
                    int i31 = 0;
                    int i32 = 0;
                    int i33 = 4;
                    while (true) {
                        i9 = this.blockSampleCount;
                        int i34 = i9 - 1;
                        i4 = i13;
                        iArr = this.blockSampleSizes;
                        if (i31 >= i34) {
                            break;
                        }
                        iArr[i31] = i4;
                        while (true) {
                            i10 = i33 + 1;
                            readScratch(extractorInput, i10);
                            int i35 = this.scratch.getData()[i33] & UByte.MAX_VALUE;
                            int[] iArr4 = this.blockSampleSizes;
                            i11 = iArr4[i31] + i35;
                            iArr4[i31] = i11;
                            if (i35 != 255) {
                                break;
                            } else {
                                i33 = i10;
                            }
                        }
                        i32 += i11;
                        i31++;
                        i33 = i10;
                        i13 = i4;
                    }
                    iArr[i9 - 1] = ((i2 - this.blockTrackNumberLength) - i33) - i32;
                    i5 = 2;
                    i6 = 1;
                    this.blockTimeUs = this.clusterTimecodeUs + scaleTimecodeToUs((this.scratch.getData()[i4] << 8) | (this.scratch.getData()[i6] & UByte.MAX_VALUE));
                    this.blockFlags = (track.type != i6 || (i == 163 && (this.scratch.getData()[i5] & ByteCompanionObject.MIN_VALUE) == 128)) ? 1 : i4;
                    this.blockState = i5;
                    this.blockSampleIndex = i4;
                    i3 = 163;
                }
            }
            i5 = 2;
            i4 = 0;
            i6 = 1;
            this.blockTimeUs = this.clusterTimecodeUs + scaleTimecodeToUs((this.scratch.getData()[i4] << 8) | (this.scratch.getData()[i6] & UByte.MAX_VALUE));
            if (track.type != i6) {
                this.blockFlags = (track.type != i6 || (i == 163 && (this.scratch.getData()[i5] & ByteCompanionObject.MIN_VALUE) == 128)) ? 1 : i4;
                this.blockState = i5;
                this.blockSampleIndex = i4;
                i3 = 163;
            }
        } else {
            i3 = 163;
        }
        if (i == i3) {
            while (true) {
                int i36 = this.blockSampleIndex;
                if (i36 < this.blockSampleCount) {
                    int iWriteSampleData = writeSampleData(extractorInput, track, this.blockSampleSizes[i36], false);
                    Track track2 = track;
                    commitSampleToOutput(track2, this.blockTimeUs + ((long) ((this.blockSampleIndex * track.defaultSampleDurationNs) / 1000)), this.blockFlags, iWriteSampleData, 0);
                    this.blockSampleIndex++;
                    track = track2;
                } else {
                    this.blockState = 0;
                    return;
                }
            }
        } else {
            while (true) {
                int i37 = this.blockSampleIndex;
                if (i37 >= this.blockSampleCount) {
                    return;
                }
                int[] iArr5 = this.blockSampleSizes;
                iArr5[i37] = writeSampleData(extractorInput, track, iArr5[i37], true);
                this.blockSampleIndex++;
            }
        }
    }

    public void handleBlockAddIDExtraData(Track track, ExtractorInput extractorInput, int i) {
        if (track.blockAddIdType == 1685485123 || track.blockAddIdType == 1685480259) {
            byte[] bArr = new byte[i];
            track.dolbyVisionConfigBytes = bArr;
            extractorInput.readFully(bArr, 0, i);
            return;
        }
        extractorInput.skipFully(i);
    }

    public void handleBlockAdditionalData(Track track, int i, ExtractorInput extractorInput, int i2) {
        if (i == 4 && "V_VP9".equals(track.codecId)) {
            this.supplementalData.reset(i2);
            extractorInput.readFully(this.supplementalData.getData(), 0, i2);
        } else {
            extractorInput.skipFully(i2);
        }
    }

    @EnsuresNonNull({"currentTrack"})
    private void assertInTrackEntry(int i) throws ParserException {
        if (this.currentTrack != null) {
            return;
        }
        throw ParserException.createForMalformedContainer("Element " + i + " must be in a TrackEntry", null);
    }

    private void assertInCues(int i) throws ParserException {
        if (this.inCuesElement) {
            return;
        }
        throw ParserException.createForMalformedContainer("Element " + i + " must be in a Cues", null);
    }

    public Track getCurrentTrack(int i) throws ParserException {
        assertInTrackEntry(i);
        return this.currentTrack;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00a8  */
    @RequiresNonNull({"#1.output"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void commitSampleToOutput(Track track, long j, int i, int i2, int i3) {
        int iLimit;
        TrueHdSampleRechunker trueHdSampleRechunker = track.trueHdSampleRechunker;
        if (trueHdSampleRechunker != null) {
            trueHdSampleRechunker.sampleMetadata(track.output, j, i, i2, i3, track.cryptoData);
        } else if ("S_TEXT/UTF8".equals(track.codecId) || "S_TEXT/ASS".equals(track.codecId) || "S_TEXT/SSA".equals(track.codecId) || "S_TEXT/WEBVTT".equals(track.codecId)) {
            if (this.blockSampleCount > 1) {
                Log.m164w("MatroskaExtractor", "Skipping subtitle sample in laced block.");
            } else {
                long j2 = this.blockDurationUs;
                if (j2 == -9223372036854775807L) {
                    Log.m164w("MatroskaExtractor", "Skipping subtitle sample with no duration.");
                } else {
                    setSubtitleEndTime(track.codecId, j2, this.subtitleSample.getData());
                    int position = this.subtitleSample.getPosition();
                    while (true) {
                        if (position >= this.subtitleSample.limit()) {
                            break;
                        }
                        if (this.subtitleSample.getData()[position] == 0) {
                            this.subtitleSample.setLimit(position);
                            break;
                        }
                        position++;
                    }
                    TrackOutput trackOutput = track.output;
                    ParsableByteArray parsableByteArray = this.subtitleSample;
                    trackOutput.sampleData(parsableByteArray, parsableByteArray.limit());
                    iLimit = i2 + this.subtitleSample.limit();
                    if ((i & 268435456) != 0) {
                        int i4 = this.blockSampleCount;
                        ParsableByteArray parsableByteArray2 = this.supplementalData;
                        if (i4 > 1) {
                            parsableByteArray2.reset(0);
                        } else {
                            int iLimit2 = parsableByteArray2.limit();
                            track.output.sampleData(this.supplementalData, iLimit2, 2);
                            iLimit += iLimit2;
                        }
                    }
                    track.output.sampleMetadata(j, i, iLimit, i3, track.cryptoData);
                }
            }
            iLimit = i2;
            if ((i & 268435456) != 0) {
            }
            track.output.sampleMetadata(j, i, iLimit, i3, track.cryptoData);
        } else {
            iLimit = i2;
            if ((i & 268435456) != 0) {
            }
            track.output.sampleMetadata(j, i, iLimit, i3, track.cryptoData);
        }
        this.haveOutputSample = true;
    }

    private void readScratch(ExtractorInput extractorInput, int i) {
        if (this.scratch.limit() >= i) {
            return;
        }
        if (this.scratch.capacity() < i) {
            ParsableByteArray parsableByteArray = this.scratch;
            parsableByteArray.ensureCapacity(Math.max(parsableByteArray.capacity() * 2, i));
        }
        extractorInput.readFully(this.scratch.getData(), this.scratch.limit(), i - this.scratch.limit());
        this.scratch.setLimit(i);
    }

    @RequiresNonNull({"#2.output"})
    private int writeSampleData(ExtractorInput extractorInput, Track track, int i, boolean z) throws ParserException {
        int i2;
        if ("S_TEXT/UTF8".equals(track.codecId)) {
            writeSubtitleSampleData(extractorInput, SUBRIP_PREFIX, i);
            return finishWriteSampleData();
        }
        if ("S_TEXT/ASS".equals(track.codecId) || "S_TEXT/SSA".equals(track.codecId)) {
            writeSubtitleSampleData(extractorInput, SSA_PREFIX, i);
            return finishWriteSampleData();
        }
        if ("S_TEXT/WEBVTT".equals(track.codecId)) {
            writeSubtitleSampleData(extractorInput, VTT_PREFIX, i);
            return finishWriteSampleData();
        }
        if (track.waitingForDtsAnalysis) {
            Preconditions.checkNotNull(track.format);
            if (DtsUtil.isSampleDtsHd(extractorInput, i)) {
                track.format = track.format.buildUpon().setSampleMimeType("audio/vnd.dts.hd").build();
            }
            track.output.format(track.format);
            track.waitingForDtsAnalysis = false;
            maybeEndTracks();
        }
        TrackOutput trackOutput = track.output;
        if (!this.sampleEncodingHandled) {
            if (track.hasContentEncryption) {
                this.blockFlags &= -1073741825;
                if (!this.sampleSignalByteRead) {
                    extractorInput.readFully(this.scratch.getData(), 0, 1);
                    this.sampleBytesRead++;
                    if ((this.scratch.getData()[0] & ByteCompanionObject.MIN_VALUE) == 128) {
                        throw ParserException.createForMalformedContainer("Extension bit is set in signal byte", null);
                    }
                    this.sampleSignalByte = this.scratch.getData()[0];
                    this.sampleSignalByteRead = true;
                }
                byte b2 = this.sampleSignalByte;
                if ((b2 & 1) == 1) {
                    boolean z2 = (b2 & 2) == 2;
                    this.blockFlags |= TLObject.FLAG_30;
                    if (!this.sampleInitializationVectorRead) {
                        extractorInput.readFully(this.encryptionInitializationVector.getData(), 0, 8);
                        this.sampleBytesRead += 8;
                        this.sampleInitializationVectorRead = true;
                        this.scratch.getData()[0] = (byte) ((z2 ? 128 : 0) | 8);
                        this.scratch.setPosition(0);
                        trackOutput.sampleData(this.scratch, 1, 1);
                        this.sampleBytesWritten++;
                        this.encryptionInitializationVector.setPosition(0);
                        trackOutput.sampleData(this.encryptionInitializationVector, 8, 1);
                        this.sampleBytesWritten += 8;
                    }
                    if (z2) {
                        if (!this.samplePartitionCountRead) {
                            extractorInput.readFully(this.scratch.getData(), 0, 1);
                            this.sampleBytesRead++;
                            this.scratch.setPosition(0);
                            this.samplePartitionCount = this.scratch.readUnsignedByte();
                            this.samplePartitionCountRead = true;
                        }
                        int i3 = this.samplePartitionCount * 4;
                        this.scratch.reset(i3);
                        extractorInput.readFully(this.scratch.getData(), 0, i3);
                        this.sampleBytesRead += i3;
                        short s = (short) ((this.samplePartitionCount / 2) + 1);
                        int i4 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.encryptionSubsampleDataBuffer;
                        if (byteBuffer == null || byteBuffer.capacity() < i4) {
                            this.encryptionSubsampleDataBuffer = ByteBuffer.allocate(i4);
                        }
                        this.encryptionSubsampleDataBuffer.position(0);
                        this.encryptionSubsampleDataBuffer.putShort(s);
                        int i5 = 0;
                        int i6 = 0;
                        while (true) {
                            i2 = this.samplePartitionCount;
                            if (i5 >= i2) {
                                break;
                            }
                            int unsignedIntToInt = this.scratch.readUnsignedIntToInt();
                            int i7 = i5 % 2;
                            ByteBuffer byteBuffer2 = this.encryptionSubsampleDataBuffer;
                            if (i7 == 0) {
                                byteBuffer2.putShort((short) (unsignedIntToInt - i6));
                            } else {
                                byteBuffer2.putInt(unsignedIntToInt - i6);
                            }
                            i5++;
                            i6 = unsignedIntToInt;
                        }
                        int i8 = (i - this.sampleBytesRead) - i6;
                        int i9 = i2 % 2;
                        ByteBuffer byteBuffer3 = this.encryptionSubsampleDataBuffer;
                        if (i9 == 1) {
                            byteBuffer3.putInt(i8);
                        } else {
                            byteBuffer3.putShort((short) i8);
                            this.encryptionSubsampleDataBuffer.putInt(0);
                        }
                        this.encryptionSubsampleData.reset(this.encryptionSubsampleDataBuffer.array(), i4);
                        trackOutput.sampleData(this.encryptionSubsampleData, i4, 1);
                        this.sampleBytesWritten += i4;
                    }
                }
            } else {
                byte[] bArr = track.sampleStrippedBytes;
                if (bArr != null) {
                    this.sampleStrippedBytes.reset(bArr, bArr.length);
                }
            }
            if (track.samplesHaveSupplementalData(z)) {
                this.blockFlags |= 268435456;
                this.supplementalData.reset(0);
                int iLimit = (this.sampleStrippedBytes.limit() + i) - this.sampleBytesRead;
                this.scratch.reset(4);
                this.scratch.getData()[0] = (byte) ((iLimit >> 24) & 255);
                this.scratch.getData()[1] = (byte) ((iLimit >> 16) & 255);
                this.scratch.getData()[2] = (byte) ((iLimit >> 8) & 255);
                this.scratch.getData()[3] = (byte) (iLimit & 255);
                trackOutput.sampleData(this.scratch, 4, 2);
                this.sampleBytesWritten += 4;
            }
            this.sampleEncodingHandled = true;
        }
        int iLimit2 = i + this.sampleStrippedBytes.limit();
        if ("V_MPEG4/ISO/AVC".equals(track.codecId) || "V_MPEGH/ISO/HEVC".equals(track.codecId)) {
            byte[] data = this.nalLength.getData();
            data[0] = 0;
            data[1] = 0;
            data[2] = 0;
            int i10 = track.nalUnitLengthFieldLength;
            int i11 = 4 - i10;
            while (this.sampleBytesRead < iLimit2) {
                int i12 = this.sampleCurrentNalBytesRemaining;
                if (i12 == 0) {
                    writeToTarget(extractorInput, data, i11, i10);
                    this.sampleBytesRead += i10;
                    this.nalLength.setPosition(0);
                    this.sampleCurrentNalBytesRemaining = this.nalLength.readUnsignedIntToInt();
                    this.nalStartCode.setPosition(0);
                    trackOutput.sampleData(this.nalStartCode, 4);
                    this.sampleBytesWritten += 4;
                } else {
                    int iWriteToOutput = writeToOutput(extractorInput, trackOutput, i12);
                    this.sampleBytesRead += iWriteToOutput;
                    this.sampleBytesWritten += iWriteToOutput;
                    this.sampleCurrentNalBytesRemaining -= iWriteToOutput;
                }
            }
        } else {
            if (track.trueHdSampleRechunker != null) {
                Preconditions.checkState(this.sampleStrippedBytes.limit() == 0);
                track.trueHdSampleRechunker.startSample(extractorInput);
            }
            while (true) {
                int i13 = this.sampleBytesRead;
                if (i13 >= iLimit2) {
                    break;
                }
                int iWriteToOutput2 = writeToOutput(extractorInput, trackOutput, iLimit2 - i13);
                this.sampleBytesRead += iWriteToOutput2;
                this.sampleBytesWritten += iWriteToOutput2;
            }
        }
        if ("A_VORBIS".equals(track.codecId)) {
            this.vorbisNumPageSamples.setPosition(0);
            trackOutput.sampleData(this.vorbisNumPageSamples, 4);
            this.sampleBytesWritten += 4;
        }
        return finishWriteSampleData();
    }

    private int finishWriteSampleData() {
        int i = this.sampleBytesWritten;
        resetWriteSampleData();
        return i;
    }

    private void resetWriteSampleData() {
        this.sampleBytesRead = 0;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        this.sampleEncodingHandled = false;
        this.sampleSignalByteRead = false;
        this.samplePartitionCountRead = false;
        this.samplePartitionCount = 0;
        this.sampleSignalByte = (byte) 0;
        this.sampleInitializationVectorRead = false;
        this.sampleStrippedBytes.reset(0);
    }

    private void writeSubtitleSampleData(ExtractorInput extractorInput, byte[] bArr, int i) {
        int length = bArr.length + i;
        int iCapacity = this.subtitleSample.capacity();
        ParsableByteArray parsableByteArray = this.subtitleSample;
        if (iCapacity < length) {
            parsableByteArray.reset(Arrays.copyOf(bArr, length + i));
        } else {
            System.arraycopy(bArr, 0, parsableByteArray.getData(), 0, bArr.length);
        }
        extractorInput.readFully(this.subtitleSample.getData(), bArr.length, i);
        this.subtitleSample.setPosition(0);
        this.subtitleSample.setLimit(length);
    }

    private static void setSubtitleEndTime(String str, long j, byte[] bArr) {
        byte[] subtitleTimecode;
        int i;
        str.getClass();
        switch (str) {
            case "S_TEXT/ASS":
            case "S_TEXT/SSA":
                subtitleTimecode = formatSubtitleTimecode(j, "%01d:%02d:%02d:%02d", NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
                i = 21;
                break;
            case "S_TEXT/WEBVTT":
                subtitleTimecode = formatSubtitleTimecode(j, "%02d:%02d:%02d.%03d", 1000L);
                i = 25;
                break;
            case "S_TEXT/UTF8":
                subtitleTimecode = formatSubtitleTimecode(j, "%02d:%02d:%02d,%03d", 1000L);
                i = 19;
                break;
            default:
                Segment$$ExternalSyntheticBUOutline0.m972m();
                return;
        }
        System.arraycopy(subtitleTimecode, 0, bArr, i, subtitleTimecode.length);
    }

    private static byte[] formatSubtitleTimecode(long j, String str, long j2) {
        Preconditions.checkArgument(j != -9223372036854775807L);
        int i = (int) (j / 3600000000L);
        long j3 = j - (((long) i) * 3600000000L);
        int i2 = (int) (j3 / 60000000);
        long j4 = j3 - (((long) i2) * 60000000);
        int i3 = (int) (j4 / 1000000);
        return Util.getUtf8Bytes(String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (((long) i3) * 1000000)) / j2))));
    }

    private void writeToTarget(ExtractorInput extractorInput, byte[] bArr, int i, int i2) {
        int iMin = Math.min(i2, this.sampleStrippedBytes.bytesLeft());
        extractorInput.readFully(bArr, i + iMin, i2 - iMin);
        if (iMin > 0) {
            this.sampleStrippedBytes.readBytes(bArr, i, iMin);
        }
    }

    private int writeToOutput(ExtractorInput extractorInput, TrackOutput trackOutput, int i) {
        int iBytesLeft = this.sampleStrippedBytes.bytesLeft();
        if (iBytesLeft > 0) {
            int iMin = Math.min(i, iBytesLeft);
            trackOutput.sampleData(this.sampleStrippedBytes, iMin);
            return iMin;
        }
        return trackOutput.sampleData((DataReader) extractorInput, i, false);
    }

    private boolean maybeSeekForCues(PositionHolder positionHolder, long j) {
        if (this.seekForCues) {
            this.seekPositionAfterBuildingCues = j;
            positionHolder.position = this.cuesContentPosition;
            this.seekForCues = false;
            return true;
        }
        if (this.sentSeekMap) {
            long j2 = this.seekPositionAfterBuildingCues;
            if (j2 != -1) {
                positionHolder.position = j2;
                this.seekPositionAfterBuildingCues = -1L;
                return true;
            }
        }
        return false;
    }

    private long scaleTimecodeToUs(long j) throws ParserException {
        long j2 = this.timecodeScale;
        if (j2 == -9223372036854775807L) {
            throw ParserException.createForMalformedContainer("Can't scale timecode prior to timecodeScale being set.", null);
        }
        return Util.scaleLargeTimestamp(j, j2, 1000L);
    }

    private static boolean isCodecSupported(String str) {
        str.getClass();
        switch (str) {
            case "V_MPEG4/ISO/AP":
            case "V_MPEG4/ISO/SP":
            case "A_MS/ACM":
            case "A_TRUEHD":
            case "A_VORBIS":
            case "A_MPEG/L2":
            case "A_MPEG/L3":
            case "V_MS/VFW/FOURCC":
            case "S_DVBSUB":
            case "V_MPEG4/ISO/ASP":
            case "V_MPEG4/ISO/AVC":
            case "S_VOBSUB":
            case "A_DTS/LOSSLESS":
            case "A_AAC":
            case "A_AC3":
            case "A_DTS":
            case "V_AV1":
            case "V_VP8":
            case "V_VP9":
            case "S_HDMV/PGS":
            case "V_THEORA":
            case "A_DTS/EXPRESS":
            case "A_PCM/FLOAT/IEEE":
            case "A_PCM/INT/BIG":
            case "A_PCM/INT/LIT":
            case "S_TEXT/ASS":
            case "S_TEXT/SSA":
            case "V_MPEGH/ISO/HEVC":
            case "S_TEXT/WEBVTT":
            case "S_TEXT/UTF8":
            case "V_MPEG2":
            case "A_EAC3":
            case "A_FLAC":
            case "A_OPUS":
                return true;
            default:
                return false;
        }
    }

    private static int[] ensureArrayCapacity(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        return iArr.length >= i ? iArr : new int[Math.max(iArr.length * 2, i)];
    }

    @EnsuresNonNull({"extractorOutput"})
    private void assertInitialized() {
        Preconditions.checkNotNull(this.extractorOutput);
    }

    private void maybeEndTracks() {
        if (this.pendingEndTracks) {
            for (int i = 0; i < this.tracks.size(); i++) {
                if (this.tracks.valueAt(i).waitingForDtsAnalysis) {
                    return;
                }
            }
            ((ExtractorOutput) Preconditions.checkNotNull(this.extractorOutput)).endTracks();
            this.pendingEndTracks = false;
        }
    }

    public final class InnerEbmlProcessor implements EbmlProcessor {
        private InnerEbmlProcessor() {
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public int getElementType(int i) {
            return MatroskaExtractor.this.getElementType(i);
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public boolean isLevel1Element(int i) {
            return MatroskaExtractor.this.isLevel1Element(i);
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public void startMasterElement(int i, long j, long j2) throws ParserException {
            MatroskaExtractor.this.startMasterElement(i, j, j2);
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public void endMasterElement(int i) throws ParserException {
            MatroskaExtractor.this.endMasterElement(i);
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public void integerElement(int i, long j) throws ParserException {
            MatroskaExtractor.this.integerElement(i, j);
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public void floatElement(int i, double d) throws ParserException {
            MatroskaExtractor.this.floatElement(i, d);
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public void stringElement(int i, String str) throws ParserException {
            MatroskaExtractor.this.stringElement(i, str);
        }

        @Override // androidx.media3.extractor.mkv.EbmlProcessor
        public void binaryElement(int i, int i2, ExtractorInput extractorInput) throws ParserException {
            MatroskaExtractor.this.binaryElement(i, i2, extractorInput);
        }
    }

    public static final class Track {
        private int blockAddIdType;
        public String codecId;
        public byte[] codecPrivate;
        public TrackOutput.CryptoData cryptoData;
        public int defaultSampleDurationNs;
        public byte[] dolbyVisionConfigBytes;
        public DrmInitData drmInitData;
        public boolean flagForced;
        public Format format;
        public boolean hasContentEncryption;
        public boolean isWebm;
        public int maxBlockAdditionId;
        public int nalUnitLengthFieldLength;
        public String name;
        public int number;
        public TrackOutput output;
        public byte[] sampleStrippedBytes;
        public TrueHdSampleRechunker trueHdSampleRechunker;
        public int type;
        public int width = -1;
        public int height = -1;
        public int bitsPerChannel = -1;
        public int displayWidth = -1;
        public int displayHeight = -1;
        public int displayUnit = 0;
        public int projectionType = -1;
        public float projectionPoseYaw = 0.0f;
        public float projectionPosePitch = 0.0f;
        public float projectionPoseRoll = 0.0f;
        public byte[] projectionData = null;
        public int stereoMode = -1;
        public boolean hasColorInfo = false;
        public int colorSpace = -1;
        public int colorTransfer = -1;
        public int colorRange = -1;
        public int maxContentLuminance = 1000;
        public int maxFrameAverageLuminance = 200;
        public float primaryRChromaticityX = -1.0f;
        public float primaryRChromaticityY = -1.0f;
        public float primaryGChromaticityX = -1.0f;
        public float primaryGChromaticityY = -1.0f;
        public float primaryBChromaticityX = -1.0f;
        public float primaryBChromaticityY = -1.0f;
        public float whitePointChromaticityX = -1.0f;
        public float whitePointChromaticityY = -1.0f;
        public float maxMasteringLuminance = -1.0f;
        public float minMasteringLuminance = -1.0f;
        public int channelCount = 1;
        public int audioBitDepth = -1;
        public int sampleRate = 8000;
        public long codecDelayNs = 0;
        public long seekPreRollNs = 0;
        public boolean waitingForDtsAnalysis = false;
        public boolean flagDefault = true;
        private String language = "eng";

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Removed duplicated region for block: B:221:0x0438  */
        /* JADX WARN: Removed duplicated region for block: B:226:0x0452  */
        /* JADX WARN: Removed duplicated region for block: B:227:0x0455  */
        /* JADX WARN: Removed duplicated region for block: B:230:0x0464  */
        /* JADX WARN: Removed duplicated region for block: B:231:0x0475  */
        /* JADX WARN: Removed duplicated region for block: B:279:0x054c  */
        /* JADX WARN: Removed duplicated region for block: B:298:0x05a1  */
        /* JADX WARN: Removed duplicated region for block: B:303:0x05bc  */
        /* JADX WARN: Removed duplicated region for block: B:304:0x05c0  */
        /* JADX WARN: Removed duplicated region for block: B:4:0x0017  */
        @RequiresNonNull({"codecId"})
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void initializeFormat(int i) throws ParserException {
            byte b2;
            int i2;
            List<byte[]> listSingletonList;
            String str;
            int i3;
            List<byte[]> list;
            String str2;
            String str3;
            Format.Builder builder;
            int i4;
            int i5;
            int i6;
            DolbyVisionConfig dolbyVisionConfig;
            String str4 = this.codecId;
            str4.getClass();
            int pcmEncoding = 3;
            switch (str4.hashCode()) {
                case -2095576542:
                    b2 = !str4.equals("V_MPEG4/ISO/AP") ? (byte) -1 : (byte) 0;
                    break;
                case -2095575984:
                    if (str4.equals("V_MPEG4/ISO/SP")) {
                        b2 = 1;
                        break;
                    }
                    break;
                case -1985379776:
                    if (str4.equals("A_MS/ACM")) {
                        b2 = 2;
                        break;
                    }
                    break;
                case -1784763192:
                    if (str4.equals("A_TRUEHD")) {
                        b2 = 3;
                        break;
                    }
                    break;
                case -1730367663:
                    if (str4.equals("A_VORBIS")) {
                        b2 = 4;
                        break;
                    }
                    break;
                case -1482641358:
                    if (str4.equals("A_MPEG/L2")) {
                        b2 = 5;
                        break;
                    }
                    break;
                case -1482641357:
                    if (str4.equals("A_MPEG/L3")) {
                        b2 = 6;
                        break;
                    }
                    break;
                case -1373388978:
                    if (str4.equals("V_MS/VFW/FOURCC")) {
                        b2 = 7;
                        break;
                    }
                    break;
                case -933872740:
                    if (str4.equals("S_DVBSUB")) {
                        b2 = 8;
                        break;
                    }
                    break;
                case -538363189:
                    if (str4.equals("V_MPEG4/ISO/ASP")) {
                        b2 = 9;
                        break;
                    }
                    break;
                case -538363109:
                    if (str4.equals("V_MPEG4/ISO/AVC")) {
                        b2 = 10;
                        break;
                    }
                    break;
                case -425012669:
                    if (str4.equals("S_VOBSUB")) {
                        b2 = 11;
                        break;
                    }
                    break;
                case -356037306:
                    if (str4.equals("A_DTS/LOSSLESS")) {
                        b2 = 12;
                        break;
                    }
                    break;
                case 62923557:
                    if (str4.equals("A_AAC")) {
                        b2 = 13;
                        break;
                    }
                    break;
                case 62923603:
                    if (str4.equals("A_AC3")) {
                        b2 = 14;
                        break;
                    }
                    break;
                case 62927045:
                    if (str4.equals("A_DTS")) {
                        b2 = 15;
                        break;
                    }
                    break;
                case 82318131:
                    if (str4.equals("V_AV1")) {
                        b2 = 16;
                        break;
                    }
                    break;
                case 82338133:
                    if (str4.equals("V_VP8")) {
                        b2 = 17;
                        break;
                    }
                    break;
                case 82338134:
                    if (str4.equals("V_VP9")) {
                        b2 = 18;
                        break;
                    }
                    break;
                case 99146302:
                    if (str4.equals("S_HDMV/PGS")) {
                        b2 = 19;
                        break;
                    }
                    break;
                case 444813526:
                    if (str4.equals("V_THEORA")) {
                        b2 = 20;
                        break;
                    }
                    break;
                case 542569478:
                    if (str4.equals("A_DTS/EXPRESS")) {
                        b2 = 21;
                        break;
                    }
                    break;
                case 635596514:
                    if (str4.equals("A_PCM/FLOAT/IEEE")) {
                        b2 = 22;
                        break;
                    }
                    break;
                case 725948237:
                    if (str4.equals("A_PCM/INT/BIG")) {
                        b2 = 23;
                        break;
                    }
                    break;
                case 725957860:
                    if (str4.equals("A_PCM/INT/LIT")) {
                        b2 = 24;
                        break;
                    }
                    break;
                case 738597099:
                    if (str4.equals("S_TEXT/ASS")) {
                        b2 = 25;
                        break;
                    }
                    break;
                case 738614379:
                    if (str4.equals("S_TEXT/SSA")) {
                        b2 = 26;
                        break;
                    }
                    break;
                case 855502857:
                    if (str4.equals("V_MPEGH/ISO/HEVC")) {
                        b2 = 27;
                        break;
                    }
                    break;
                case 1045209816:
                    if (str4.equals("S_TEXT/WEBVTT")) {
                        b2 = 28;
                        break;
                    }
                    break;
                case 1422270023:
                    if (str4.equals("S_TEXT/UTF8")) {
                        b2 = 29;
                        break;
                    }
                    break;
                case 1809237540:
                    if (str4.equals("V_MPEG2")) {
                        b2 = 30;
                        break;
                    }
                    break;
                case 1950749482:
                    if (str4.equals("A_EAC3")) {
                        b2 = 31;
                        break;
                    }
                    break;
                case 1950789798:
                    if (str4.equals("A_FLAC")) {
                        b2 = 32;
                        break;
                    }
                    break;
                case 1951062397:
                    if (str4.equals("A_OPUS")) {
                        b2 = 33;
                        break;
                    }
                    break;
            }
            String str5 = "audio/raw";
            switch (b2) {
                case 0:
                case 1:
                case 9:
                    i2 = 0;
                    byte[] bArr = this.codecPrivate;
                    listSingletonList = bArr == null ? null : Collections.singletonList(bArr);
                    str5 = "video/mp4v-es";
                    str = null;
                    i3 = -1;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null && (dolbyVisionConfig = DolbyVisionConfig.parse(new ParsableByteArray(this.dolbyVisionConfigBytes))) != null) {
                        str = dolbyVisionConfig.codecs;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    int i7 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(pcmEncoding);
                    } else if (MimeTypes.isVideo(str3)) {
                        if (this.displayUnit == 0) {
                            int i8 = this.displayWidth;
                            i4 = -1;
                            if (i8 == -1) {
                                i8 = this.width;
                            }
                            this.displayWidth = i8;
                            int i9 = this.displayHeight;
                            if (i9 == -1) {
                                i9 = this.height;
                            }
                            this.displayHeight = i9;
                        } else {
                            i4 = -1;
                        }
                        float f = (this.displayWidth == i4 || (i6 = this.displayHeight) == i4) ? -1.0f : (this.height * r2) / (this.width * i6);
                        ColorInfo colorInfoBuild = this.hasColorInfo ? new ColorInfo.Builder().setColorSpace(this.colorSpace).setColorRange(this.colorRange).setColorTransfer(this.colorTransfer).setHdrStaticInfo(getHdrStaticInfo()).setLumaBitdepth(this.bitsPerChannel).setChromaBitdepth(this.bitsPerChannel).build() : null;
                        int iIntValue = (this.name == null || !MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.containsKey(this.name)) ? i4 : ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                        if (this.projectionType == 0 && Float.compare(this.projectionPoseYaw, 0.0f) == 0 && Float.compare(this.projectionPosePitch, 0.0f) == 0) {
                            if (Float.compare(this.projectionPoseRoll, 0.0f) == 0) {
                                i5 = i2;
                            } else if (Float.compare(this.projectionPoseRoll, 90.0f) == 0) {
                                i5 = 90;
                            } else if (Float.compare(this.projectionPoseRoll, -180.0f) == 0 || Float.compare(this.projectionPoseRoll, 180.0f) == 0) {
                                i5 = 180;
                            } else if (Float.compare(this.projectionPoseRoll, -90.0f) == 0) {
                                i5 = 270;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i5).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                        } else {
                            i5 = iIntValue;
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i5).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                        }
                    } else if (!"application/x-subrip".equals(str3) && !"text/x-ssa".equals(str3) && !"text/vtt".equals(str3) && !"application/vobsub".equals(str3) && !"application/pgs".equals(str3) && !"application/dvbsubs".equals(str3)) {
                        throw ParserException.createForMalformedContainer("Unexpected MIME type.", null);
                    }
                    if (this.name != null && !MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.containsKey(this.name)) {
                        builder.setLabel(this.name);
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i7).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 2:
                    i2 = 0;
                    if (parseMsAcmCodecPrivate(new ParsableByteArray(getCodecPrivate(this.codecId)))) {
                        pcmEncoding = Util.getPcmEncoding(this.audioBitDepth);
                        if (pcmEncoding != 0) {
                            listSingletonList = null;
                            str = null;
                            i3 = -1;
                            if (this.dolbyVisionConfigBytes != null) {
                                str = dolbyVisionConfig.codecs;
                                str5 = "video/dolby-vision";
                            }
                            str3 = str5;
                            int i72 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                            builder = new Format.Builder();
                            if (!MimeTypes.isAudio(str3)) {
                            }
                            if (this.name != null) {
                                builder.setLabel(this.name);
                            }
                            this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i72).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                            return;
                        }
                        Log.m164w("MatroskaExtractor", "Unsupported PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to audio/x-unknown");
                    } else {
                        Log.m164w("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                    }
                    listSingletonList = null;
                    str = null;
                    str5 = "audio/x-unknown";
                    i3 = -1;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i722 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i722).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 3:
                    i2 = 0;
                    this.trueHdSampleRechunker = new TrueHdSampleRechunker();
                    str5 = "audio/true-hd";
                    listSingletonList = null;
                    str = null;
                    i3 = -1;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i7222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i7222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 4:
                    i2 = 0;
                    listSingletonList = parseVorbisCodecPrivate(getCodecPrivate(this.codecId));
                    str5 = "audio/vorbis";
                    i3 = 8192;
                    str = null;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i72222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i72222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 5:
                    i2 = 0;
                    str5 = "audio/mpeg-L2";
                    listSingletonList = null;
                    str = null;
                    i3 = 4096;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i722222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i722222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 6:
                    i2 = 0;
                    str5 = "audio/mpeg";
                    listSingletonList = null;
                    str = null;
                    i3 = 4096;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i7222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i7222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 7:
                    i2 = 0;
                    Pair<String, List<byte[]>> fourCcPrivate = parseFourCcPrivate(new ParsableByteArray(getCodecPrivate(this.codecId)));
                    str5 = (String) fourCcPrivate.first;
                    listSingletonList = (List) fourCcPrivate.second;
                    str = null;
                    i3 = -1;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i72222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i72222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 8:
                    byte[] bArr2 = new byte[4];
                    i2 = 0;
                    System.arraycopy(getCodecPrivate(this.codecId), 0, bArr2, 0, 4);
                    listSingletonList = ImmutableList.of(bArr2);
                    str = null;
                    str5 = "application/dvbsubs";
                    i3 = -1;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i722222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i722222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 10:
                    AvcConfig avcConfig = AvcConfig.parse(new ParsableByteArray(getCodecPrivate(this.codecId)));
                    list = avcConfig.initializationData;
                    this.nalUnitLengthFieldLength = avcConfig.nalUnitLengthFieldLength;
                    str2 = avcConfig.codecs;
                    str5 = MediaController.VIDEO_MIME_TYPE;
                    List<byte[]> list2 = list;
                    str = str2;
                    listSingletonList = list2;
                    i3 = -1;
                    i2 = 0;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i7222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i7222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 11:
                    listSingletonList = ImmutableList.of(getCodecPrivate(this.codecId));
                    str = null;
                    str5 = "application/vobsub";
                    i3 = -1;
                    i2 = 0;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i72222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i72222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 12:
                    str5 = "audio/vnd.dts.hd";
                    listSingletonList = null;
                    str = null;
                    i3 = -1;
                    i2 = 0;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i722222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i722222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 13:
                    listSingletonList = Collections.singletonList(getCodecPrivate(this.codecId));
                    AacUtil.Config audioSpecificConfig = AacUtil.parseAudioSpecificConfig(this.codecPrivate);
                    this.sampleRate = audioSpecificConfig.sampleRateHz;
                    this.channelCount = audioSpecificConfig.channelCount;
                    str = audioSpecificConfig.codecs;
                    str5 = MediaController.AUDIO_MIME_TYPE;
                    i3 = -1;
                    i2 = 0;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i7222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i7222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 14:
                    str5 = "audio/ac3";
                    listSingletonList = null;
                    str = null;
                    i3 = -1;
                    i2 = 0;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i72222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i72222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 15:
                case 21:
                    this.waitingForDtsAnalysis = true;
                    str5 = "audio/vnd.dts";
                    listSingletonList = null;
                    str = null;
                    i3 = -1;
                    i2 = 0;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i722222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i722222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 16:
                    byte[] bArr3 = this.codecPrivate;
                    listSingletonList = bArr3 == null ? null : ImmutableList.of(bArr3);
                    str5 = "video/av01";
                    str = null;
                    i3 = -1;
                    i2 = 0;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i7222222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i7222222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 17:
                    str5 = "video/x-vnd.on2.vp8";
                    listSingletonList = null;
                    str = null;
                    i3 = -1;
                    i2 = 0;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i72222222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i72222222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 18:
                    byte[] bArr4 = this.codecPrivate;
                    listSingletonList = bArr4 == null ? null : ImmutableList.of(bArr4);
                    str5 = "video/x-vnd.on2.vp9";
                    str = null;
                    i3 = -1;
                    i2 = 0;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i722222222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i722222222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 19:
                    listSingletonList = null;
                    str = null;
                    str5 = "application/pgs";
                    i3 = -1;
                    i2 = 0;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i7222222222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i7222222222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 20:
                    str5 = "video/x-unknown";
                    listSingletonList = null;
                    str = null;
                    i3 = -1;
                    i2 = 0;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i72222222222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i72222222222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 22:
                    if (this.audioBitDepth != 32) {
                        Log.m164w("MatroskaExtractor", "Unsupported floating point PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to audio/x-unknown");
                        listSingletonList = null;
                        str = null;
                        str5 = "audio/x-unknown";
                        i3 = -1;
                        i2 = 0;
                        pcmEncoding = -1;
                        if (this.dolbyVisionConfigBytes != null) {
                        }
                        str3 = str5;
                        int i722222222222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                        builder = new Format.Builder();
                        if (!MimeTypes.isAudio(str3)) {
                        }
                        if (this.name != null) {
                        }
                        this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i722222222222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                        return;
                    }
                    listSingletonList = null;
                    str = null;
                    i3 = -1;
                    i2 = 0;
                    pcmEncoding = 4;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i7222222222222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i7222222222222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 23:
                    int i10 = this.audioBitDepth;
                    if (i10 != 8) {
                        if (i10 == 16) {
                            pcmEncoding = 268435456;
                        } else if (i10 == 24) {
                            pcmEncoding = 1342177280;
                        } else {
                            if (i10 != 32) {
                                Log.m164w("MatroskaExtractor", "Unsupported big endian PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to audio/x-unknown");
                                listSingletonList = null;
                                str = null;
                                str5 = "audio/x-unknown";
                                i3 = -1;
                                i2 = 0;
                                pcmEncoding = -1;
                                if (this.dolbyVisionConfigBytes != null) {
                                }
                                str3 = str5;
                                int i72222222222222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                                builder = new Format.Builder();
                                if (!MimeTypes.isAudio(str3)) {
                                }
                                if (this.name != null) {
                                }
                                this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i72222222222222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                                return;
                            }
                            pcmEncoding = 1610612736;
                        }
                    }
                    listSingletonList = null;
                    str = null;
                    i3 = -1;
                    i2 = 0;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i722222222222222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i722222222222222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 24:
                    pcmEncoding = Util.getPcmEncoding(this.audioBitDepth);
                    if (pcmEncoding == 0) {
                        Log.m164w("MatroskaExtractor", "Unsupported little endian PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to audio/x-unknown");
                        listSingletonList = null;
                        str = null;
                        str5 = "audio/x-unknown";
                        i3 = -1;
                        i2 = 0;
                        pcmEncoding = -1;
                        if (this.dolbyVisionConfigBytes != null) {
                        }
                        str3 = str5;
                        int i7222222222222222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                        builder = new Format.Builder();
                        if (!MimeTypes.isAudio(str3)) {
                        }
                        if (this.name != null) {
                        }
                        this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i7222222222222222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                        return;
                    }
                    listSingletonList = null;
                    str = null;
                    i3 = -1;
                    i2 = 0;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i72222222222222222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i72222222222222222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 25:
                case 26:
                    listSingletonList = ImmutableList.of(MatroskaExtractor.SSA_DIALOGUE_FORMAT, getCodecPrivate(this.codecId));
                    str5 = "text/x-ssa";
                    str = null;
                    i3 = -1;
                    i2 = 0;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i722222222222222222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i722222222222222222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 27:
                    HevcConfig hevcConfig = HevcConfig.parse(new ParsableByteArray(getCodecPrivate(this.codecId)));
                    list = hevcConfig.initializationData;
                    this.nalUnitLengthFieldLength = hevcConfig.nalUnitLengthFieldLength;
                    str2 = hevcConfig.codecs;
                    str5 = "video/hevc";
                    List<byte[]> list22 = list;
                    str = str2;
                    listSingletonList = list22;
                    i3 = -1;
                    i2 = 0;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i7222222222222222222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i7222222222222222222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 28:
                    str5 = "text/vtt";
                    listSingletonList = null;
                    str = null;
                    i3 = -1;
                    i2 = 0;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i72222222222222222222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i72222222222222222222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 29:
                    listSingletonList = null;
                    str = null;
                    str5 = "application/x-subrip";
                    i3 = -1;
                    i2 = 0;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i722222222222222222222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i722222222222222222222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 30:
                    str5 = "video/mpeg2";
                    listSingletonList = null;
                    str = null;
                    i3 = -1;
                    i2 = 0;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i7222222222222222222222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i7222222222222222222222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 31:
                    str5 = "audio/eac3";
                    listSingletonList = null;
                    str = null;
                    i3 = -1;
                    i2 = 0;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i72222222222222222222222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i72222222222222222222222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 32:
                    listSingletonList = Collections.singletonList(getCodecPrivate(this.codecId));
                    str5 = "audio/flac";
                    str = null;
                    i3 = -1;
                    i2 = 0;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i722222222222222222222222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i722222222222222222222222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                case 33:
                    listSingletonList = new ArrayList<>(3);
                    listSingletonList.add(getCodecPrivate(this.codecId));
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    listSingletonList.add(byteBufferAllocate.order(byteOrder).putLong(this.codecDelayNs).array());
                    listSingletonList.add(ByteBuffer.allocate(8).order(byteOrder).putLong(this.seekPreRollNs).array());
                    str5 = "audio/opus";
                    i3 = 5760;
                    str = null;
                    i2 = 0;
                    pcmEncoding = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                    }
                    str3 = str5;
                    int i7222222222222222222222222222222222 = (this.flagDefault ? 1 : 0) | (!this.flagForced ? 2 : i2);
                    builder = new Format.Builder();
                    if (!MimeTypes.isAudio(str3)) {
                    }
                    if (this.name != null) {
                    }
                    this.format = builder.setId(i).setContainerMimeType(!this.isWebm ? "video/webm" : "video/x-matroska").setSampleMimeType(str3).setMaxInputSize(i3).setLanguage(this.language).setSelectionFlags(i7222222222222222222222222222222222).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    return;
                default:
                    throw ParserException.createForMalformedContainer("Unrecognized codec identifier.", null);
            }
        }

        @RequiresNonNull({"output"})
        public void outputPendingSampleMetadata() {
            TrueHdSampleRechunker trueHdSampleRechunker = this.trueHdSampleRechunker;
            if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.outputPendingSampleMetadata(this.output, this.cryptoData);
            }
        }

        public void reset() {
            TrueHdSampleRechunker trueHdSampleRechunker = this.trueHdSampleRechunker;
            if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.reset();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean samplesHaveSupplementalData(boolean z) {
            return "A_OPUS".equals(this.codecId) ? z : this.maxBlockAdditionId > 0;
        }

        private byte[] getHdrStaticInfo() {
            if (this.primaryRChromaticityX == -1.0f || this.primaryRChromaticityY == -1.0f || this.primaryGChromaticityX == -1.0f || this.primaryGChromaticityY == -1.0f || this.primaryBChromaticityX == -1.0f || this.primaryBChromaticityY == -1.0f || this.whitePointChromaticityX == -1.0f || this.whitePointChromaticityY == -1.0f || this.maxMasteringLuminance == -1.0f || this.minMasteringLuminance == -1.0f) {
                return null;
            }
            byte[] bArr = new byte[25];
            ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            byteBufferOrder.put((byte) 0);
            byteBufferOrder.putShort((short) ((this.primaryRChromaticityX * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.primaryRChromaticityY * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.primaryGChromaticityX * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.primaryGChromaticityY * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.primaryBChromaticityX * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.primaryBChromaticityY * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.whitePointChromaticityX * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.whitePointChromaticityY * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) (this.maxMasteringLuminance + 0.5f));
            byteBufferOrder.putShort((short) (this.minMasteringLuminance + 0.5f));
            byteBufferOrder.putShort((short) this.maxContentLuminance);
            byteBufferOrder.putShort((short) this.maxFrameAverageLuminance);
            return bArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void maybeAddThumbnailMetadata(SparseArray<List<MatroskaSeekMap.CuePointData>> sparseArray, long j, long j2, long j3) {
            List<MatroskaSeekMap.CuePointData> list;
            Metadata metadataCopyWithAppendedEntries;
            if (this.type != 2 || (list = sparseArray.get(this.number)) == null || list.isEmpty()) {
                return;
            }
            long jFindBestThumbnailPresentationTimeUs = findBestThumbnailPresentationTimeUs(list, j, j2, j3);
            if (jFindBestThumbnailPresentationTimeUs != -9223372036854775807L) {
                Metadata metadata = ((Format) Preconditions.checkNotNull(this.format)).metadata;
                ThumbnailMetadata thumbnailMetadata = new ThumbnailMetadata(jFindBestThumbnailPresentationTimeUs);
                if (metadata == null) {
                    metadataCopyWithAppendedEntries = new Metadata(thumbnailMetadata);
                } else {
                    metadataCopyWithAppendedEntries = metadata.copyWithAppendedEntries(thumbnailMetadata);
                }
                this.format = this.format.buildUpon().setMetadata(metadataCopyWithAppendedEntries).build();
            }
        }

        private static long findBestThumbnailPresentationTimeUs(List<MatroskaSeekMap.CuePointData> list, long j, long j2, long j3) {
            long j4;
            long j5;
            if (list.isEmpty()) {
                return -9223372036854775807L;
            }
            int iMin = Math.min(list.size(), 20);
            double d = 0.0d;
            int i = -1;
            for (int i2 = 0; i2 < iMin; i2++) {
                MatroskaSeekMap.CuePointData cuePointData = list.get(i2);
                if (cuePointData.timeUs > 10000000) {
                    break;
                }
                if (i2 < list.size() - 1) {
                    MatroskaSeekMap.CuePointData cuePointData2 = list.get(i2 + 1);
                    j4 = (cuePointData2.clusterPosition + cuePointData2.relativePosition) - (cuePointData.clusterPosition + cuePointData.relativePosition);
                    j5 = cuePointData2.timeUs - cuePointData.timeUs;
                } else {
                    j4 = (j2 + j3) - (cuePointData.clusterPosition + cuePointData.relativePosition);
                    j5 = j - cuePointData.timeUs;
                }
                if (j5 > 0) {
                    double d2 = j4 / j5;
                    if (d2 > d) {
                        i = i2;
                        d = d2;
                    }
                }
            }
            if (i == -1) {
                return -9223372036854775807L;
            }
            return list.get(i).timeUs;
        }

        private static Pair<String, List<byte[]>> parseFourCcPrivate(ParsableByteArray parsableByteArray) throws ParserException {
            try {
                parsableByteArray.skipBytes(16);
                long littleEndianUnsignedInt = parsableByteArray.readLittleEndianUnsignedInt();
                if (littleEndianUnsignedInt == 1482049860) {
                    return new Pair<>("video/divx", null);
                }
                if (littleEndianUnsignedInt == 859189832) {
                    return new Pair<>("video/3gpp", null);
                }
                if (littleEndianUnsignedInt == 826496599) {
                    byte[] data = parsableByteArray.getData();
                    for (int position = parsableByteArray.getPosition() + 20; position < data.length - 4; position++) {
                        if (data[position] == 0 && data[position + 1] == 0 && data[position + 2] == 1 && data[position + 3] == 15) {
                            return new Pair<>("video/wvc1", Collections.singletonList(Arrays.copyOfRange(data, position, data.length)));
                        }
                    }
                    throw ParserException.createForMalformedContainer("Failed to find FourCC VC1 initialization data", null);
                }
                Log.m164w("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair<>("video/x-unknown", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing FourCC private data", null);
            }
        }

        private static List<byte[]> parseVorbisCodecPrivate(byte[] bArr) throws ParserException {
            int i;
            int i2;
            try {
                if (bArr[0] != 2) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                int i3 = 0;
                int i4 = 1;
                while (true) {
                    i = bArr[i4];
                    if ((i & 255) != 255) {
                        break;
                    }
                    i3 += 255;
                    i4++;
                }
                int i5 = i4 + 1;
                int i6 = i3 + (i & 255);
                int i7 = 0;
                while (true) {
                    i2 = bArr[i5];
                    if ((i2 & 255) != 255) {
                        break;
                    }
                    i7 += 255;
                    i5++;
                }
                int i8 = i5 + 1;
                int i9 = i7 + (i2 & 255);
                if (bArr[i8] != 1) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                byte[] bArr2 = new byte[i6];
                System.arraycopy(bArr, i8, bArr2, 0, i6);
                int i10 = i8 + i6;
                if (bArr[i10] != 3) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                int i11 = i10 + i9;
                if (bArr[i11] != 5) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                byte[] bArr3 = new byte[bArr.length - i11];
                System.arraycopy(bArr, i11, bArr3, 0, bArr.length - i11);
                ArrayList arrayList = new ArrayList(2);
                arrayList.add(bArr2);
                arrayList.add(bArr3);
                return arrayList;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
            }
        }

        private static boolean parseMsAcmCodecPrivate(ParsableByteArray parsableByteArray) throws ParserException {
            try {
                int littleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort();
                if (littleEndianUnsignedShort == 1) {
                    return true;
                }
                if (littleEndianUnsignedShort == 65534) {
                    parsableByteArray.setPosition(24);
                    if (parsableByteArray.readLong() == MatroskaExtractor.WAVE_SUBFORMAT_PCM.getMostSignificantBits()) {
                        if (parsableByteArray.readLong() == MatroskaExtractor.WAVE_SUBFORMAT_PCM.getLeastSignificantBits()) {
                            return true;
                        }
                    }
                }
                return false;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing MS/ACM codec private", null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @EnsuresNonNull({"output"})
        public void assertOutputInitialized() {
            Preconditions.checkNotNull(this.output);
        }

        @EnsuresNonNull({"codecPrivate"})
        private byte[] getCodecPrivate(String str) throws ParserException {
            byte[] bArr = this.codecPrivate;
            if (bArr != null) {
                return bArr;
            }
            throw ParserException.createForMalformedContainer("Missing CodecPrivate for codec " + str, null);
        }
    }

    public static final class MatroskaSeekMap implements SeekMap, ChunkIndexProvider {
        private final ChunkIndex chunkIndex;
        private final long durationUs;
        private final SparseArray<List<CuePointData>> perTrackCues;
        private final int primarySeekTrackNumber;

        public MatroskaSeekMap(SparseArray<List<CuePointData>> sparseArray, long j, int i, long j2, long j3) {
            this.perTrackCues = sparseArray;
            this.durationUs = j;
            this.primarySeekTrackNumber = i;
            this.chunkIndex = buildChunkIndex(sparseArray, j, i, j2, j3);
        }

        @Override // androidx.media3.extractor.SeekMap
        public boolean isSeekable() {
            return isSeekable(this.primarySeekTrackNumber);
        }

        public boolean isSeekable(int i) {
            List<CuePointData> list = this.perTrackCues.get(i);
            return (list == null || list.isEmpty()) ? false : true;
        }

        @Override // androidx.media3.extractor.SeekMap
        public long getDurationUs() {
            return this.durationUs;
        }

        @Override // androidx.media3.extractor.SeekMap
        public SeekMap.SeekPoints getSeekPoints(long j) {
            ChunkIndex chunkIndex = this.chunkIndex;
            if (chunkIndex != null) {
                return chunkIndex.getSeekPoints(j);
            }
            return new SeekMap.SeekPoints(SeekPoint.START);
        }

        @Override // androidx.media3.extractor.ChunkIndexProvider
        public ChunkIndex getChunkIndex() {
            return this.chunkIndex;
        }

        private static ChunkIndex buildChunkIndex(SparseArray<List<CuePointData>> sparseArray, long j, int i, long j2, long j3) {
            int i2;
            List<CuePointData> list = sparseArray.get(i);
            if (list == null || list.isEmpty()) {
                return null;
            }
            int size = list.size();
            int[] iArrCopyOf = new int[size];
            long[] jArrCopyOf = new long[size];
            long[] jArrCopyOf2 = new long[size];
            long[] jArrCopyOf3 = new long[size];
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                CuePointData cuePointData = list.get(i4);
                jArrCopyOf3[i4] = cuePointData.timeUs;
                jArrCopyOf[i4] = cuePointData.clusterPosition;
            }
            while (true) {
                i2 = size - 1;
                if (i3 >= i2) {
                    break;
                }
                int i5 = i3 + 1;
                iArrCopyOf[i3] = (int) (jArrCopyOf[i5] - jArrCopyOf[i3]);
                jArrCopyOf2[i3] = jArrCopyOf3[i5] - jArrCopyOf3[i3];
                i3 = i5;
            }
            int i6 = i2;
            while (i6 > 0 && jArrCopyOf3[i6] >= j) {
                i6--;
            }
            iArrCopyOf[i6] = (int) ((j2 + j3) - jArrCopyOf[i6]);
            jArrCopyOf2[i6] = j - jArrCopyOf3[i6];
            if (i6 < i2) {
                Log.m164w("MatroskaExtractor", "Discarding trailing cue points with timestamps greater than total duration.");
                int i7 = i6 + 1;
                iArrCopyOf = Arrays.copyOf(iArrCopyOf, i7);
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i7);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i7);
                jArrCopyOf3 = Arrays.copyOf(jArrCopyOf3, i7);
            }
            return new ChunkIndex(iArrCopyOf, jArrCopyOf, jArrCopyOf2, jArrCopyOf3);
        }

        public static final class CuePointData implements Comparable<CuePointData> {
            private final long clusterPosition;
            private final long relativePosition;
            private final long timeUs;

            private CuePointData(long j, long j2, long j3) {
                this.timeUs = j;
                this.clusterPosition = j2;
                this.relativePosition = j3;
            }

            @Override // java.lang.Comparable
            public int compareTo(CuePointData cuePointData) {
                return Long.compare(this.timeUs, cuePointData.timeUs);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof CuePointData)) {
                    return false;
                }
                CuePointData cuePointData = (CuePointData) obj;
                return this.timeUs == cuePointData.timeUs && this.clusterPosition == cuePointData.clusterPosition && this.relativePosition == cuePointData.relativePosition;
            }

            public int hashCode() {
                return Objects.hash(Long.valueOf(this.timeUs), Long.valueOf(this.clusterPosition), Long.valueOf(this.relativePosition));
            }
        }
    }
}
