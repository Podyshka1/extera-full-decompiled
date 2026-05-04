.class Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->createPluginItem(Lcom/exteragram/messenger/plugins/Plugin;)Lorg/telegram/ui/Components/UItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

.field final synthetic val$plugin:Lcom/exteragram/messenger/plugins/Plugin;


# direct methods
.method public static synthetic $r8$lambda$1FVaSLJpls0w-K5jzt_23YfHqMM(Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->lambda$deletePlugin$2(Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$V_8BgRk2M8s1EbNdIPvy0QPazOc(Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->lambda$togglePlugin$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wv1WEm5cY1kvKnL3FesDZiNsy6c(Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->lambda$deletePlugin$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z2R5GJlVB14eXiNsG14mcoz-BRo(Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->lambda$deletePlugin$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ehvUUfKwevv_2WLwcs4xGVd5Ck4(Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;Ljava/lang/String;ZLcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/ui/components/PluginCell;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->lambda$togglePlugin$4(Ljava/lang/String;ZLcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/ui/components/PluginCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mq7EGz45TjUjdUcWoVsQoXK_eg8(Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;ZLcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/ui/components/PluginCell;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->lambda$togglePlugin$5(ZLcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/ui/components/PluginCell;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;Lcom/exteragram/messenger/plugins/Plugin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    iput-object p2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->val$plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$deletePlugin$0(Ljava/lang/String;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    invoke-static {v0}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->access$800(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    if-eqz p1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$deletePlugin$1(Ljava/lang/String;)V
    .locals 1

    .line 215
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$deletePlugin$2(Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 215
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p2

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;)V

    invoke-virtual {p2, p1, p3}, Lcom/exteragram/messenger/plugins/PluginsController;->deletePlugin(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$togglePlugin$3(Ljava/lang/String;)V
    .locals 1

    .line 248
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

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

.method private synthetic lambda$togglePlugin$4(Ljava/lang/String;ZLcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/ui/components/PluginCell;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 246
    iget-object p4, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-static {p4}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p4

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    if-eqz p2, :cond_0

    .line 247
    sget p2, Lorg/telegram/messenger/R$string;->PluginEnableError:I

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->PluginDisableError:I

    :goto_0
    invoke-virtual {p3}, Lcom/exteragram/messenger/plugins/Plugin;->getName()Ljava/lang/String;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v0, v2

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-static {p3}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->createCopySpan(Lorg/telegram/ui/ActionBar/BaseFragment;)Landroid/text/Spannable;

    move-result-object p3

    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda5;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;Ljava/lang/String;)V

    invoke-virtual {p4, v1, p2, p3, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 253
    :cond_1
    invoke-virtual {p4, p2, v0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->setChecked(ZZ)V

    return-void
.end method

.method private synthetic lambda$togglePlugin$5(ZLcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/ui/components/PluginCell;Ljava/lang/String;)V
    .locals 6

    .line 244
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda3;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;Ljava/lang/String;ZLcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/ui/components/PluginCell;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public canOpenInExternalApp()Z
    .locals 2

    .line 275
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->val$plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginEngine(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    invoke-interface {v0}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->canOpenInExternalApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public deletePlugin()V
    .locals 5

    .line 207
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->val$plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/Plugin;->isNotResponding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->val$plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->showNotRespondingAlert(Lcom/exteragram/messenger/plugins/Plugin;)V

    return-void

    .line 212
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->PluginDelete:I

    .line 213
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->PluginDeleteInfo:I

    iget-object v2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->val$plugin:Lcom/exteragram/messenger/plugins/Plugin;

    .line 214
    invoke-virtual {v2}, Lcom/exteragram/messenger/plugins/Plugin;->getName()Ljava/lang/String;

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

    .line 215
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->val$plugin:Lcom/exteragram/messenger/plugins/Plugin;

    new-instance v3, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;Lcom/exteragram/messenger/plugins/Plugin;)V

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 224
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 228
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 230
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public openInExternalApp()V
    .locals 2

    .line 199
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->val$plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginEngine(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->val$plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->openInExternalApp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public openPluginSettings()V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->val$plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/PluginsController;->openPluginSettings(Ljava/lang/String;)V

    return-void
.end method

.method public pinPlugin(Landroid/view/View;)V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->val$plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/exteragram/messenger/plugins/PluginsController;->isPluginPinned(Ljava/lang/String;)Z

    move-result v0

    .line 267
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->val$plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lcom/exteragram/messenger/plugins/PluginsController;->setPluginPinned(Ljava/lang/String;Z)V

    .line 268
    check-cast p1, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->setPinned(Z)V

    .line 269
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-static {p1}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->access$600(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 270
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->this$0:Lcom/exteragram/messenger/plugins/ui/PluginsActivity;

    invoke-static {p1}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity;->access$700(Lcom/exteragram/messenger/plugins/ui/PluginsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public sharePlugin()V
    .locals 2

    .line 191
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->val$plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/plugins/PluginsController;->getPluginEngine(Ljava/lang/String;)Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->val$plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/exteragram/messenger/plugins/PluginsController$PluginsEngine;->sharePlugin(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public togglePlugin(Landroid/view/View;)V
    .locals 5

    .line 236
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->val$plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/Plugin;->isNotResponding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->val$plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-static {p1}, Lcom/exteragram/messenger/plugins/utils/PluginsWatchdog;->showNotRespondingAlert(Lcom/exteragram/messenger/plugins/Plugin;)V

    return-void

    .line 241
    :cond_0
    check-cast p1, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;

    .line 242
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->val$plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v0}, Lcom/exteragram/messenger/plugins/Plugin;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 243
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    iget-object v2, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->val$plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v2}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;->val$plugin:Lcom/exteragram/messenger/plugins/Plugin;

    new-instance v4, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v0, v3, p1}, Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3$$ExternalSyntheticLambda4;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginsActivity$3;ZLcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/ui/components/PluginCell;)V

    invoke-virtual {v1, v2, v0, v4}, Lcom/exteragram/messenger/plugins/PluginsController;->setPluginEnabled(Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method
