.class Lorg/telegram/ui/LinkEditActivity$5;
.super Lorg/telegram/ui/Cells/EditTextCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LinkEditActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignoreTextChanged:Z

.field final synthetic this$0:Lorg/telegram/ui/LinkEditActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LinkEditActivity;Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lorg/telegram/ui/LinkEditActivity$5;->this$0:Lorg/telegram/ui/LinkEditActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Cells/EditTextCell;-><init>(Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onTextChanged(Ljava/lang/CharSequence;)V
    .locals 8

    .line 415
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/EditTextCell;->onTextChanged(Ljava/lang/CharSequence;)V

    .line 416
    iget-boolean v0, p0, Lorg/telegram/ui/LinkEditActivity$5;->ignoreTextChanged:Z

    if-eqz v0, :cond_0

    return-void

    .line 417
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity$5;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/LinkEditActivity;->-$$Nest$fgetsubPriceView(Lorg/telegram/ui/LinkEditActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 421
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 422
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity$5;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v2, p1, Lorg/telegram/messenger/MessagesController;->starsSubscriptionAmountMax:J

    cmp-long p1, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p1, :cond_2

    .line 423
    iput-boolean v3, p0, Lorg/telegram/ui/LinkEditActivity$5;->ignoreTextChanged:Z

    .line 424
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity$5;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p1, Lorg/telegram/messenger/MessagesController;->starsSubscriptionAmountMax:J

    .line 425
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/EditTextCell;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iput-boolean v2, p0, Lorg/telegram/ui/LinkEditActivity$5;->ignoreTextChanged:Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 428
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity$5;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/LinkEditActivity;->-$$Nest$fgetsubPriceView(Lorg/telegram/ui/LinkEditActivity;)Landroid/widget/TextView;

    move-result-object p1

    .line 429
    iget-object v4, p0, Lorg/telegram/ui/LinkEditActivity$5;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->isTestBackend()Z

    move-result v4

    if-eqz v4, :cond_3

    sget v4, Lorg/telegram/messenger/R$string;->RequireMonthlyFeePriceTest5Minutes:I

    goto :goto_1

    :cond_3
    sget v4, Lorg/telegram/messenger/R$string;->RequireMonthlyFeePrice:I

    .line 430
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v5

    long-to-double v0, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v6

    iget-object v6, p0, Lorg/telegram/ui/LinkEditActivity$5;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {v6}, Lorg/telegram/ui/LinkEditActivity;->access$000(Lorg/telegram/ui/LinkEditActivity;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->starsUsdWithdrawRate1000:F

    float-to-double v6, v6

    mul-double/2addr v0, v6

    double-to-long v0, v0

    const-string v6, "USD"

    invoke-virtual {v5, v0, v1, v6}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    .line 428
    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 433
    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method
