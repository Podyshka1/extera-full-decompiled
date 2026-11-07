package org.telegram.messenger.audioinfo.mp3;

import java.io.IOException;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes5.dex */
public class ID3v2FrameHeader {
    private int bodySize;
    private boolean compression;
    private int dataLengthIndicator;
    private boolean encryption;
    private String frameId;
    private int headerSize;
    private boolean unsynchronization;

    public ID3v2FrameHeader(ID3v2TagBody iD3v2TagBody) throws IOException {
        byte b2;
        byte b3;
        long position = iD3v2TagBody.getPosition();
        ID3v2DataInput data = iD3v2TagBody.getData();
        byte b4 = 2;
        if (iD3v2TagBody.getTagHeader().getVersion() == 2) {
            this.frameId = new String(data.readFully(3), "ISO-8859-1");
        } else {
            this.frameId = new String(data.readFully(4), "ISO-8859-1");
        }
        byte b5 = 8;
        if (iD3v2TagBody.getTagHeader().getVersion() == 2) {
            this.bodySize = ((data.readByte() & UByte.MAX_VALUE) << 16) | ((data.readByte() & UByte.MAX_VALUE) << 8) | (data.readByte() & UByte.MAX_VALUE);
        } else if (iD3v2TagBody.getTagHeader().getVersion() == 3) {
            this.bodySize = data.readInt();
        } else {
            this.bodySize = data.readSyncsafeInt();
        }
        if (iD3v2TagBody.getTagHeader().getVersion() > 2) {
            data.readByte();
            byte b6 = data.readByte();
            byte b7 = 64;
            if (iD3v2TagBody.getTagHeader().getVersion() == 3) {
                b5 = ByteCompanionObject.MIN_VALUE;
                b2 = 32;
                b4 = 0;
                b3 = 0;
            } else {
                b2 = 64;
                b3 = 1;
                b7 = 4;
            }
            this.compression = (b5 & b6) != 0;
            this.unsynchronization = (b6 & b4) != 0;
            this.encryption = (b6 & b7) != 0;
            if (iD3v2TagBody.getTagHeader().getVersion() == 3) {
                if (this.compression) {
                    this.dataLengthIndicator = data.readInt();
                    this.bodySize -= 4;
                }
                if (this.encryption) {
                    data.readByte();
                    this.bodySize--;
                }
                if ((b6 & b2) != 0) {
                    data.readByte();
                    this.bodySize--;
                }
            } else {
                if ((b6 & b2) != 0) {
                    data.readByte();
                    this.bodySize--;
                }
                if (this.encryption) {
                    data.readByte();
                    this.bodySize--;
                }
                if ((b6 & b3) != 0) {
                    this.dataLengthIndicator = data.readSyncsafeInt();
                    this.bodySize -= 4;
                }
            }
        }
        this.headerSize = (int) (iD3v2TagBody.getPosition() - position);
    }

    public String getFrameId() {
        return this.frameId;
    }

    public int getHeaderSize() {
        return this.headerSize;
    }

    public int getBodySize() {
        return this.bodySize;
    }

    public boolean isCompression() {
        return this.compression;
    }

    public boolean isEncryption() {
        return this.encryption;
    }

    public boolean isUnsynchronization() {
        return this.unsynchronization;
    }

    public int getDataLengthIndicator() {
        return this.dataLengthIndicator;
    }

    public boolean isValid() {
        for (int i = 0; i < this.frameId.length(); i++) {
            if ((this.frameId.charAt(i) < 'A' || this.frameId.charAt(i) > 'Z') && (this.frameId.charAt(i) < '0' || this.frameId.charAt(i) > '9')) {
                return false;
            }
        }
        return this.bodySize > 0;
    }

    public boolean isPadding() {
        for (int i = 0; i < this.frameId.length(); i++) {
            if (this.frameId.charAt(0) != 0) {
                return false;
            }
        }
        return this.bodySize == 0;
    }

    public String toString() {
        return String.format("%s[id=%s, bodysize=%d]", getClass().getSimpleName(), this.frameId, Integer.valueOf(this.bodySize));
    }
}
