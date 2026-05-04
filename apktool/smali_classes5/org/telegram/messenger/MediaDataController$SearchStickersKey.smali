.class public Lorg/telegram/messenger/MediaDataController$SearchStickersKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaDataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchStickersKey"
.end annotation


# instance fields
.field public final emojis:Z

.field public final lang_code:Ljava/lang/String;

.field public final q:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9964
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaDataController$SearchStickersKey;->emojis:Z

    .line 9965
    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$SearchStickersKey;->lang_code:Ljava/lang/String;

    .line 9966
    iput-object p3, p0, Lorg/telegram/messenger/MediaDataController$SearchStickersKey;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 9972
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 9973
    :cond_1
    check-cast p1, Lorg/telegram/messenger/MediaDataController$SearchStickersKey;

    .line 9974
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaDataController$SearchStickersKey;->emojis:Z

    iget-boolean v3, p1, Lorg/telegram/messenger/MediaDataController$SearchStickersKey;->emojis:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$SearchStickersKey;->lang_code:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/messenger/MediaDataController$SearchStickersKey;->lang_code:Ljava/lang/String;

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$SearchStickersKey;->q:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/messenger/MediaDataController$SearchStickersKey;->q:Ljava/lang/String;

    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 9979
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaDataController$SearchStickersKey;->emojis:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaDataController$SearchStickersKey;->lang_code:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$SearchStickersKey;->q:Ljava/lang/String;

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
