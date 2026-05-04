.class public Lorg/telegram/ui/BubbleActivity;
.super Lorg/telegram/ui/BasePermissionsActivity;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;


# static fields
.field public static instance:Lorg/telegram/ui/BubbleActivity;


# instance fields
.field public actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

.field private dialogId:J

.field protected drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

.field private finished:Z

.field private lockRunnable:Ljava/lang/Runnable;

.field private final mainFragmentsStack:Ljava/util/ArrayList;

.field private passcodeSaveIntent:Landroid/content/Intent;

.field private passcodeSaveIntentAccount:I

.field private passcodeSaveIntentIsNew:Z

.field private passcodeSaveIntentIsRestore:Z

.field private passcodeSaveIntentState:I

.field private passcodeView:Lorg/telegram/ui/Components/PasscodeView;


# direct methods
.method public static synthetic $r8$lambda$a0AsEIcoeamfrfaa0tDjDYVIcfE(Lorg/telegram/ui/BubbleActivity;Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/BubbleActivity;->lambda$showPasscodeActivity$0(Lorg/telegram/ui/Components/PasscodeView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetlockRunnable(Lorg/telegram/ui/BubbleActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/BubbleActivity;->lockRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlockRunnable(Lorg/telegram/ui/BubbleActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/BubbleActivity;->lockRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowPasscodeActivity(Lorg/telegram/ui/BubbleActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/BubbleActivity;->showPasscodeActivity()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/telegram/ui/BasePermissionsActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/BubbleActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;ZZZII)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_1

    .line 142
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result p4

    if-nez p4, :cond_0

    sget-boolean p4, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    if-eqz p4, :cond_1

    .line 143
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/BubbleActivity;->showPasscodeActivity()V

    .line 144
    iput-object p1, p0, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntent:Landroid/content/Intent;

    .line 145
    iput-boolean p2, p0, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntentIsNew:Z

    .line 146
    iput-boolean p3, p0, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntentIsRestore:Z

    .line 147
    iput p5, p0, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntentAccount:I

    .line 148
    iput p6, p0, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntentState:I

    .line 149
    invoke-static {p5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    return v1

    .line 152
    :cond_1
    const-string p2, "currentAccount"

    sget p3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    .line 153
    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->isValidAccount(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    .line 158
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.tmessages.openchat"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 159
    const-string p2, "chatId"

    const-wide/16 p3, 0x0

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p5

    .line 160
    const-string/jumbo p2, "userId"

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    .line 161
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    cmp-long p3, p1, p3

    if-eqz p3, :cond_3

    .line 163
    iput-wide p1, p0, Lorg/telegram/ui/BubbleActivity;->dialogId:J

    .line 164
    const-string/jumbo p3, "user_id"

    invoke-virtual {v2, p3, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    neg-long p1, p5

    .line 166
    iput-wide p1, p0, Lorg/telegram/ui/BubbleActivity;->dialogId:J

    .line 167
    const-string p1, "chat_id"

    invoke-virtual {v2, p1, p5, p6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 169
    :goto_0
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, v2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setInBubbleMode(Z)V

    .line 171
    iget p2, p0, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setCurrentAccount(I)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_5

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    .line 177
    :cond_5
    iget p2, p0, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    iget-wide p4, p0, Lorg/telegram/ui/BubbleActivity;->dialogId:J

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    new-array p5, v0, [Ljava/lang/Object;

    aput-object p4, p5, v1

    invoke-virtual {p2, p3, p5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 178
    iget-object p2, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeAllFragments()V

    .line 179
    iget-object p2, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p2, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 180
    iget p1, p0, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/BubbleActivity;->dialogId:J

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/messenger/NotificationsController;->setOpenedInBubble(JZ)V

    .line 181
    iget p1, p0, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 182
    iget-object p1, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->showLastFragment()V

    return v0
.end method

.method private synthetic lambda$showPasscodeActivity$0(Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 8

    const/4 v0, 0x0

    .line 130
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    .line 131
    iget-object v2, p0, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 132
    iget-boolean v3, p0, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntentIsNew:Z

    iget-boolean v4, p0, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntentIsRestore:Z

    iget v6, p0, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntentAccount:I

    iget v7, p0, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntentState:I

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/BubbleActivity;->handleIntent(Landroid/content/Intent;ZZZII)Z

    const/4 v2, 0x0

    .line 133
    iput-object v2, v1, Lorg/telegram/ui/BubbleActivity;->passcodeSaveIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    move-object v1, p0

    .line 135
    :goto_0
    iget-object v2, v1, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->showLastFragment()V

    .line 137
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->passcodeDismissed:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private onFinish()V
    .locals 2

    .line 194
    iget-boolean v0, p0, Lorg/telegram/ui/BubbleActivity;->finished:Z

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->lockRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 198
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 199
    iput-object v1, p0, Lorg/telegram/ui/BubbleActivity;->lockRunnable:Ljava/lang/Runnable;

    :cond_1
    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lorg/telegram/ui/BubbleActivity;->finished:Z

    .line 202
    sput-object v1, Lorg/telegram/ui/BubbleActivity;->instance:Lorg/telegram/ui/BubbleActivity;

    return-void
.end method

.method private onPasscodePause()V
    .locals 6

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 279
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lorg/telegram/ui/BubbleActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 282
    :cond_0
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 283
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    .line 284
    new-instance v0, Lorg/telegram/ui/BubbleActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/BubbleActivity$1;-><init>(Lorg/telegram/ui/BubbleActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/BubbleActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 302
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    if-nez v1, :cond_2

    sget v1, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    const v4, 0x7fffffff

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_4

    int-to-long v4, v1

    mul-long/2addr v4, v2

    add-long/2addr v4, v2

    .line 305
    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 303
    :cond_2
    :goto_0
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 308
    sput v0, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    .line 310
    :cond_4
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    return-void
.end method

.method private onPasscodeResume()V
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 315
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lorg/telegram/ui/BubbleActivity;->lockRunnable:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x1

    .line 318
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    invoke-direct {p0}, Lorg/telegram/ui/BubbleActivity;->showPasscodeActivity()V

    .line 321
    :cond_1
    sget v0, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 322
    sput v0, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    .line 323
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    :cond_2
    return-void
.end method

.method private showPasscodeActivity()V
    .locals 3

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 119
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    .line 120
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->hasInstance()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/SecretMediaViewer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/SecretMediaViewer;->closePhoto(ZZ)Z

    goto :goto_0

    .line 122
    :cond_1
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->hasInstance()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->hasInstance()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    .line 127
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/BubbleActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/PasscodeView;->onShow(ZZ)V

    .line 128
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    new-instance v1, Lorg/telegram/ui/BubbleActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/BubbleActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/BubbleActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->setDelegate(Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;)V

    return-void
.end method


# virtual methods
.method public synthetic needAddFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/INavigationLayout;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate$-CC;->$default$needAddFragmentToStack(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/INavigationLayout;)Z

    move-result p1

    return p1
.end method

.method public needCloseLastFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)Z
    .locals 1

    .line 359
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 360
    invoke-direct {p0}, Lorg/telegram/ui/BubbleActivity;->onFinish()V

    .line 361
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public synthetic needPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/ui/ActionBar/INavigationLayout;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate$-CC;->$default$needPresentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/ui/ActionBar/INavigationLayout;)Z

    move-result p1

    return p1
.end method

.method public synthetic needPresentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate$-CC;->$default$needPresentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    move-result p1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 238
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 239
    invoke-static {}, Lorg/telegram/ui/Components/ThemeEditorView;->getInstance()Lorg/telegram/ui/Components/ThemeEditorView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ThemeEditorView;->onActivityResult(IILandroid/content/Intent;)V

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 245
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 337
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 341
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 344
    :cond_1
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    return-void

    .line 347
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 329
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 330
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/Window;)V

    .line 331
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 64
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    const/4 v1, 0x1

    .line 66
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 67
    sget v0, Lorg/telegram/messenger/R$style;->Theme_TMessages:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->transparent:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 69
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    if-nez v0, :cond_0

    .line 71
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 72
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->logFlagSecure()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 78
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    if-eqz v0, :cond_1

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    sput v0, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    :cond_1
    const/4 v0, 0x0

    .line 84
    invoke-static {p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->fillStatusBarHeight(Landroid/content/Context;Z)V

    .line 85
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    .line 86
    invoke-static {p0, v0}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 88
    invoke-static {p0, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->newLayout(Landroid/content/Context;Z)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 89
    invoke-interface {v2, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setInBubbleMode(Z)V

    .line 90
    iget-object v2, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setRemoveActionBarExtraHeight(Z)V

    .line 92
    new-instance v2, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/BubbleActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    .line 93
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 96
    iget-object v3, p0, Lorg/telegram/ui/BubbleActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v3, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v2, p0, Lorg/telegram/ui/BubbleActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    iget-object v3, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setParentActionBarLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 100
    iget-object v2, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    iget-object v3, p0, Lorg/telegram/ui/BubbleActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-interface {v2, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setDrawerLayoutContainer(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    .line 101
    iget-object v2, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    iget-object v3, p0, Lorg/telegram/ui/BubbleActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setFragmentStack(Ljava/util/List;)V

    .line 102
    iget-object v2, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2, p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setDelegate(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;)V

    .line 104
    new-instance v2, Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/BubbleActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    .line 105
    iget-object v3, p0, Lorg/telegram/ui/BubbleActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 109
    iget-object v2, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeAllFragments()V

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz p1, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    move v6, v0

    :goto_1
    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/BubbleActivity;->handleIntent(Landroid/content/Intent;ZZZII)Z

    .line 112
    sput-object v3, Lorg/telegram/ui/BubbleActivity;->instance:Lorg/telegram/ui/BubbleActivity;

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 227
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 228
    iget v0, p0, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 229
    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/BubbleActivity;->dialogId:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/NotificationsController;->setOpenedInBubble(JZ)V

    .line 230
    iget v0, p0, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 232
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/BubbleActivity;->onFinish()V

    const/4 v0, 0x0

    .line 233
    sput-object v0, Lorg/telegram/ui/BubbleActivity;->instance:Lorg/telegram/ui/BubbleActivity;

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 353
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onLowMemory()V

    return-void
.end method

.method public synthetic onMeasureOverride([I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate$-CC;->$default$onMeasureOverride(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;[I)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7

    .line 189
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 190
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/BubbleActivity;->handleIntent(Landroid/content/Intent;ZZZII)Z

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 215
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onPause()V

    const/4 v0, 0x1

    .line 217
    sput-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->externalInterfacePaused:Z

    .line 218
    invoke-direct {p0}, Lorg/telegram/ui/BubbleActivity;->onPasscodePause()V

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onPause()V

    :cond_0
    const/4 v0, 0x0

    .line 222
    sput-object v0, Lorg/telegram/ui/BubbleActivity;->instance:Lorg/telegram/ui/BubbleActivity;

    return-void
.end method

.method public synthetic onPreIme()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate$-CC;->$default$onPreIme(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;)Z

    move-result v0

    return v0
.end method

.method public synthetic onRebuildAllFragments(Lorg/telegram/ui/ActionBar/INavigationLayout;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate$-CC;->$default$onRebuildAllFragments(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;Lorg/telegram/ui/ActionBar/INavigationLayout;Z)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 251
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 252
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/BasePermissionsActivity;->checkPermissionsResult(I[Ljava/lang/String;[I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 256
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    .line 259
    :cond_1
    invoke-static {p1, p2, p3}, Lorg/telegram/ui/VoIPFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 264
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onResume()V

    const/4 v0, 0x0

    .line 266
    sput-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->externalInterfacePaused:Z

    .line 267
    invoke-direct {p0}, Lorg/telegram/ui/BubbleActivity;->onPasscodeResume()V

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onResume()V

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->dismissDialogs()V

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onResume()V

    .line 274
    :goto_0
    sput-object p0, Lorg/telegram/ui/BubbleActivity;->instance:Lorg/telegram/ui/BubbleActivity;

    return-void
.end method

.method public synthetic onThemeProgress(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate$-CC;->$default$onThemeProgress(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;F)V

    return-void
.end method
