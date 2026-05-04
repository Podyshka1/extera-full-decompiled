.class Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/ConnectionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolvedDomain"
.end annotation


# instance fields
.field public addresses:Ljava/util/ArrayList;

.field ttl:J


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;J)V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;->addresses:Ljava/util/ArrayList;

    .line 172
    iput-wide p2, p0, Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;->ttl:J

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 3

    .line 176
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$ResolvedDomain;->addresses:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
