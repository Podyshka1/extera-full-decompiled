.class public Lorg/telegram/messenger/LocaleController$LocaleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleInfo"
.end annotation


# instance fields
.field public baseLangCode:Ljava/lang/String;

.field public baseVersion:I

.field public builtIn:Z

.field public isRtl:Z

.field public name:Ljava/lang/String;

.field public nameEnglish:Ljava/lang/String;

.field public pathToFile:Ljava/lang/String;

.field public pluralLangCode:Ljava/lang/String;

.field public serverIndex:I

.field public shortName:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWithString(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 480
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 483
    :cond_0
    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 485
    array-length v1, p0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_8

    .line 486
    new-instance v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    const/4 v1, 0x0

    .line 487
    aget-object v3, p0, v1

    iput-object v3, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    const/4 v3, 0x1

    .line 488
    aget-object v4, p0, v3

    iput-object v4, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    const/4 v4, 0x2

    .line 489
    aget-object v4, p0, v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    const/4 v4, 0x3

    .line 490
    aget-object v4, p0, v4

    iput-object v4, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 491
    array-length v4, p0

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1

    .line 492
    aget-object v2, p0, v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    .line 494
    :cond_1
    array-length v2, p0

    const/4 v4, 0x6

    if-lt v2, v4, :cond_2

    aget-object v2, p0, v5

    goto :goto_0

    :cond_2
    const-string v2, ""

    :goto_0
    iput-object v2, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    .line 495
    array-length v2, p0

    const/4 v5, 0x7

    if-lt v2, v5, :cond_3

    aget-object v2, p0, v4

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    :goto_1
    iput-object v2, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    .line 496
    array-length v2, p0

    const/16 v4, 0x8

    if-lt v2, v4, :cond_5

    .line 497
    aget-object v2, p0, v5

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_4

    move v1, v3

    :cond_4
    iput-boolean v1, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRtl:Z

    .line 499
    :cond_5
    array-length v1, p0

    const/16 v2, 0x9

    if-lt v1, v2, :cond_6

    .line 500
    aget-object v1, p0, v4

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseVersion:I

    .line 502
    :cond_6
    array-length v1, p0

    const/16 v3, 0xa

    if-lt v1, v3, :cond_7

    .line 503
    aget-object p0, p0, v2

    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    goto :goto_2

    :cond_7
    const p0, 0x7fffffff

    .line 505
    iput p0, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    .line 507
    :goto_2
    iget-object p0, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 508
    iget-object p0, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    const-string v1, "-"

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    :cond_8
    :goto_3
    return-object v0
.end method


# virtual methods
.method public getBaseLangCode()Ljava/lang/String;
    .locals 3

    .line 564
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 531
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRemote()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isUnofficial()Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "local_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 533
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isUnofficial()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unofficial_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 536
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    return-object v0
.end method

.method public getLangCode()Ljava/lang/String;
    .locals 3

    .line 560
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathToBaseFile()Ljava/io/File;
    .locals 4

    .line 524
    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isUnofficial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unofficial_base_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPathToFile()Ljava/io/File;
    .locals 5

    .line 515
    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRemote()Z

    move-result v0

    const-string v1, ".xml"

    if-eqz v0, :cond_0

    .line 516
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remote_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 517
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isUnofficial()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unofficial_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 520
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSaveString()Ljava/lang/String;
    .locals 4

    .line 474
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 475
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRtl:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseVersion:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasBaseLang()Z
    .locals 2

    .line 540
    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isUnofficial()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBuiltIn()Z
    .locals 1

    .line 556
    iget-boolean v0, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    return v0
.end method

.method public isLocal()Z
    .locals 1

    .line 552
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRemote()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isUnofficial()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRemote()Z
    .locals 2

    .line 544
    const-string/jumbo v0, "remote"

    iget-object v1, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUnofficial()Z
    .locals 2

    .line 548
    const-string/jumbo v0, "unofficial"

    iget-object v1, p0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
