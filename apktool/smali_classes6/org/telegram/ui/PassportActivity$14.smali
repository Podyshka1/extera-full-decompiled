.class Lorg/telegram/ui/PassportActivity$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PassportActivity;->createIdentityInterface(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PassportActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PassportActivity;)V
    .locals 0

    .line 4008
    iput-object p1, p0, Lorg/telegram/ui/PassportActivity$14;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didFindMrzInfo(Lorg/telegram/messenger/MrzRecognizer$Result;)V
    .locals 8

    .line 4011
    iget-object v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4012
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$14;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/PassportActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v2, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4014
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->middleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 4015
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$14;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/PassportActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v3, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->middleName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4017
    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->lastName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_2

    .line 4018
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$14;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/PassportActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    aget-object v0, v0, v3

    iget-object v4, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4020
    :cond_2
    iget v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->gender:I

    if-eqz v0, :cond_5

    const/4 v4, 0x4

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_0

    .line 4027
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$14;->this$0:Lorg/telegram/ui/PassportActivity;

    const-string v5, "female"

    invoke-static {v0, v5}, Lorg/telegram/ui/PassportActivity;->-$$Nest$fputcurrentGender(Lorg/telegram/ui/PassportActivity;Ljava/lang/String;)V

    .line 4028
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$14;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/PassportActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    aget-object v0, v0, v4

    sget v4, Lorg/telegram/messenger/R$string;->PassportFemale:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4023
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$14;->this$0:Lorg/telegram/ui/PassportActivity;

    const-string v5, "male"

    invoke-static {v0, v5}, Lorg/telegram/ui/PassportActivity;->-$$Nest$fputcurrentGender(Lorg/telegram/ui/PassportActivity;Ljava/lang/String;)V

    .line 4024
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$14;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/PassportActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    aget-object v0, v0, v4

    sget v4, Lorg/telegram/messenger/R$string;->PassportMale:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4032
    :cond_5
    :goto_0
    iget-object v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->nationality:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4033
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$14;->this$0:Lorg/telegram/ui/PassportActivity;

    iget-object v4, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->nationality:Ljava/lang/String;

    invoke-static {v0, v4}, Lorg/telegram/ui/PassportActivity;->-$$Nest$fputcurrentCitizeship(Lorg/telegram/ui/PassportActivity;Ljava/lang/String;)V

    .line 4034
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$14;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->-$$Nest$fgetlanguageMap(Lorg/telegram/ui/PassportActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity$14;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v4}, Lorg/telegram/ui/PassportActivity;->-$$Nest$fgetcurrentCitizeship(Lorg/telegram/ui/PassportActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 4036
    iget-object v4, p0, Lorg/telegram/ui/PassportActivity$14;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v4}, Lorg/telegram/ui/PassportActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/PassportActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4039
    :cond_6
    iget-object v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->issuingCountry:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 4040
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$14;->this$0:Lorg/telegram/ui/PassportActivity;

    iget-object v4, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->issuingCountry:Ljava/lang/String;

    invoke-static {v0, v4}, Lorg/telegram/ui/PassportActivity;->-$$Nest$fputcurrentResidence(Lorg/telegram/ui/PassportActivity;Ljava/lang/String;)V

    .line 4041
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$14;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->-$$Nest$fgetlanguageMap(Lorg/telegram/ui/PassportActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity$14;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v4}, Lorg/telegram/ui/PassportActivity;->-$$Nest$fgetcurrentResidence(Lorg/telegram/ui/PassportActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 4043
    iget-object v4, p0, Lorg/telegram/ui/PassportActivity$14;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v4}, Lorg/telegram/ui/PassportActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/PassportActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4046
    :cond_7
    iget v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->birthDay:I

    if-lez v0, :cond_8

    iget v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->birthMonth:I

    if-lez v0, :cond_8

    iget v0, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->birthYear:I

    if-lez v0, :cond_8

    .line 4047
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$14;->this$0:Lorg/telegram/ui/PassportActivity;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/PassportActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const/4 v4, 0x3

    aget-object v0, v0, v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v6, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->birthDay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->birthMonth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget p1, p1, Lorg/telegram/messenger/MrzRecognizer$Result;->birthYear:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v1

    aput-object v7, v4, v2

    aput-object p1, v4, v3

    const-string p1, "%02d.%02d.%d"

    invoke-static {v5, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public synthetic didFindQr(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate$-CC;->$default$didFindQr(Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic getSubtitleText()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate$-CC;->$default$getSubtitleText(Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onDismiss()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate$-CC;->$default$onDismiss(Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;)V

    return-void
.end method

.method public synthetic processQr(Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate$-CC;->$default$processQr(Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method
