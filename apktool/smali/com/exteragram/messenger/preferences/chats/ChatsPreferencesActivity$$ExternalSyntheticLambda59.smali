.class public final synthetic Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda59;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda59;->f$0:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$$ExternalSyntheticLambda59;->f$0:Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;->$r8$lambda$ZSn66YCYvfY8DItnMcbsSb7_KRs(Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
