.class public Lorg/telegram/PhoneFormat/CallingCodeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public callingCode:Ljava/lang/String;

.field public countries:Ljava/util/ArrayList;

.field public intlPrefixes:Ljava/util/ArrayList;

.field public ruleSets:Ljava/util/ArrayList;

.field public trunkPrefixes:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/PhoneFormat/CallingCodeInfo;->countries:Ljava/util/ArrayList;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/PhoneFormat/CallingCodeInfo;->callingCode:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/PhoneFormat/CallingCodeInfo;->trunkPrefixes:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/PhoneFormat/CallingCodeInfo;->intlPrefixes:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/PhoneFormat/CallingCodeInfo;->ruleSets:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method format(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 60
    iget-object v0, p0, Lorg/telegram/PhoneFormat/CallingCodeInfo;->callingCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/telegram/PhoneFormat/CallingCodeInfo;->callingCode:Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/PhoneFormat/CallingCodeInfo;->matchingTrunkCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_0

    :cond_1
    move-object v2, p1

    move-object v0, v1

    .line 71
    :goto_0
    iget-object v3, p0, Lorg/telegram/PhoneFormat/CallingCodeInfo;->ruleSets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :cond_2
    const/4 v7, 0x1

    if-ge v6, v4, :cond_3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    check-cast v8, Lorg/telegram/PhoneFormat/RuleSet;

    .line 72
    invoke-virtual {v8, v2, v0, v1, v7}, Lorg/telegram/PhoneFormat/RuleSet;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    return-object v7

    .line 78
    :cond_3
    iget-object v3, p0, Lorg/telegram/PhoneFormat/CallingCodeInfo;->ruleSets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v5

    :cond_4
    if-ge v6, v4, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    check-cast v8, Lorg/telegram/PhoneFormat/RuleSet;

    .line 79
    invoke-virtual {v8, v2, v0, v1, v5}, Lorg/telegram/PhoneFormat/RuleSet;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    return-object v8

    :cond_5
    if-eqz v0, :cond_6

    .line 85
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 p1, 0x2

    .line 86
    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v5

    aput-object v2, p1, v7

    const-string v0, "%s %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    return-object p1
.end method

.method matchingAccessCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 38
    iget-object v0, p0, Lorg/telegram/PhoneFormat/CallingCodeInfo;->intlPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    .line 39
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method matchingTrunkCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 47
    iget-object v0, p0, Lorg/telegram/PhoneFormat/CallingCodeInfo;->trunkPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    .line 48
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
