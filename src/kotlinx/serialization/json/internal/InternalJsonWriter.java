package kotlinx.serialization.json.internal;

/* JADX INFO: loaded from: classes.dex */
public interface InternalJsonWriter {
    void write(String str);

    void writeChar(char c);

    void writeLong(long j);

    void writeQuoted(String str);
}
