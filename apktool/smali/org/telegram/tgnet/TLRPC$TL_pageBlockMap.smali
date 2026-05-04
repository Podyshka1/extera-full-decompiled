.class public Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;
.super Lorg/telegram/tgnet/TLRPC$PageBlock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_pageBlockMap"
.end annotation


# instance fields
.field public caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

.field public geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

.field public h:I

.field public w:I

.field public zoom:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30027
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PageBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 30037
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$GeoPoint;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 30038
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->zoom:I

    .line 30039
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->w:I

    .line 30040
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->h:I

    .line 30041
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x5bb0c10a    # -4.49393E-17f

    .line 30045
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 30046
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 30047
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->zoom:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 30048
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->w:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 30049
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->h:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 30050
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
