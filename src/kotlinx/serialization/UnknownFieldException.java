package kotlinx.serialization;

/* JADX INFO: loaded from: classes5.dex */
public final class UnknownFieldException extends SerializationException {
    public UnknownFieldException(String str) {
        super(str);
    }

    public UnknownFieldException(int i) {
        this("An unknown field for index " + i);
    }
}
