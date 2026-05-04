.class public Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/exteragram/messenger/plugins/hooks/HookRecord;


# instance fields
.field private final hookName:Ljava/lang/String;

.field private final matchSubstring:Z

.field private final pluginId:Ljava/lang/String;

.field private final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->pluginId:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->hookName:Ljava/lang/String;

    .line 28
    iput-boolean p3, p0, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->matchSubstring:Z

    .line 29
    iput p4, p0, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->priority:I

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    check-cast p1, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;

    .line 70
    iget-boolean v2, p0, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->matchSubstring:Z

    iget-boolean v3, p1, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->matchSubstring:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->pluginId:Ljava/lang/String;

    iget-object v3, p1, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->pluginId:Ljava/lang/String;

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->hookName:Ljava/lang/String;

    iget-object p1, p1, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->hookName:Ljava/lang/String;

    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getHookName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->hookName:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->pluginId:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->priority:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->pluginId:Ljava/lang/String;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->hookName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->matchSubstring:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMatchSubstring()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->matchSubstring:Z

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 3

    .line 54
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->hookName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget-boolean v2, p0, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->matchSubstring:Z

    if-eqz v2, :cond_2

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/hooks/EventHookRecord;->hookName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    .line 61
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method
