.class public Lorg/telegram/messenger/Utilities;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/Utilities$Callback;,
        Lorg/telegram/messenger/Utilities$IndexedConsumer;,
        Lorg/telegram/messenger/Utilities$Callback5Return;,
        Lorg/telegram/messenger/Utilities$Callback5;,
        Lorg/telegram/messenger/Utilities$Callback4Return;,
        Lorg/telegram/messenger/Utilities$Callback4;,
        Lorg/telegram/messenger/Utilities$Callback3;,
        Lorg/telegram/messenger/Utilities$Callback2;,
        Lorg/telegram/messenger/Utilities$Callback3Return;,
        Lorg/telegram/messenger/Utilities$Callback2Return;,
        Lorg/telegram/messenger/Utilities$CallbackReturn;,
        Lorg/telegram/messenger/Utilities$Callback0Return;,
        Lorg/telegram/messenger/Utilities$CallbackVoidReturn;
    }
.end annotation


# static fields
.field private static final RANDOM_STRING_CHARS:Ljava/lang/String; = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field public static volatile cacheClearQueue:Lorg/telegram/messenger/DispatchQueue;

.field public static volatile externalNetworkQueue:Lorg/telegram/messenger/DispatchQueue;

.field public static fastRandom:Ljava/util/Random;

.field public static volatile globalQueue:Lorg/telegram/messenger/DispatchQueue;

.field protected static final hexArray:[C

.field public static pattern:Ljava/util/regex/Pattern;

.field public static volatile phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

.field public static volatile pluginsQueue:Lorg/telegram/messenger/DispatchQueue;

.field public static random:Ljava/security/SecureRandom;

.field public static volatile searchQueue:Lorg/telegram/messenger/DispatchQueue;

.field public static volatile stageQueue:Lorg/telegram/messenger/DispatchQueue;

.field public static volatile themeQueue:Lorg/telegram/messenger/DispatchQueue;

.field public static volatile videoPlayerQueue:Lorg/telegram/messenger/DispatchQueue;


# direct methods
.method public static synthetic $r8$lambda$7LYngopHvLcfmuoeB4pq0gKlpg4([I[Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    .line 636
    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    .line 637
    array-length p0, p1

    if-ne v1, p0, :cond_0

    if-eqz p2, :cond_0

    .line 639
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$LHYJzz-yENfnvJAEigmT9zWlizY(I[Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    add-int/lit8 p0, p0, 0x1

    .line 623
    invoke-static {p0, p1}, Lorg/telegram/messenger/Utilities;->doCallbacks(I[Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 40
    const-string v0, "[\\-0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/Utilities;->pattern:Ljava/util/regex/Pattern;

    .line 41
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    .line 42
    new-instance v0, Lcom/carrotsearch/randomizedtesting/Xoroshiro128PlusRandom;

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/carrotsearch/randomizedtesting/Xoroshiro128PlusRandom;-><init>(J)V

    sput-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    .line 44
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v1, "stageQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 45
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "globalQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 46
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "cacheClearQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/Utilities;->cacheClearQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 47
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v1, "searchQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 48
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v1, "phoneBookQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 49
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v1, "themeQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 50
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "externalNetworkQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/Utilities;->externalNetworkQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 53
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v1, "pluginsQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/Utilities;->pluginsQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 57
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/Utilities;->hexArray:[C

    .line 61
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/urandom"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    .line 63
    new-array v0, v0, [B

    .line 64
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 65
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 66
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->setSeed([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 68
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 467
    :cond_0
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 468
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x100

    .line 471
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 473
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 475
    :goto_1
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static SHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 485
    :cond_0
    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 486
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 488
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 489
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    or-int/lit16 v3, v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 491
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 493
    :goto_1
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static native aesCbcEncryption(Ljava/nio/ByteBuffer;[B[BIII)V
.end method

.method private static native aesCbcEncryptionByteArray([B[B[BIIII)V
.end method

.method public static aesCbcEncryptionByteArraySafe([B[B[BIIII)V
    .locals 7

    .line 157
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, [B

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/Utilities;->aesCbcEncryptionByteArray([B[B[BIIII)V

    return-void
.end method

.method public static native aesCtrDecryption(Ljava/nio/ByteBuffer;[B[BII)V
.end method

.method public static native aesCtrDecryptionByteArray([B[B[BIJI)V
.end method

.method private static native aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZII)V
.end method

.method public static aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V
    .locals 6

    if-eqz p4, :cond_0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move v5, p6

    goto :goto_1

    .line 149
    :cond_0
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    goto :goto_0

    :goto_1
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZII)V

    return-void
.end method

.method private static native aesIgeEncryptionByteArray([B[B[BZII)V
.end method

.method public static aesIgeEncryptionByteArray([B[B[BZZII)V
    .locals 6

    if-eqz p4, :cond_0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move v5, p6

    goto :goto_1

    .line 153
    :cond_0
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    goto :goto_0

    :goto_1
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/Utilities;->aesIgeEncryptionByteArray([B[B[BZII)V

    return-void
.end method

.method public static arraysEquals([BI[BI)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    if-ltz p1, :cond_3

    if-ltz p3, :cond_3

    .line 306
    array-length v1, p0

    sub-int/2addr v1, p1

    array-length v2, p2

    sub-int/2addr v2, p3

    if-gt v1, v2, :cond_3

    array-length v1, p0

    sub-int/2addr v1, p1

    if-ltz v1, :cond_3

    array-length v1, p2

    sub-int/2addr v1, p3

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, p1

    .line 310
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    add-int v2, v1, p1

    .line 311
    aget-byte v2, p0, v2

    add-int v3, v1, p3

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static native blurBitmap(Ljava/lang/Object;IIIII)V
.end method

.method public static blurWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const/16 v3, 0x1c2

    const/high16 v4, 0x43e10000    # 450.0f

    if-le v1, v2, :cond_1

    .line 137
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 141
    :goto_0
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 142
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 143
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, p0, v0, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 p0, 0xc

    .line 144
    invoke-static {v1, p0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    return-object v1
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    .line 273
    const-string p0, ""

    return-object p0

    .line 275
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 277
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 278
    aget-byte v2, p0, v1

    and-int/lit16 v3, v2, 0xff

    mul-int/lit8 v4, v1, 0x2

    .line 279
    sget-object v5, Lorg/telegram/messenger/Utilities;->hexArray:[C

    ushr-int/lit8 v3, v3, 0x4

    aget-char v3, v5, v3

    aput-char v3, v0, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 280
    aget-char v2, v5, v2

    aput-char v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static bytesToInt([B)I
    .locals 2

    const/4 v0, 0x3

    .line 451
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static bytesToLong([B)J
    .locals 7

    const/4 v0, 0x7

    .line 446
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v6, 0x30

    shl-long/2addr v2, v6

    add-long/2addr v0, v2

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x28

    shl-long/2addr v2, v6

    add-long/2addr v0, v2

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    add-long/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x18

    shl-long/2addr v2, v6

    add-long/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x10

    shl-long/2addr v2, v6

    add-long/2addr v0, v2

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x8

    shl-long/2addr v2, v6

    add-long/2addr v0, v2

    const/4 v2, 0x0

    aget-byte p0, p0, v2

    int-to-long v2, p0

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static native calcCDT(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
.end method

.method public static clamp(DDD)D
    .locals 1

    .line 521
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p4

    .line 524
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide p2

    .line 527
    :cond_1
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static clamp(FFF)F
    .locals 1

    .line 507
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    .line 510
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    .line 513
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static clamp(III)I
    .locals 0

    .line 499
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static clamp(JJJ)J
    .locals 0

    .line 503
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static clamp01(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 517
    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p0

    return p0
.end method

.method public static native clearDir(Ljava/lang/String;IJZ)V
.end method

.method public static computePBKDF2([B[B)[B
    .locals 2

    const/16 v0, 0x40

    .line 408
    new-array v0, v0, [B

    const v1, 0x186a0

    .line 409
    invoke-static {p0, p1, v0, v1}, Lorg/telegram/messenger/Utilities;->pbkdf2([B[B[BI)I

    return-object v0
.end method

.method public static computeSHA1(Ljava/nio/ByteBuffer;)[B
    .locals 2

    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/Utilities;->computeSHA1(Ljava/nio/ByteBuffer;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static computeSHA1(Ljava/nio/ByteBuffer;II)[B
    .locals 3

    .line 331
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 332
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    .line 334
    :try_start_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 335
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 336
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 337
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 338
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 343
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 340
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 343
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 p0, 0x14

    .line 345
    new-array p0, p0, [B

    return-object p0

    .line 342
    :goto_0
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 343
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 344
    throw p1
.end method

.method public static computeSHA1([B)[B
    .locals 2

    const/4 v0, 0x0

    .line 353
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/Utilities;->computeSHA1([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static computeSHA1([BII)[B
    .locals 1

    .line 321
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 322
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 323
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 325
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/16 p0, 0x14

    .line 327
    new-array p0, p0, [B

    return-object p0
.end method

.method public static computeSHA256([B)[B
    .locals 3

    .line 357
    array-length v0, p0

    int-to-long v0, v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object p0

    return-object p0
.end method

.method public static computeSHA256([BIILjava/nio/ByteBuffer;II)[B
    .locals 3

    .line 427
    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 428
    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    move-result v1

    .line 430
    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 431
    invoke-virtual {v2, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 432
    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 433
    invoke-virtual {p3, p5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 434
    invoke-virtual {v2, p3}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 435
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 440
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 437
    :try_start_1
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 440
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 p0, 0x20

    .line 442
    new-array p0, p0, [B

    return-object p0

    .line 439
    :goto_0
    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 440
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 441
    throw p0
.end method

.method public static computeSHA256([BIJ)[B
    .locals 1

    .line 362
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    long-to-int p2, p2

    .line 363
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 364
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 366
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/16 p0, 0x20

    .line 368
    new-array p0, p0, [B

    return-object p0
.end method

.method public static varargs computeSHA256([[B)[B
    .locals 6

    .line 373
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 374
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 375
    array-length v5, v4

    invoke-virtual {v0, v4, v2, v5}, Ljava/security/MessageDigest;->update([BII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 379
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/16 p0, 0x20

    .line 381
    new-array p0, p0, [B

    return-object p0
.end method

.method public static computeSHA512([B)[B
    .locals 3

    .line 386
    :try_start_0
    const-string v0, "SHA-512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 387
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 388
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 390
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/16 p0, 0x40

    .line 392
    new-array p0, p0, [B

    return-object p0
.end method

.method public static computeSHA512([B[B)[B
    .locals 3

    .line 397
    :try_start_0
    const-string v0, "SHA-512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 398
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 399
    array-length p0, p1

    invoke-virtual {v0, p1, v2, p0}, Ljava/security/MessageDigest;->update([BII)V

    .line 400
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 402
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/16 p0, 0x40

    .line 404
    new-array p0, p0, [B

    return-object p0
.end method

.method public static computeSHA512([B[B[B)[B
    .locals 3

    .line 415
    :try_start_0
    const-string v0, "SHA-512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 416
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 417
    array-length p0, p1

    invoke-virtual {v0, p1, v2, p0}, Ljava/security/MessageDigest;->update([BII)V

    .line 418
    array-length p0, p2

    invoke-virtual {v0, p2, v2, p0}, Ljava/security/MessageDigest;->update([BII)V

    .line 419
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 421
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/16 p0, 0x40

    .line 423
    new-array p0, p0, [B

    return-object p0
.end method

.method public static native convertVideoFrame(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)I
.end method

.method public static dist(FFFF)F
    .locals 0

    sub-float/2addr p0, p2

    mul-float/2addr p0, p0

    sub-float/2addr p1, p3

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    .line 531
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static divCeil(II)I
    .locals 0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    .line 682
    div-int/2addr p0, p1

    return p0
.end method

.method private static varargs doCallbacks(I[Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 622
    array-length v0, p1

    if-le v0, p0, :cond_0

    .line 623
    aget-object v0, p1, p0

    new-instance v1, Lorg/telegram/messenger/Utilities$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/Utilities$$ExternalSyntheticLambda0;-><init>(I[Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-interface {v0, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static varargs doCallbacks([Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 619
    invoke-static {v0, p0}, Lorg/telegram/messenger/Utilities;->doCallbacks(I[Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static native drawDitheredGradient(Landroid/graphics/Bitmap;[IIIII)V
.end method

.method public static native generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V
.end method

.method public static generateRandomString()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    .line 535
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->generateRandomString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateRandomString(I)Ljava/lang/String;
    .locals 4

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 541
    sget-object v2, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const-string v3, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static native getDirSize(Ljava/lang/String;IZ)J
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2e

    .line 547
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 550
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    if-nez p0, :cond_1

    return-object v2

    .line 555
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static native getLastUsageFileTime(Ljava/lang/String;)J
.end method

.method public static getOrCreatePlayerQueue()Lorg/telegram/messenger/DispatchQueue;
    .locals 2

    .line 649
    sget-object v0, Lorg/telegram/messenger/Utilities;->videoPlayerQueue:Lorg/telegram/messenger/DispatchQueue;

    if-nez v0, :cond_0

    .line 650
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v1, "playerQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/Utilities;->videoPlayerQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 652
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->videoPlayerQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method public static getOrDefault(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Key:",
            "Ljava/lang/Object;",
            "Value:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap<",
            "TKey;TValue;>;TKey;TValue;)TValue;"
        }
    .end annotation

    .line 611
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    return-object p0
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 289
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 290
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 292
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static intToBytes(I)[B
    .locals 5

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    int-to-byte p0, p0

    const/4 v3, 0x4

    .line 455
    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    const/4 v0, 0x2

    aput-byte v2, v3, v0

    const/4 v0, 0x3

    aput-byte p0, v3, v0

    return-object v3
.end method

.method public static isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 3

    const-wide/16 v0, 0x1

    .line 302
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isGoodPrime([BI)Z
    .locals 0

    .line 298
    invoke-static {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->native_isGoodPrime([BI)Z

    move-result p0

    return p0
.end method

.method public static isNullOrEmpty(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 656
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static native needInvert(Ljava/lang/Object;IIII)I
.end method

.method public static parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;
    .locals 15

    const/4 v0, 0x0

    .line 190
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p0, :cond_10

    .line 161
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v2, -0x1

    move v3, v0

    move v4, v2

    .line 168
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/16 v6, 0x2d

    const/16 v7, 0x30

    const/4 v8, 0x1

    if-ge v3, v5, :cond_6

    .line 169
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v9, 0x39

    if-lt v5, v7, :cond_1

    if-gt v5, v9, :cond_1

    move v10, v8

    goto :goto_1

    :cond_1
    move v10, v0

    :goto_1
    if-ne v5, v6, :cond_2

    move v5, v8

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    if-ne v4, v2, :cond_4

    if-eqz v10, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v5, :cond_5

    add-int/lit8 v5, v3, 0x1

    .line 177
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-lt v6, v7, :cond_5

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-gt v5, v9, :cond_5

    :goto_3
    move v4, v3

    goto :goto_4

    :cond_4
    if-nez v10, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    move v3, v2

    :goto_5
    if-ne v4, v2, :cond_7

    return-object v1

    :cond_7
    if-ne v3, v2, :cond_8

    .line 193
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 200
    :cond_8
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const-wide/16 v9, 0x0

    if-ne v1, v6, :cond_9

    add-int/lit8 v4, v4, 0x1

    move v0, v8

    :cond_9
    :goto_6
    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    if-ge v4, v3, :cond_c

    .line 206
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    sub-int/2addr v5, v7

    sub-int v6, v2, v5

    int-to-long v11, v6

    const-wide/16 v13, 0xa

    .line 208
    div-long/2addr v11, v13

    cmp-long v6, v9, v11

    if-lez v6, :cond_b

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    move v1, v2

    .line 209
    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_b
    mul-long/2addr v9, v13

    int-to-long v1, v5

    add-long/2addr v9, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_c
    if-eqz v0, :cond_d

    neg-long v9, v9

    :cond_d
    const-wide/32 v3, 0x7fffffff

    cmp-long p0, v9, v3

    if-lez p0, :cond_e

    .line 219
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_e
    const-wide/32 v2, -0x80000000

    cmp-long p0, v9, v2

    if-gez p0, :cond_f

    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_f
    long-to-int p0, v9

    .line 225
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_10
    :goto_8
    return-object v1
.end method

.method private static parseInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5

    .line 231
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 232
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v1, v2, 0x30

    move v2, v4

    :goto_0
    if-ge v4, v0, :cond_1

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x30

    add-int/lit8 v3, v4, 0x1

    .line 240
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v1, v4

    move v4, v3

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    neg-int v1, v1

    .line 243
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static parseIntToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 264
    sget-object v0, Lorg/telegram/messenger/Utilities;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 265
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    .line 248
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 252
    :cond_0
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/Utilities;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 253
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 254
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 255
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :catch_0
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static native pbkdf2([B[B[BI)I
.end method

.method public static native pinBitmap(Landroid/graphics/Bitmap;)I
.end method

.method public static varargs raceCallbacks(Ljava/lang/Runnable;[Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "[",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 628
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 634
    filled-new-array {v0}, [I

    move-result-object v1

    .line 635
    new-instance v2, Lorg/telegram/messenger/Utilities$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1, p0}, Lorg/telegram/messenger/Utilities$$ExternalSyntheticLambda1;-><init>([I[Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;)V

    .line 643
    :goto_0
    array-length p0, p1

    if-ge v0, p0, :cond_2

    .line 644
    aget-object p0, p1, v0

    invoke-interface {p0, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p0, :cond_2

    .line 630
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public static native readlink(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native readlinkFd(I)Ljava/lang/String;
.end method

.method public static native setupNativeCrashesListener(Ljava/lang/String;)V
.end method

.method public static native stackBlurBitmap(Landroid/graphics/Bitmap;I)V
.end method

.method public static stackBlurBitmapMax(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-static {p0, v0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmapMax(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static stackBlurBitmapMax(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 9

    const/high16 v0, 0x41a00000    # 20.0f

    .line 101
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 102
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 103
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 104
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 105
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 106
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    if-eqz p1, :cond_0

    .line 108
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 109
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v7, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v4, v6, v7, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 110
    invoke-virtual {v3, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    const/4 p1, 0x0

    const/4 v4, 0x0

    .line 112
    invoke-virtual {v3, p0, v4, v4, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 113
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 114
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    div-int/lit16 p0, p0, 0x96

    const/16 p1, 0xa

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v2, p0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    return-object v2
.end method

.method public static stackBlurBitmapWithScaleFactor(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 6

    const/high16 v0, 0x41a00000    # 20.0f

    .line 119
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    .line 120
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    .line 121
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 123
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 124
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 125
    invoke-virtual {v2, p0, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 126
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 127
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    div-int/lit16 p0, p0, 0x96

    const/16 p1, 0xa

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method

.method public static swapItems(Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;II)V"
        }
    .end annotation

    .line 668
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 669
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 670
    invoke-interface {p0, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static tryParseLong(Ljava/lang/String;J)J
    .locals 0

    .line 675
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p1
.end method

.method public static native unpinBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public static uriParseSafe(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 661
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
