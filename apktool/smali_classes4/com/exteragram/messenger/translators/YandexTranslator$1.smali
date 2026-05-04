.class Lcom/exteragram/messenger/translators/YandexTranslator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/translators/YandexTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/translators/YandexTranslator;

.field final synthetic val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/translators/YandexTranslator;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/exteragram/messenger/translators/YandexTranslator$1;->this$0:Lcom/exteragram/messenger/translators/YandexTranslator;

    iput-object p2, p0, Lcom/exteragram/messenger/translators/YandexTranslator$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 91
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 92
    iget-object p1, p0, Lcom/exteragram/messenger/translators/YandexTranslator$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3

    .line 97
    const-string p1, "text"

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 98
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p2

    if-nez p2, :cond_1

    .line 99
    iget-object p1, p0, Lcom/exteragram/messenger/translators/YandexTranslator$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 103
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    iget-object p1, p0, Lcom/exteragram/messenger/translators/YandexTranslator$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 110
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/exteragram/messenger/translators/YandexTranslator$1;->this$0:Lcom/exteragram/messenger/translators/YandexTranslator;

    iget-object v2, p0, Lcom/exteragram/messenger/translators/YandexTranslator$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-virtual {v1, p2, p1, v2}, Lcom/exteragram/messenger/translators/BaseTranslator;->processJsonResponse(Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 112
    :goto_0
    :try_start_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 113
    iget-object p1, p0, Lcom/exteragram/messenger/translators/YandexTranslator$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    :goto_1
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    return-void

    :goto_2
    if-eqz v0, :cond_3

    .line 97
    :try_start_5
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p1
.end method
