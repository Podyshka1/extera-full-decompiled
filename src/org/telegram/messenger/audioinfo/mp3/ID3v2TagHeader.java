package org.telegram.messenger.audioinfo.mp3;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.jvm.internal.ByteCompanionObject;
import org.telegram.messenger.audioinfo.util.PositionInputStream;

/* JADX INFO: loaded from: classes5.dex */
public class ID3v2TagHeader {
    private boolean compression;
    private int footerSize;
    private int headerSize;
    private int paddingSize;
    private int revision;
    private int totalTagSize;
    private boolean unsynchronization;
    private int version;

    public ID3v2TagHeader(InputStream inputStream) {
        this(new PositionInputStream(inputStream));
    }

    public ID3v2TagHeader(PositionInputStream positionInputStream) throws IOException, ID3v2Exception {
        this.version = 0;
        this.revision = 0;
        this.headerSize = 0;
        this.totalTagSize = 0;
        this.paddingSize = 0;
        this.footerSize = 0;
        long position = positionInputStream.getPosition();
        ID3v2DataInput iD3v2DataInput = new ID3v2DataInput(positionInputStream);
        String str = new String(iD3v2DataInput.readFully(3), "ISO-8859-1");
        if (!"ID3".equals(str)) {
            throw new ID3v2Exception("Invalid ID3 identifier: ".concat(str));
        }
        byte b2 = iD3v2DataInput.readByte();
        this.version = b2;
        if (b2 != 2 && b2 != 3 && b2 != 4) {
            throw new ID3v2Exception("Unsupported ID3v2 version: " + this.version);
        }
        this.revision = iD3v2DataInput.readByte();
        byte b3 = iD3v2DataInput.readByte();
        this.totalTagSize = iD3v2DataInput.readSyncsafeInt() + 10;
        int i = this.version;
        if (i == 2) {
            this.unsynchronization = (b3 & ByteCompanionObject.MIN_VALUE) != 0;
            this.compression = (b3 & 64) != 0;
        } else {
            this.unsynchronization = (b3 & ByteCompanionObject.MIN_VALUE) != 0;
            if ((b3 & 64) != 0) {
                if (i == 3) {
                    int i2 = iD3v2DataInput.readInt();
                    iD3v2DataInput.readByte();
                    iD3v2DataInput.readByte();
                    this.paddingSize = iD3v2DataInput.readInt();
                    iD3v2DataInput.skipFully(i2 - 6);
                } else {
                    iD3v2DataInput.skipFully(iD3v2DataInput.readSyncsafeInt() - 4);
                }
            }
            if (this.version >= 4 && (b3 & 16) != 0) {
                this.footerSize = 10;
                this.totalTagSize += 10;
            }
        }
        this.headerSize = (int) (positionInputStream.getPosition() - position);
    }

    public ID3v2TagBody tagBody(InputStream inputStream) throws IOException, ID3v2Exception {
        if (this.compression) {
            throw new ID3v2Exception("Tag compression is not supported");
        }
        if (this.version < 4 && this.unsynchronization) {
            byte[] fully = new ID3v2DataInput(inputStream).readFully(this.totalTagSize - this.headerSize);
            int length = fully.length;
            boolean z = false;
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                byte b2 = fully[i2];
                if (!z || b2 != 0) {
                    fully[i] = b2;
                    i++;
                }
                z = b2 == -1;
            }
            return new ID3v2TagBody(new ByteArrayInputStream(fully, 0, i), this.headerSize, i, this);
        }
        int i3 = this.headerSize;
        return new ID3v2TagBody(inputStream, i3, (this.totalTagSize - i3) - this.footerSize, this);
    }

    public int getVersion() {
        return this.version;
    }

    public int getRevision() {
        return this.revision;
    }

    public int getFooterSize() {
        return this.footerSize;
    }

    public String toString() {
        return String.format("%s[version=%s, totalTagSize=%d]", getClass().getSimpleName(), Integer.valueOf(this.version), Integer.valueOf(this.totalTagSize));
    }
}
