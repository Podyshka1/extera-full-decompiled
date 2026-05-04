.class Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/MapEntryLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Metadata"
.end annotation


# instance fields
.field public final defaultKey:Ljava/lang/Object;

.field public final defaultValue:Ljava/lang/Object;

.field public final keyType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

.field public final valueType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->keyType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 36
    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 37
    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->valueType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 38
    iput-object p4, p0, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    return-void
.end method
