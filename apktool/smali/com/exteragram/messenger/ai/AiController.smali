.class public Lcom/exteragram/messenger/ai/AiController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/ai/AiController$SingletonHolder;
    }
.end annotation


# instance fields
.field private final roles:Ljava/util/List;

.field private final services:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$GAN7DJfLzfiCWdHz0lxFmu6o9ow(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 57
    invoke-static {}, Lcom/exteragram/messenger/ai/AiConfig;->clearConversationHistory()V

    .line 58
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$raw;->ic_delete:I

    sget p2, Lorg/telegram/messenger/R$string;->HistoryCleared:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public static synthetic $r8$lambda$_rldtqzshNd7nKNUy4DaU8vgYj8(Lorg/telegram/ui/Components/BulletinFactory;III)V
    .locals 0

    .line 132
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public static synthetic $r8$lambda$ml9V0PZBMdpgTeM8PwcrlItS8AE(Lcom/exteragram/messenger/ai/data/Role;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/exteragram/messenger/ai/data/Role;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/exteragram/messenger/ai/data/Role;->getPrompt()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->roles:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->services:Ljava/util/List;

    .line 43
    invoke-virtual {p0}, Lcom/exteragram/messenger/ai/AiController;->loadRoles()V

    .line 44
    invoke-virtual {p0}, Lcom/exteragram/messenger/ai/AiController;->loadServices()V

    return-void
.end method

.method public static canSendImage(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 297
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 301
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 302
    const-string v1, ".png"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".jpg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".jpeg"

    .line 303
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".webp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".heic"

    .line 304
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".heif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method public static canSendImage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    .line 291
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getPathToMessage(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 292
    invoke-static {v0}, Lcom/exteragram/messenger/ai/AiController;->canSendImage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static canUseAI()Z
    .locals 1

    .line 140
    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->getInstance()Lcom/exteragram/messenger/ai/AiController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/exteragram/messenger/ai/AiController;->getSelected()Lcom/exteragram/messenger/ai/data/Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/exteragram/messenger/ai/data/Service;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static clearHistory(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 52
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 53
    sget p1, Lorg/telegram/messenger/R$string;->ClearConversationHistoryInfo:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 54
    sget p1, Lorg/telegram/messenger/R$string;->ClearHistory:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 55
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 56
    sget p1, Lorg/telegram/messenger/R$string;->ClearButton:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/exteragram/messenger/ai/AiController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/ai/AiController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 60
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p0, -0x1

    .line 62
    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 64
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    invoke-static {}, Lcom/exteragram/messenger/ai/AiConfig;->clearConversationHistory()V

    .line 68
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$raw;->ic_delete:I

    sget p2, Lorg/telegram/messenger/R$string;->HistoryCleared:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public static getInstance()Lcom/exteragram/messenger/ai/AiController;
    .locals 1

    .line 136
    invoke-static {}, Lcom/exteragram/messenger/ai/AiController$SingletonHolder;->-$$Nest$sfgetINSTANCE()Lcom/exteragram/messenger/ai/AiController;

    move-result-object v0

    return-object v0
.end method

.method public static showErrorBulletin(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-static {v0, p0, p1, p2}, Lcom/exteragram/messenger/ai/AiController;->showErrorBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method

.method public static showErrorBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;I)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-static {p0, v0, v0, p1}, Lcom/exteragram/messenger/ai/AiController;->showErrorBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method

.method private static showErrorBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 2

    const/16 v0, 0x198

    if-eq p3, v0, :cond_3

    const/16 v0, 0x1ad

    if-eq p3, v0, :cond_2

    const/16 v0, 0x1f6

    const/4 v1, 0x3

    if-eq p3, v0, :cond_1

    const/16 v0, 0x1f7

    if-eq p3, v0, :cond_0

    packed-switch p3, :pswitch_data_0

    .line 126
    sget p3, Lorg/telegram/messenger/R$string;->AIError:I

    .line 127
    sget v0, Lorg/telegram/messenger/R$string;->AIErrorInfo:I

    goto :goto_0

    .line 101
    :pswitch_0
    sget p3, Lorg/telegram/messenger/R$string;->AIError403:I

    .line 102
    sget v0, Lorg/telegram/messenger/R$string;->AIError403Info:I

    const/16 v1, 0x9

    goto :goto_0

    .line 96
    :pswitch_1
    sget p3, Lorg/telegram/messenger/R$string;->AIError402:I

    .line 97
    sget v0, Lorg/telegram/messenger/R$string;->AIError402Info:I

    const/16 v1, 0x8

    goto :goto_0

    .line 91
    :pswitch_2
    sget p3, Lorg/telegram/messenger/R$string;->AIError401:I

    .line 92
    sget v0, Lorg/telegram/messenger/R$string;->AIError401Info:I

    goto :goto_0

    .line 86
    :pswitch_3
    sget p3, Lorg/telegram/messenger/R$string;->AIError400:I

    .line 87
    sget v0, Lorg/telegram/messenger/R$string;->AIError400Info:I

    const/4 v1, 0x2

    goto :goto_0

    .line 121
    :cond_0
    sget p3, Lorg/telegram/messenger/R$string;->AIError503:I

    .line 122
    sget v0, Lorg/telegram/messenger/R$string;->AIError503Info:I

    goto :goto_0

    .line 116
    :cond_1
    sget p3, Lorg/telegram/messenger/R$string;->AIError502:I

    .line 117
    sget v0, Lorg/telegram/messenger/R$string;->AIError502Info:I

    goto :goto_0

    .line 111
    :cond_2
    sget p3, Lorg/telegram/messenger/R$string;->AIError429:I

    .line 112
    sget v0, Lorg/telegram/messenger/R$string;->AIError429Info:I

    const/4 v1, 0x6

    goto :goto_0

    .line 106
    :cond_3
    sget p3, Lorg/telegram/messenger/R$string;->AIError408:I

    .line 107
    sget v0, Lorg/telegram/messenger/R$string;->AIError408Info:I

    const/4 v1, 0x5

    :goto_0
    if-eqz p1, :cond_4

    .line 131
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    goto :goto_1

    :cond_4
    if-eqz p0, :cond_5

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    goto :goto_1

    :cond_5
    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    .line 132
    :goto_1
    new-instance p1, Lcom/exteragram/messenger/ai/AiController$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, p3, v0, v1}, Lcom/exteragram/messenger/ai/AiController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/BulletinFactory;III)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addRole(Lcom/exteragram/messenger/ai/data/Role;)Z
    .locals 1

    .line 188
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/ai/AiController;->isSuggestedRole(Lcom/exteragram/messenger/ai/data/Role;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/ai/AiController;->isCustomRole(Lcom/exteragram/messenger/ai/data/Role;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->roles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/exteragram/messenger/ai/AiController;->saveRoles()V

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public addService(Lcom/exteragram/messenger/ai/data/Service;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->services:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->services:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {p0}, Lcom/exteragram/messenger/ai/AiController;->saveServices()V

    return-void
.end method

.method public contains(Lcom/exteragram/messenger/ai/data/Service;)Z
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->services:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAll()Ljava/util/List;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->services:Ljava/util/List;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRoles()Ljava/util/List;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->roles:Ljava/util/List;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelected()Lcom/exteragram/messenger/ai/data/Service;
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->services:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/ai/AiController$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/exteragram/messenger/ai/AiController$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/ai/data/Service;

    return-object v0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/exteragram/messenger/ai/AiConfig;->DEFAULT_SERVICE:Lcom/exteragram/messenger/ai/data/Service;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->services:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/ai/data/Service;

    return-object v0
.end method

.method public getSelectedRole()Lcom/exteragram/messenger/ai/data/Role;
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->roles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/exteragram/messenger/ai/data/Role;

    .line 175
    invoke-virtual {v1}, Lcom/exteragram/messenger/ai/data/Role;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/exteragram/messenger/ai/AiController;->getSuggestedRoles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/exteragram/messenger/ai/data/Role;

    .line 180
    invoke-virtual {v1}, Lcom/exteragram/messenger/ai/data/Role;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 184
    :cond_3
    sget-object v0, Lcom/exteragram/messenger/ai/data/Suggestions;->ASSISTANT:Lcom/exteragram/messenger/ai/data/Suggestions;

    invoke-virtual {v0}, Lcom/exteragram/messenger/ai/data/Suggestions;->getRole()Lcom/exteragram/messenger/ai/data/Role;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestedRoles()Ljava/util/List;
    .locals 2

    .line 157
    invoke-static {}, Lcom/exteragram/messenger/ai/data/Suggestions;->values()[Lcom/exteragram/messenger/ai/data/Suggestions;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/ai/AiController$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/exteragram/messenger/ai/AiController$$ExternalSyntheticLambda4;-><init>()V

    .line 158
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 159
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public isCustomRole(Lcom/exteragram/messenger/ai/data/Role;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->roles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isServicesEmpty()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isSuggestedRole(Lcom/exteragram/messenger/ai/data/Role;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/exteragram/messenger/ai/AiController;->getSuggestedRoles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public loadRoles()V
    .locals 2

    .line 144
    invoke-static {}, Lcom/exteragram/messenger/ai/AiConfig;->getRoles()Ljava/util/ArrayList;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/exteragram/messenger/ai/AiController;->roles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 146
    iget-object v1, p0, Lcom/exteragram/messenger/ai/AiController;->roles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    iget-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->roles:Ljava/util/List;

    new-instance v1, Lcom/exteragram/messenger/ai/AiController$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/exteragram/messenger/ai/AiController$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public loadServices()V
    .locals 2

    .line 234
    invoke-static {}, Lcom/exteragram/messenger/ai/AiConfig;->getServices()Ljava/util/ArrayList;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/exteragram/messenger/ai/AiController;->services:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 236
    iget-object v1, p0, Lcom/exteragram/messenger/ai/AiController;->services:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public removeRole(Lcom/exteragram/messenger/ai/data/Role;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->roles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/exteragram/messenger/ai/AiController;->saveRoles()V

    :cond_1
    return p1
.end method

.method public removeService(Lcom/exteragram/messenger/ai/data/Service;)Z
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->services:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/exteragram/messenger/ai/AiController;->saveServices()V

    :cond_0
    return p1
.end method

.method public saveRoles()V
    .locals 2

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->roles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 227
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 230
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/exteragram/messenger/ai/AiController;->roles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/exteragram/messenger/ai/AiConfig;->saveRoles(Ljava/util/ArrayList;)V

    return-void
.end method

.method public saveServices()V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->services:Ljava/util/List;

    new-instance v1, Lcom/exteragram/messenger/ai/AiController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/exteragram/messenger/ai/AiController$$ExternalSyntheticLambda1;-><init>()V

    .line 285
    invoke-static {}, Lj$/util/Comparator$-CC;->naturalOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Comparator$-CC;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    .line 284
    invoke-static {v1, v2}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/exteragram/messenger/ai/AiController;->services:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/exteragram/messenger/ai/AiConfig;->saveServices(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateRole(Lcom/exteragram/messenger/ai/data/Role;Lcom/exteragram/messenger/ai/data/Role;)Z
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->roles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 212
    invoke-virtual {p0, p2}, Lcom/exteragram/messenger/ai/AiController;->isSuggestedRole(Lcom/exteragram/messenger/ai/data/Role;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/ai/data/Role;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/exteragram/messenger/ai/AiController;->roles:Ljava/util/List;

    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-virtual {p0}, Lcom/exteragram/messenger/ai/AiController;->saveRoles()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public updateService(Lcom/exteragram/messenger/ai/data/Service;Lcom/exteragram/messenger/ai/data/Service;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->services:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/exteragram/messenger/ai/AiController;->services:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-virtual {p0}, Lcom/exteragram/messenger/ai/AiController;->saveServices()V

    :cond_0
    return-void
.end method
