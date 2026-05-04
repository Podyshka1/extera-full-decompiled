package org.telegram.messenger.audioinfo.mp3;

import com.android.p003dx.p006io.Opcodes;
import de.robv.android.xposed.callbacks.XCallback;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.mvel2.MVEL;
import org.telegram.messenger.audioinfo.AudioInfo;
import org.telegram.messenger.audioinfo.mp3.MP3Frame;

/* JADX INFO: loaded from: classes5.dex */
public class MP3Info extends AudioInfo {
    static final Logger LOGGER = Logger.getLogger(MP3Info.class.getName());

    interface StopReadCondition {
        boolean stopRead(MP3Input mP3Input);
    }

    public MP3Info(InputStream inputStream, long j) {
        this(inputStream, j, Level.FINEST);
    }

    public MP3Info(InputStream inputStream, long j, Level level) throws IOException {
        this.brand = "MP3";
        this.version = MVEL.VERSION_SUB;
        MP3Input mP3Input = new MP3Input(inputStream);
        if (ID3v2Info.isID3v2StartPosition(mP3Input)) {
            ID3v2Info iD3v2Info = new ID3v2Info(mP3Input, level);
            this.album = iD3v2Info.getAlbum();
            this.albumArtist = iD3v2Info.getAlbumArtist();
            this.artist = iD3v2Info.getArtist();
            this.comment = iD3v2Info.getComment();
            this.cover = iD3v2Info.getCover();
            this.smallCover = iD3v2Info.getSmallCover();
            this.compilation = iD3v2Info.isCompilation();
            this.composer = iD3v2Info.getComposer();
            this.copyright = iD3v2Info.getCopyright();
            this.disc = iD3v2Info.getDisc();
            this.discs = iD3v2Info.getDiscs();
            this.duration = iD3v2Info.getDuration();
            this.genre = iD3v2Info.getGenre();
            this.grouping = iD3v2Info.getGrouping();
            this.lyrics = iD3v2Info.getLyrics();
            this.title = iD3v2Info.getTitle();
            this.track = iD3v2Info.getTrack();
            this.tracks = iD3v2Info.getTracks();
            this.year = iD3v2Info.getYear();
        }
        long j2 = this.duration;
        if (j2 <= 0 || j2 >= 3600000) {
            try {
                this.duration = calculateDuration(mP3Input, j, new StopReadCondition(j) { // from class: org.telegram.messenger.audioinfo.mp3.MP3Info.1
                    final long stopPosition;
                    final /* synthetic */ long val$fileLength;

                    {
                        this.val$fileLength = j;
                        this.stopPosition = j - 128;
                    }

                    @Override // org.telegram.messenger.audioinfo.mp3.MP3Info.StopReadCondition
                    public boolean stopRead(MP3Input mP3Input2) {
                        return mP3Input2.getPosition() == this.stopPosition && ID3v1Info.isID3v1StartPosition(mP3Input2);
                    }
                });
            } catch (MP3Exception e) {
                Logger logger = LOGGER;
                if (logger.isLoggable(level)) {
                    logger.log(level, "Could not determine MP3 duration", (Throwable) e);
                }
            }
        }
        if (this.title == null || this.album == null || this.artist == null) {
            long j3 = j - 128;
            if (mP3Input.getPosition() <= j3) {
                mP3Input.skipFully(j3 - mP3Input.getPosition());
                if (ID3v1Info.isID3v1StartPosition(inputStream)) {
                    ID3v1Info iD3v1Info = new ID3v1Info(inputStream);
                    if (this.album == null) {
                        this.album = iD3v1Info.getAlbum();
                    }
                    if (this.artist == null) {
                        this.artist = iD3v1Info.getArtist();
                    }
                    if (this.comment == null) {
                        this.comment = iD3v1Info.getComment();
                    }
                    if (this.genre == null) {
                        this.genre = iD3v1Info.getGenre();
                    }
                    if (this.title == null) {
                        this.title = iD3v1Info.getTitle();
                    }
                    if (this.track == 0) {
                        this.track = iD3v1Info.getTrack();
                    }
                    if (this.year == 0) {
                        this.year = iD3v1Info.getYear();
                    }
                }
            }
        }
    }

    MP3Frame readFirstFrame(MP3Input mP3Input, StopReadCondition stopReadCondition) throws IOException {
        int i = stopReadCondition.stopRead(mP3Input) ? -1 : mP3Input.read();
        int i2 = 0;
        while (i != -1) {
            if (i2 == 255 && (i & Opcodes.SHL_INT_LIT8) == 224) {
                mP3Input.mark(2);
                int i3 = stopReadCondition.stopRead(mP3Input) ? -1 : mP3Input.read();
                if (i3 == -1) {
                    return null;
                }
                int i4 = stopReadCondition.stopRead(mP3Input) ? -1 : mP3Input.read();
                if (i4 == -1) {
                    return null;
                }
                MP3Frame.Header header = new MP3Frame.Header(i, i3, i4);
                mP3Input.reset();
                mP3Input.mark(header.getFrameSize() + 2);
                int frameSize = header.getFrameSize();
                byte[] bArr = new byte[frameSize];
                bArr[0] = -1;
                bArr[1] = (byte) i;
                int i5 = frameSize - 2;
                try {
                    mP3Input.readFully(bArr, 2, i5);
                    MP3Frame mP3Frame = new MP3Frame(header, bArr);
                    if (!mP3Frame.isChecksumError()) {
                        int i6 = stopReadCondition.stopRead(mP3Input) ? -1 : mP3Input.read();
                        int i7 = stopReadCondition.stopRead(mP3Input) ? -1 : mP3Input.read();
                        if (i6 != -1 && i7 != -1) {
                            if (i6 == 255 && (i7 & Opcodes.CONST_METHOD_HANDLE) == (i & Opcodes.CONST_METHOD_HANDLE)) {
                                int i8 = stopReadCondition.stopRead(mP3Input) ? -1 : mP3Input.read();
                                int i9 = stopReadCondition.stopRead(mP3Input) ? -1 : mP3Input.read();
                                if (i8 != -1 && i9 != -1) {
                                    if (new MP3Frame.Header(i7, i8, i9).isCompatible(header)) {
                                        mP3Input.reset();
                                        mP3Input.skipFully(i5);
                                    }
                                }
                            }
                        }
                        return mP3Frame;
                    }
                    mP3Input.reset();
                } catch (EOFException unused) {
                    return null;
                }
            }
            i2 = i;
            i = stopReadCondition.stopRead(mP3Input) ? -1 : mP3Input.read();
        }
        return null;
    }

    MP3Frame readNextFrame(MP3Input mP3Input, StopReadCondition stopReadCondition, MP3Frame mP3Frame) throws MP3Exception, IOException {
        MP3Frame.Header header;
        MP3Frame.Header header2 = mP3Frame.getHeader();
        mP3Input.mark(4);
        int i = stopReadCondition.stopRead(mP3Input) ? -1 : mP3Input.read();
        int i2 = stopReadCondition.stopRead(mP3Input) ? -1 : mP3Input.read();
        if (i != -1 && i2 != -1) {
            if (i == 255 && (i2 & Opcodes.SHL_INT_LIT8) == 224) {
                int i3 = stopReadCondition.stopRead(mP3Input) ? -1 : mP3Input.read();
                int i4 = stopReadCondition.stopRead(mP3Input) ? -1 : mP3Input.read();
                if (i3 == -1 || i4 == -1) {
                    return null;
                }
                try {
                    header = new MP3Frame.Header(i2, i3, i4);
                } catch (MP3Exception e) {
                    int i5 = mP3Input.exceptionsCount + 1;
                    mP3Input.exceptionsCount = i5;
                    if (i5 > 5) {
                        throw e;
                    }
                    header = null;
                }
                if (header != null && header.isCompatible(header2)) {
                    int frameSize = header.getFrameSize();
                    byte[] bArr = new byte[frameSize];
                    bArr[0] = (byte) i;
                    bArr[1] = (byte) i2;
                    bArr[2] = (byte) i3;
                    bArr[3] = (byte) i4;
                    try {
                        mP3Input.readFully(bArr, 4, frameSize - 4);
                        return new MP3Frame(header, bArr);
                    } catch (EOFException unused) {
                        return null;
                    }
                }
            }
            mP3Input.reset();
        }
        return null;
    }

    long calculateDuration(MP3Input mP3Input, long j, StopReadCondition stopReadCondition) throws MP3Exception, IOException {
        MP3Frame firstFrame = readFirstFrame(mP3Input, stopReadCondition);
        if (firstFrame != null) {
            if (firstFrame.getNumberOfFrames() > 0) {
                return firstFrame.getHeader().getTotalDuration(r4 * firstFrame.getSize());
            }
            long position = mP3Input.getPosition() - ((long) firstFrame.getSize());
            long size = firstFrame.getSize();
            int bitrate = firstFrame.getHeader().getBitrate();
            long j2 = bitrate;
            int duration = XCallback.PRIORITY_HIGHEST / firstFrame.getHeader().getDuration();
            boolean z = false;
            int i = 1;
            while (true) {
                if (i == duration && !z && j > 0) {
                    return firstFrame.getHeader().getTotalDuration(j - position);
                }
                firstFrame = readNextFrame(mP3Input, stopReadCondition, firstFrame);
                if (firstFrame != null) {
                    int bitrate2 = firstFrame.getHeader().getBitrate();
                    if (bitrate2 != bitrate) {
                        z = true;
                    }
                    j2 += (long) bitrate2;
                    size += (long) firstFrame.getSize();
                    i++;
                    duration = duration;
                } else {
                    return (((size * 1000) * ((long) i)) * 8) / j2;
                }
            }
        } else {
            throw new MP3Exception("No audio frame");
        }
    }
}
