.class Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/preferences/OtherPreferencesActivity;->handleDeleteAccountClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/preferences/OtherPreferencesActivity;

.field final synthetic val$button:Landroid/widget/TextView;

.field final synthetic val$buttonText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/preferences/OtherPreferencesActivity;JJLandroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$1;->this$0:Lcom/exteragram/messenger/preferences/OtherPreferencesActivity;

    iput-object p6, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$1;->val$button:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$1;->val$buttonText:Ljava/lang/CharSequence;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$1;->val$button:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$1;->val$buttonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$1;->val$button:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 5

    .line 291
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$1;->val$button:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/exteragram/messenger/preferences/OtherPreferencesActivity$1;->val$buttonText:Ljava/lang/CharSequence;

    const-wide/16 v3, 0x3e8

    div-long/2addr p1, v3

    const-wide/16 v3, 0x1

    add-long/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, p2, v3

    const/4 v2, 0x1

    aput-object p1, p2, v2

    const-string p1, "%s \u2022 %d"

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
