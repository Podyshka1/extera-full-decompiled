.class public final synthetic Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;->f$0:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;->f$0:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    invoke-interface {v0}, Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;->onFailed()V

    return-void
.end method
