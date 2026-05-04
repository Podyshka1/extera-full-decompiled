.class public abstract synthetic Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticBackport0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .line 0
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/util/Map$Entry;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    invoke-static {p0}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticBackport1;->m([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
