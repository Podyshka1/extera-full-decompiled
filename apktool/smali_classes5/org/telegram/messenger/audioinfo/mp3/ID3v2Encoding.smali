.class public final enum Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

.field public static final enum ISO_8859_1:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

.field public static final enum UTF_16:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

.field public static final enum UTF_16BE:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

.field public static final enum UTF_8:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final zeroBytes:I


# direct methods
.method private static synthetic $values()[Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;
    .locals 3

    const/4 v0, 0x4

    .line 20
    new-array v0, v0, [Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    sget-object v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->ISO_8859_1:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->UTF_16:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->UTF_16BE:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->UTF_8:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    const-string v1, "ISO-8859-1"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "ISO_8859_1"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;-><init>(Ljava/lang/String;ILjava/nio/charset/Charset;I)V

    sput-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->ISO_8859_1:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    .line 22
    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    const-string v1, "UTF-16"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "UTF_16"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v4, v1, v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;-><init>(Ljava/lang/String;ILjava/nio/charset/Charset;I)V

    sput-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->UTF_16:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    .line 23
    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    const-string v1, "UTF-16BE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "UTF_16BE"

    invoke-direct {v0, v2, v3, v1, v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;-><init>(Ljava/lang/String;ILjava/nio/charset/Charset;I)V

    sput-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->UTF_16BE:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    .line 24
    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "UTF_8"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;-><init>(Ljava/lang/String;ILjava/nio/charset/Charset;I)V

    sput-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->UTF_8:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    .line 20
    invoke-static {}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->$values()[Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->$VALUES:[Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/nio/charset/Charset;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->charset:Ljava/nio/charset/Charset;

    .line 31
    iput p4, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->zeroBytes:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;
    .locals 1

    .line 20
    const-class v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    return-object p0
.end method

.method public static values()[Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;
    .locals 1

    .line 20
    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->$VALUES:[Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    invoke-virtual {v0}, [Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    return-object v0
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getZeroBytes()I
    .locals 1

    .line 39
    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->zeroBytes:I

    return v0
.end method
