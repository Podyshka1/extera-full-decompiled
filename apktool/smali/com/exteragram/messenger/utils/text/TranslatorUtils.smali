.class public abstract Lcom/exteragram/messenger/utils/text/TranslatorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;
    }
.end annotation


# static fields
.field private static final CHROME_VERSIONS:[Ljava/lang/String;

.field private static final DEVICE_MODELS:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$-u3qoQyKPFjQQxfvY3tDPXiLrqg(Lorg/telegram/messenger/TranslateController$Language;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 153
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$18OxWnu_CeW2xKMEINptzp4-GGI(Lorg/telegram/messenger/TranslateController$Language;)Ljava/lang/String;
    .locals 0

    .line 170
    iget-object p0, p0, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static synthetic $r8$lambda$9t69im2ijQLumUQhKu9IaNtd33o(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    if-eqz p5, :cond_0

    .line 428
    const-string v0, "TRANSLATIONS_DISABLED_ALT"

    iget-object v1, p5, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-static {}, Lcom/exteragram/messenger/translators/GoogleTranslator;->getInstance()Lcom/exteragram/messenger/translators/GoogleTranslator;

    move-result-object p3

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p4, Lcom/exteragram/messenger/utils/text/TranslatorUtils$1;

    invoke-direct {p4, p2}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$1;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    const-string p2, "auto"

    invoke-virtual {p3, p0, p2, p1, p4}, Lcom/exteragram/messenger/translators/GoogleTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    return-void

    .line 457
    :cond_0
    instance-of p0, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;

    if-eqz p0, :cond_3

    move-object v2, p4

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;

    iget-object p0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;->result:Ljava/util/ArrayList;

    .line 458
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;->result:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 459
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;->result:Ljava/util/ArrayList;

    .line 460
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 462
    iget-object p0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;->result:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 463
    invoke-static {p3, v5}, Lorg/telegram/ui/Components/TranslateAlert2;->preprocess(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 464
    iget-object p0, v4, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    if-eqz p0, :cond_1

    :goto_0
    move-object v6, p0

    goto :goto_1

    :cond_1
    iget-object p0, v5, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    goto :goto_0

    .line 465
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 466
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;

    invoke-direct {p0, p2}, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 469
    :cond_2
    new-instance v0, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda15;

    move-object v1, p2

    move-object v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda15;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    move-object v1, p2

    .line 475
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;

    invoke-direct {p0, v1}, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CUNhdWfofK4WEKCqbzsQcZNLbg0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 344
    invoke-static {p0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 345
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EFi-TQJotXuUijfrHn87_q82738(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/ArrayList;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;Ljava/lang/String;)V
    .locals 1

    if-eqz p4, :cond_0

    .line 510
    const-string/jumbo v0, "und"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    const-string p4, "auto"

    :goto_0
    invoke-static {p0, p4, p1, p2, p3}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->translate(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LV6Xw9loV6Xqcd3XTxqJ0AMEVTE(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/ArrayList;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;Ljava/lang/Exception;)V
    .locals 0

    .line 514
    const-string p4, "auto"

    invoke-static {p0, p4, p1, p2, p3}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->translate(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TYf6X6lWV59OzxWR31cZ1-banm4(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;Lorg/telegram/tgnet/TLRPC$TL_messages_translateResult;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Ljava/lang/String;)V
    .locals 0

    .line 470
    invoke-interface {p0, p1, p2}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;->onSuccess(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p4

    .line 471
    :goto_0
    invoke-interface {p0, p3}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;->onSuccess(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    .line 472
    invoke-interface {p0, p5}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U_6tsGn7Rfja4H7xsuJ40kLqVJQ(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Landroid/text/style/URLSpan;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 387
    invoke-virtual {p0, p2, v0, p1, v1}, Lorg/telegram/ui/ChatActivity;->didPressMessageUrl(Landroid/text/style/CharacterStyle;ZLorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    .line 388
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic $r8$lambda$Vj884UwctV6-DXsXxF04izq623E(Lorg/telegram/ui/ChatActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 396
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity;->dimBehindView(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ad1GOSTL-0OhL2pO1dr5PThm1k8(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$CallbackReturn;Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)V
    .locals 13

    move-object/from16 v6, p7

    .line 394
    invoke-static {}, Lorg/telegram/ui/Components/TranslateAlert2;->getToLanguage()Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_1

    .line 395
    invoke-static {v6}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->primaryLanguageOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->primaryLanguageOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "und"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v6}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->isRestrictedLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    new-instance v12, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda14;

    move-object/from16 v1, p6

    invoke-direct {v12, v1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ChatActivity;)V

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v11, p5

    invoke-static/range {v0 .. v12}, Lorg/telegram/ui/Components/TranslateAlert2;->showAlert(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$InputPeer;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/ArrayList;ZLorg/telegram/messenger/Utilities$CallbackReturn;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/TranslateAlert2;

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$hZ8XtmocOepw5Uv-cBnz9Q7fUZ8(Lorg/telegram/messenger/TranslateController$Language;)Ljava/lang/String;
    .locals 0

    .line 353
    iget-object p0, p0, Lorg/telegram/messenger/TranslateController$Language;->ownDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$mae3tr4edtaq-EG-wlGUVFFlz_4(Ljava/lang/String;Lorg/telegram/messenger/TranslateController$Language;)Z
    .locals 0

    .line 340
    iget-object p1, p1, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$owEUwwVJj2_NHWS0lkyBgFXh-Vc(Ljava/lang/Exception;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$vABiLBkC91ClDjvr_2TK3_R61L0(Ljava/lang/String;Lorg/telegram/messenger/TranslateController$Language;)Z
    .locals 0

    .line 351
    iget-object p1, p1, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vKSoJPOEkAWlW0lGSrLkQrOnP7Y(Lorg/telegram/messenger/TranslateController$Language;)Ljava/lang/String;
    .locals 0

    .line 342
    iget-object p0, p0, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 21

    .line 51
    const-string v19, "Xperia 10"

    const-string v20, "Xperia L4"

    const-string v1, "Galaxy S6"

    const-string v2, "Galaxy S7"

    const-string v3, "Galaxy S8"

    const-string v4, "Galaxy S9"

    const-string v5, "Galaxy S10"

    const-string v6, "Galaxy S21"

    const-string v7, "Pixel 3"

    const-string v8, "Pixel 4"

    const-string v9, "Pixel 5"

    const-string v10, "OnePlus 6"

    const-string v11, "OnePlus 7"

    const-string v12, "OnePlus 8"

    const-string v13, "OnePlus 9"

    const-string v14, "Xperia XZ"

    const-string v15, "Xperia XZ2"

    const-string v16, "Xperia XZ3"

    const-string v17, "Xperia 1"

    const-string v18, "Xperia 5"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->DEVICE_MODELS:[Ljava/lang/String;

    .line 56
    const-string v5, "92.0.4515.159"

    const-string v6, "71.0.3578.99"

    const-string v1, "111.0.5563.57"

    const-string v2, "94.0.4606.81"

    const-string v3, "80.0.3987.119"

    const-string v4, "69.0.3497.100"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->CHROME_VERSIONS:[Ljava/lang/String;

    return-void
.end method

.method private static createLanguageItem(Ljava/lang/String;)Lorg/telegram/messenger/TranslateController$Language;
    .locals 5

    .line 115
    invoke-static {p0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 116
    new-instance v0, Lorg/telegram/messenger/TranslateController$Language;

    invoke-direct {v0}, Lorg/telegram/messenger/TranslateController$Language;-><init>()V

    .line 117
    iput-object p0, v0, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    .line 119
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    if-nez v1, :cond_0

    .line 121
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 124
    :cond_0
    const-string v2, ""

    if-nez p0, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    move-object v3, p0

    :goto_0
    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    .line 125
    invoke-virtual {v3, v1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {v3, v3}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    invoke-static {p0}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    .line 132
    invoke-static {p0, v3}, Lorg/telegram/ui/Components/TranslateAlert2;->systemLanguageName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez p0, :cond_4

    goto :goto_1

    .line 135
    :cond_4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v1, v2

    .line 137
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    move-object v3, v1

    .line 141
    :cond_6
    invoke-static {v1}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    .line 142
    invoke-static {v3}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/messenger/TranslateController$Language;->ownDisplayName:Ljava/lang/String;

    .line 143
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/telegram/messenger/TranslateController$Language;->ownDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/messenger/TranslateController$Language;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static ensureTargetLanguageCompatibleWithProvider()V
    .locals 1

    .line 323
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->targetLang:Ljava/lang/String;

    invoke-static {v0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->isTargetLanguageSupportedForCurrentProvider(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    const-string v0, "app"

    invoke-static {v0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->setTargetLanguage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static formatUserAgent()Ljava/lang/String;
    .locals 5

    .line 329
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    sget-object v1, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->DEVICE_MODELS:[Ljava/lang/String;

    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v1, v1, v2

    .line 331
    sget-object v2, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->CHROME_VERSIONS:[Ljava/lang/String;

    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v2, v2, v3

    const/4 v3, 0x3

    .line 332
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "Mozilla/5.0 (Linux; Android %s; %s) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/%s Mobile Safari/537.36"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentTargetLanguages()Ljava/util/ArrayList;
    .locals 4

    .line 148
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getCurrentTranslator()Lcom/exteragram/messenger/translators/BaseTranslator;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/exteragram/messenger/translators/BaseTranslator;->getSupportedLanguages()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 150
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 158
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 159
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 160
    invoke-static {v2}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 162
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 168
    invoke-static {v2}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->createLanguageItem(Ljava/lang/String;)Lorg/telegram/messenger/TranslateController$Language;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 170
    :cond_3
    new-instance v0, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda4;-><init>()V

    new-instance v2, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, v2}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v1, v0}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1

    .line 151
    :cond_4
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/TranslateController;->getLanguages()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 152
    invoke-static {}, Lcom/exteragram/messenger/translators/TelegramTranslator;->getInstance()Lcom/exteragram/messenger/translators/TelegramTranslator;

    move-result-object v2

    if-ne v0, v2, :cond_5

    .line 153
    new-instance v0, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, v0}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    :cond_5
    return-object v1
.end method

.method public static getCurrentTranslator()Lcom/exteragram/messenger/translators/BaseTranslator;
    .locals 2

    .line 565
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->translationProvider:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 569
    invoke-static {}, Lcom/exteragram/messenger/translators/GoogleTranslator;->getInstance()Lcom/exteragram/messenger/translators/GoogleTranslator;

    move-result-object v0

    return-object v0

    .line 568
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/translators/DeepLTranslator;->getInstance()Lcom/exteragram/messenger/translators/DeepLTranslator;

    move-result-object v0

    return-object v0

    .line 567
    :cond_1
    invoke-static {}, Lcom/exteragram/messenger/translators/YandexTranslator;->getInstance()Lcom/exteragram/messenger/translators/YandexTranslator;

    move-result-object v0

    return-object v0

    .line 566
    :cond_2
    invoke-static {}, Lcom/exteragram/messenger/translators/TelegramTranslator;->getInstance()Lcom/exteragram/messenger/translators/TelegramTranslator;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentTranslatorName()Ljava/lang/String;
    .locals 1

    .line 574
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getCurrentTranslator()Lcom/exteragram/messenger/translators/BaseTranslator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/exteragram/messenger/translators/BaseTranslator;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIndexedTargetLanguages()Ljava/util/List;
    .locals 1

    .line 68
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getCurrentTargetLanguages()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguageDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 350
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getLanguages()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 352
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda7;-><init>()V

    .line 353
    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getLanguageTitleSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 336
    const-string/jumbo v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    sget p0, Lorg/telegram/messenger/R$string;->None:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 339
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getLanguages()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 340
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 341
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 342
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getLanguages()Ljava/util/List;
    .locals 2

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/TranslateController;->getLanguages()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static getResolvedAppLanguageCode()Ljava/lang/String;
    .locals 4

    .line 175
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 180
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->isTargetLanguageSupportedForCurrentProvider(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 189
    :cond_1
    invoke-static {v1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->isTargetLanguageSupportedForCurrentProvider(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 193
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->LanguageCode:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->isTargetLanguageSupportedForCurrentProvider(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static getResolvedSendTargetLanguageCode()Ljava/lang/String;
    .locals 3

    .line 261
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "targetLangSend"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const-string v0, "en"

    return-object v0

    .line 265
    :cond_0
    invoke-static {v0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getResolvedTargetLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResolvedTargetLanguageCode()Ljava/lang/String;
    .locals 1

    .line 213
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->targetLang:Ljava/lang/String;

    invoke-static {v0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getResolvedTargetLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResolvedTargetLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 202
    const-string v0, "app"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getResolvedAppLanguageCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 205
    :cond_0
    invoke-static {p0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 206
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getResolvedAppLanguageCode()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getSendTargetLanguageIndex()I
    .locals 3

    .line 269
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "targetLangSend"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "en"

    :cond_0
    invoke-static {v0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getTargetLanguageIndexByCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSendTargetLanguageTitle()Ljava/lang/String;
    .locals 1

    .line 274
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getResolvedSendTargetLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getLanguageTitleSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTargetLanguageCodeByIndex(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 243
    const-string p0, "app"

    return-object p0

    .line 245
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getIndexedTargetLanguages()Ljava/util/List;

    move-result-object v0

    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_1

    .line 247
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    .line 248
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/messenger/TranslateController$Language;

    iget-object p0, p0, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTargetLanguageIndexByCode(Ljava/lang/String;)I
    .locals 4

    .line 228
    const-string v0, "app"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 231
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getIndexedTargetLanguages()Ljava/util/List;

    move-result-object v0

    .line 232
    invoke-static {p0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getResolvedTargetLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move v2, v1

    .line 233
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 234
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/TranslateController$Language;

    iget-object v3, v3, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static getTargetLanguageTitle()Ljava/lang/String;
    .locals 1

    .line 254
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->isTargetLanguageFollowApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    sget v0, Lorg/telegram/messenger/R$string;->TranslationTargetApp:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 257
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getResolvedTargetLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getLanguageTitleSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTargetLanguageTitles()[Ljava/lang/CharSequence;
    .locals 7

    .line 217
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getIndexedTargetLanguages()Ljava/util/List;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 219
    sget v2, Lorg/telegram/messenger/R$string;->TranslationTargetApp:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 220
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 221
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/TranslateController$Language;

    add-int/lit8 v3, v3, 0x1

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lorg/telegram/messenger/TranslateController$Language;->ownDisplayName:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v2, ""

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " \u2013 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/telegram/messenger/TranslateController$Language;->ownDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static isRestrictedLanguage(Ljava/lang/String;)Z
    .locals 4

    .line 96
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 99
    :cond_0
    invoke-static {p0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->primaryLanguageOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getResolvedTargetLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->primaryLanguageOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 102
    :cond_1
    invoke-static {p0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->primaryLanguageOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 103
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 106
    :cond_2
    invoke-static {}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->getRestrictedLanguages()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 107
    invoke-static {v3}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->primaryLanguageOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_4
    return v1
.end method

.method public static isTargetLanguageFollowApp()Z
    .locals 2

    .line 92
    const-string v0, "app"

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->targetLang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTargetLanguageSupportedForCurrentProvider(Ljava/lang/String;)Z
    .locals 5

    .line 300
    const-string v0, "app"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 303
    :cond_0
    invoke-static {p0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 304
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 308
    :cond_1
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getCurrentTranslator()Lcom/exteragram/messenger/translators/BaseTranslator;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/exteragram/messenger/translators/BaseTranslator;->getSupportedLanguages()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 310
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 314
    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 315
    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_4
    return v2

    .line 311
    :cond_5
    :goto_0
    invoke-static {}, Lcom/exteragram/messenger/translators/TelegramTranslator;->getInstance()Lcom/exteragram/messenger/translators/TelegramTranslator;

    move-result-object v3

    if-ne v0, v3, :cond_7

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    return v2

    :cond_7
    :goto_1
    return v1
.end method

.method public static normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5f

    const/16 v1, 0x2d

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 76
    const-string/jumbo v0, "nb"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const-string/jumbo p0, "no"

    :cond_1
    return-object p0
.end method

.method public static primaryLanguageOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 83
    invoke-static {p0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x2d

    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static setTargetLanguage(Ljava/lang/String;)V
    .locals 2

    .line 278
    const-string v0, "app"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 279
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    .line 283
    :goto_1
    sput-object v0, Lcom/exteragram/messenger/ExteraConfig;->targetLang:Ljava/lang/String;

    .line 284
    sget-object p0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "targetLang"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 286
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string/jumbo v0, "translate_button_restricted_languages_changed"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_2

    .line 287
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "translate_button_restricted_languages"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 288
    invoke-static {}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->invalidateRestrictedLanguages()V

    .line 289
    invoke-static {v1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->checkRestrictedLanguages(Z)V

    :goto_2
    const/16 p0, 0x10

    if-ge v1, p0, :cond_2

    .line 292
    :try_start_0
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/TranslateController;->checkRestrictedLanguagesUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static translate(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V
    .locals 8

    .line 525
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getCurrentTranslator()Lcom/exteragram/messenger/translators/BaseTranslator;

    move-result-object v0

    .line 526
    invoke-static {}, Lcom/exteragram/messenger/translators/TelegramTranslator;->getInstance()Lcom/exteragram/messenger/translators/TelegramTranslator;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 527
    invoke-static/range {v2 .. v7}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->translateWithDefault(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/String;Ljava/util/ArrayList;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    return-void

    :cond_0
    move-object v2, p0

    move-object v5, p2

    move-object v7, p4

    .line 530
    invoke-virtual {v0, v5}, Lcom/exteragram/messenger/translators/BaseTranslator;->isLanguageSupported(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 531
    invoke-static {}, Lcom/exteragram/messenger/translators/GoogleTranslator;->getInstance()Lcom/exteragram/messenger/translators/GoogleTranslator;

    move-result-object v0

    .line 534
    :cond_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lcom/exteragram/messenger/utils/text/TranslatorUtils$2;

    invoke-direct {p2, v7}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$2;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-virtual {v0, p0, p1, v5, p2}, Lcom/exteragram/messenger/translators/BaseTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    return-void
.end method

.method public static translate(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/ArrayList;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V
    .locals 3

    .line 503
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 506
    :cond_0
    invoke-static {p1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getResolvedTargetLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 507
    invoke-static {}, Lorg/telegram/messenger/LanguageDetector;->hasSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda8;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/ArrayList;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    new-instance v2, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda9;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/ArrayList;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LanguageDetector;->detectLanguage(Ljava/lang/String;Lorg/telegram/messenger/LanguageDetector$StringCallback;Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;)V

    return-void

    .line 516
    :cond_1
    const-string v0, "auto"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->translate(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    return-void
.end method

.method public static translateWithAlert(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;Lorg/telegram/tgnet/TLRPC$InputPeer;ILorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    .line 384
    :cond_0
    move-object v7, p4

    check-cast v7, Lorg/telegram/ui/ChatActivity;

    .line 386
    new-instance v6, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda11;

    invoke-direct {v6, v7, p0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    .line 391
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 392
    :goto_1
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getMessageText(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_2

    .line 393
    const-string p0, ""

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    new-instance v0, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda12;

    move-object v2, p2

    move v3, p3

    move-object v1, p4

    invoke-direct/range {v0 .. v7}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$CallbackReturn;Lorg/telegram/ui/ChatActivity;)V

    new-instance p1, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda13;

    invoke-direct {p1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/LanguageDetector;->detectLanguage(Ljava/lang/String;Lorg/telegram/messenger/LanguageDetector$StringCallback;Lorg/telegram/messenger/LanguageDetector$ExceptionCallback;)V

    return-void
.end method

.method public static translateWithDefault(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/String;Ljava/util/ArrayList;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V
    .locals 3

    .line 403
    invoke-static {p3}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getResolvedTargetLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 404
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;-><init>()V

    .line 405
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    if-nez p0, :cond_0

    .line 406
    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    if-eqz p4, :cond_1

    .line 408
    iput-object p4, v1, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->entities:Ljava/util/ArrayList;

    :cond_1
    if-eqz p1, :cond_2

    .line 411
    iget p4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    or-int/lit8 p4, p4, 0x1

    iput p4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    .line 412
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 413
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->id:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 415
    :cond_2
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->flags:I

    .line 416
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->text:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz p3, :cond_3

    .line 420
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, p3

    .line 422
    :goto_2
    const-string/jumbo p2, "nb"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 423
    const-string/jumbo p1, "no"

    .line 425
    :cond_4
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_translateText;->to_lang:Ljava/lang/String;

    .line 427
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0, p3, p5, v1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$$ExternalSyntheticLambda10;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p0

    .line 479
    invoke-interface {p5, p0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;->onReqId(I)V

    return-void
.end method
