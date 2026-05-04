.class Lorg/telegram/ui/PaymentFormActivity$27;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->sendCardData()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;

.field final synthetic val$card:Lcom/stripe/android/model/Card;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;Lcom/stripe/android/model/Card;)V
    .locals 0

    .line 3934
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$27;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$27;->val$card:Lcom/stripe/android/model/Card;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3934
    invoke-virtual {p0, p1}, Lorg/telegram/ui/PaymentFormActivity$27;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .locals 12

    .line 3937
    const-string p1, "token"

    const-string v0, "card"

    const-string v1, ""

    const/4 v2, 0x0

    .line 3939
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 3940
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 3941
    const-string v5, "number"

    iget-object v6, p0, Lorg/telegram/ui/PaymentFormActivity$27;->val$card:Lcom/stripe/android/model/Card;

    invoke-virtual {v6}, Lcom/stripe/android/model/Card;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3942
    const-string v5, "expiration_month"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%02d"

    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity$27;->val$card:Lcom/stripe/android/model/Card;

    invoke-virtual {v8}, Lcom/stripe/android/model/Card;->getExpMonth()Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3943
    const-string v5, "expiration_year"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/telegram/ui/PaymentFormActivity$27;->val$card:Lcom/stripe/android/model/Card;

    invoke-virtual {v7}, Lcom/stripe/android/model/Card;->getExpYear()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3944
    const-string v5, "security_code"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/telegram/ui/PaymentFormActivity$27;->val$card:Lcom/stripe/android/model/Card;

    invoke-virtual {v7}, Lcom/stripe/android/model/Card;->getCVC()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3945
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3948
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$27;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v4}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetpaymentForm(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$PaymentForm;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PaymentForm;->native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 3950
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity$27;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v5}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetpaymentForm(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$PaymentForm;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$PaymentForm;->native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3951
    const-string v5, "tokenize_url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 3952
    :try_start_2
    const-string v5, "https://"

    .line 3953
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ".smart-glocal.com/cds/v1/tokenize/card"

    .line 3954
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    :cond_0
    :goto_0
    move-object v4, v2

    :catch_1
    :cond_1
    if-eqz v4, :cond_2

    .line 3962
    :try_start_3
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v4, v2

    goto/16 :goto_4

    .line 3963
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity$27;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v4}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetpaymentForm(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$PaymentForm;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    if-eqz v4, :cond_3

    .line 3964
    new-instance v5, Ljava/net/URL;

    const-string v4, "https://tgb-playground.smart-glocal.com/cds/v1/tokenize/card"

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 3966
    :cond_3
    new-instance v5, Ljava/net/URL;

    const-string v4, "https://tgb.smart-glocal.com/cds/v1/tokenize/card"

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3968
    :goto_1
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v5, 0x7530

    .line 3969
    :try_start_4
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const v5, 0x13880

    .line 3970
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 3971
    invoke-virtual {v4, v11}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 3972
    invoke-virtual {v4, v9}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 3973
    const-string v5, "POST"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 3974
    const-string v5, "Content-Type"

    const-string v6, "application/json"

    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3975
    const-string v5, "X-PUBLIC-TOKEN"

    iget-object v6, p0, Lorg/telegram/ui/PaymentFormActivity$27;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v6}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetproviderApiKey(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3977
    invoke-virtual {v4}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3978
    :try_start_5
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "UTF-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3979
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 3981
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v5, 0xc8

    if-lt v3, v5, :cond_4

    const/16 v5, 0x12c

    if-ge v3, v5, :cond_4

    .line 3983
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3984
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$smgetResponseBody(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3985
    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3986
    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3987
    const-string p1, "type"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3988
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3998
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :catchall_1
    move-exception p1

    move-object v2, v4

    goto :goto_6

    :catch_3
    move-exception p1

    goto :goto_4

    .line 3990
    :cond_4
    :try_start_7
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz p1, :cond_5

    .line 3991
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$smgetResponseBody(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3998
    :cond_5
    :goto_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    :catchall_2
    move-exception p1

    if-eqz v5, :cond_6

    .line 3977
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 3995
    :goto_4
    :try_start_a
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    :goto_5
    return-object v2

    :goto_6
    if-eqz v2, :cond_8

    .line 3998
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 4000
    :cond_8
    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 3934
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/PaymentFormActivity$27;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 4006
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$27;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetcanceled(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 4010
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$27;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    sget v0, Lorg/telegram/messenger/R$string;->PaymentConnectionFailed:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_0

    .line 4012
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$27;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fputpaymentJson(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)V

    .line 4013
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$27;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$mgoToNextStep(Lorg/telegram/ui/PaymentFormActivity;)V

    .line 4015
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$27;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$mshowEditDoneProgress(Lorg/telegram/ui/PaymentFormActivity;ZZ)V

    .line 4016
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$27;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$msetDonePressed(Lorg/telegram/ui/PaymentFormActivity;Z)V

    return-void
.end method
