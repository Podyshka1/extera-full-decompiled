.class Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/backup/PreferencesUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackupItem"
.end annotation


# instance fields
.field public clazz:Ljava/lang/Class;

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 548
    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    iput-object p1, p0, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;->key:Ljava/lang/String;

    .line 553
    iput-object p2, p0, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;->clazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 562
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 566
    :cond_1
    check-cast p1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    .line 568
    iget-object v0, p0, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
