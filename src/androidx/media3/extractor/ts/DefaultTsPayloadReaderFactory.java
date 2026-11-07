package androidx.media3.extractor.ts;

import android.util.SparseArray;
import androidx.media3.common.Format;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ts.TsPayloadReader;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultTsPayloadReaderFactory implements TsPayloadReader.Factory {
    private final List<Format> closedCaptionFormats;
    private final int flags;

    public DefaultTsPayloadReaderFactory(int i) {
        this(i, ImmutableList.of());
    }

    public DefaultTsPayloadReaderFactory(int i, List<Format> list) {
        this.flags = i;
        this.closedCaptionFormats = list;
    }

    @Override // androidx.media3.extractor.ts.TsPayloadReader.Factory
    public SparseArray<TsPayloadReader> createInitialPayloadReaders() {
        return new SparseArray<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0059  */
    @Override // androidx.media3.extractor.ts.TsPayloadReader.Factory
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TsPayloadReader createPayloadReader(int i, TsPayloadReader.EsInfo esInfo) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return new PesReader(new MpegAudioReader(esInfo.language, esInfo.getRoleFlags(), "video/mp2t"));
            }
            if (i == 21) {
                return new PesReader(new Id3Reader("video/mp2t"));
            }
            if (i == 27) {
                if (isSet(4)) {
                    return null;
                }
                return new PesReader(new H264Reader(buildSeiReader(esInfo), isSet(1), isSet(8), "video/mp2t"));
            }
            if (i == 36) {
                return new PesReader(new H265Reader(buildSeiReader(esInfo), "video/mp2t"));
            }
            if (i == 45) {
                return new PesReader(new MpeghReader("video/mp2t"));
            }
            if (i == 89) {
                return new PesReader(new DvbSubtitleReader(esInfo.dvbSubtitleInfos, "video/mp2t"));
            }
            if (i == 172) {
                return new PesReader(new Ac4Reader(esInfo.language, esInfo.getRoleFlags(), "video/mp2t"));
            }
            if (i != 257) {
                if (i != 138) {
                    if (i != 139) {
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
                                    case 128:
                                        break;
                                    case 129:
                                        break;
                                    case 130:
                                        if (!isSet(64)) {
                                        }
                                        break;
                                    default:
                                        switch (i) {
                                            case 134:
                                                if (!isSet(16)) {
                                                    break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        return null;
                    }
                    return new PesReader(new DtsReader(esInfo.language, esInfo.getRoleFlags(), 5408, "video/mp2t"));
                }
                return new PesReader(new DtsReader(esInfo.language, esInfo.getRoleFlags(), 4096, "video/mp2t"));
            }
            return new SectionReader(new PassthroughSectionPayloadReader("application/vnd.dvb.ait", "video/mp2t"));
        }
        return new PesReader(new H262Reader(buildUserDataReader(esInfo), "video/mp2t"));
    }

    private SeiReader buildSeiReader(TsPayloadReader.EsInfo esInfo) {
        return new SeiReader(getClosedCaptionFormats(esInfo), "video/mp2t");
    }

    private UserDataReader buildUserDataReader(TsPayloadReader.EsInfo esInfo) {
        return new UserDataReader(getClosedCaptionFormats(esInfo), "video/mp2t");
    }

    private List<Format> getClosedCaptionFormats(TsPayloadReader.EsInfo esInfo) {
        String str;
        int i;
        List<byte[]> listBuildCea708InitializationData;
        if (isSet(32)) {
            return this.closedCaptionFormats;
        }
        ParsableByteArray parsableByteArray = new ParsableByteArray(esInfo.descriptorBytes);
        List<Format> arrayList = this.closedCaptionFormats;
        while (parsableByteArray.bytesLeft() > 0) {
            int unsignedByte = parsableByteArray.readUnsignedByte();
            int position = parsableByteArray.getPosition() + parsableByteArray.readUnsignedByte();
            if (unsignedByte == 134) {
                arrayList = new ArrayList<>();
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
        return (this.flags & i) != 0;
    }
}
