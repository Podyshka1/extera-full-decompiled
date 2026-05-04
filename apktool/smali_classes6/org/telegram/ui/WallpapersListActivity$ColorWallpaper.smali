.class public Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/WallpapersListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorWallpaper"
.end annotation


# instance fields
.field public color:I

.field public defaultCache:Landroid/graphics/Bitmap;

.field public gradientColor1:I

.field public gradientColor2:I

.field public gradientColor3:I

.field public gradientRotation:I

.field public intensity:F

.field public isGradient:Z

.field public motion:Z

.field public parentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

.field public path:Ljava/io/File;

.field public pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

.field public patternId:J

.field public slug:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    const/high16 p1, -0x1000000

    or-int/2addr p2, p1

    .line 317
    iput p2, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->color:I

    const/4 p2, 0x0

    if-nez p3, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    or-int/2addr p1, p3

    .line 318
    :goto_0
    iput p1, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor1:I

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p4, p2

    .line 319
    :goto_1
    iput p4, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientRotation:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 320
    iput p1, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->intensity:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    const/high16 p1, -0x1000000

    or-int/2addr p2, p1

    .line 325
    iput p2, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->color:I

    const/4 p2, 0x0

    if-nez p3, :cond_0

    move p3, p2

    goto :goto_0

    :cond_0
    or-int/2addr p3, p1

    .line 326
    :goto_0
    iput p3, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor1:I

    if-nez p4, :cond_1

    move p3, p2

    goto :goto_1

    :cond_1
    or-int p3, p4, p1

    .line 327
    :goto_1
    iput p3, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor2:I

    if-nez p5, :cond_2

    goto :goto_2

    :cond_2
    or-int p2, p5, p1

    .line 328
    :goto_2
    iput p2, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor3:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 329
    iput p1, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->intensity:F

    const/4 p1, 0x1

    .line 330
    iput-boolean p1, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->isGradient:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIFZLjava/io/File;)V
    .locals 0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    const/high16 p1, -0x1000000

    or-int/2addr p2, p1

    .line 353
    iput p2, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->color:I

    const/4 p2, 0x0

    if-nez p3, :cond_0

    move p3, p2

    goto :goto_0

    :cond_0
    or-int/2addr p3, p1

    .line 354
    :goto_0
    iput p3, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor1:I

    if-nez p4, :cond_1

    move p4, p2

    goto :goto_1

    :cond_1
    or-int/2addr p4, p1

    .line 355
    :goto_1
    iput p4, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor2:I

    if-nez p5, :cond_2

    goto :goto_2

    :cond_2
    or-int p2, p5, p1

    .line 356
    :goto_2
    iput p2, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor3:I

    if-eqz p3, :cond_3

    goto :goto_3

    :cond_3
    const/16 p6, 0x2d

    .line 357
    :goto_3
    iput p6, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientRotation:I

    .line 358
    iput p7, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->intensity:F

    .line 359
    iput-object p9, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->path:Ljava/io/File;

    .line 360
    iput-boolean p8, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->motion:Z

    return-void
.end method


# virtual methods
.method public getHash()Ljava/lang/String;
    .locals 2

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->color:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->intensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 311
    iget-object v1, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->slug:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 12

    .line 364
    iget v0, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor1:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "%02x%02x%02x"

    if-eqz v0, :cond_0

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v7, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor1:I

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor1:I

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v0, v9, v2

    aput-object v7, v9, v4

    aput-object v8, v9, v1

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v5

    .line 365
    :goto_0
    iget v7, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->color:I

    shr-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->color:I

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->color:I

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v7, v10, v2

    aput-object v8, v10, v4

    aput-object v9, v10, v1

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 366
    iget v8, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor2:I

    if-eqz v8, :cond_1

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor2:I

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor2:I

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v8, v11, v2

    aput-object v9, v11, v4

    aput-object v10, v11, v1

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v5

    .line 367
    :goto_1
    iget v9, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor3:I

    if-eqz v9, :cond_2

    shr-int/lit8 v5, v9, 0x10

    int-to-byte v5, v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v9, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor3:I

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientColor3:I

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    aput-object v9, v3, v4

    aput-object v10, v3, v1

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    :cond_2
    if-eqz v0, :cond_4

    if-eqz v8, :cond_4

    .line 369
    const-string v1, "~"

    if-eqz v5, :cond_3

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 372
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_6

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v1, :cond_5

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&rotation="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientRotation:I

    invoke-static {v0, v4}, Lorg/telegram/messenger/AndroidUtilities;->getWallpaperRotation(IZ)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 379
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?rotation="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->gradientRotation:I

    invoke-static {v0, v4}, Lorg/telegram/messenger/AndroidUtilities;->getWallpaperRotation(IZ)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 382
    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const-string v1, "/bg/"

    const-string v2, "https://"

    if-eqz v0, :cond_8

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?intensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->intensity:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&bg_color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    iget-boolean v1, p0, Lorg/telegram/ui/WallpapersListActivity$ColorWallpaper;->motion:Z

    if-eqz v1, :cond_7

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&mode=motion"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    return-object v0

    .line 389
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
