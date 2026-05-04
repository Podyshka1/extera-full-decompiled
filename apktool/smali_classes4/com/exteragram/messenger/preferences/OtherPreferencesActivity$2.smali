.class Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$2;
.super Lcom/exteragram/messenger/components/BoostyBottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/preferences/OtherPreferencesActivity;->handleDonateClick(Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$Donate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/preferences/OtherPreferencesActivity;

.field final synthetic val$donate:Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$Donate;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/preferences/OtherPreferencesActivity;Landroid/content/Context;Ljava/util/List;Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$Donate;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$2;->this$0:Lcom/exteragram/messenger/preferences/OtherPreferencesActivity;

    iput-object p4, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$2;->val$donate:Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$Donate;

    invoke-direct {p0, p2, p3}, Lcom/exteragram/messenger/components/BoostyBottomSheet;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected onButtonClick()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$2;->this$0:Lcom/exteragram/messenger/preferences/OtherPreferencesActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$2;->val$donate:Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$Donate;

    invoke-virtual {v1}, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$Donate;->details()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
