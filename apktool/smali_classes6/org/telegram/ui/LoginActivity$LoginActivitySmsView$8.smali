.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;


# direct methods
.method public static synthetic $r8$lambda$ixhpaLLKr7cRwUDnzoMWWsHAb2k(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->lambda$run$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    .line 4618
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 11

    .line 4625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    .line 4626
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetlastCurrentTime(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)D

    move-result-wide v2

    sub-double v2, v0, v2

    .line 4627
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v4, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fputlastCurrentTime(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)V

    .line 4628
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgettime(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v1

    int-to-double v4, v1

    sub-double/2addr v4, v2

    double-to-int v1, v4

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fputtime(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;I)V

    .line 4629
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgettime(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0x11

    const/16 v3, 0xb

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/16 v7, 0x3e8

    if-lt v0, v7, :cond_6

    .line 4630
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgettime(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    div-int/2addr v0, v7

    div-int/lit8 v0, v0, 0x3c

    .line 4631
    iget-object v8, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v8}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgettime(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v8

    div-int/2addr v8, v7

    mul-int/lit8 v7, v0, 0x3c

    sub-int/2addr v8, v7

    .line 4632
    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v7}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetnextType(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v7, v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetnextType(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v5

    if-eq v5, v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetnextType(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v4

    if-ne v4, v3, :cond_0

    goto/16 :goto_0

    .line 4634
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v3

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetnextType(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v3

    if-eq v3, v6, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetnextType(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v3

    if-eq v3, v2, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetnextType(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 4635
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgettimeText(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->ResendSmsAvailableIn:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v10

    aput-object v3, v4, v9

    const-string v0, "ResendSmsAvailableIn"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 4636
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetnextType(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v3

    if-eq v3, v6, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetnextType(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v3

    if-eq v3, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetnextType(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 4637
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgettimeText(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->SmsAvailableIn:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v10

    aput-object v3, v4, v9

    const-string v0, "SmsAvailableIn"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 4633
    :cond_4
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgettimeText(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->CallAvailableIn:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v10

    aput-object v3, v4, v9

    const-string v0, "CallAvailableIn"

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4639
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetprogressView(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$ProgressView;

    return-void

    .line 4643
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$mdestroyTimer(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 4644
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetnextType(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-eq v0, v4, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetnextType(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-eq v0, v5, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetnextType(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-eq v0, v6, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetnextType(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-eq v0, v2, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetnextType(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetnextType(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-ne v0, v3, :cond_7

    goto :goto_2

    :cond_7
    return-void

    .line 4645
    :cond_8
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetnextType(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-ne v0, v5, :cond_9

    .line 4646
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgettimeText(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;

    move-result-object v0

    const-string v1, "RequestCallButton"

    sget v2, Lorg/telegram/messenger/R$string;->RequestCallButton:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 4647
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetnextType(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-eq v0, v3, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgetnextType(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v0

    if-ne v0, v4, :cond_a

    goto :goto_3

    .line 4650
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgettimeText(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;

    move-result-object v0

    const-string v1, "RequestSmsButton"

    sget v2, Lorg/telegram/messenger/R$string;->RequestSmsButton:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 4648
    :cond_b
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgettimeText(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->RequestMissedCall:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4652
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgettimeText(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4653
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgettimeText(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$LoadingTextView;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$id;->color_key_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 4621
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->-$$Nest$fgettimeTimer(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4624
    :cond_0
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
