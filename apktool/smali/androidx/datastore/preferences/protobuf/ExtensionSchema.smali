.class abstract Landroidx/datastore/preferences/protobuf/ExtensionSchema;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract extensionNumber(Ljava/util/Map$Entry;)I
.end method

.method abstract findExtensionByNumber(Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/MessageLite;I)Ljava/lang/Object;
.end method

.method abstract getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;
.end method

.method abstract getMutableExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;
.end method

.method abstract hasExtensions(Landroidx/datastore/preferences/protobuf/MessageLite;)Z
.end method

.method abstract makeImmutable(Ljava/lang/Object;)V
.end method

.method abstract parseExtension(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Reader;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/FieldSet;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
.end method

.method abstract parseLengthPrefixedMessageSetItem(Landroidx/datastore/preferences/protobuf/Reader;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/FieldSet;)V
.end method

.method abstract parseMessageSetItem(Landroidx/datastore/preferences/protobuf/ByteString;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/FieldSet;)V
.end method

.method abstract serializeExtension(Landroidx/datastore/preferences/protobuf/Writer;Ljava/util/Map$Entry;)V
.end method
