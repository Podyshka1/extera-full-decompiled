.class Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$1;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$1;->this$1:Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 374
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$1;->this$1:Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccount()I
    .locals 1

    .line 369
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return v0
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$1;->this$1:Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method
