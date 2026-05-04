.class Lorg/telegram/ui/ReportBottomSheet$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ReportBottomSheet$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ReportBottomSheet;->openSponsoredPeer(Lorg/telegram/ui/ActionBar/BaseFragment;[BLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$remove:Ljava/lang/Runnable;

.field final synthetic val$resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$WnkSMxLgeAYEbetp7tOy7z9Ac5w(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V
    .locals 3

    .line 1192
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$string;->AdReported:I

    .line 1195
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ReportBottomSheet$6$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ReportBottomSheet$6$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    const/4 v2, 0x2

    .line 1194
    invoke-static {v0, p1, v2, v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 1193
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    .line 1202
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1203
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h1OS3GR2m2PbJb2TEDujYJI5gr8(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V
    .locals 1

    .line 1210
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$string;->AdHidden:I

    .line 1211
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    .line 1212
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1213
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yXMCSeOf2fTdzB4tHhChq2Ojoc0(Landroid/content/Context;)V
    .locals 1

    .line 1198
    const-string v0, "https://promote.telegram.org/guidelines"

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V
    .locals 0

    .line 1188
    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$6;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/ReportBottomSheet$6;->val$resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p4, p0, Lorg/telegram/ui/ReportBottomSheet$6;->val$remove:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden()V
    .locals 3

    .line 1209
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$6;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, p0, Lorg/telegram/ui/ReportBottomSheet$6;->val$remove:Ljava/lang/Runnable;

    new-instance v2, Lorg/telegram/ui/ReportBottomSheet$6$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ReportBottomSheet$6$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    const-wide/16 v0, 0xc8

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onPremiumRequired()V
    .locals 5

    .line 1219
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$6;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$6;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public onReported()V
    .locals 5

    .line 1191
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$6;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, p0, Lorg/telegram/ui/ReportBottomSheet$6;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$6;->val$resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v3, p0, Lorg/telegram/ui/ReportBottomSheet$6;->val$remove:Ljava/lang/Runnable;

    new-instance v4, Lorg/telegram/ui/ReportBottomSheet$6$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/ui/ReportBottomSheet$6$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    const-wide/16 v0, 0xc8

    invoke-static {v4, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
