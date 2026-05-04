.class public Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;
.super Lcom/exteragram/messenger/preferences/BasePreferencesActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$ItemInfo;
    }
.end annotation


# instance fields
.field private activeSectionId:I

.field private hiddenSectionId:I

.field private final itemDetails:Ljava/util/HashMap;

.field private reorderIcon:Landroid/graphics/drawable/Drawable;

.field private resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;


# direct methods
.method public static synthetic $r8$lambda$DSRisS-MGi-1MmXTEXjqJW3wjJo(Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->lambda$createView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZNAThjqAeJc9LOjkEYIGUxiiUGM(Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$ItemInfo;Landroid/view/View;)V
    .locals 2

    .line 147
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_0

    .line 148
    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    iget v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$ItemInfo;->iconColorTop:I

    iget v1, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$ItemInfo;->iconColorBottom:I

    iget p0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$ItemInfo;->iconRes:I

    invoke-virtual {p1, v0, v1, p0}, Lorg/telegram/ui/Cells/TextCell;->setColorfulIcon(III)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$dI1FQDoFO_2vqGuejmNBeW_Ae-M(Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;ILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->updateConfigFromReorder(ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iyvhC-pD6FBYQEB7e4t03SKrUzc(Ljava/lang/Boolean;)V
    .locals 0

    .line 177
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->infiniteScrolling:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->itemDetails:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->activeSectionId:I

    .line 42
    iput v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->hiddenSectionId:I

    return-void
.end method

.method private addMenuSection(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 4

    .line 127
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSectionStart()V

    .line 128
    invoke-static {p3}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionStart()I

    move-result p3

    .line 131
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/Integer;

    .line 132
    iget-object v3, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->itemDetails:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$ItemInfo;

    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v3}, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->createMenuItem(ILcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$ItemInfo;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionEnd()V

    .line 139
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSectionEnd()V

    return p3
.end method

.method private createMenuItem(ILcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$ItemInfo;)Lorg/telegram/ui/Components/UItem;
    .locals 2

    .line 144
    iget v0, p2, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$ItemInfo;->iconRes:I

    iget-object v1, p2, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$ItemInfo;->name:Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    .line 145
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->reorderIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p1, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    .line 146
    new-instance v0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$ItemInfo;)V

    iput-object v0, p1, Lorg/telegram/ui/Components/UItem;->bind:Lorg/telegram/messenger/Utilities$Callback;

    return-object p1
.end method

.method private initItemDetails()V
    .locals 8

    .line 69
    invoke-static {}, Lcom/exteragram/messenger/pillstack/core/PillRegistry;->getRegisteredPills()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/exteragram/messenger/pillstack/core/PillRegistry$PillInfo;

    .line 70
    iget-object v2, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->itemDetails:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/exteragram/messenger/pillstack/core/PillRegistry$PillInfo;->id()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$ItemInfo;

    invoke-virtual {v1}, Lcom/exteragram/messenger/pillstack/core/PillRegistry$PillInfo;->name()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1}, Lcom/exteragram/messenger/pillstack/core/PillRegistry$PillInfo;->iconRes()I

    move-result v6

    invoke-virtual {v1}, Lcom/exteragram/messenger/pillstack/core/PillRegistry$PillInfo;->iconColorTop()I

    move-result v7

    invoke-virtual {v1}, Lcom/exteragram/messenger/pillstack/core/PillRegistry$PillInfo;->iconColorBottom()I

    move-result v1

    invoke-direct {v4, v5, v6, v7, v1}, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$ItemInfo;-><init>(Ljava/lang/CharSequence;III)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->resetToDefault()V

    return-void
.end method

.method private resetToDefault()V
    .locals 4

    .line 219
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->activePills:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 220
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->activePills:Ljava/util/ArrayList;

    invoke-static {}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->getDefaultActivePills()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 222
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->hiddenPills:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 223
    invoke-static {}, Lcom/exteragram/messenger/pillstack/core/PillRegistry;->getRegisteredPills()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/exteragram/messenger/pillstack/core/PillRegistry$PillInfo;

    .line 224
    sget-object v2, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->activePills:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/exteragram/messenger/pillstack/core/PillRegistry$PillInfo;->id()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    sget-object v2, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->hiddenPills:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/exteragram/messenger/pillstack/core/PillRegistry$PillInfo;->id()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_1
    invoke-static {}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->savePillsLayout()V

    .line 230
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pillStackLayoutChanged:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 233
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 236
    :cond_2
    invoke-direct {p0}, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->updateResetButtonVisibility()V

    return-void
.end method

.method private saveAndNotify()V
    .locals 3

    .line 195
    invoke-static {}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->savePillsLayout()V

    .line 196
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pillStackLayoutChanged:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 198
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->updateResetButtonVisibility()V

    return-void
.end method

.method private updateConfigFromReorder(ILjava/util/ArrayList;)V
    .locals 4

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/ui/Components/UItem;

    .line 158
    iget v3, v3, Lorg/telegram/ui/Components/UItem;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    :cond_0
    iget p2, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->activeSectionId:I

    if-ne p1, p2, :cond_1

    .line 162
    sget-object p1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->activePills:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 163
    sget-object p1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->activePills:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 164
    :cond_1
    iget p2, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->hiddenSectionId:I

    if-ne p1, p2, :cond_2

    .line 165
    sget-object p1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->hiddenPills:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 166
    sget-object p1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->hiddenPills:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 169
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->saveAndNotify()V

    return-void
.end method

.method private updateResetButtonVisibility()V
    .locals 5

    .line 204
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->activePills:Ljava/util/ArrayList;

    .line 207
    invoke-static {}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->getDefaultActivePills()Ljava/util/ArrayList;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 211
    iget-object v3, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 212
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0, v2, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 81
    invoke-super {p0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    const/4 v1, 0x0

    .line 84
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_reset:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 85
    sget v1, Lorg/telegram/messenger/R$string;->Reset:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 87
    invoke-direct {p0}, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->updateResetButtonVisibility()V

    .line 89
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->allowReorder(Z)V

    .line 93
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v1, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->listenReorder(Lorg/telegram/messenger/Utilities$Callback2;)V

    :cond_0
    return-object p1
.end method

.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->reorderIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->list_reorder:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->reorderIcon:Landroid/graphics/drawable/Drawable;

    .line 105
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->Settings:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget v0, Lorg/telegram/messenger/R$string;->PillStackInfiniteScrolling:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const-string v1, "pillStackInfiniteScrolling"

    .line 108
    invoke-virtual {v0, v1, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    sget-boolean v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->infiniteScrolling:Z

    .line 109
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 110
    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x1

    .line 112
    iput v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->activeSectionId:I

    .line 113
    iput v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->hiddenSectionId:I

    .line 114
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->activePills:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    sget v0, Lorg/telegram/messenger/R$string;->PillStackActivePills:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->activePills:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->addMenuSection(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->activeSectionId:I

    .line 116
    sget v0, Lorg/telegram/messenger/R$string;->PillStackPillsSettingsInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_1
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->hiddenPills:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    sget v0, Lorg/telegram/messenger/R$string;->PillStackHiddenPills:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->hiddenPills:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->addMenuSection(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p2

    iput p2, p0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->hiddenSectionId:I

    .line 120
    sget-object p2, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->activePills:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 121
    sget p2, Lorg/telegram/messenger/R$string;->PillStackPillsSettingsInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 76
    sget v0, Lorg/telegram/messenger/R$string;->PillStackPills:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializeOptionStrings()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->initItemDetails()V

    return-void
.end method

.method protected onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 174
    iget p2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/16 p3, 0x3e8

    if-ne p2, p3, :cond_0

    .line 177
    sget-object p2, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->preferences:Landroid/content/SharedPreferences;

    new-instance p3, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity$$ExternalSyntheticLambda0;-><init>()V

    const-string p4, "infiniteScrolling"

    invoke-virtual {p0, p2, p4, p1, p3}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Landroid/content/SharedPreferences;Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 181
    :cond_0
    sget-object p1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->activePills:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 182
    sget-object p1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->activePills:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 183
    sget-object p1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->hiddenPills:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 184
    sget-object p1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->hiddenPills:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 186
    :cond_1
    sget-object p1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->hiddenPills:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 187
    sget-object p1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->hiddenPills:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 188
    sget-object p1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->activePills:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;->saveAndNotify()V

    return-void
.end method
