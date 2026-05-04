.class Lcom/exteragram/messenger/translators/DeepLTranslator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/translators/DeepLTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/translators/DeepLTranslator;

.field final synthetic val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/translators/DeepLTranslator;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/exteragram/messenger/translators/DeepLTranslator$1;->this$0:Lcom/exteragram/messenger/translators/DeepLTranslator;

    iput-object p2, p0, Lcom/exteragram/messenger/translators/DeepLTranslator$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 165
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 166
    iget-object p1, p0, Lcom/exteragram/messenger/translators/DeepLTranslator$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3

    .line 171
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :try_start_1
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    .line 177
    iget-object v0, p0, Lcom/exteragram/messenger/translators/DeepLTranslator$1;->this$0:Lcom/exteragram/messenger/translators/DeepLTranslator;

    const-string v1, "result.texts"

    iget-object v2, p0, Lcom/exteragram/messenger/translators/DeepLTranslator$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-virtual {v0, p2, v1, v2}, Lcom/exteragram/messenger/translators/BaseTranslator;->processJsonResponse(Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_4

    :catchall_0
    move-exception p2

    goto :goto_2

    .line 173
    :cond_1
    :goto_1
    :try_start_3
    iget-object p2, p0, Lcom/exteragram/messenger/translators/DeepLTranslator$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :goto_2
    if-eqz p1, :cond_3

    .line 171
    :try_start_4
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 179
    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 180
    iget-object p1, p0, Lcom/exteragram/messenger/translators/DeepLTranslator$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
