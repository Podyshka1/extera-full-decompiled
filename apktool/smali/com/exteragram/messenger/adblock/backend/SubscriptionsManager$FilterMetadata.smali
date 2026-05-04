.class public Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterMetadata"
.end annotation


# instance fields
.field public final expires:J

.field public final homepage:Ljava/lang/String;

.field public final rulesCount:I

.field public final title:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mtoJson(Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;)Lorg/json/JSONObject;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;->toJson()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smfromJson(Lorg/json/JSONObject;)Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;->fromJson(Lorg/json/JSONObject;)Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;->url:Ljava/lang/String;

    .line 243
    iput-object p2, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;->title:Ljava/lang/String;

    .line 244
    iput-object p3, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;->homepage:Ljava/lang/String;

    .line 245
    iput p4, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;->rulesCount:I

    .line 246
    iput-wide p5, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;->expires:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLcom/exteragram/messenger/adblock/backend/SubscriptionsManager-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method private static fromJson(Lorg/json/JSONObject;)Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;
    .locals 7

    .line 250
    new-instance v0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;

    const-string/jumbo v1, "url"

    .line 251
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    .line 252
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "homepage"

    .line 253
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "rulesCount"

    .line 254
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "expires"

    .line 255
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object v0
.end method

.method private toJson()Lorg/json/JSONObject;
    .locals 4

    .line 260
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 261
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v1, "homepage"

    iget-object v2, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;->homepage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string/jumbo v1, "rulesCount"

    iget v2, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;->rulesCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 265
    const-string v1, "expires"

    iget-wide v2, p0, Lcom/exteragram/messenger/adblock/backend/SubscriptionsManager$FilterMetadata;->expires:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method
