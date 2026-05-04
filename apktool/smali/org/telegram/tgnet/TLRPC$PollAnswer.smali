.class public abstract Lorg/telegram/tgnet/TLRPC$PollAnswer;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PollAnswer"
.end annotation


# instance fields
.field public option:[B

.field public text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2978
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 2979
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PollAnswer;->text:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PollAnswer;
    .locals 2

    const v0, -0xe91d36

    if-eq p1, v0, :cond_1

    const v0, 0x6ca9c2e9

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2989
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer_layer178;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer_layer178;-><init>()V

    goto :goto_0

    .line 2986
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;-><init>()V

    .line 2992
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$PollAnswer;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$PollAnswer;

    return-object p0
.end method
