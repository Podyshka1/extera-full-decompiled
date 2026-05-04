.class public final synthetic Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda11;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/pip/PipController$$ExternalSyntheticLambda11;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, p1}, Lcom/exteragram/messenger/plugins/pip/PipController;->$r8$lambda$Lm-FvS3nVC4K08Dx0OuVVeARUQM(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
