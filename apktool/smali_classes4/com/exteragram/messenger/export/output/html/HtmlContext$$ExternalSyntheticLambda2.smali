.class public final synthetic Lcom/exteragram/messenger/export/output/html/HtmlContext$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$CallbackReturn;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/Utilities$CallbackReturn;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/Utilities$CallbackReturn;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/export/output/html/HtmlContext$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/Utilities$CallbackReturn;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/export/output/html/HtmlContext$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/Utilities$CallbackReturn;

    check-cast p1, Lcom/exteragram/messenger/export/api/ApiWrap$Poll$Answer;

    invoke-static {v0, p1}, Lcom/exteragram/messenger/export/output/html/HtmlContext;->$r8$lambda$pbHCCbDwwIyim-hpdjqWjW9ppqA(Lorg/telegram/messenger/Utilities$CallbackReturn;Lcom/exteragram/messenger/export/api/ApiWrap$Poll$Answer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
