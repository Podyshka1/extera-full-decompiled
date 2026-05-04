.class public abstract Lcom/exteragram/messenger/translators/BaseTranslator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$hrol2TDFGp1wcR0eQHWDOYku4Ms(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getSupportedLanguages()Ljava/util/Set;
.end method

.method public isLanguageSupported(Ljava/lang/String;)Z
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/exteragram/messenger/translators/BaseTranslator;->getSupportedLanguages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 94
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 95
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/exteragram/messenger/translators/BaseTranslator;->getSupportedLanguages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected processJsonResponse(Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V
    .locals 9

    .line 46
    const-string/jumbo v0, "text"

    const-string/jumbo v1, "trans"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3}, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 52
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    const-string p1, "\\."

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 55
    array-length p2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p2, :cond_2

    aget-object v5, p1, v4

    .line 56
    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x5b

    .line 57
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/16 v8, 0x5d

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 59
    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 60
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_5

    .line 62
    :cond_1
    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    instance-of p2, v2, Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 68
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 69
    :cond_3
    instance-of p2, v2, Lorg/json/JSONArray;

    if-eqz p2, :cond_7

    check-cast v2, Lorg/json/JSONArray;

    .line 70
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v3, p2, :cond_7

    .line 71
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lorg/json/JSONObject;

    if-eqz p2, :cond_5

    .line 72
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    .line 73
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 74
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 75
    :cond_4
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 76
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 78
    :cond_5
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 79
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 83
    :cond_7
    :goto_4
    new-instance p2, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda1;

    invoke-direct {p2, p3, p1}, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;Ljava/lang/StringBuilder;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 85
    :goto_5
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 86
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3}, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V
.end method
