.class public Lcom/exteragram/messenger/icons/ui/IconPacksActivity;
.super Lcom/exteragram/messenger/preferences/BasePreferencesActivity;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

.field private reorderRunnable:Ljava/lang/Runnable;

.field private scrollUpdated:Z


# direct methods
.method public static synthetic $r8$lambda$5ACnyBOPEUZ6o3wgWrjnrOh2IGg(Lcom/exteragram/messenger/icons/ui/IconPacksActivity;ILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->updateConfigFromReorder(ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LqmqOuIh2xIk9BoWfUOTsyPkywM(Lcom/exteragram/messenger/icons/ui/IconPacksActivity;Lcom/exteragram/messenger/icons/IconPack;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->lambda$onLongClick$8(Lcom/exteragram/messenger/icons/IconPack;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U4dmbRx1dF4VkHrZTQScO82dviM(Lcom/exteragram/messenger/icons/ui/IconPacksActivity;Lcom/exteragram/messenger/icons/IconPack;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->lambda$onLongClick$5(Lcom/exteragram/messenger/icons/IconPack;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WjW3LCyM3kqISSLwVPg4VoKIESU()V
    .locals 2

    .line 147
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/icons/IconManager;->initialize(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$a5C-ysBVdSaHJTYIUcmsQboQCOo(Lcom/exteragram/messenger/icons/ui/IconPacksActivity;Lcom/exteragram/messenger/icons/IconPack;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->lambda$onLongClick$6(Lcom/exteragram/messenger/icons/IconPack;)V

    return-void
.end method

.method public static synthetic $r8$lambda$biPVyJDD97ACpIMhVDQJD9lVQ-s(Lcom/exteragram/messenger/icons/ui/IconPacksActivity;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->lambda$onLongClick$4(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g0n00uSlvmBHF5Trq6Dx50MaK64(Lcom/exteragram/messenger/icons/ui/IconPacksActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->lambda$createView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gEU1TCtm9qrHBLXR597ebZbzNmY(Ljava/lang/String;)Z
    .locals 1

    .line 289
    const-string v0, "base."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gJa5zzLy8w8lRcTlJ2vds1BEO-w(Lcom/exteragram/messenger/icons/ui/IconPacksActivity;Lcom/exteragram/messenger/icons/IconPack;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->lambda$onLongClick$3(Lcom/exteragram/messenger/icons/IconPack;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yeoksJ8UUWqi85ktaLHxadW2rRs(Lcom/exteragram/messenger/icons/IconPack;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 345
    sget-object p1, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    invoke-virtual {p0}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/exteragram/messenger/icons/IconManager;->deletePack(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetfloatingButton(Lcom/exteragram/messenger/icons/ui/IconPacksActivity;)Lorg/telegram/ui/Components/FragmentFloatingButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollUpdated(Lcom/exteragram/messenger/icons/ui/IconPacksActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->scrollUpdated:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputscrollUpdated(Lcom/exteragram/messenger/icons/ui/IconPacksActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->scrollUpdated:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;-><init>()V

    return-void
.end method

.method private getPackById(Ljava/lang/String;)Lcom/exteragram/messenger/icons/IconPack;
    .locals 1

    .line 274
    const-string v0, "base."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    sget-object v0, Lcom/exteragram/messenger/icons/BaseIconPacks;->INSTANCE:Lcom/exteragram/messenger/icons/BaseIconPacks;

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/icons/BaseIconPacks;->getBasePack(Ljava/lang/String;)Lcom/exteragram/messenger/icons/IconPack;

    move-result-object p1

    return-object p1

    .line 277
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/icons/IconManager;->findPackById(Ljava/lang/String;)Lcom/exteragram/messenger/icons/IconPack;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;)V
    .locals 1

    .line 84
    new-instance p1, Lcom/exteragram/messenger/icons/ui/components/NewIconPackBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/exteragram/messenger/icons/ui/components/NewIconPackBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$onLongClick$3(Lcom/exteragram/messenger/icons/IconPack;)V
    .locals 3

    .line 321
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->editingIconPackId:Ljava/lang/String;

    const-string v2, "editingIconPackId"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 322
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/exteragram/messenger/icons/ui/picker/IconPickerController;->setActive(Lorg/telegram/ui/LaunchActivity;Z)V

    .line 323
    new-instance v0, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;

    invoke-direct {v0, p1}, Lcom/exteragram/messenger/icons/ui/IconPacksEditorActivity;-><init>(Lcom/exteragram/messenger/icons/IconPack;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onLongClick$4(Ljava/io/File;)V
    .locals 4

    .line 330
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 331
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 334
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 335
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$onLongClick$5(Lcom/exteragram/messenger/icons/IconPack;)V
    .locals 1

    .line 327
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    invoke-virtual {p1}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/icons/IconManager;->bundlePackBlocking(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 329
    new-instance v0, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$$ExternalSyntheticLambda9;-><init>(Lcom/exteragram/messenger/icons/ui/IconPacksActivity;Ljava/io/File;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onLongClick$6(Lcom/exteragram/messenger/icons/IconPack;)V
    .locals 2

    .line 326
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$$ExternalSyntheticLambda8;-><init>(Lcom/exteragram/messenger/icons/ui/IconPacksActivity;Lcom/exteragram/messenger/icons/IconPack;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onLongClick$8(Lcom/exteragram/messenger/icons/IconPack;)V
    .locals 5

    .line 342
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->DeletePack:I

    .line 343
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->DeletePackInfo:I

    .line 344
    invoke-virtual {p1}, Lcom/exteragram/messenger/icons/IconPack;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    .line 345
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$$ExternalSyntheticLambda7;-><init>(Lcom/exteragram/messenger/icons/IconPack;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 346
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 348
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 349
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v0, -0x1

    .line 350
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 352
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private updateConfigFromReorder(ILjava/util/ArrayList;)V
    .locals 7

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/ui/Components/UItem;

    .line 110
    iget-object v4, v4, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v5, v4, Lcom/exteragram/messenger/icons/IconPack;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/exteragram/messenger/icons/IconPack;

    .line 111
    invoke-virtual {v4}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_1
    sget-object p2, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    move v4, v3

    :cond_2
    :goto_1
    const-string v5, "base."

    if-ge v4, v1, :cond_4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Ljava/lang/String;

    .line 117
    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 118
    :cond_3
    invoke-direct {p0, v6}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->getPackById(Ljava/lang/String;)Lcom/exteragram/messenger/icons/IconPack;

    move-result-object v5

    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 p2, 0x1

    if-le v3, p2, :cond_5

    if-nez p1, :cond_5

    move p1, p2

    goto :goto_2

    :cond_5
    move p1, v2

    :goto_2
    if-eqz p1, :cond_8

    .line 125
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_6
    if-ge v2, v3, :cond_7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Ljava/lang/String;

    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    .line 132
    :goto_3
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 133
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v4, :cond_9

    .line 135
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 138
    :cond_8
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->iconPacksHidden:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 139
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->iconPacksHidden:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 142
    :cond_9
    :goto_4
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->saveIconPacksLayout()V

    if-eqz p1, :cond_b

    .line 144
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->reorderRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_a

    .line 145
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 147
    :cond_a
    new-instance p1, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$$ExternalSyntheticLambda6;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->reorderRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    .line 148
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 150
    :cond_b
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_c

    .line 151
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_c
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 79
    invoke-super {p0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 81
    new-instance v1, Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, p1, v2}, Lorg/telegram/ui/Components/FragmentFloatingButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    .line 82
    iget-object p1, v1, Lorg/telegram/ui/Components/FragmentFloatingButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_add:I

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 83
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    sget v1, Lorg/telegram/messenger/R$string;->Add:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 84
    iget-object p1, p0, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    new-instance v1, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/icons/ui/IconPacksActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    instance-of p1, v0, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    move-object p1, v0

    check-cast p1, Landroid/widget/FrameLayout;

    .line 86
    iget-object v1, p0, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-static {}, Lorg/telegram/ui/Components/FragmentFloatingButton;->createDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 90
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->allowReorder(Z)V

    .line 91
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->setReorderHandleOnly(Z)V

    .line 92
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v1, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$$ExternalSyntheticLambda4;-><init>(Lcom/exteragram/messenger/icons/ui/IconPacksActivity;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->listenReorder(Lorg/telegram/messenger/Utilities$Callback2;)V

    .line 94
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v1, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$1;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$1;-><init>(Lcom/exteragram/messenger/icons/ui/IconPacksActivity;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_1
    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 64
    sget p2, Lorg/telegram/messenger/NotificationCenter;->iconPackUpdated:I

    if-ne p1, p2, :cond_0

    .line 65
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 66
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 11

    .line 163
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    invoke-virtual {v0}, Lcom/exteragram/messenger/icons/IconManager;->getCustomPacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/exteragram/messenger/icons/IconPack;

    .line 164
    invoke-virtual {v3}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object v3

    .line 165
    sget-object v5, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/exteragram/messenger/ExteraConfig;->iconPacksHidden:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 166
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->iconPacksHidden:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 170
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->saveIconPacksLayout()V

    .line 172
    :cond_2
    const-string v0, "base.solar"

    const-string v2, "base.remix"

    const-string v3, "base.default"

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 174
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :cond_3
    const-string v7, "base."

    if-ge v6, v5, :cond_4

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    check-cast v8, Ljava/lang/String;

    .line 175
    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v3, v8

    .line 181
    :cond_4
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSectionStart()V

    .line 182
    sget v2, Lorg/telegram/messenger/R$string;->BasePacks:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    :goto_1
    const/4 v5, 0x3

    if-ge v2, v5, :cond_6

    .line 183
    aget-object v5, v0, v2

    .line 184
    invoke-direct {p0, v5}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->getPackById(Ljava/lang/String;)Lcom/exteragram/messenger/icons/IconPack;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 186
    invoke-static {v6}, Lcom/exteragram/messenger/icons/ui/components/IconPackCell$Factory;->asIconPackCell(Lcom/exteragram/messenger/icons/IconPack;)Lorg/telegram/ui/Components/UItem;

    move-result-object v6

    .line 187
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v6, Lorg/telegram/ui/Components/UItem;->checked:Z

    .line 188
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 191
    :cond_6
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSectionEnd()V

    .line 192
    sget v0, Lorg/telegram/messenger/R$string;->BaseIconPackInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :cond_7
    if-ge v3, v2, :cond_8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Ljava/lang/String;

    .line 196
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    move v0, v4

    goto :goto_2

    :cond_8
    move v0, v1

    :goto_2
    if-eqz v0, :cond_12

    .line 203
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSectionStart()V

    .line 204
    sget v2, Lorg/telegram/messenger/R$string;->EnabledPacks:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v1

    move v6, v5

    :cond_9
    :goto_3
    if-ge v6, v3, :cond_b

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    check-cast v8, Ljava/lang/String;

    .line 208
    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_3

    .line 209
    :cond_a
    invoke-direct {p0, v8}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->getPackById(Ljava/lang/String;)Lcom/exteragram/messenger/icons/IconPack;

    move-result-object v8

    if-eqz v8, :cond_9

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    if-le v5, v4, :cond_c

    .line 212
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionStart()I

    .line 215
    :cond_c
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v1

    :cond_d
    :goto_4
    if-ge v6, v3, :cond_10

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    check-cast v8, Ljava/lang/String;

    .line 216
    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_4

    .line 217
    :cond_e
    invoke-direct {p0, v8}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->getPackById(Ljava/lang/String;)Lcom/exteragram/messenger/icons/IconPack;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 219
    invoke-static {v8}, Lcom/exteragram/messenger/icons/ui/components/IconPackCell$Factory;->asIconPackCell(Lcom/exteragram/messenger/icons/IconPack;)Lorg/telegram/ui/Components/UItem;

    move-result-object v8

    if-le v5, v4, :cond_f

    move v9, v4

    goto :goto_5

    :cond_f
    move v9, v1

    :goto_5
    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/UItem;->setReordering(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    if-le v5, v4, :cond_11

    .line 224
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionEnd()V

    .line 226
    :cond_11
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSectionEnd()V

    .line 230
    :cond_12
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->iconPacksHidden:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v1

    :cond_13
    if-ge v5, v3, :cond_14

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    .line 231
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    move v2, v4

    goto :goto_6

    :cond_14
    move v2, v1

    :goto_6
    if-eqz v2, :cond_1f

    if-eqz v0, :cond_15

    .line 239
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->asShadow()Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_15
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSectionStart()V

    .line 243
    sget v3, Lorg/telegram/messenger/R$string;->AllPacks:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v3, Lcom/exteragram/messenger/ExteraConfig;->iconPacksHidden:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    move v8, v6

    :cond_16
    :goto_7
    if-ge v8, v5, :cond_18

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Ljava/lang/String;

    .line 247
    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    goto :goto_7

    .line 248
    :cond_17
    invoke-direct {p0, v9}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->getPackById(Ljava/lang/String;)Lcom/exteragram/messenger/icons/IconPack;

    move-result-object v9

    if-eqz v9, :cond_16

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_18
    if-le v6, v4, :cond_19

    .line 251
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionStart()I

    .line 254
    :cond_19
    sget-object v3, Lcom/exteragram/messenger/ExteraConfig;->iconPacksHidden:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v8, v1

    :cond_1a
    :goto_8
    if-ge v8, v5, :cond_1d

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Ljava/lang/String;

    .line 255
    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b

    goto :goto_8

    .line 256
    :cond_1b
    invoke-direct {p0, v9}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->getPackById(Ljava/lang/String;)Lcom/exteragram/messenger/icons/IconPack;

    move-result-object v9

    if-eqz v9, :cond_1a

    .line 258
    invoke-static {v9}, Lcom/exteragram/messenger/icons/ui/components/IconPackCell$Factory;->asIconPackCell(Lcom/exteragram/messenger/icons/IconPack;)Lorg/telegram/ui/Components/UItem;

    move-result-object v9

    if-le v6, v4, :cond_1c

    move v10, v4

    goto :goto_9

    :cond_1c
    move v10, v1

    :goto_9
    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/UItem;->setReordering(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1d
    if-le v6, v4, :cond_1e

    .line 263
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionEnd()V

    .line 265
    :cond_1e
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSectionEnd()V

    :cond_1f
    if-nez v0, :cond_21

    if-eqz v2, :cond_20

    goto :goto_a

    :cond_20
    return-void

    .line 269
    :cond_21
    :goto_a
    sget p2, Lorg/telegram/messenger/R$string;->IconPacksHint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 157
    sget v0, Lorg/telegram/messenger/R$string;->IconPacks:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 282
    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p2, p1, Lcom/exteragram/messenger/icons/IconPack;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/exteragram/messenger/icons/IconPack;

    .line 283
    invoke-virtual {p1}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object p1

    .line 284
    const-string p2, "base."

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 287
    sget-object p2, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 289
    :cond_0
    sget-object p2, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    new-instance p4, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$$ExternalSyntheticLambda5;

    invoke-direct {p4}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p2, p4}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    .line 290
    sget-object p2, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->saveIconPacksLayout()V

    .line 293
    sget-object p1, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    invoke-virtual {p1, p3}, Lcom/exteragram/messenger/icons/IconManager;->initialize(Z)V

    .line 294
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    .line 298
    :cond_1
    sget-object p2, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_2

    .line 299
    sget-object p2, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 300
    sget-object p2, Lcom/exteragram/messenger/ExteraConfig;->iconPacksHidden:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 301
    sget-object p2, Lcom/exteragram/messenger/ExteraConfig;->iconPacksHidden:Ljava/util/ArrayList;

    invoke-virtual {p2, p4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 303
    :cond_2
    sget-object p2, Lcom/exteragram/messenger/ExteraConfig;->iconPacksHidden:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 304
    sget-object p2, Lcom/exteragram/messenger/ExteraConfig;->iconPacksHidden:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 305
    sget-object p2, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    invoke-virtual {p2, p4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 307
    :cond_3
    :goto_0
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->saveIconPacksLayout()V

    .line 308
    sget-object p1, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    invoke-virtual {p1, p3}, Lcom/exteragram/messenger/icons/IconManager;->initialize(Z)V

    .line 309
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 52
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->iconPackUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 53
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 58
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 59
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->iconPackUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onInsets(IIII)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    neg-int v1, p4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setTranslationY(F)V

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->onInsets(IIII)V

    return-void
.end method

.method protected onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 7

    .line 315
    iget-object v0, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v1, v0, Lcom/exteragram/messenger/icons/IconPack;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/exteragram/messenger/icons/IconPack;

    .line 316
    invoke-virtual {v0}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object p1

    .line 317
    const-string p3, "base."

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 319
    :cond_0
    invoke-static {p0, p2}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p3

    sget-object p4, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    .line 320
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    sget p4, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    sget p5, Lorg/telegram/messenger/R$string;->Edit:I

    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p5

    new-instance v1, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/icons/ui/IconPacksActivity;Lcom/exteragram/messenger/icons/IconPack;)V

    invoke-virtual {p3, p1, p4, p5, v1}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$drawable;->msg_share:I

    sget p4, Lorg/telegram/messenger/R$string;->ShareFile:I

    .line 325
    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$$ExternalSyntheticLambda1;

    invoke-direct {p5, p0, v0}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/icons/ui/IconPacksActivity;Lcom/exteragram/messenger/icons/IconPack;)V

    invoke-virtual {p1, p3, p4, p5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget p4, Lorg/telegram/messenger/R$string;->Delete:I

    .line 341
    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$$ExternalSyntheticLambda2;

    invoke-direct {p5, p0, v0}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/icons/ui/IconPacksActivity;Lcom/exteragram/messenger/icons/IconPack;)V

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p4, v0, p5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    iget-object p3, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    .line 355
    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/RecyclerListView;->getClipBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 356
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return v0

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 359
    invoke-super/range {v1 .. v6}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z

    move-result p1

    return p1
.end method
