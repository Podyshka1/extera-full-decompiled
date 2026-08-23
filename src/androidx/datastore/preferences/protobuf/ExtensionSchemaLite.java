package androidx.datastore.preferences.protobuf;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class ExtensionSchemaLite extends ExtensionSchema {
    @Override // androidx.datastore.preferences.protobuf.ExtensionSchema
    boolean hasExtensions(MessageLite messageLite) {
        return false;
    }

    ExtensionSchemaLite() {
    }

    @Override // androidx.datastore.preferences.protobuf.ExtensionSchema
    FieldSet getExtensions(Object obj) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.ExtensionSchema
    FieldSet getMutableExtensions(Object obj) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.ExtensionSchema
    void makeImmutable(Object obj) {
        getExtensions(obj).makeImmutable();
    }

    @Override // androidx.datastore.preferences.protobuf.ExtensionSchema
    Object parseExtension(Object obj, Reader reader, Object obj2, ExtensionRegistryLite extensionRegistryLite, FieldSet fieldSet, Object obj3, UnknownFieldSchema unknownFieldSchema) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj2);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.ExtensionSchema
    int extensionNumber(Map.Entry entry) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(entry.getKey());
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.ExtensionSchema
    void serializeExtension(Writer writer, Map.Entry entry) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(entry.getKey());
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.ExtensionSchema
    Object findExtensionByNumber(ExtensionRegistryLite extensionRegistryLite, MessageLite messageLite, int i) {
        extensionRegistryLite.findLiteExtensionByNumber(messageLite, i);
        return null;
    }

    @Override // androidx.datastore.preferences.protobuf.ExtensionSchema
    void parseLengthPrefixedMessageSetItem(Reader reader, Object obj, ExtensionRegistryLite extensionRegistryLite, FieldSet fieldSet) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.ExtensionSchema
    void parseMessageSetItem(ByteString byteString, Object obj, ExtensionRegistryLite extensionRegistryLite, FieldSet fieldSet) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }
}
