.class public Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_savedReactionTag"
.end annotation


# instance fields
.field public count:I

.field public flags:I

.field public reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27854
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;
    .locals 2

    const v0, -0x349007d8    # -1.5726632E7f

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 27865
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;-><init>()V

    .line 27866
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 27870
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;->flags:I

    .line 27871
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Reaction;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Reaction;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 27872
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 27873
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;->title:Ljava/lang/String;

    .line 27875
    :cond_0
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;->count:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x349007d8    # -1.5726632E7f

    .line 27879
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 27880
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 27881
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 27882
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 27883
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 27885
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;->count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
