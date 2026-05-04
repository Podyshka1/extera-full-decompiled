.class public Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/hooks/PluginsHooks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostRequestResult"
.end annotation


# instance fields
.field public error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;->response:Lorg/telegram/tgnet/TLObject;

    .line 35
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/hooks/PluginsHooks$PostRequestResult;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    return-void
.end method
