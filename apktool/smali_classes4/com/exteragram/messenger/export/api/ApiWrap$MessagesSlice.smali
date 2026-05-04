.class public Lcom/exteragram/messenger/export/api/ApiWrap$MessagesSlice;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public list:Ljava/util/ArrayList;

.field public peers:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$MessagesSlice;->list:Ljava/util/ArrayList;

    return-void
.end method
