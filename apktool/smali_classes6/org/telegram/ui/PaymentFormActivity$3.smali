.class Lorg/telegram/ui/PaymentFormActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 887
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$3;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9

    .line 900
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$3;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetignoreOnTextChange(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 903
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$3;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fputignoreOnTextChange(Lorg/telegram/ui/PaymentFormActivity;Z)V

    .line 904
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$3;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    const/16 v1, 0x8

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 905
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$3;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v2}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$3;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v2}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    const/16 v3, 0x9

    aget-object v2, v2, v3

    check-cast v2, Lorg/telegram/ui/Components/HintEditText;

    .line 907
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 908
    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 909
    sget p1, Lorg/telegram/messenger/R$string;->PaymentShippingPhoneNumber:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 914
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x4

    if-le v4, v7, :cond_4

    :goto_0
    if-lt v7, v0, :cond_3

    .line 916
    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 917
    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity$3;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v8}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetcodesMap(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 920
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$3;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 921
    iget-object v7, p0, Lorg/telegram/ui/PaymentFormActivity$3;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v7}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v7, v4

    move-object v4, p1

    move-object p1, v7

    move v7, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_3
    move v7, v5

    move-object v4, v6

    :goto_1
    if-nez v7, :cond_5

    .line 926
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity$3;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v8}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v8

    aget-object v3, v8, v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 927
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$3;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v3}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    move v7, v5

    move-object v4, v6

    .line 930
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$3;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetcodesMap(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 933
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity$3;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v3}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetcountriesArray(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_6

    .line 935
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$3;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetphoneFormatMap(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    const/16 v0, 0x58

    const/16 v3, 0x2013

    .line 938
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 939
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 944
    :cond_6
    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 945
    sget p1, Lorg/telegram/messenger/R$string;->PaymentShippingPhoneNumber:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :goto_3
    if-nez v7, :cond_7

    .line 948
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$3;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    aget-object p1, p1, v1

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$3;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    :cond_7
    if-eqz v4, :cond_8

    .line 951
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 952
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 953
    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result p1

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 956
    :cond_8
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$3;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1, v5}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fputignoreOnTextChange(Lorg/telegram/ui/PaymentFormActivity;Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
