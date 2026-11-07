package androidx.media3.extractor.ts;

import android.util.SparseArray;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.container.ParsableNalUnitBitArray;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ts.TsPayloadReader;
import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import org.telegram.messenger.MediaController;

/* JADX INFO: loaded from: classes4.dex */
public final class H264Reader implements ElementaryStreamReader {
    private final boolean allowNonIdrKeyframes;
    private final String containerMimeType;
    private final boolean detectAccessUnits;
    private String formatId;
    private boolean hasOutputFormat;
    private TrackOutput output;
    private boolean randomAccessIndicator;
    private SampleReader sampleReader;
    private final SeiReader seiReader;
    private long totalBytesWritten;
    private final boolean[] prefixFlags = new boolean[3];
    private final NalUnitTargetBuffer sps = new NalUnitTargetBuffer(7, 128);
    private final NalUnitTargetBuffer pps = new NalUnitTargetBuffer(8, 128);
    private final NalUnitTargetBuffer sei = new NalUnitTargetBuffer(6, 128);
    private long pesTimeUs = -9223372036854775807L;
    private final ParsableByteArray seiWrapper = new ParsableByteArray();

    public H264Reader(SeiReader seiReader, boolean z, boolean z2, String str) {
        this.seiReader = seiReader;
        this.allowNonIdrKeyframes = z;
        this.detectAccessUnits = z2;
        this.containerMimeType = str;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void seek() {
        this.totalBytesWritten = 0L;
        this.randomAccessIndicator = false;
        this.pesTimeUs = -9223372036854775807L;
        NalUnitUtil.clearPrefixFlags(this.prefixFlags);
        this.sps.reset();
        this.pps.reset();
        this.sei.reset();
        this.seiReader.clear();
        SampleReader sampleReader = this.sampleReader;
        if (sampleReader != null) {
            sampleReader.reset();
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.formatId = trackIdGenerator.getFormatId();
        TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.getTrackId(), 2);
        this.output = trackOutputTrack;
        this.sampleReader = new SampleReader(trackOutputTrack, this.allowNonIdrKeyframes, this.detectAccessUnits);
        this.seiReader.createTracks(extractorOutput, trackIdGenerator);
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        this.pesTimeUs = j;
        this.randomAccessIndicator |= (i & 2) != 0;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        int i;
        assertTracksCreated();
        int position = parsableByteArray.getPosition();
        int iLimit = parsableByteArray.limit();
        byte[] data = parsableByteArray.getData();
        this.totalBytesWritten += (long) parsableByteArray.bytesLeft();
        this.output.sampleData(parsableByteArray, parsableByteArray.bytesLeft());
        while (true) {
            int iFindNalUnit = NalUnitUtil.findNalUnit(data, position, iLimit, this.prefixFlags);
            if (iFindNalUnit == iLimit) {
                nalUnitData(data, position, iLimit);
                return;
            }
            int nalUnitType = NalUnitUtil.getNalUnitType(data, iFindNalUnit);
            if (iFindNalUnit <= 0 || data[iFindNalUnit - 1] != 0) {
                i = 3;
            } else {
                iFindNalUnit--;
                i = 4;
            }
            int i2 = iFindNalUnit;
            int i3 = i;
            int i4 = i2 - position;
            if (i4 > 0) {
                nalUnitData(data, position, i2);
            }
            int i5 = iLimit - i2;
            long j = this.totalBytesWritten - ((long) i5);
            endNalUnit(j, i5, i4 < 0 ? -i4 : 0, this.pesTimeUs);
            startNalUnit(j, nalUnitType, this.pesTimeUs);
            position = i2 + i3;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void packetFinished(boolean z) {
        assertTracksCreated();
        if (z) {
            this.seiReader.flush();
            endNalUnit(this.totalBytesWritten, 0, 0, this.pesTimeUs);
            startNalUnit(this.totalBytesWritten, 9, this.pesTimeUs);
            endNalUnit(this.totalBytesWritten, 0, 0, this.pesTimeUs);
        }
    }

    @RequiresNonNull({"sampleReader"})
    private void startNalUnit(long j, int i, long j2) {
        if (!this.hasOutputFormat || this.sampleReader.needsSpsPps()) {
            this.sps.startNalUnit(i);
            this.pps.startNalUnit(i);
        }
        this.sei.startNalUnit(i);
        this.sampleReader.startNalUnit(j, i, j2, this.randomAccessIndicator);
    }

    @RequiresNonNull({"sampleReader"})
    private void nalUnitData(byte[] bArr, int i, int i2) {
        if (!this.hasOutputFormat || this.sampleReader.needsSpsPps()) {
            this.sps.appendToNalUnit(bArr, i, i2);
            this.pps.appendToNalUnit(bArr, i, i2);
        }
        this.sei.appendToNalUnit(bArr, i, i2);
        this.sampleReader.appendToNalUnit(bArr, i, i2);
    }

    @RequiresNonNull({"output", "sampleReader"})
    private void endNalUnit(long j, int i, int i2, long j2) {
        if (!this.hasOutputFormat || this.sampleReader.needsSpsPps()) {
            this.sps.endNalUnit(i2);
            this.pps.endNalUnit(i2);
            boolean z = this.hasOutputFormat;
            NalUnitTargetBuffer nalUnitTargetBuffer = this.sps;
            if (!z) {
                if (nalUnitTargetBuffer.isCompleted() && this.pps.isCompleted()) {
                    ArrayList arrayList = new ArrayList();
                    NalUnitTargetBuffer nalUnitTargetBuffer2 = this.sps;
                    arrayList.add(Arrays.copyOf(nalUnitTargetBuffer2.nalData, nalUnitTargetBuffer2.nalLength));
                    NalUnitTargetBuffer nalUnitTargetBuffer3 = this.pps;
                    arrayList.add(Arrays.copyOf(nalUnitTargetBuffer3.nalData, nalUnitTargetBuffer3.nalLength));
                    NalUnitTargetBuffer nalUnitTargetBuffer4 = this.sps;
                    NalUnitUtil.SpsData spsNalUnit = NalUnitUtil.parseSpsNalUnit(nalUnitTargetBuffer4.nalData, 3, nalUnitTargetBuffer4.nalLength);
                    NalUnitTargetBuffer nalUnitTargetBuffer5 = this.pps;
                    NalUnitUtil.PpsData ppsNalUnit = NalUnitUtil.parsePpsNalUnit(nalUnitTargetBuffer5.nalData, 3, nalUnitTargetBuffer5.nalLength);
                    this.output.format(new Format.Builder().setId(this.formatId).setContainerMimeType(this.containerMimeType).setSampleMimeType(MediaController.VIDEO_MIME_TYPE).setCodecs(CodecSpecificDataUtil.buildAvcCodecString(spsNalUnit.profileIdc, spsNalUnit.constraintsFlagsAndReservedZero2Bits, spsNalUnit.levelIdc)).setWidth(spsNalUnit.width).setHeight(spsNalUnit.height).setColorInfo(new ColorInfo.Builder().setColorSpace(spsNalUnit.colorSpace).setColorRange(spsNalUnit.colorRange).setColorTransfer(spsNalUnit.colorTransfer).setLumaBitdepth(spsNalUnit.bitDepthLumaMinus8 + 8).setChromaBitdepth(spsNalUnit.bitDepthChromaMinus8 + 8).build()).setPixelWidthHeightRatio(spsNalUnit.pixelWidthHeightRatio).setInitializationData(arrayList).setMaxNumReorderSamples(spsNalUnit.maxNumReorderFrames).build());
                    this.hasOutputFormat = true;
                    this.seiReader.setReorderingQueueSize(spsNalUnit.maxNumReorderFrames);
                    this.sampleReader.putSps(spsNalUnit);
                    this.sampleReader.putPps(ppsNalUnit);
                    this.sps.reset();
                    this.pps.reset();
                }
            } else if (nalUnitTargetBuffer.isCompleted()) {
                NalUnitTargetBuffer nalUnitTargetBuffer6 = this.sps;
                NalUnitUtil.SpsData spsNalUnit2 = NalUnitUtil.parseSpsNalUnit(nalUnitTargetBuffer6.nalData, 3, nalUnitTargetBuffer6.nalLength);
                this.seiReader.setReorderingQueueSize(spsNalUnit2.maxNumReorderFrames);
                this.sampleReader.putSps(spsNalUnit2);
                this.sps.reset();
            } else if (this.pps.isCompleted()) {
                NalUnitTargetBuffer nalUnitTargetBuffer7 = this.pps;
                this.sampleReader.putPps(NalUnitUtil.parsePpsNalUnit(nalUnitTargetBuffer7.nalData, 3, nalUnitTargetBuffer7.nalLength));
                this.pps.reset();
            }
        }
        if (this.sei.endNalUnit(i2)) {
            NalUnitTargetBuffer nalUnitTargetBuffer8 = this.sei;
            this.seiWrapper.reset(this.sei.nalData, NalUnitUtil.unescapeStream(nalUnitTargetBuffer8.nalData, nalUnitTargetBuffer8.nalLength));
            this.seiWrapper.setPosition(4);
            this.seiReader.consume(j2, this.seiWrapper);
        }
        if (this.sampleReader.endNalUnit(j, i, this.hasOutputFormat)) {
            this.randomAccessIndicator = false;
        }
    }

    @EnsuresNonNull({"output", "sampleReader"})
    private void assertTracksCreated() {
        Assertions.checkStateNotNull(this.output);
        Util.castNonNull(this.sampleReader);
    }

    public static final class SampleReader {
        private final boolean allowNonIdrKeyframes;
        private final ParsableNalUnitBitArray bitArray;
        private byte[] buffer;
        private int bufferLength;
        private final boolean detectAccessUnits;
        private boolean isFilling;
        private long nalUnitStartPosition;
        private long nalUnitTimeUs;
        private int nalUnitType;
        private final TrackOutput output;
        private SliceHeaderData previousSliceHeader;
        private boolean randomAccessIndicator;
        private boolean readingSample;
        private boolean sampleIsKeyframe;
        private long samplePosition;
        private long sampleTimeUs;
        private SliceHeaderData sliceHeader;
        private final SparseArray<NalUnitUtil.SpsData> sps = new SparseArray<>();
        private final SparseArray<NalUnitUtil.PpsData> pps = new SparseArray<>();

        public SampleReader(TrackOutput trackOutput, boolean z, boolean z2) {
            this.output = trackOutput;
            this.allowNonIdrKeyframes = z;
            this.detectAccessUnits = z2;
            this.previousSliceHeader = new SliceHeaderData();
            this.sliceHeader = new SliceHeaderData();
            byte[] bArr = new byte[128];
            this.buffer = bArr;
            this.bitArray = new ParsableNalUnitBitArray(bArr, 0, 0);
            reset();
        }

        public boolean needsSpsPps() {
            return this.detectAccessUnits;
        }

        public void putSps(NalUnitUtil.SpsData spsData) {
            this.sps.append(spsData.seqParameterSetId, spsData);
        }

        public void putPps(NalUnitUtil.PpsData ppsData) {
            this.pps.append(ppsData.picParameterSetId, ppsData);
        }

        public void reset() {
            this.isFilling = false;
            this.readingSample = false;
            this.sliceHeader.clear();
        }

        public void startNalUnit(long j, int i, long j2, boolean z) {
            this.nalUnitType = i;
            this.nalUnitTimeUs = j2;
            this.nalUnitStartPosition = j;
            this.randomAccessIndicator = z;
            if (!this.allowNonIdrKeyframes || i != 1) {
                if (!this.detectAccessUnits) {
                    return;
                }
                if (i != 5 && i != 1 && i != 2) {
                    return;
                }
            }
            SliceHeaderData sliceHeaderData = this.previousSliceHeader;
            this.previousSliceHeader = this.sliceHeader;
            this.sliceHeader = sliceHeaderData;
            sliceHeaderData.clear();
            this.bufferLength = 0;
            this.isFilling = true;
        }

        /* JADX WARN: Removed duplicated region for block: B:53:0x0109  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x010c  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0110  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0123  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x0129  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0161  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void appendToNalUnit(byte[] bArr, int i, int i2) {
            boolean z;
            boolean z2;
            boolean bit;
            boolean z3;
            int unsignedExpGolombCodedInt;
            int i3;
            int i4;
            int signedExpGolombCodedInt;
            int i5;
            int signedExpGolombCodedInt2;
            if (this.isFilling) {
                int i6 = i2 - i;
                byte[] bArr2 = this.buffer;
                int length = bArr2.length;
                int i7 = this.bufferLength;
                if (length < i7 + i6) {
                    this.buffer = Arrays.copyOf(bArr2, (i7 + i6) * 2);
                }
                System.arraycopy(bArr, i, this.buffer, this.bufferLength, i6);
                int i8 = this.bufferLength + i6;
                this.bufferLength = i8;
                this.bitArray.reset(this.buffer, 0, i8);
                if (this.bitArray.canReadBits(8)) {
                    this.bitArray.skipBit();
                    int bits = this.bitArray.readBits(2);
                    this.bitArray.skipBits(5);
                    if (this.bitArray.canReadExpGolombCodedNum()) {
                        this.bitArray.readUnsignedExpGolombCodedInt();
                        if (this.bitArray.canReadExpGolombCodedNum()) {
                            int unsignedExpGolombCodedInt2 = this.bitArray.readUnsignedExpGolombCodedInt();
                            if (!this.detectAccessUnits) {
                                this.isFilling = false;
                                this.sliceHeader.setSliceType(unsignedExpGolombCodedInt2);
                                return;
                            }
                            if (this.bitArray.canReadExpGolombCodedNum()) {
                                int unsignedExpGolombCodedInt3 = this.bitArray.readUnsignedExpGolombCodedInt();
                                if (this.pps.indexOfKey(unsignedExpGolombCodedInt3) < 0) {
                                    this.isFilling = false;
                                    return;
                                }
                                NalUnitUtil.PpsData ppsData = this.pps.get(unsignedExpGolombCodedInt3);
                                NalUnitUtil.SpsData spsData = this.sps.get(ppsData.seqParameterSetId);
                                if (spsData.separateColorPlaneFlag) {
                                    if (!this.bitArray.canReadBits(2)) {
                                        return;
                                    } else {
                                        this.bitArray.skipBits(2);
                                    }
                                }
                                if (this.bitArray.canReadBits(spsData.frameNumLength)) {
                                    int bits2 = this.bitArray.readBits(spsData.frameNumLength);
                                    if (spsData.frameMbsOnlyFlag) {
                                        z = false;
                                        z2 = false;
                                    } else {
                                        if (!this.bitArray.canReadBits(1)) {
                                            return;
                                        }
                                        boolean bit2 = this.bitArray.readBit();
                                        if (bit2) {
                                            if (this.bitArray.canReadBits(1)) {
                                                z = bit2;
                                                z2 = true;
                                                bit = this.bitArray.readBit();
                                                z3 = this.nalUnitType != 5;
                                                if (z3) {
                                                    unsignedExpGolombCodedInt = 0;
                                                } else if (!this.bitArray.canReadExpGolombCodedNum()) {
                                                    return;
                                                } else {
                                                    unsignedExpGolombCodedInt = this.bitArray.readUnsignedExpGolombCodedInt();
                                                }
                                                i3 = spsData.picOrderCountType;
                                                if (i3 != 0) {
                                                    if (!this.bitArray.canReadBits(spsData.picOrderCntLsbLength)) {
                                                        return;
                                                    }
                                                    int bits3 = this.bitArray.readBits(spsData.picOrderCntLsbLength);
                                                    if (ppsData.bottomFieldPicOrderInFramePresentFlag && !z) {
                                                        if (this.bitArray.canReadExpGolombCodedNum()) {
                                                            signedExpGolombCodedInt = this.bitArray.readSignedExpGolombCodedInt();
                                                            i4 = bits3;
                                                            i5 = 0;
                                                            signedExpGolombCodedInt2 = i5;
                                                            this.sliceHeader.setAll(spsData, bits, unsignedExpGolombCodedInt2, bits2, unsignedExpGolombCodedInt3, z, z2, bit, z3, unsignedExpGolombCodedInt, i4, signedExpGolombCodedInt, i5, signedExpGolombCodedInt2);
                                                            this.isFilling = false;
                                                        }
                                                        return;
                                                    }
                                                    i4 = bits3;
                                                    signedExpGolombCodedInt = 0;
                                                } else {
                                                    if (i3 == 1 && !spsData.deltaPicOrderAlwaysZeroFlag) {
                                                        if (this.bitArray.canReadExpGolombCodedNum()) {
                                                            int signedExpGolombCodedInt3 = this.bitArray.readSignedExpGolombCodedInt();
                                                            if (!ppsData.bottomFieldPicOrderInFramePresentFlag || z) {
                                                                i5 = signedExpGolombCodedInt3;
                                                                i4 = 0;
                                                                signedExpGolombCodedInt = 0;
                                                                signedExpGolombCodedInt2 = 0;
                                                            } else {
                                                                if (!this.bitArray.canReadExpGolombCodedNum()) {
                                                                    return;
                                                                }
                                                                signedExpGolombCodedInt2 = this.bitArray.readSignedExpGolombCodedInt();
                                                                i5 = signedExpGolombCodedInt3;
                                                                i4 = 0;
                                                                signedExpGolombCodedInt = 0;
                                                            }
                                                            this.sliceHeader.setAll(spsData, bits, unsignedExpGolombCodedInt2, bits2, unsignedExpGolombCodedInt3, z, z2, bit, z3, unsignedExpGolombCodedInt, i4, signedExpGolombCodedInt, i5, signedExpGolombCodedInt2);
                                                            this.isFilling = false;
                                                        }
                                                        return;
                                                    }
                                                    i4 = 0;
                                                    signedExpGolombCodedInt = 0;
                                                }
                                                i5 = signedExpGolombCodedInt;
                                                signedExpGolombCodedInt2 = i5;
                                                this.sliceHeader.setAll(spsData, bits, unsignedExpGolombCodedInt2, bits2, unsignedExpGolombCodedInt3, z, z2, bit, z3, unsignedExpGolombCodedInt, i4, signedExpGolombCodedInt, i5, signedExpGolombCodedInt2);
                                                this.isFilling = false;
                                            }
                                            return;
                                        }
                                        z = bit2;
                                        z2 = false;
                                    }
                                    bit = z2;
                                    if (this.nalUnitType != 5) {
                                    }
                                    if (z3) {
                                    }
                                    i3 = spsData.picOrderCountType;
                                    if (i3 != 0) {
                                    }
                                    i5 = signedExpGolombCodedInt;
                                    signedExpGolombCodedInt2 = i5;
                                    this.sliceHeader.setAll(spsData, bits, unsignedExpGolombCodedInt2, bits2, unsignedExpGolombCodedInt3, z, z2, bit, z3, unsignedExpGolombCodedInt, i4, signedExpGolombCodedInt, i5, signedExpGolombCodedInt2);
                                    this.isFilling = false;
                                }
                            }
                        }
                    }
                }
            }
        }

        public boolean endNalUnit(long j, int i, boolean z) {
            if (this.nalUnitType == 9 || (this.detectAccessUnits && this.sliceHeader.isFirstVclNalUnitOfPicture(this.previousSliceHeader))) {
                if (z && this.readingSample) {
                    outputSample(i + ((int) (j - this.nalUnitStartPosition)));
                }
                this.samplePosition = this.nalUnitStartPosition;
                this.sampleTimeUs = this.nalUnitTimeUs;
                this.sampleIsKeyframe = false;
                this.readingSample = true;
            }
            setSampleIsKeyframe();
            this.nalUnitType = 24;
            return this.sampleIsKeyframe;
        }

        private void setSampleIsKeyframe() {
            boolean zIsISlice = this.allowNonIdrKeyframes ? this.sliceHeader.isISlice() : this.randomAccessIndicator;
            boolean z = this.sampleIsKeyframe;
            int i = this.nalUnitType;
            boolean z2 = true;
            if (i != 5 && (!zIsISlice || i != 1)) {
                z2 = false;
            }
            this.sampleIsKeyframe = z | z2;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        private void outputSample(int i) {
            long j = this.sampleTimeUs;
            if (j != -9223372036854775807L) {
                long j2 = this.nalUnitStartPosition;
                long j3 = this.samplePosition;
                if (j2 == j3) {
                    return;
                }
                int i2 = (int) (j2 - j3);
                this.output.sampleMetadata(j, this.sampleIsKeyframe ? 1 : 0, i2, i, null);
            }
        }

        public static final class SliceHeaderData {
            private boolean bottomFieldFlag;
            private boolean bottomFieldFlagPresent;
            private int deltaPicOrderCnt0;
            private int deltaPicOrderCnt1;
            private int deltaPicOrderCntBottom;
            private boolean fieldPicFlag;
            private int frameNum;
            private boolean hasSliceType;
            private boolean idrPicFlag;
            private int idrPicId;
            private boolean isComplete;
            private int nalRefIdc;
            private int picOrderCntLsb;
            private int picParameterSetId;
            private int sliceType;
            private NalUnitUtil.SpsData spsData;

            private SliceHeaderData() {
            }

            public void clear() {
                this.hasSliceType = false;
                this.isComplete = false;
            }

            public void setSliceType(int i) {
                this.sliceType = i;
                this.hasSliceType = true;
            }

            public void setAll(NalUnitUtil.SpsData spsData, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, int i5, int i6, int i7, int i8, int i9) {
                this.spsData = spsData;
                this.nalRefIdc = i;
                this.sliceType = i2;
                this.frameNum = i3;
                this.picParameterSetId = i4;
                this.fieldPicFlag = z;
                this.bottomFieldFlagPresent = z2;
                this.bottomFieldFlag = z3;
                this.idrPicFlag = z4;
                this.idrPicId = i5;
                this.picOrderCntLsb = i6;
                this.deltaPicOrderCntBottom = i7;
                this.deltaPicOrderCnt0 = i8;
                this.deltaPicOrderCnt1 = i9;
                this.isComplete = true;
                this.hasSliceType = true;
            }

            public boolean isISlice() {
                if (!this.hasSliceType) {
                    return false;
                }
                int i = this.sliceType;
                return i == 7 || i == 2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean isFirstVclNalUnitOfPicture(SliceHeaderData sliceHeaderData) {
                int i;
                int i2;
                int i3;
                boolean z;
                if (!this.isComplete) {
                    return false;
                }
                if (!sliceHeaderData.isComplete) {
                    return true;
                }
                NalUnitUtil.SpsData spsData = (NalUnitUtil.SpsData) Assertions.checkStateNotNull(this.spsData);
                NalUnitUtil.SpsData spsData2 = (NalUnitUtil.SpsData) Assertions.checkStateNotNull(sliceHeaderData.spsData);
                return (this.frameNum == sliceHeaderData.frameNum && this.picParameterSetId == sliceHeaderData.picParameterSetId && this.fieldPicFlag == sliceHeaderData.fieldPicFlag && (!this.bottomFieldFlagPresent || !sliceHeaderData.bottomFieldFlagPresent || this.bottomFieldFlag == sliceHeaderData.bottomFieldFlag) && (((i = this.nalRefIdc) == (i2 = sliceHeaderData.nalRefIdc) || (i != 0 && i2 != 0)) && (((i3 = spsData.picOrderCountType) != 0 || spsData2.picOrderCountType != 0 || (this.picOrderCntLsb == sliceHeaderData.picOrderCntLsb && this.deltaPicOrderCntBottom == sliceHeaderData.deltaPicOrderCntBottom)) && ((i3 != 1 || spsData2.picOrderCountType != 1 || (this.deltaPicOrderCnt0 == sliceHeaderData.deltaPicOrderCnt0 && this.deltaPicOrderCnt1 == sliceHeaderData.deltaPicOrderCnt1)) && (z = this.idrPicFlag) == sliceHeaderData.idrPicFlag && (!z || this.idrPicId == sliceHeaderData.idrPicId))))) ? false : true;
            }
        }
    }
}
