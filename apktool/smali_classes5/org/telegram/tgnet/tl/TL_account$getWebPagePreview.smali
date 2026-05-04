.class public Lorg/telegram/tgnet/tl/TL_account$getWebPagePreview;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getWebPagePreview"
.end annotation


# static fields
.field public static final constructor:I = 0x570d6f6f


# instance fields
.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1912
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 1917
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$getWebPagePreview;->entities:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 1920
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_account$webPagePreview;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$webPagePreview;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x570d6f6f

    .line 1924
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1925
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$getWebPagePreview;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1926
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$getWebPagePreview;->message:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1927
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$getWebPagePreview;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 1928
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$getWebPagePreview;->entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
