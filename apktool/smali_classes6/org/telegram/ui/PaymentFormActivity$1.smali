.class Lorg/telegram/ui/PaymentFormActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 632
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetdonePressed(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 635
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 637
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetdonePressed(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_2

    .line 640
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetcurrentStep(Lorg/telegram/ui/PaymentFormActivity;)I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    .line 641
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 643
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetcurrentStep(Lorg/telegram/ui/PaymentFormActivity;)I

    move-result p1

    if-eqz p1, :cond_a

    const/4 v2, 0x0

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    if-eq p1, v1, :cond_5

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    goto :goto_2

    .line 664
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1, v2}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$msendSavePassword(Lorg/telegram/ui/PaymentFormActivity;Z)V

    return-void

    .line 661
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$mcheckPassword(Lorg/telegram/ui/PaymentFormActivity;)V

    return-void

    .line 658
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$msendCardData(Lorg/telegram/ui/PaymentFormActivity;)Z

    return-void

    .line 649
    :cond_7
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetradioCells(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/RadioCell;

    move-result-object p1

    array-length p1, p1

    if-ge v2, p1, :cond_9

    .line 650
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetradioCells(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/RadioCell;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/RadioCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 651
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetrequestedInfo(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->shipping_options:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    invoke-static {p1, v0}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fputshippingOption(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;)V

    goto :goto_1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 655
    :cond_9
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$mgoToNextStep(Lorg/telegram/ui/PaymentFormActivity;)V

    return-void

    .line 645
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$msetDonePressed(Lorg/telegram/ui/PaymentFormActivity;Z)V

    .line 646
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$1;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$msendForm(Lorg/telegram/ui/PaymentFormActivity;)V

    :cond_b
    :goto_2
    return-void
.end method
