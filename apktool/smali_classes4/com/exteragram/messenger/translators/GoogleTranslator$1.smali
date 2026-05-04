.class Lcom/exteragram/messenger/translators/GoogleTranslator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/translators/GoogleTranslator;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/translators/GoogleTranslator;

.field final synthetic val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/translators/GoogleTranslator;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/exteragram/messenger/translators/GoogleTranslator$1;->this$0:Lcom/exteragram/messenger/translators/GoogleTranslator;

    iput-object p2, p0, Lcom/exteragram/messenger/translators/GoogleTranslator$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 74
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 75
    iget-object p1, p0, Lcom/exteragram/messenger/translators/GoogleTranslator$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3

    .line 80
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :try_start_1
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p2

    if-nez p2, :cond_1

    .line 82
    iget-object p2, p0, Lcom/exteragram/messenger/translators/GoogleTranslator$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 88
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 86
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    .line 87
    iget-object v0, p0, Lcom/exteragram/messenger/translators/GoogleTranslator$1;->this$0:Lcom/exteragram/messenger/translators/GoogleTranslator;

    const-string v1, "sentences"

    iget-object v2, p0, Lcom/exteragram/messenger/translators/GoogleTranslator$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-virtual {v0, p2, v1, v2}, Lcom/exteragram/messenger/translators/BaseTranslator;->processJsonResponse(Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_2

    .line 80
    :try_start_4
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 89
    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 90
    iget-object p1, p0, Lcom/exteragram/messenger/translators/GoogleTranslator$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
