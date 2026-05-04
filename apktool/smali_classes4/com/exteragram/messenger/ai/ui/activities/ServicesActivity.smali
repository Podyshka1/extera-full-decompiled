.class public Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity;
.super Lcom/exteragram/messenger/preferences/BasePreferencesActivity;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# direct methods
.method public static synthetic $r8$lambda$OONzn5G6NYTSHpV9w0LSxPkfQFQ(Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity;Lcom/exteragram/messenger/ai/data/Service;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity;->lambda$onLongClick$2(Lcom/exteragram/messenger/ai/data/Service;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c2MCF-jHeNUWAoNRGCQH8T732bk(Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity;Lcom/exteragram/messenger/ai/data/Service;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity;->lambda$onLongClick$0(Lcom/exteragram/messenger/ai/data/Service;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ibV5cABogKwqi_jdsvMBo-M1fS8(Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity;Lcom/exteragram/messenger/ai/data/Service;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity;->lambda$onLongClick$1(Lcom/exteragram/messenger/ai/data/Service;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onLongClick$0(Lcom/exteragram/messenger/ai/data/Service;)V
    .locals 1

    .line 116
    new-instance v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;

    invoke-direct {v0, p1}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;-><init>(Lcom/exteragram/messenger/ai/data/Service;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onLongClick$1(Lcom/exteragram/messenger/ai/data/Service;)V
    .locals 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Service;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Service;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Service;->getKey()Ljava/lang/String;

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

.method private synthetic lambda$onLongClick$2(Lcom/exteragram/messenger/ai/data/Service;)V
    .locals 1

    .line 124
    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->getInstance()Lcom/exteragram/messenger/ai/AiController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/ai/AiController;->removeService(Lcom/exteragram/messenger/ai/data/Service;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Service;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    invoke-static {}, Lcom/exteragram/messenger/ai/AiConfig;->clearSelectedService()V

    .line 131
    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->getInstance()Lcom/exteragram/messenger/ai/AiController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/AiController;->isServicesEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 132
    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->getInstance()Lcom/exteragram/messenger/ai/AiController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/AiController;->getAll()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/ai/data/Service;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/AiConfig;->setSelectedServices(Lcom/exteragram/messenger/ai/data/Service;)V

    .line 136
    :cond_1
    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->getInstance()Lcom/exteragram/messenger/ai/AiController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/AiController;->isServicesEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 137
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 139
    :cond_2
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 61
    sget p2, Lorg/telegram/messenger/NotificationCenter;->servicesUpdated:I

    if-ne p1, p2, :cond_0

    .line 62
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 4

    .line 73
    sget p2, Lorg/telegram/messenger/R$string;->ServicesInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "exteraGramPlaceholders"

    const-string v1, "\ud83d\udd11"

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/Components/UItem;->asTopView(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget p2, Lorg/telegram/messenger/R$string;->Services:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->getInstance()Lcom/exteragram/messenger/ai/AiController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/exteragram/messenger/ai/AiController;->getAll()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/ai/data/Service;

    .line 76
    invoke-virtual {v0}, Lcom/exteragram/messenger/ai/data/Service;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/exteragram/messenger/ai/data/Service;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/UItem;->asRadioButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {v0}, Lcom/exteragram/messenger/ai/data/Service;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    .line 77
    iput-object v0, v1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    .line 78
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->poll_add_circle:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 82
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->poll_add_plus:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 84
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 85
    new-instance v1, Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity$1;-><init>(Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 95
    sget p2, Lorg/telegram/messenger/R$string;->NewService:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {v0, v1, p2}, Lorg/telegram/ui/Components/UItem;->asButton(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const/16 v0, 0x3d

    .line 96
    iput v0, p2, Lorg/telegram/ui/Components/UItem;->pad:I

    .line 97
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 68
    sget v0, Lorg/telegram/messenger/R$string;->Services:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 102
    iget p2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 p3, 0x1

    if-nez p2, :cond_0

    iget-object p2, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p4, p2, Lcom/exteragram/messenger/ai/data/Service;

    if-eqz p4, :cond_0

    check-cast p2, Lcom/exteragram/messenger/ai/data/Service;

    invoke-virtual {p2}, Lcom/exteragram/messenger/ai/data/Service;->isSelected()Z

    move-result p4

    if-nez p4, :cond_0

    .line 103
    invoke-static {p2}, Lcom/exteragram/messenger/ai/AiConfig;->setSelectedServices(Lcom/exteragram/messenger/ai/data/Service;)V

    .line 104
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    .line 105
    :cond_0
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne p1, p3, :cond_1

    .line 106
    new-instance p1, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;

    invoke-direct {p1}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 49
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->servicesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 50
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 55
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->servicesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 56
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method

.method protected onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 112
    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p3, p1, Lcom/exteragram/messenger/ai/data/Service;

    if-eqz p3, :cond_1

    check-cast p1, Lcom/exteragram/messenger/ai/data/Service;

    .line 115
    invoke-static {p0, p2}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    sget p5, Lorg/telegram/messenger/R$string;->Edit:I

    .line 116
    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p5

    new-instance v0, Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity;Lcom/exteragram/messenger/ai/data/Service;)V

    invoke-virtual {p3, p4, p5, v0}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    sget p5, Lorg/telegram/messenger/R$string;->Copy:I

    .line 117
    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p5

    new-instance v0, Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity;Lcom/exteragram/messenger/ai/data/Service;)V

    invoke-virtual {p3, p4, p5, v0}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget p5, Lorg/telegram/messenger/R$string;->Delete:I

    .line 123
    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p5

    new-instance v0, Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity;Lcom/exteragram/messenger/ai/data/Service;)V

    const/4 p1, 0x1

    invoke-virtual {p3, p4, p5, p1, v0}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p3

    .line 142
    sget-boolean p4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p4, :cond_0

    const/4 p4, 0x3

    goto :goto_0

    :cond_0
    const/4 p4, 0x5

    :goto_0
    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p3

    iget-object p4, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    .line 143
    invoke-virtual {p4, p2}, Lorg/telegram/ui/Components/RecyclerListView;->getClipBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p2

    .line 144
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
