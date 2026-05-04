.class Lorg/telegram/ui/LoginActivity$PhoneView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$PhoneView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

.field final synthetic val$this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 2015
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->val$this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 14

    .line 2028
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetignoreOnTextChange(Lorg/telegram/ui/LoginActivity$PhoneView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2031
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fputignoreOnTextChange(Lorg/telegram/ui/LoginActivity$PhoneView;Z)V

    .line 2032
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetcodeField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2033
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetcodeField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2034
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 2035
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$msetCountryButtonText(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/CharSequence;)V

    .line 2036
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetphoneField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setHintText(Ljava/lang/String;)V

    .line 2037
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fputcountryState(Lorg/telegram/ui/LoginActivity$PhoneView;I)V

    goto/16 :goto_8

    .line 2042
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v4, "phone_code_last_matched_"

    const/4 v5, 0x4

    if-le v1, v5, :cond_8

    :goto_0
    if-lt v5, v0, :cond_7

    .line 2044
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2046
    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v6}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetcodesMap(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_2

    move-object v6, v2

    goto :goto_1

    .line 2049
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v0, :cond_4

    .line 2050
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v7

    .line 2051
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2053
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/CountrySelectActivity$Country;

    if-eqz v7, :cond_5

    .line 2055
    iget-object v8, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v8}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetcountriesArray(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v3

    :cond_3
    if-ge v10, v9, :cond_5

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 2056
    iget-object v12, v11, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-static {v12, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v6, v11

    goto :goto_1

    .line 2063
    :cond_4
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/CountrySelectActivity$Country;

    :cond_5
    :goto_1
    if-eqz v6, :cond_6

    .line 2068
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetphoneField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2069
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetcodeField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    move v5, v0

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    :cond_7
    move-object v1, v2

    move v5, v3

    :goto_2
    if-nez v5, :cond_9

    .line 2074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v6}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetphoneField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2075
    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v6}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetcodeField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v6

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    move-object v1, v2

    move v5, v3

    .line 2081
    :cond_9
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v6}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetcountriesArray(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move-object v9, v2

    move v8, v3

    move v10, v8

    :cond_a
    :goto_4
    if-ge v10, v7, :cond_d

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 2082
    iget-object v12, v11, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {v12, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    add-int/lit8 v12, v8, 0x1

    .line 2084
    iget-object v13, v11, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {v13, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    if-eqz v9, :cond_b

    .line 2085
    iget-object v9, v9, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    iget-object v13, v11, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_5

    :cond_b
    move v8, v12

    :goto_5
    move-object v9, v11

    goto :goto_4

    :cond_c
    move v8, v12

    goto :goto_4

    :cond_d
    if-ne v8, v0, :cond_e

    if-eqz v9, :cond_e

    if-nez v1, :cond_e

    .line 2093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v9, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetphoneField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2094
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetcodeField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p1

    iget-object v6, v9, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object p1, v6

    .line 2097
    :cond_e
    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v6}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetcodesMap(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_f

    move-object v6, v2

    goto :goto_6

    .line 2100
    :cond_f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v0, :cond_11

    .line 2101
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v7

    .line 2102
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2104
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/CountrySelectActivity$Country;

    if-eqz v4, :cond_12

    .line 2106
    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v7}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetcountriesArray(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v3

    :cond_10
    if-ge v9, v8, :cond_12

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 2107
    iget-object v11, v10, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-static {v11, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    move-object v6, v10

    goto :goto_6

    .line 2114
    :cond_11
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lorg/telegram/ui/CountrySelectActivity$Country;

    :cond_12
    :goto_6
    if-eqz v6, :cond_13

    .line 2118
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v2, v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fputignoreSelection(Lorg/telegram/ui/LoginActivity$PhoneView;Z)V

    .line 2119
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v0, v6}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fputcurrentCountry(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/CountrySelectActivity$Country;)V

    .line 2120
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v0, p1, v6}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$msetCountryHint(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;Lorg/telegram/ui/CountrySelectActivity$Country;)V

    .line 2121
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1, v3}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fputcountryState(Lorg/telegram/ui/LoginActivity$PhoneView;I)V

    goto :goto_7

    .line 2123
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$msetCountryButtonText(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/CharSequence;)V

    .line 2124
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetphoneField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setHintText(Ljava/lang/String;)V

    .line 2125
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fputcountryState(Lorg/telegram/ui/LoginActivity$PhoneView;I)V

    :goto_7
    if-nez v5, :cond_14

    .line 2128
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetcodeField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetcodeField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    :cond_14
    if-eqz v1, :cond_15

    .line 2131
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetphoneField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 2132
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetphoneField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2133
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetphoneField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fgetphoneField(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 2136
    :cond_15
    :goto_8
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$2;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1, v3}, Lorg/telegram/ui/LoginActivity$PhoneView;->-$$Nest$fputignoreOnTextChange(Lorg/telegram/ui/LoginActivity$PhoneView;Z)V

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
