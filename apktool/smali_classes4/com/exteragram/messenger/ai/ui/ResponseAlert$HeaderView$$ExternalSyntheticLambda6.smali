.class public final synthetic Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda6;->f$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$$ExternalSyntheticLambda6;->f$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;

    check-cast p1, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;

    invoke-static {v0, p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->$r8$lambda$aS__IWL7aGc0aAFU04yyhjpiy2o(Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData;)V

    return-void
.end method
