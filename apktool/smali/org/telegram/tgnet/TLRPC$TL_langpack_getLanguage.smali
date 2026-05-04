.class public Lorg/telegram/tgnet/TLRPC$TL_langpack_getLanguage;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_langpack_getLanguage"
.end annotation


# instance fields
.field public lang_code:Ljava/lang/String;

.field public lang_pack:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61593
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 61600
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x6a596502

    .line 61604
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 61605
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLanguage;->lang_pack:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 61606
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLanguage;->lang_code:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
