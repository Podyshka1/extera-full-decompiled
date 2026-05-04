.class public Lorg/telegram/tgnet/TLParseException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static doThrowOrLog(Lorg/telegram/tgnet/InputSerializedData;Ljava/lang/String;IZ)V
    .locals 2

    if-eqz p0, :cond_0

    .line 14
    invoke-interface {p0}, Lorg/telegram/tgnet/InputSerializedData;->getDataSourceType()Lorg/telegram/tgnet/TLDataSourceType;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const-string p0, "can\'t parse magic %x in %s. Source: %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 16
    new-instance p1, Lorg/telegram/tgnet/TLParseException;

    invoke-direct {p1, p0}, Lorg/telegram/tgnet/TLParseException;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_1

    return-void

    .line 26
    :cond_1
    throw p1
.end method
