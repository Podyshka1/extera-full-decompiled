.class public final synthetic Lcom/exteragram/messenger/export/output/OutputFile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$CallbackReturn;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/export/output/OutputFile$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/exteragram/messenger/export/output/OutputFile$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/export/output/OutputFile$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/exteragram/messenger/export/output/OutputFile$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lcom/exteragram/messenger/export/output/OutputFile;->$r8$lambda$ApE4zRWH4xloOxmAXEkNaQI5bA4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
