package com.googlecode.mp4parser;

import com.coremedia.iso.BoxParser;
import com.coremedia.iso.IsoFile;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.boxes.Box;
import com.coremedia.iso.boxes.Container;
import com.googlecode.mp4parser.util.CastUtils;
import com.googlecode.mp4parser.util.Logger;
import com.googlecode.mp4parser.util.Path;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBox implements Box {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static Logger LOG = Logger.getLogger(AbstractBox.class);
    private ByteBuffer content;
    long contentStartPosition;
    DataSource dataSource;
    long offset;
    private Container parent;
    protected String type;
    private byte[] userType;
    long memMapSize = -1;
    private ByteBuffer deadBytes = null;
    boolean isRead = true;
    boolean isParsed = true;

    protected abstract void _parseDetails(ByteBuffer byteBuffer);

    protected abstract void getContent(ByteBuffer byteBuffer);

    protected abstract long getContentSize();

    private synchronized void readContent() {
        try {
            if (!this.isRead) {
                try {
                    LOG.logDebug("mem mapping " + getType());
                    throw null;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public long getOffset() {
        return this.offset;
    }

    protected AbstractBox(String str) {
        this.type = str;
    }

    public void parse(DataSource dataSource, ByteBuffer byteBuffer, long j, BoxParser boxParser) {
        long jPosition = dataSource.position();
        this.contentStartPosition = jPosition;
        this.offset = jPosition - ((long) byteBuffer.remaining());
        this.memMapSize = j;
        dataSource.position(dataSource.position() + j);
        this.isRead = false;
        this.isParsed = false;
    }

    @Override // com.coremedia.iso.boxes.Box
    public void getBox(WritableByteChannel writableByteChannel) throws IOException {
        if (this.isRead) {
            if (this.isParsed) {
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(CastUtils.l2i(getSize()));
                getHeader(byteBufferAllocate);
                getContent(byteBufferAllocate);
                ByteBuffer byteBuffer = this.deadBytes;
                if (byteBuffer != null) {
                    byteBuffer.rewind();
                    while (this.deadBytes.remaining() > 0) {
                        byteBufferAllocate.put(this.deadBytes);
                    }
                }
                writableByteChannel.write((ByteBuffer) byteBufferAllocate.rewind());
                return;
            }
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate((isSmallBox() ? 8 : 16) + ("uuid".equals(getType()) ? 16 : 0));
            getHeader(byteBufferAllocate2);
            writableByteChannel.write((ByteBuffer) byteBufferAllocate2.rewind());
            writableByteChannel.write((ByteBuffer) this.content.position(0));
            return;
        }
        ByteBuffer byteBufferAllocate3 = ByteBuffer.allocate((isSmallBox() ? 8 : 16) + ("uuid".equals(getType()) ? 16 : 0));
        getHeader(byteBufferAllocate3);
        writableByteChannel.write((ByteBuffer) byteBufferAllocate3.rewind());
        throw null;
    }

    public final synchronized void parseDetails() {
        try {
            readContent();
            LOG.logDebug("parsing details of " + getType());
            ByteBuffer byteBuffer = this.content;
            if (byteBuffer != null) {
                this.isParsed = true;
                byteBuffer.rewind();
                _parseDetails(byteBuffer);
                if (byteBuffer.remaining() > 0) {
                    this.deadBytes = byteBuffer.slice();
                }
                this.content = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    protected void setDeadBytes(ByteBuffer byteBuffer) {
        this.deadBytes = byteBuffer;
    }

    @Override // com.coremedia.iso.boxes.Box
    public long getSize() {
        long jLimit;
        if (!this.isRead) {
            jLimit = this.memMapSize;
        } else if (this.isParsed) {
            jLimit = getContentSize();
        } else {
            ByteBuffer byteBuffer = this.content;
            jLimit = byteBuffer != null ? byteBuffer.limit() : 0;
        }
        long j = jLimit + ((long) ((jLimit >= 4294967288L ? 8 : 0) + 8 + ("uuid".equals(getType()) ? 16 : 0)));
        ByteBuffer byteBuffer2 = this.deadBytes;
        return j + ((long) (byteBuffer2 != null ? byteBuffer2.limit() : 0));
    }

    @Override // com.coremedia.iso.boxes.Box
    public String getType() {
        return this.type;
    }

    public byte[] getUserType() {
        return this.userType;
    }

    @Override // com.coremedia.iso.boxes.Box
    public Container getParent() {
        return this.parent;
    }

    @Override // com.coremedia.iso.boxes.Box
    public void setParent(Container container) {
        this.parent = container;
    }

    public boolean isParsed() {
        return this.isParsed;
    }

    private boolean isSmallBox() {
        int i = "uuid".equals(getType()) ? 24 : 8;
        if (!this.isRead) {
            return this.memMapSize + ((long) i) < 4294967296L;
        }
        if (!this.isParsed) {
            return ((long) (this.content.limit() + i)) < 4294967296L;
        }
        long contentSize = getContentSize();
        ByteBuffer byteBuffer = this.deadBytes;
        return (contentSize + ((long) (byteBuffer != null ? byteBuffer.limit() : 0))) + ((long) i) < 4294967296L;
    }

    private void getHeader(ByteBuffer byteBuffer) {
        if (isSmallBox()) {
            IsoTypeWriter.writeUInt32(byteBuffer, getSize());
            byteBuffer.put(IsoFile.fourCCtoBytes(getType()));
        } else {
            IsoTypeWriter.writeUInt32(byteBuffer, 1L);
            byteBuffer.put(IsoFile.fourCCtoBytes(getType()));
            IsoTypeWriter.writeUInt64(byteBuffer, getSize());
        }
        if ("uuid".equals(getType())) {
            byteBuffer.put(getUserType());
        }
    }

    public String getPath() {
        return Path.createPath(this);
    }
}
