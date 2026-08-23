package com.google.android.exoplayer2.extractor.p018ts;

import android.util.SparseArray;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.p018ts.TsPayloadReader;
import com.google.android.exoplayer2.util.CodecSpecificDataUtil;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultTsPayloadReaderFactory implements TsPayloadReader.Factory {
    private final List closedCaptionFormats;
    private final int flags;

    public DefaultTsPayloadReaderFactory(int i) {
        this(i, ImmutableList.m482of());
    }

    public DefaultTsPayloadReaderFactory(int i, List list) {
        this.flags = i;
        this.closedCaptionFormats = list;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.TsPayloadReader.Factory
    public SparseArray createInitialPayloadReaders() {
        return new SparseArray();
    }

    @Override // com.google.android.exoplayer2.extractor.ts.TsPayloadReader.Factory
    public TsPayloadReader createPayloadReader(int i, TsPayloadReader.EsInfo esInfo) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return new PesReader(new MpegAudioReader(esInfo.language));
            }
            if (i == 21) {
                return new PesReader(new Id3Reader());
            }
            if (i == 27) {
                if (isSet(4)) {
                    return null;
                }
                return new PesReader(new H264Reader(buildSeiReader(esInfo), isSet(1), isSet(8)));
            }
            if (i == 36) {
                return new PesReader(new H265Reader(buildSeiReader(esInfo)));
            }
            if (i != 89) {
                if (i != 138) {
                    if (i == 172) {
                        return new PesReader(new Ac4Reader(esInfo.language));
                    }
                    if (i == 257) {
                        return new SectionReader(new PassthroughSectionPayloadReader("application/vnd.dvb.ait"));
                    }
                    if (i != 134) {
                        if (i != 135) {
                            switch (i) {
                                case 15:
                                    if (!isSet(2)) {
                                        break;
                                    }
                                    break;
                                case 16:
                                    break;
                                case 17:
                                    if (!isSet(2)) {
                                        break;
                                    }
                                    break;
                                default:
                                    switch (i) {
                                        case 130:
                                            if (!isSet(64)) {
                                            }
                                            break;
                                    }
                                    break;
                            }
                            return null;
                        }
                        return new PesReader(new Ac3Reader(esInfo.language));
                    }
                    if (isSet(16)) {
                        return null;
                    }
                    return new SectionReader(new PassthroughSectionPayloadReader("application/x-scte35"));
                }
                return new PesReader(new DtsReader(esInfo.language));
            }
            return new PesReader(new DvbSubtitleReader(esInfo.dvbSubtitleInfos));
        }
        return new PesReader(new H262Reader(buildUserDataReader(esInfo)));
    }

    private SeiReader buildSeiReader(TsPayloadReader.EsInfo esInfo) {
        return new SeiReader(getClosedCaptionFormats(esInfo));
    }

    private UserDataReader buildUserDataReader(TsPayloadReader.EsInfo esInfo) {
        return new UserDataReader(getClosedCaptionFormats(esInfo));
    }

    private List getClosedCaptionFormats(TsPayloadReader.EsInfo esInfo) {
        String str;
        int i;
        List listBuildCea708InitializationData;
        if (isSet(32)) {
            return this.closedCaptionFormats;
        }
        ParsableByteArray parsableByteArray = new ParsableByteArray(esInfo.descriptorBytes);
        List arrayList = this.closedCaptionFormats;
        while (parsableByteArray.bytesLeft() > 0) {
            int unsignedByte = parsableByteArray.readUnsignedByte();
            int position = parsableByteArray.getPosition() + parsableByteArray.readUnsignedByte();
            if (unsignedByte == 134) {
                arrayList = new ArrayList();
                int unsignedByte2 = parsableByteArray.readUnsignedByte() & 31;
                for (int i2 = 0; i2 < unsignedByte2; i2++) {
                    String string = parsableByteArray.readString(3);
                    int unsignedByte3 = parsableByteArray.readUnsignedByte();
                    boolean z = (unsignedByte3 & 128) != 0;
                    if (z) {
                        i = unsignedByte3 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i = 1;
                    }
                    byte unsignedByte4 = (byte) parsableByteArray.readUnsignedByte();
                    parsableByteArray.skipBytes(1);
                    if (z) {
                        listBuildCea708InitializationData = CodecSpecificDataUtil.buildCea708InitializationData((unsignedByte4 & 64) != 0);
                    } else {
                        listBuildCea708InitializationData = null;
                    }
                    arrayList.add(new Format.Builder().setSampleMimeType(str).setLanguage(string).setAccessibilityChannel(i).setInitializationData(listBuildCea708InitializationData).build());
                }
            }
            parsableByteArray.setPosition(position);
        }
        return arrayList;
    }

    private boolean isSet(int i) {
        return (i & this.flags) != 0;
    }
}
