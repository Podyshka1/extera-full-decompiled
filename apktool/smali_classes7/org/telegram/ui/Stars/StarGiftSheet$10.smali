.class Lorg/telegram/ui/Stars/StarGiftSheet$10;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarGiftSheet;->getDummyFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarGiftSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V
    .locals 0

    .line 1279
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$10;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1287
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$10;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccount()I
    .locals 1

    .line 1282
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return v0
.end method

.method public getParentActivity()Landroid/app/Activity;
    .locals 2

    .line 1292
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$10;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1293
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 1294
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1295
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 1297
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 1304
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-object p1
.end method
