.class public Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;
.super Lorg/telegram/tgnet/TLRPC$ReportResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_reportResultAddComment"
.end annotation


# instance fields
.field public flags:I

.field public option:[B

.field public optional:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56701
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ReportResult;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 56710
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 56711
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;->optional:Z

    .line 56712
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;->option:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x6f09ac31

    .line 56717
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56718
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;->optional:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;->flags:I

    .line 56719
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56720
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_reportResultAddComment;->option:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    return-void
.end method
