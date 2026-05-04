.class Lorg/telegram/messenger/ContactsController$1;
.super Ljava/text/Collator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->getLocaleCollator()Ljava/text/Collator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/text/Collator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
