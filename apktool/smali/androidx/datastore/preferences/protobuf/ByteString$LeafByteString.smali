.class abstract Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;
.super Landroidx/datastore/preferences/protobuf/ByteString;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LeafByteString"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 965
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ByteString;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/ByteString$1;)V
    .locals 0

    .line 936
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ByteString$LeafByteString;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 936
    invoke-super {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->iterator()Landroidx/datastore/preferences/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method
