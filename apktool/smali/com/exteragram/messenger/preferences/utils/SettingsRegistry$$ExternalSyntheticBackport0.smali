.class public abstract synthetic Lcom/exteragram/messenger/preferences/utils/SettingsRegistry$$ExternalSyntheticBackport0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 4

    .line 0
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {p0, p2, p3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {p1, p4, p5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {p2, p6, p7}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p3, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {p3, p8, p9}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p4, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {p4, p10, p11}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p5, Ljava/util/AbstractMap$SimpleEntry;

    move-object/from16 v1, p12

    move-object/from16 v2, p13

    invoke-direct {p5, v1, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    move-object/from16 v2, p14

    move-object/from16 v3, p15

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/util/Map$Entry;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p0, v2, v0

    const/4 p0, 0x2

    aput-object p1, v2, p0

    const/4 p0, 0x3

    aput-object p2, v2, p0

    const/4 p0, 0x4

    aput-object p3, v2, p0

    const/4 p0, 0x5

    aput-object p4, v2, p0

    const/4 p0, 0x6

    aput-object p5, v2, p0

    const/4 p0, 0x7

    aput-object v1, v2, p0

    invoke-static {v2}, Lcom/exteragram/messenger/plugins/PluginsController$$ExternalSyntheticBackport1;->m([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
