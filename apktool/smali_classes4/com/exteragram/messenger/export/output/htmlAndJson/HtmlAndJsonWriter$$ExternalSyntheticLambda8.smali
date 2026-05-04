.class public final synthetic Lcom/exteragram/messenger/export/output/htmlAndJson/HtmlAndJsonWriter$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$CallbackReturn;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/export/api/ApiWrap$UserpicsInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/export/api/ApiWrap$UserpicsInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/export/output/htmlAndJson/HtmlAndJsonWriter$$ExternalSyntheticLambda8;->f$0:Lcom/exteragram/messenger/export/api/ApiWrap$UserpicsInfo;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/export/output/htmlAndJson/HtmlAndJsonWriter$$ExternalSyntheticLambda8;->f$0:Lcom/exteragram/messenger/export/api/ApiWrap$UserpicsInfo;

    check-cast p1, Lcom/exteragram/messenger/export/output/AbstractWriter;

    invoke-static {v0, p1}, Lcom/exteragram/messenger/export/output/htmlAndJson/HtmlAndJsonWriter;->$r8$lambda$I8WxLNsVd8fFELONOX7gJO0tNy4(Lcom/exteragram/messenger/export/api/ApiWrap$UserpicsInfo;Lcom/exteragram/messenger/export/output/AbstractWriter;)Lcom/exteragram/messenger/export/output/AbstractWriter$Result;

    move-result-object p1

    return-object p1
.end method
