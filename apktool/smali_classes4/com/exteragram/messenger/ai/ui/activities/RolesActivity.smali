.class public Lcom/exteragram/messenger/ai/ui/activities/RolesActivity;
.super Lcom/exteragram/messenger/preferences/BasePreferencesActivity;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# direct methods
.method public static synthetic $r8$lambda$SQtCsRZtbWo43eDJbp0Yt-W5hBQ(Lcom/exteragram/messenger/ai/ui/activities/RolesActivity;Lcom/exteragram/messenger/ai/data/Role;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/ai/ui/activities/RolesActivity;->lambda$onLongClick$0(Lcom/exteragram/messenger/ai/data/Role;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_FhjieJ1WsSTOj_kl5h1caydUMI(Lcom/exteragram/messenger/ai/ui/activities/RolesActivity;Lcom/exteragram/messenger/ai/data/Role;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/ai/ui/activities/RolesActivity;->lambda$onLongClick$2(Lcom/exteragram/messenger/ai/data/Role;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dMC0u1YAg5Gm-NMpOV3eRObSPnE(Lcom/exteragram/messenger/ai/ui/activities/RolesActivity;Lcom/exteragram/messenger/ai/data/Role;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/ai/ui/activities/RolesActivity;->lambda$onLongClick$1(Lcom/exteragram/messenger/ai/data/Role;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onLongClick$0(Lcom/exteragram/messenger/ai/data/Role;)V
    .locals 1

    .line 116
    new-instance v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;

    invoke-direct {v0, p1}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;-><init>(Lcom/exteragram/messenger/ai/data/Role;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onLongClick$1(Lcom/exteragram/messenger/ai/data/Role;)V
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Role;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Role;->getPrompt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 120
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->TextCopied:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method

.method private synthetic lambda$onLongClick$2(Lcom/exteragram/messenger/ai/data/Role;)V
    .locals 2

    .line 124
    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Role;->isSelected()Z

    move-result v0

    .line 125
    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->getInstance()Lcom/exteragram/messenger/ai/AiController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/exteragram/messenger/ai/AiController;->removeRole(Lcom/exteragram/messenger/ai/data/Role;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->getInstance()Lcom/exteragram/messenger/ai/AiController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/AiController;->getSuggestedRoles()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/ai/data/Role;

    .line 130
    invoke-static {p1}, Lcom/exteragram/messenger/ai/AiConfig;->setSelectedRole(Lcom/exteragram/messenger/ai/data/Role;)V

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 60
    invoke-super {p0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    const/4 v1, 0x0

    .line 62
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_add:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lcom/exteragram/messenger/ai/ui/activities/RolesActivity$1;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/ai/ui/activities/RolesActivity$1;-><init>(Lcom/exteragram/messenger/ai/ui/activities/RolesActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 73
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 53
    sget p2, Lorg/telegram/messenger/NotificationCenter;->rolesUpdated:I

    if-ne p1, p2, :cond_0

    .line 54
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 4

    .line 83
    sget p2, Lorg/telegram/messenger/R$string;->RolesInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "exteraGramPlaceholders"

    const-string v1, "\ud83c\udfad"

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/Components/UItem;->asTopView(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget p2, Lorg/telegram/messenger/R$string;->Suggestions:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->getInstance()Lcom/exteragram/messenger/ai/AiController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/exteragram/messenger/ai/AiController;->getSuggestedRoles()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/ai/data/Role;

    .line 86
    invoke-virtual {v0}, Lcom/exteragram/messenger/ai/data/Role;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/exteragram/messenger/ai/data/Role;->getPrompt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/UItem;->asRadioButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {v0}, Lcom/exteragram/messenger/ai/data/Role;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    .line 87
    iput-object v0, v1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    .line 88
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 90
    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->getInstance()Lcom/exteragram/messenger/ai/AiController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/exteragram/messenger/ai/AiController;->getRoles()Ljava/util/List;

    move-result-object p2

    .line 92
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    sget v0, Lorg/telegram/messenger/R$string;->Roles:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/ai/data/Role;

    .line 95
    invoke-virtual {v0}, Lcom/exteragram/messenger/ai/data/Role;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/exteragram/messenger/ai/data/Role;->getPrompt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/UItem;->asRadioButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v0}, Lcom/exteragram/messenger/ai/data/Role;->isSelected()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    .line 96
    iput-object v0, v2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    .line 97
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 78
    sget v0, Lorg/telegram/messenger/R$string;->Roles:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 104
    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p2, p1, Lcom/exteragram/messenger/ai/data/Role;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/exteragram/messenger/ai/data/Role;

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Role;->isSelected()Z

    move-result p2

    if-nez p2, :cond_0

    .line 105
    invoke-static {p1}, Lcom/exteragram/messenger/ai/AiConfig;->setSelectedRole(Lcom/exteragram/messenger/ai/data/Role;)V

    .line 106
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 41
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->rolesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 42
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 47
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->rolesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 48
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method

.method protected onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 112
    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p3, p1, Lcom/exteragram/messenger/ai/data/Role;

    if-eqz p3, :cond_2

    check-cast p1, Lcom/exteragram/messenger/ai/data/Role;

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Role;->isSuggestion()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    .line 115
    :cond_0
    invoke-static {p0, p2}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    sget p5, Lorg/telegram/messenger/R$string;->Edit:I

    .line 116
    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p5

    new-instance v0, Lcom/exteragram/messenger/ai/ui/activities/RolesActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/ai/ui/activities/RolesActivity$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/ai/ui/activities/RolesActivity;Lcom/exteragram/messenger/ai/data/Role;)V

    invoke-virtual {p3, p4, p5, v0}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    sget p5, Lorg/telegram/messenger/R$string;->Copy:I

    .line 117
    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p5

    new-instance v0, Lcom/exteragram/messenger/ai/ui/activities/RolesActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/ai/ui/activities/RolesActivity$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/ai/ui/activities/RolesActivity;Lcom/exteragram/messenger/ai/data/Role;)V

    invoke-virtual {p3, p4, p5, v0}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget p5, Lorg/telegram/messenger/R$string;->Delete:I

    .line 123
    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p5

    new-instance v0, Lcom/exteragram/messenger/ai/ui/activities/RolesActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/ai/ui/activities/RolesActivity$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/ai/ui/activities/RolesActivity;Lcom/exteragram/messenger/ai/data/Role;)V

    const/4 p1, 0x1

    invoke-virtual {p3, p4, p5, p1, v0}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p3

    iget-object p4, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    .line 135
    invoke-virtual {p4, p2}, Lorg/telegram/ui/Components/RecyclerListView;->getClipBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p2

    .line 136
    sget-boolean p3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p3, :cond_1

    const/4 p3, 0x3

    goto :goto_0

    :cond_1
    const/4 p3, 0x5

    :goto_0
    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p2

    .line 137
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
