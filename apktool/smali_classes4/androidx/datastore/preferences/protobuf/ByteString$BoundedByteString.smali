.class final Landroidx/datastore/preferences/protobuf/ByteString$BoundedByteString;
.super Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BoundedByteString"
.end annotation


# instance fields
.field private final bytesLength:I

.field private final bytesOffset:I


# direct methods
.method constructor <init>([BII)V
    .locals 1

    .line 1612
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;-><init>([B)V

    add-int v0, p2, p3

    .line 1613
    array-length p1, p1

    invoke-static {p2, v0, p1}, Landroidx/datastore/preferences/protobuf/ByteString;->checkRange(III)I

    .line 1615
    iput p2, p0, Landroidx/datastore/preferences/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    .line 1616
    iput p3, p0, Landroidx/datastore/preferences/protobuf/ByteString$BoundedByteString;->bytesLength:I

    return-void
.end method


# virtual methods
.method public byteAt(I)B
    .locals 2

    .line 1632
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString$BoundedByteString;->size()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->checkIndex(II)V

    .line 1633
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->bytes:[B

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method protected copyToInternal([BIII)V
    .locals 2

    .line 1657
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1658
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString$BoundedByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    .line 1657
    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected getOffsetIntoBytes()I
    .locals 1

    .line 1648
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    return v0
.end method

.method internalByteAt(I)B
    .locals 2

    .line 1638
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->bytes:[B

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public size()I
    .locals 1

    .line 1643
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ByteString$BoundedByteString;->bytesLength:I

    return v0
.end method
