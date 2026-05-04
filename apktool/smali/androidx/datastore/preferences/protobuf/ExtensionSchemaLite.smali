.class final Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;
.super Landroidx/datastore/preferences/protobuf/ExtensionSchema;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;-><init>()V

    return-void
.end method


# virtual methods
.method extensionNumber(Ljava/util/Map$Entry;)I
    .locals 0

    .line 308
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 309
    throw p1
.end method

.method findExtensionByNumber(Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/MessageLite;I)Ljava/lang/Object;
    .locals 0

    .line 518
    invoke-virtual {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Landroidx/datastore/preferences/protobuf/MessageLite;I)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$GeneratedExtension;

    const/4 p1, 0x0

    return-object p1
.end method

.method getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;
    .locals 0

    .line 27
    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method getMutableExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;
    .locals 0

    .line 37
    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method hasExtensions(Landroidx/datastore/preferences/protobuf/MessageLite;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method makeImmutable(Ljava/lang/Object;)V
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/FieldSet;->makeImmutable()V

    return-void
.end method

.method parseExtension(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Reader;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/FieldSet;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-static {p3}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 57
    throw p1
.end method

.method parseLengthPrefixedMessageSetItem(Landroidx/datastore/preferences/protobuf/Reader;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/FieldSet;)V
    .locals 0

    .line 528
    invoke-static {p2}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 531
    throw p1
.end method

.method parseMessageSetItem(Landroidx/datastore/preferences/protobuf/ByteString;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/FieldSet;)V
    .locals 0

    .line 542
    invoke-static {p2}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 545
    throw p1
.end method

.method serializeExtension(Landroidx/datastore/preferences/protobuf/Writer;Ljava/util/Map$Entry;)V
    .locals 0

    .line 315
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 316
    throw p1
.end method
