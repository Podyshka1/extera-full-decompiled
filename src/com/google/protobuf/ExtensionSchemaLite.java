package com.google.protobuf;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import com.android.dx.dex.code.CstInsn$$ExternalSyntheticBUOutline0;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.MessageLite;
import com.google.protobuf.WireFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
final class ExtensionSchemaLite extends ExtensionSchema<GeneratedMessageLite.ExtensionDescriptor> {
    @Override // com.google.protobuf.ExtensionSchema
    public boolean hasExtensions(MessageLite messageLite) {
        return false;
    }

    @Override // com.google.protobuf.ExtensionSchema
    public FieldSet<GeneratedMessageLite.ExtensionDescriptor> getExtensions(Object obj) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.protobuf.ExtensionSchema
    public FieldSet<GeneratedMessageLite.ExtensionDescriptor> getMutableExtensions(Object obj) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.protobuf.ExtensionSchema
    public void makeImmutable(Object obj) {
        getExtensions(obj).makeImmutable();
    }

    @Override // com.google.protobuf.ExtensionSchema
    public <UT, UB> UB parseExtension(Object obj, Reader reader, Object obj2, ExtensionRegistryLite extensionRegistryLite, FieldSet<GeneratedMessageLite.ExtensionDescriptor> fieldSet, UB ub, UnknownFieldSchema<UT, UB> unknownFieldSchema) {
        Object field;
        ArrayList arrayList;
        GeneratedMessageLite.GeneratedExtension generatedExtension = (GeneratedMessageLite.GeneratedExtension) obj2;
        int number = generatedExtension.getNumber();
        Object objMergeMessage = null;
        if (generatedExtension.descriptor.isRepeated() && generatedExtension.descriptor.isPacked()) {
            switch (C20351.$SwitchMap$com$google$protobuf$WireFormat$FieldType[generatedExtension.getLiteType().ordinal()]) {
                case 1:
                    arrayList = new ArrayList();
                    reader.readDoubleList(arrayList);
                    break;
                case 2:
                    arrayList = new ArrayList();
                    reader.readFloatList(arrayList);
                    break;
                case 3:
                    arrayList = new ArrayList();
                    reader.readInt64List(arrayList);
                    break;
                case 4:
                    arrayList = new ArrayList();
                    reader.readUInt64List(arrayList);
                    break;
                case 5:
                    arrayList = new ArrayList();
                    reader.readInt32List(arrayList);
                    break;
                case 6:
                    arrayList = new ArrayList();
                    reader.readFixed64List(arrayList);
                    break;
                case 7:
                    arrayList = new ArrayList();
                    reader.readFixed32List(arrayList);
                    break;
                case 8:
                    arrayList = new ArrayList();
                    reader.readBoolList(arrayList);
                    break;
                case 9:
                    arrayList = new ArrayList();
                    reader.readUInt32List(arrayList);
                    break;
                case 10:
                    arrayList = new ArrayList();
                    reader.readSFixed32List(arrayList);
                    break;
                case 11:
                    arrayList = new ArrayList();
                    reader.readSFixed64List(arrayList);
                    break;
                case 12:
                    arrayList = new ArrayList();
                    reader.readSInt32List(arrayList);
                    break;
                case 13:
                    arrayList = new ArrayList();
                    reader.readSInt64List(arrayList);
                    break;
                case 14:
                    arrayList = new ArrayList();
                    reader.readEnumList(arrayList);
                    generatedExtension.descriptor.getEnumType();
                    ub = (UB) SchemaUtil.filterUnknownEnumList(obj, number, arrayList, (Internal.EnumLiteMap<?>) null, ub, unknownFieldSchema);
                    break;
                default:
                    CstInsn$$ExternalSyntheticBUOutline0.m222m("Type cannot be packed: ", generatedExtension.descriptor.getLiteType());
                    return null;
            }
            fieldSet.setField(generatedExtension.descriptor, arrayList);
            return ub;
        }
        if (generatedExtension.getLiteType() == WireFormat.FieldType.ENUM) {
            reader.readInt32();
            generatedExtension.descriptor.getEnumType();
            throw null;
        }
        int[] iArr = C20351.$SwitchMap$com$google$protobuf$WireFormat$FieldType;
        switch (iArr[generatedExtension.getLiteType().ordinal()]) {
            case 1:
                objMergeMessage = Double.valueOf(reader.readDouble());
                break;
            case 2:
                objMergeMessage = Float.valueOf(reader.readFloat());
                break;
            case 3:
                objMergeMessage = Long.valueOf(reader.readInt64());
                break;
            case 4:
                objMergeMessage = Long.valueOf(reader.readUInt64());
                break;
            case 5:
                objMergeMessage = Integer.valueOf(reader.readInt32());
                break;
            case 6:
                objMergeMessage = Long.valueOf(reader.readFixed64());
                break;
            case 7:
                objMergeMessage = Integer.valueOf(reader.readFixed32());
                break;
            case 8:
                objMergeMessage = Boolean.valueOf(reader.readBool());
                break;
            case 9:
                objMergeMessage = Integer.valueOf(reader.readUInt32());
                break;
            case 10:
                objMergeMessage = Integer.valueOf(reader.readSFixed32());
                break;
            case 11:
                objMergeMessage = Long.valueOf(reader.readSFixed64());
                break;
            case 12:
                objMergeMessage = Integer.valueOf(reader.readSInt32());
                break;
            case 13:
                objMergeMessage = Long.valueOf(reader.readSInt64());
                break;
            case 14:
                Segment$$ExternalSyntheticBUOutline1.m925m("Shouldn't reach here.");
                return null;
            case 15:
                objMergeMessage = reader.readBytes();
                break;
            case 16:
                objMergeMessage = reader.readString();
                break;
            case 17:
                if (!generatedExtension.isRepeated()) {
                    Object field2 = fieldSet.getField(generatedExtension.descriptor);
                    if (field2 instanceof GeneratedMessageLite) {
                        Schema schemaSchemaFor = Protobuf.getInstance().schemaFor(field2);
                        if (!((GeneratedMessageLite) field2).isMutable()) {
                            Object objNewInstance = schemaSchemaFor.newInstance();
                            schemaSchemaFor.mergeFrom(objNewInstance, field2);
                            fieldSet.setField(generatedExtension.descriptor, objNewInstance);
                            field2 = objNewInstance;
                        }
                        reader.mergeGroupField(field2, schemaSchemaFor, extensionRegistryLite);
                        return ub;
                    }
                }
                objMergeMessage = reader.readGroup(generatedExtension.getMessageDefaultInstance().getClass(), extensionRegistryLite);
                break;
            case 18:
                if (!generatedExtension.isRepeated()) {
                    Object field3 = fieldSet.getField(generatedExtension.descriptor);
                    if (field3 instanceof GeneratedMessageLite) {
                        Schema schemaSchemaFor2 = Protobuf.getInstance().schemaFor(field3);
                        if (!((GeneratedMessageLite) field3).isMutable()) {
                            Object objNewInstance2 = schemaSchemaFor2.newInstance();
                            schemaSchemaFor2.mergeFrom(objNewInstance2, field3);
                            fieldSet.setField(generatedExtension.descriptor, objNewInstance2);
                            field3 = objNewInstance2;
                        }
                        reader.mergeMessageField(field3, schemaSchemaFor2, extensionRegistryLite);
                        return ub;
                    }
                }
                objMergeMessage = reader.readMessage(generatedExtension.getMessageDefaultInstance().getClass(), extensionRegistryLite);
                break;
        }
        if (generatedExtension.isRepeated()) {
            fieldSet.addRepeatedField(generatedExtension.descriptor, objMergeMessage);
            return ub;
        }
        int i = iArr[generatedExtension.getLiteType().ordinal()];
        if ((i == 17 || i == 18) && (field = fieldSet.getField(generatedExtension.descriptor)) != null) {
            objMergeMessage = Internal.mergeMessage(field, objMergeMessage);
        }
        fieldSet.setField(generatedExtension.descriptor, objMergeMessage);
        return ub;
    }

    /* JADX INFO: renamed from: com.google.protobuf.ExtensionSchemaLite$1 */
    public static /* synthetic */ class C20351 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    @Override // com.google.protobuf.ExtensionSchema
    public int extensionNumber(Map.Entry<?, ?> entry) {
        return ((GeneratedMessageLite.ExtensionDescriptor) entry.getKey()).getNumber();
    }

    @Override // com.google.protobuf.ExtensionSchema
    public void serializeExtension(Writer writer, Map.Entry<?, ?> entry) {
        GeneratedMessageLite.ExtensionDescriptor extensionDescriptor = (GeneratedMessageLite.ExtensionDescriptor) entry.getKey();
        if (extensionDescriptor.isRepeated()) {
            switch (C20351.$SwitchMap$com$google$protobuf$WireFormat$FieldType[extensionDescriptor.getLiteType().ordinal()]) {
                case 1:
                    SchemaUtil.writeDoubleList(extensionDescriptor.getNumber(), (List) entry.getValue(), writer, extensionDescriptor.isPacked());
                    break;
                case 2:
                    SchemaUtil.writeFloatList(extensionDescriptor.getNumber(), (List) entry.getValue(), writer, extensionDescriptor.isPacked());
                    break;
                case 3:
                    SchemaUtil.writeInt64List(extensionDescriptor.getNumber(), (List) entry.getValue(), writer, extensionDescriptor.isPacked());
                    break;
                case 4:
                    SchemaUtil.writeUInt64List(extensionDescriptor.getNumber(), (List) entry.getValue(), writer, extensionDescriptor.isPacked());
                    break;
                case 5:
                    SchemaUtil.writeInt32List(extensionDescriptor.getNumber(), (List) entry.getValue(), writer, extensionDescriptor.isPacked());
                    break;
                case 6:
                    SchemaUtil.writeFixed64List(extensionDescriptor.getNumber(), (List) entry.getValue(), writer, extensionDescriptor.isPacked());
                    break;
                case 7:
                    SchemaUtil.writeFixed32List(extensionDescriptor.getNumber(), (List) entry.getValue(), writer, extensionDescriptor.isPacked());
                    break;
                case 8:
                    SchemaUtil.writeBoolList(extensionDescriptor.getNumber(), (List) entry.getValue(), writer, extensionDescriptor.isPacked());
                    break;
                case 9:
                    SchemaUtil.writeUInt32List(extensionDescriptor.getNumber(), (List) entry.getValue(), writer, extensionDescriptor.isPacked());
                    break;
                case 10:
                    SchemaUtil.writeSFixed32List(extensionDescriptor.getNumber(), (List) entry.getValue(), writer, extensionDescriptor.isPacked());
                    break;
                case 11:
                    SchemaUtil.writeSFixed64List(extensionDescriptor.getNumber(), (List) entry.getValue(), writer, extensionDescriptor.isPacked());
                    break;
                case 12:
                    SchemaUtil.writeSInt32List(extensionDescriptor.getNumber(), (List) entry.getValue(), writer, extensionDescriptor.isPacked());
                    break;
                case 13:
                    SchemaUtil.writeSInt64List(extensionDescriptor.getNumber(), (List) entry.getValue(), writer, extensionDescriptor.isPacked());
                    break;
                case 14:
                    SchemaUtil.writeInt32List(extensionDescriptor.getNumber(), (List) entry.getValue(), writer, extensionDescriptor.isPacked());
                    break;
                case 15:
                    SchemaUtil.writeBytesList(extensionDescriptor.getNumber(), (List) entry.getValue(), writer);
                    break;
                case 16:
                    SchemaUtil.writeStringList(extensionDescriptor.getNumber(), (List) entry.getValue(), writer);
                    break;
                case 17:
                    List list = (List) entry.getValue();
                    if (list != null && !list.isEmpty()) {
                        SchemaUtil.writeGroupList(extensionDescriptor.getNumber(), (List) entry.getValue(), writer, Protobuf.getInstance().schemaFor((Class) list.get(0).getClass()));
                        break;
                    }
                    break;
                case 18:
                    List list2 = (List) entry.getValue();
                    if (list2 != null && !list2.isEmpty()) {
                        SchemaUtil.writeMessageList(extensionDescriptor.getNumber(), (List) entry.getValue(), writer, Protobuf.getInstance().schemaFor((Class) list2.get(0).getClass()));
                        break;
                    }
                    break;
            }
        }
        switch (C20351.$SwitchMap$com$google$protobuf$WireFormat$FieldType[extensionDescriptor.getLiteType().ordinal()]) {
            case 1:
                writer.writeDouble(extensionDescriptor.getNumber(), ((Double) entry.getValue()).doubleValue());
                break;
            case 2:
                writer.writeFloat(extensionDescriptor.getNumber(), ((Float) entry.getValue()).floatValue());
                break;
            case 3:
                writer.writeInt64(extensionDescriptor.getNumber(), ((Long) entry.getValue()).longValue());
                break;
            case 4:
                writer.writeUInt64(extensionDescriptor.getNumber(), ((Long) entry.getValue()).longValue());
                break;
            case 5:
                writer.writeInt32(extensionDescriptor.getNumber(), ((Integer) entry.getValue()).intValue());
                break;
            case 6:
                writer.writeFixed64(extensionDescriptor.getNumber(), ((Long) entry.getValue()).longValue());
                break;
            case 7:
                writer.writeFixed32(extensionDescriptor.getNumber(), ((Integer) entry.getValue()).intValue());
                break;
            case 8:
                writer.writeBool(extensionDescriptor.getNumber(), ((Boolean) entry.getValue()).booleanValue());
                break;
            case 9:
                writer.writeUInt32(extensionDescriptor.getNumber(), ((Integer) entry.getValue()).intValue());
                break;
            case 10:
                writer.writeSFixed32(extensionDescriptor.getNumber(), ((Integer) entry.getValue()).intValue());
                break;
            case 11:
                writer.writeSFixed64(extensionDescriptor.getNumber(), ((Long) entry.getValue()).longValue());
                break;
            case 12:
                writer.writeSInt32(extensionDescriptor.getNumber(), ((Integer) entry.getValue()).intValue());
                break;
            case 13:
                writer.writeSInt64(extensionDescriptor.getNumber(), ((Long) entry.getValue()).longValue());
                break;
            case 14:
                writer.writeInt32(extensionDescriptor.getNumber(), ((Integer) entry.getValue()).intValue());
                break;
            case 15:
                writer.writeBytes(extensionDescriptor.getNumber(), (ByteString) entry.getValue());
                break;
            case 16:
                writer.writeString(extensionDescriptor.getNumber(), (String) entry.getValue());
                break;
            case 17:
                writer.writeGroup(extensionDescriptor.getNumber(), entry.getValue(), Protobuf.getInstance().schemaFor((Class) entry.getValue().getClass()));
                break;
            case 18:
                writer.writeMessage(extensionDescriptor.getNumber(), entry.getValue(), Protobuf.getInstance().schemaFor((Class) entry.getValue().getClass()));
                break;
        }
    }

    @Override // com.google.protobuf.ExtensionSchema
    public Object findExtensionByNumber(ExtensionRegistryLite extensionRegistryLite, MessageLite messageLite, int i) {
        return extensionRegistryLite.findLiteExtensionByNumber(messageLite, i);
    }

    @Override // com.google.protobuf.ExtensionSchema
    public void parseLengthPrefixedMessageSetItem(Reader reader, Object obj, ExtensionRegistryLite extensionRegistryLite, FieldSet<GeneratedMessageLite.ExtensionDescriptor> fieldSet) {
        GeneratedMessageLite.GeneratedExtension generatedExtension = (GeneratedMessageLite.GeneratedExtension) obj;
        fieldSet.setField(generatedExtension.descriptor, reader.readMessage(generatedExtension.getMessageDefaultInstance().getClass(), extensionRegistryLite));
    }

    @Override // com.google.protobuf.ExtensionSchema
    public void parseMessageSetItem(ByteString byteString, Object obj, ExtensionRegistryLite extensionRegistryLite, FieldSet<GeneratedMessageLite.ExtensionDescriptor> fieldSet) {
        GeneratedMessageLite.GeneratedExtension generatedExtension = (GeneratedMessageLite.GeneratedExtension) obj;
        MessageLite.Builder builderNewBuilderForType = generatedExtension.getMessageDefaultInstance().newBuilderForType();
        CodedInputStream codedInputStreamNewCodedInput = byteString.newCodedInput();
        builderNewBuilderForType.mergeFrom(codedInputStreamNewCodedInput, extensionRegistryLite);
        fieldSet.setField(generatedExtension.descriptor, builderNewBuilderForType.buildPartial());
        codedInputStreamNewCodedInput.checkLastTagWas(0);
    }
}
