package androidx.datastore.preferences.protobuf;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class MessageSetSchema implements Schema {
    private final MessageLite defaultInstance;
    private final ExtensionSchema extensionSchema;
    private final boolean hasExtensions;
    private final UnknownFieldSchema unknownFieldSchema;

    private MessageSetSchema(UnknownFieldSchema unknownFieldSchema, ExtensionSchema extensionSchema, MessageLite messageLite) {
        this.unknownFieldSchema = unknownFieldSchema;
        this.hasExtensions = extensionSchema.hasExtensions(messageLite);
        this.extensionSchema = extensionSchema;
        this.defaultInstance = messageLite;
    }

    static MessageSetSchema newSchema(UnknownFieldSchema unknownFieldSchema, ExtensionSchema extensionSchema, MessageLite messageLite) {
        return new MessageSetSchema(unknownFieldSchema, extensionSchema, messageLite);
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public Object newInstance() {
        MessageLite messageLite = this.defaultInstance;
        if (messageLite instanceof GeneratedMessageLite) {
            return ((GeneratedMessageLite) messageLite).newMutableInstance();
        }
        return messageLite.newBuilderForType().buildPartial();
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public boolean equals(Object obj, Object obj2) {
        if (!this.unknownFieldSchema.getFromMessage(obj).equals(this.unknownFieldSchema.getFromMessage(obj2))) {
            return false;
        }
        if (this.hasExtensions) {
            return this.extensionSchema.getExtensions(obj).equals(this.extensionSchema.getExtensions(obj2));
        }
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public int hashCode(Object obj) {
        int iHashCode = this.unknownFieldSchema.getFromMessage(obj).hashCode();
        return this.hasExtensions ? (iHashCode * 53) + this.extensionSchema.getExtensions(obj).hashCode() : iHashCode;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public void mergeFrom(Object obj, Object obj2) {
        SchemaUtil.mergeUnknownFields(this.unknownFieldSchema, obj, obj2);
        if (this.hasExtensions) {
            SchemaUtil.mergeExtensions(this.extensionSchema, obj, obj2);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public void writeTo(Object obj, Writer writer) {
        Iterator it = this.extensionSchema.getExtensions(obj).iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(((Map.Entry) it.next()).getKey());
            throw null;
        }
        writeUnknownFieldsHelper(this.unknownFieldSchema, obj, writer);
    }

    private void writeUnknownFieldsHelper(UnknownFieldSchema unknownFieldSchema, Object obj, Writer writer) {
        unknownFieldSchema.writeAsMessageSetTo(unknownFieldSchema.getFromMessage(obj), writer);
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public void mergeFrom(Object obj, Reader reader, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
        mergeFromHelper(this.unknownFieldSchema, this.extensionSchema, obj, reader, extensionRegistryLite);
    }

    private void mergeFromHelper(UnknownFieldSchema unknownFieldSchema, ExtensionSchema extensionSchema, Object obj, Reader reader, ExtensionRegistryLite extensionRegistryLite) throws Throwable {
        UnknownFieldSchema unknownFieldSchema2;
        Object builderFromMessage = unknownFieldSchema.getBuilderFromMessage(obj);
        FieldSet mutableExtensions = extensionSchema.getMutableExtensions(obj);
        while (reader.getFieldNumber() != Integer.MAX_VALUE) {
            try {
                unknownFieldSchema2 = unknownFieldSchema;
                ExtensionSchema extensionSchema2 = extensionSchema;
                Reader reader2 = reader;
                ExtensionRegistryLite extensionRegistryLite2 = extensionRegistryLite;
                try {
                    if (!parseMessageSetItemOrUnknownField(reader2, extensionRegistryLite2, extensionSchema2, mutableExtensions, unknownFieldSchema2, builderFromMessage)) {
                        unknownFieldSchema2.setBuilderToMessage(obj, builderFromMessage);
                        return;
                    }
                    reader = reader2;
                    extensionRegistryLite = extensionRegistryLite2;
                    extensionSchema = extensionSchema2;
                    unknownFieldSchema = unknownFieldSchema2;
                } catch (Throwable th) {
                    th = th;
                    Throwable th2 = th;
                    unknownFieldSchema2.setBuilderToMessage(obj, builderFromMessage);
                    throw th2;
                }
            } catch (Throwable th3) {
                th = th3;
                unknownFieldSchema2 = unknownFieldSchema;
            }
        }
        unknownFieldSchema.setBuilderToMessage(obj, builderFromMessage);
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public void makeImmutable(Object obj) {
        this.unknownFieldSchema.makeImmutable(obj);
        this.extensionSchema.makeImmutable(obj);
    }

    private boolean parseMessageSetItemOrUnknownField(Reader reader, ExtensionRegistryLite extensionRegistryLite, ExtensionSchema extensionSchema, FieldSet fieldSet, UnknownFieldSchema unknownFieldSchema, Object obj) throws InvalidProtocolBufferException {
        int tag = reader.getTag();
        int uInt32 = 0;
        if (tag != WireFormat.MESSAGE_SET_ITEM_TAG) {
            if (WireFormat.getTagWireType(tag) == 2) {
                Object objFindExtensionByNumber = extensionSchema.findExtensionByNumber(extensionRegistryLite, this.defaultInstance, WireFormat.getTagFieldNumber(tag));
                if (objFindExtensionByNumber != null) {
                    extensionSchema.parseLengthPrefixedMessageSetItem(reader, objFindExtensionByNumber, extensionRegistryLite, fieldSet);
                    return true;
                }
                return unknownFieldSchema.mergeOneFieldFrom(obj, reader, 0);
            }
            return reader.skipField();
        }
        Object objFindExtensionByNumber2 = null;
        ByteString bytes = null;
        while (reader.getFieldNumber() != Integer.MAX_VALUE) {
            int tag2 = reader.getTag();
            if (tag2 == WireFormat.MESSAGE_SET_TYPE_ID_TAG) {
                uInt32 = reader.readUInt32();
                objFindExtensionByNumber2 = extensionSchema.findExtensionByNumber(extensionRegistryLite, this.defaultInstance, uInt32);
            } else if (tag2 == WireFormat.MESSAGE_SET_MESSAGE_TAG) {
                if (objFindExtensionByNumber2 != null) {
                    extensionSchema.parseLengthPrefixedMessageSetItem(reader, objFindExtensionByNumber2, extensionRegistryLite, fieldSet);
                } else {
                    bytes = reader.readBytes();
                }
            } else if (!reader.skipField()) {
                break;
            }
        }
        if (reader.getTag() != WireFormat.MESSAGE_SET_ITEM_END_TAG) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
        if (bytes != null) {
            if (objFindExtensionByNumber2 != null) {
                extensionSchema.parseMessageSetItem(bytes, objFindExtensionByNumber2, extensionRegistryLite, fieldSet);
            } else {
                unknownFieldSchema.addLengthDelimited(obj, uInt32, bytes);
            }
        }
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final boolean isInitialized(Object obj) {
        return this.extensionSchema.getExtensions(obj).isInitialized();
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public int getSerializedSize(Object obj) {
        int unknownFieldsSerializedSize = getUnknownFieldsSerializedSize(this.unknownFieldSchema, obj);
        return this.hasExtensions ? unknownFieldsSerializedSize + this.extensionSchema.getExtensions(obj).getMessageSetSerializedSize() : unknownFieldsSerializedSize;
    }

    private int getUnknownFieldsSerializedSize(UnknownFieldSchema unknownFieldSchema, Object obj) {
        return unknownFieldSchema.getSerializedSizeAsMessageSet(unknownFieldSchema.getFromMessage(obj));
    }
}
