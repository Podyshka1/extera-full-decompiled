package com.googlecode.mp4parser;

import com.coremedia.iso.boxes.Box;
import com.coremedia.iso.boxes.Container;
import com.googlecode.mp4parser.util.Logger;
import java.io.Closeable;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BasicContainer implements Container, Iterator<Box>, Closeable {
    private static final Box EOF = new AbstractBox("eof ") { // from class: com.googlecode.mp4parser.BasicContainer.1
        @Override // com.googlecode.mp4parser.AbstractBox
        public void _parseDetails(ByteBuffer byteBuffer) {
        }

        @Override // com.googlecode.mp4parser.AbstractBox
        public void getContent(ByteBuffer byteBuffer) {
        }

        @Override // com.googlecode.mp4parser.AbstractBox
        public long getContentSize() {
            return 0L;
        }
    };
    private static Logger LOG = Logger.getLogger(BasicContainer.class);
    Box lookahead = null;
    long parsePosition = 0;
    long startPosition = 0;
    long endPosition = 0;
    private List<Box> boxes = new ArrayList();

    @Override // com.coremedia.iso.boxes.Container
    public List<Box> getBoxes() {
        return this.boxes;
    }

    public long getContainerSize() {
        long size = 0;
        for (int i = 0; i < getBoxes().size(); i++) {
            size += this.boxes.get(i).getSize();
        }
        return size;
    }

    public void addBox(Box box) {
        if (box != null) {
            this.boxes = new ArrayList(getBoxes());
            box.setParent(this);
            this.boxes.add(box);
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        Box box = this.lookahead;
        if (box == EOF) {
            return false;
        }
        if (box != null) {
            return true;
        }
        try {
            this.lookahead = next();
            return true;
        } catch (NoSuchElementException unused) {
            this.lookahead = EOF;
            return false;
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public Box next() {
        Box box = this.lookahead;
        if (box != null && box != EOF) {
            this.lookahead = null;
            return box;
        }
        this.lookahead = EOF;
        Utils$$ExternalSyntheticBUOutline0.m1068m();
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        for (int i = 0; i < this.boxes.size(); i++) {
            if (i > 0) {
                sb.append(";");
            }
            sb.append(this.boxes.get(i).toString());
        }
        sb.append("]");
        return sb.toString();
    }

    public final void writeContainer(WritableByteChannel writableByteChannel) {
        Iterator<Box> it = getBoxes().iterator();
        while (it.hasNext()) {
            it.next().getBox(writableByteChannel);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw null;
    }
}
