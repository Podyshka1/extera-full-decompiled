.class public Lcom/exteragram/messenger/utils/system/SystemUtils$ExternalApp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/utils/system/SystemUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalApp"
.end annotation


# instance fields
.field private final activityName:Ljava/lang/String;

.field private final appIcon:Landroid/graphics/drawable/Drawable;

.field private final appName:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Lcom/exteragram/messenger/utils/system/SystemUtils$ExternalApp;->packageName:Ljava/lang/String;

    .line 294
    iput-object p2, p0, Lcom/exteragram/messenger/utils/system/SystemUtils$ExternalApp;->activityName:Ljava/lang/String;

    .line 295
    invoke-direct {p0}, Lcom/exteragram/messenger/utils/system/SystemUtils$ExternalApp;->fetchIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/utils/system/SystemUtils$ExternalApp;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 296
    invoke-direct {p0}, Lcom/exteragram/messenger/utils/system/SystemUtils$ExternalApp;->fetchName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/utils/system/SystemUtils$ExternalApp;->appName:Ljava/lang/String;

    return-void
.end method

.method private fetchIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 322
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/utils/system/SystemUtils$ExternalApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 323
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0, v4, v3}, Lcom/exteragram/messenger/utils/ui/UIUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 325
    :catch_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_media:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private fetchName()Ljava/lang/String;
    .locals 5

    .line 308
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 312
    :try_start_0
    iget-object v2, p0, Lcom/exteragram/messenger/utils/system/SystemUtils$ExternalApp;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    .line 314
    :catch_0
    sget v2, Lorg/telegram/messenger/R$string;->NumberUnknown:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez v1, :cond_0

    goto :goto_1

    .line 316
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :goto_1
    return-object v2
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/exteragram/messenger/utils/system/SystemUtils$ExternalApp;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/exteragram/messenger/utils/system/SystemUtils$ExternalApp;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public open(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    .line 332
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 333
    iget-object p2, p0, Lcom/exteragram/messenger/utils/system/SystemUtils$ExternalApp;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/exteragram/messenger/utils/system/SystemUtils$ExternalApp;->activityName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 334
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 p2, 0x1f4

    .line 335
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 337
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method
