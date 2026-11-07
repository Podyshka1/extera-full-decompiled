package androidx.media3.extractor.jpeg;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.StartOffsetExtractorInput;
import androidx.media3.extractor.StartOffsetExtractorOutput;
import androidx.media3.extractor.metadata.MotionPhotoMetadata;
import androidx.media3.extractor.mp4.Mp4Extractor;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.base.Preconditions;
import java.util.Objects;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
final class JpegMotionPhotoExtractor implements Extractor {
    private ExtractorOutput extractorOutput;
    private ExtractorInput lastExtractorInput;
    private int marker;
    private MotionPhotoMetadata motionPhotoMetadata;
    private Mp4Extractor mp4Extractor;
    private StartOffsetExtractorInput mp4ExtractorStartOffsetExtractorInput;
    private int segmentLength;
    private int state;
    private final ParsableByteArray scratch = new ParsableByteArray(2);
    private long mp4StartPosition = -1;

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001d, code lost:
    
        return false;
     */
    @Override // androidx.media3.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean sniff(ExtractorInput extractorInput) {
        int iPeekSegmentLength;
        if (peekMarker(extractorInput) == 65496) {
            while (true) {
                int iPeekMarker = peekMarker(extractorInput);
                this.marker = iPeekMarker;
                if (iPeekMarker == 65498 || (iPeekSegmentLength = peekSegmentLength(extractorInput)) < 0) {
                    break;
                }
                if (this.marker != 65505) {
                    extractorInput.advancePeekPosition(iPeekSegmentLength);
                } else {
                    this.scratch.reset(iPeekSegmentLength);
                    extractorInput.peekFully(this.scratch.getData(), 0, iPeekSegmentLength);
                    if (isMotionPhotoXmp(this.scratch)) {
                        return true;
                    }
                }
            }
        } else {
            return false;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) {
        int i = this.state;
        if (i == 0) {
            readMarker(extractorInput);
            return 0;
        }
        if (i == 1) {
            readSegmentLength(extractorInput);
            return 0;
        }
        if (i == 2) {
            readSegment(extractorInput);
            return 0;
        }
        if (i == 4) {
            long position = extractorInput.getPosition();
            long j = this.mp4StartPosition;
            if (position != j) {
                positionHolder.position = j;
                return 1;
            }
            sniffMotionPhotoVideo(extractorInput);
            return 0;
        }
        if (i != 5) {
            if (i == 6) {
                return -1;
            }
            MethodWriter$$ExternalSyntheticBUOutline0.m1007m();
            return 0;
        }
        if (this.mp4ExtractorStartOffsetExtractorInput == null || extractorInput != this.lastExtractorInput) {
            this.lastExtractorInput = extractorInput;
            this.mp4ExtractorStartOffsetExtractorInput = new StartOffsetExtractorInput(extractorInput, this.mp4StartPosition);
        }
        int i2 = ((Mp4Extractor) Preconditions.checkNotNull(this.mp4Extractor)).read(this.mp4ExtractorStartOffsetExtractorInput, positionHolder);
        if (i2 == 1) {
            positionHolder.position += this.mp4StartPosition;
        }
        return i2;
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j, long j2) {
        if (j == 0) {
            this.state = 0;
            this.mp4Extractor = null;
        } else if (this.state == 5) {
            ((Mp4Extractor) Preconditions.checkNotNull(this.mp4Extractor)).seek(j, j2);
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
        Mp4Extractor mp4Extractor = this.mp4Extractor;
        if (mp4Extractor != null) {
            mp4Extractor.release();
        }
    }

    private int peekMarker(ExtractorInput extractorInput) {
        this.scratch.reset(2);
        extractorInput.peekFully(this.scratch.getData(), 0, 2);
        return this.scratch.readUnsignedShort();
    }

    private boolean isMotionPhotoXmp(ParsableByteArray parsableByteArray) {
        if (Objects.equals(parsableByteArray.readNullTerminatedString(), "http://ns.adobe.com/xap/1.0/")) {
            return XmpMotionPhotoDescriptionParser.isMotionPhotoXmp(parsableByteArray.readNullTerminatedString());
        }
        return false;
    }

    private void readMarker(ExtractorInput extractorInput) {
        this.scratch.reset(2);
        extractorInput.readFully(this.scratch.getData(), 0, 2);
        int unsignedShort = this.scratch.readUnsignedShort();
        this.marker = unsignedShort;
        if (unsignedShort == 65498) {
            if (this.mp4StartPosition != -1) {
                this.state = 4;
                return;
            } else {
                endReading();
                return;
            }
        }
        if ((unsignedShort < 65488 || unsignedShort > 65497) && unsignedShort != 65281) {
            this.state = 1;
        }
    }

    private int peekSegmentLength(ExtractorInput extractorInput) {
        this.scratch.reset(2);
        extractorInput.peekFully(this.scratch.getData(), 0, 2);
        return this.scratch.readUnsignedShort() - 2;
    }

    private void readSegmentLength(ExtractorInput extractorInput) {
        this.segmentLength = peekSegmentLength(extractorInput);
        extractorInput.skipFully(2);
        this.state = 2;
    }

    private void readSegment(ExtractorInput extractorInput) {
        String nullTerminatedString;
        if (this.marker == 65505) {
            ParsableByteArray parsableByteArray = new ParsableByteArray(this.segmentLength);
            extractorInput.readFully(parsableByteArray.getData(), 0, this.segmentLength);
            if (this.motionPhotoMetadata == null && "http://ns.adobe.com/xap/1.0/".equals(parsableByteArray.readNullTerminatedString()) && (nullTerminatedString = parsableByteArray.readNullTerminatedString()) != null) {
                MotionPhotoMetadata motionPhotoMetadata = getMotionPhotoMetadata(nullTerminatedString, extractorInput.getLength());
                this.motionPhotoMetadata = motionPhotoMetadata;
                if (motionPhotoMetadata != null) {
                    this.mp4StartPosition = motionPhotoMetadata.videoStartPosition;
                }
            }
        } else {
            extractorInput.skipFully(this.segmentLength);
        }
        this.state = 0;
    }

    private void sniffMotionPhotoVideo(ExtractorInput extractorInput) {
        if (!extractorInput.peekFully(this.scratch.getData(), 0, 1, true)) {
            endReading();
            return;
        }
        extractorInput.resetPeekPosition();
        if (this.mp4Extractor == null) {
            this.mp4Extractor = new Mp4Extractor(SubtitleParser.Factory.UNSUPPORTED, 8);
        }
        StartOffsetExtractorInput startOffsetExtractorInput = new StartOffsetExtractorInput(extractorInput, this.mp4StartPosition);
        this.mp4ExtractorStartOffsetExtractorInput = startOffsetExtractorInput;
        if (this.mp4Extractor.sniff(startOffsetExtractorInput)) {
            this.mp4Extractor.init(new StartOffsetExtractorOutput(this.mp4StartPosition, (ExtractorOutput) Preconditions.checkNotNull(this.extractorOutput)));
            startReadingMotionPhoto();
        } else {
            endReading();
        }
    }

    private void startReadingMotionPhoto() {
        outputImageTrack((MotionPhotoMetadata) Preconditions.checkNotNull(this.motionPhotoMetadata));
        this.state = 5;
    }

    private void endReading() {
        ((ExtractorOutput) Preconditions.checkNotNull(this.extractorOutput)).endTracks();
        this.extractorOutput.seekMap(new SeekMap.Unseekable(-9223372036854775807L));
        this.state = 6;
    }

    private void outputImageTrack(MotionPhotoMetadata motionPhotoMetadata) {
        ((ExtractorOutput) Preconditions.checkNotNull(this.extractorOutput)).track(1024, 4).format(new Format.Builder().setContainerMimeType("image/jpeg").setMetadata(new Metadata(motionPhotoMetadata)).build());
    }

    private static MotionPhotoMetadata getMotionPhotoMetadata(String str, long j) {
        MotionPhotoDescription motionPhotoDescription;
        if (j == -1 || (motionPhotoDescription = XmpMotionPhotoDescriptionParser.parse(str)) == null) {
            return null;
        }
        return motionPhotoDescription.getMotionPhotoMetadata(j);
    }
}
