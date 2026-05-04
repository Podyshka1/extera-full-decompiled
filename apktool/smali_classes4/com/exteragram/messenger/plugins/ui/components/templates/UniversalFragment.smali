.class public Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;
.super Lorg/telegram/ui/Components/UniversalFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;


# direct methods
.method static bridge synthetic -$$Nest$fgetdelegate(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;)Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;

    return-object p0
.end method

.method public constructor <init>(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/telegram/ui/Components/UniversalFragment;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;->beforeCreateView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 50
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/UniversalFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$1;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$1;-><init>(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 66
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;

    if-eqz v0, :cond_2

    .line 67
    invoke-interface {v0, p1}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;->afterCreateView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method

.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/UItem;",
            ">;",
            "Lorg/telegram/ui/Components/UniversalAdapter;",
            ")V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0, p1, p2}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    :cond_0
    return-void
.end method

.method public getActionBarMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;

    return-object v0
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackPressed(Z)Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;->onBackPressed()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 141
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed(Z)Z

    move-result p1

    return p1
.end method

.method protected onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 6

    .line 104
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 105
    invoke-interface/range {v0 .. v5}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;->onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;->onFragmentCreate()V

    .line 122
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;->onFragmentDestroy()V

    .line 130
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method

.method protected onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 6

    .line 111
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 112
    invoke-interface/range {v0 .. v5}, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;->onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setDelegate(Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment;->delegate:Lcom/exteragram/messenger/plugins/ui/components/templates/UniversalFragment$UniversalFragmentDelegate;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;ZJ)V
    .locals 2

    if-eqz p2, :cond_1

    .line 89
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0x12c

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleAnimated(Ljava/lang/CharSequence;ZJ)V

    return-void

    .line 92
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
