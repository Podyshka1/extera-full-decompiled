.class Lcom/exteragram/messenger/utils/text/TranslatorUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/utils/text/TranslatorUtils;->translateWithDefault(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/String;Ljava/util/ArrayList;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/exteragram/messenger/utils/text/TranslatorUtils$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/exteragram/messenger/utils/text/TranslatorUtils$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-interface {v0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;->onFailed()V

    return-void
.end method

.method public onReqId(I)V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/exteragram/messenger/utils/text/TranslatorUtils$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-interface {v0, p1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;->onReqId(I)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .line 432
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object p1, p0, Lcom/exteragram/messenger/utils/text/TranslatorUtils$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/utils/text/TranslatorUtils$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-interface {v0, p1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;->onSuccess(Ljava/lang/String;)V

    .line 437
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    .line 438
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    .line 439
    iget-object p1, p0, Lcom/exteragram/messenger/utils/text/TranslatorUtils$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-interface {p1, v0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;->onSuccess(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    return-void
.end method

.method public onSuccess(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/exteragram/messenger/utils/text/TranslatorUtils$1;->val$callback:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-interface {v0, p1, p2}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;->onSuccess(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public synthetic onSuccess(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback$-CC;->$default$onSuccess(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;)V

    return-void
.end method
