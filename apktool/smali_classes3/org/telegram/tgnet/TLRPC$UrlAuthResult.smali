.class public abstract Lorg/telegram/tgnet/TLRPC$UrlAuthResult;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UrlAuthResult"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1264
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UrlAuthResult;
    .locals 2

    const v0, -0x562924e1

    if-eq p1, v0, :cond_2

    const v0, -0x70714e2

    if-eq p1, v0, :cond_1

    const v0, 0x623a8fa0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1276
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultAccepted;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultAccepted;-><init>()V

    goto :goto_0

    .line 1273
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;-><init>()V

    goto :goto_0

    .line 1270
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultDefault;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultDefault;-><init>()V

    .line 1279
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$UrlAuthResult;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$UrlAuthResult;

    return-object p0
.end method
