.class public Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateReadMessagesContents"
.end annotation


# instance fields
.field public date:I

.field public flags:I

.field public messages:Ljava/util/ArrayList;

.field public pts:I

.field public pts_count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34780
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    .line 34784
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;->messages:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 34790
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;->flags:I

    .line 34791
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeInt(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;->messages:Ljava/util/ArrayList;

    .line 34792
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;->pts:I

    .line 34793
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;->pts_count:I

    .line 34794
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 34795
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;->date:I

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x7dd8e7f

    .line 34800
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34801
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34802
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;->messages:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 34803
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;->pts:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34804
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;->pts_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34805
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 34806
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_0
    return-void
.end method
