package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public interface MessageLite extends MessageLiteOrBuilder {

    /* JADX INFO: loaded from: classes4.dex */
    public interface Builder extends MessageLiteOrBuilder, Cloneable {
        MessageLite buildPartial();
    }

    int getSerializedSize();

    Builder newBuilderForType();

    void writeTo(CodedOutputStream codedOutputStream);
}
