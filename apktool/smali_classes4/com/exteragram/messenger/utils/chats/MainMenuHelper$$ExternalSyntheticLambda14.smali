.class public final synthetic Lcom/exteragram/messenger/utils/chats/MainMenuHelper$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$$ExternalSyntheticLambda14;->f$0:Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;

    iput-object p2, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$$ExternalSyntheticLambda14;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$$ExternalSyntheticLambda14;->f$0:Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;

    iget-object v1, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$$ExternalSyntheticLambda14;->f$1:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/exteragram/messenger/utils/chats/MainMenuHelper;->$r8$lambda$nekcwJjWW4KwvBvInwGt081HLO4(Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;Ljava/util/Map;)V

    return-void
.end method
