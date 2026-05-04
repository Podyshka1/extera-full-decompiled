.class Lorg/telegram/ui/ProfileActivity$ListAdapter$10;
.super Lorg/telegram/ui/Cells/SettingsSuggestionCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;


# direct methods
.method public static synthetic $r8$lambda$bOlkpmpB2ZmTFQzb0yxeR2fJ9og(Lorg/telegram/ui/ProfileActivity$ListAdapter$10;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$ListAdapter$10;->lambda$onYesClick$0(I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 13745
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$10;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Cells/SettingsSuggestionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$onYesClick$0(I)V
    .locals 5

    .line 13749
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$10;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$10;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    sget v2, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x2

    const-wide/16 v3, 0x0

    if-ne p1, v0, :cond_0

    .line 13751
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$10;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const-string v0, "PREMIUM_GRACE"

    invoke-virtual {p1, v3, v4, v0}, Lorg/telegram/messenger/MessagesController;->removeSuggestion(JLjava/lang/String;)V

    .line 13752
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$10;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->premiumManageSubscriptionUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 13754
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$10;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    if-nez p1, :cond_1

    const-string p1, "VALIDATE_PHONE_NUMBER"

    goto :goto_0

    :cond_1
    const-string p1, "VALIDATE_PASSWORD"

    :goto_0
    invoke-virtual {v0, v3, v4, p1}, Lorg/telegram/messenger/MessagesController;->removeSuggestion(JLjava/lang/String;)V

    .line 13756
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$10;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$10;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 13757
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$10;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->updateListAnimated(Z)V

    return-void
.end method


# virtual methods
.method protected onNoClick(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 13764
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$10;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v0, Lorg/telegram/ui/ActionIntroActivity;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 13766
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$10;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(ILorg/telegram/tgnet/tl/TL_account$Password;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method protected onYesClick(I)V
    .locals 1

    .line 13748
    new-instance v0, Lorg/telegram/ui/ProfileActivity$ListAdapter$10$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ProfileActivity$ListAdapter$10$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter$10;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
