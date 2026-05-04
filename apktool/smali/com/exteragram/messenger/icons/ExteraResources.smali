.class public final Lcom/exteragram/messenger/icons/ExteraResources;
.super Landroid/content/res/Resources;
.source "SourceFile"


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    const-string/jumbo v0, "mResources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 9
    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/exteragram/messenger/icons/ExteraResources;->mResources:Landroid/content/res/Resources;

    .line 13
    sget-object p1, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/exteragram/messenger/icons/IconManager;->initialize$default(Lcom/exteragram/messenger/icons/IconManager;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 18
    sget-object v0, Lcom/exteragram/messenger/icons/ui/picker/IconObserver;->INSTANCE:Lcom/exteragram/messenger/icons/ui/picker/IconObserver;

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/icons/ui/picker/IconObserver;->log(I)V

    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/exteragram/messenger/icons/IconManager;->getDrawable(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 23
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/icons/IconManager;->getIcon(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 25
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/exteragram/messenger/icons/ExteraResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final getOriginalDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/exteragram/messenger/icons/ExteraResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
