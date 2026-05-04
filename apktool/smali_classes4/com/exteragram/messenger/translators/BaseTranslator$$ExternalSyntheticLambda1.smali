.class public final synthetic Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

.field public final synthetic f$1:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda1;->f$0:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    iput-object p2, p0, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda1;->f$0:Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;

    iget-object v1, p0, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/exteragram/messenger/translators/BaseTranslator;->$r8$lambda$hrol2TDFGp1wcR0eQHWDOYku4Ms(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;Ljava/lang/StringBuilder;)V

    return-void
.end method
