.class Lorg/telegram/messenger/video/VideoAds$2;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/video/VideoAds;->showPremium()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/video/VideoAds;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/video/VideoAds;)V
    .locals 0

    .line 759
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoAds$2;->this$0:Lorg/telegram/messenger/video/VideoAds;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 766
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccount()I
    .locals 1

    .line 762
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoAds$2;->this$0:Lorg/telegram/messenger/video/VideoAds;

    invoke-static {v0}, Lorg/telegram/messenger/video/VideoAds;->-$$Nest$fgetcurrentAccount(Lorg/telegram/messenger/video/VideoAds;)I

    move-result v0

    return v0
.end method

.method public getParentActivity()Landroid/app/Activity;
    .locals 1

    .line 770
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 771
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    :cond_0
    return-object v0
.end method
