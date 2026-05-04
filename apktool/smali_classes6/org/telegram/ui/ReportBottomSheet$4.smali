.class Lorg/telegram/ui/ReportBottomSheet$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ReportBottomSheet$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ReportBottomSheet;->openSponsored(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fragment:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$message:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$NA6yB0znHotrf1ac4VaDyBpaUE4(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V
    .locals 2

    .line 977
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->AdHidden:I

    .line 978
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 979
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 980
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatActivity;->removeFromSponsored(Lorg/telegram/messenger/MessageObject;)V

    .line 981
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatActivity;->removeMessageWithThanos(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o7YJQajG1ZXWrikg12x_57K64do(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    .line 958
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->AdReported:I

    .line 961
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ReportBottomSheet$4$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lorg/telegram/ui/ReportBottomSheet$4$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    const/4 v3, 0x2

    .line 960
    invoke-static {v1, p1, v3, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 959
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 968
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 969
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ChatActivity;->removeFromSponsored(Lorg/telegram/messenger/MessageObject;)V

    .line 970
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ChatActivity;->removeMessageWithThanos(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tT8aRlhNdwnb-dq4XEU3edKhQ_U(Landroid/content/Context;)V
    .locals 1

    .line 964
    const-string v0, "https://promote.telegram.org/guidelines"

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 954
    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$4;->val$fragment:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/ReportBottomSheet$4;->val$resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p4, p0, Lorg/telegram/ui/ReportBottomSheet$4;->val$message:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden()V
    .locals 3

    .line 976
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$4;->val$fragment:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ReportBottomSheet$4;->val$message:Lorg/telegram/messenger/MessageObject;

    new-instance v2, Lorg/telegram/ui/ReportBottomSheet$4$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ReportBottomSheet$4$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    const-wide/16 v0, 0xc8

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onPremiumRequired()V
    .locals 5

    .line 987
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$4;->val$fragment:Lorg/telegram/ui/ChatActivity;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$4;->val$fragment:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public onReported()V
    .locals 5

    .line 957
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$4;->val$fragment:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ReportBottomSheet$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$4;->val$resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v3, p0, Lorg/telegram/ui/ReportBottomSheet$4;->val$message:Lorg/telegram/messenger/MessageObject;

    new-instance v4, Lorg/telegram/ui/ReportBottomSheet$4$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/ui/ReportBottomSheet$4$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MessageObject;)V

    const-wide/16 v0, 0xc8

    invoke-static {v4, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
