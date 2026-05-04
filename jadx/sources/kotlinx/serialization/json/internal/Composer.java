package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class Composer {
    public final InternalJsonWriter writer;
    private boolean writingFirst;

    public void space() {
    }

    public void unIndent() {
    }

    public Composer(InternalJsonWriter writer) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        this.writer = writer;
        this.writingFirst = true;
    }

    public final boolean getWritingFirst() {
        return this.writingFirst;
    }

    protected final void setWritingFirst(boolean z) {
        this.writingFirst = z;
    }

    public void indent() {
        this.writingFirst = true;
    }

    public void nextItem() {
        this.writingFirst = false;
    }

    public void nextItemIfNotFirst() {
        this.writingFirst = false;
    }

    public final void print(char c) {
        this.writer.writeChar(c);
    }

    public final void print(String v) {
        Intrinsics.checkNotNullParameter(v, "v");
        this.writer.write(v);
    }

    public void print(double d) {
        this.writer.write(String.valueOf(d));
    }

    public void print(int i) {
        this.writer.writeLong(i);
    }

    public void print(long j) {
        this.writer.writeLong(j);
    }

    public void print(boolean z) {
        this.writer.write(String.valueOf(z));
    }

    public void printQuoted(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.writer.writeQuoted(value);
    }
}
