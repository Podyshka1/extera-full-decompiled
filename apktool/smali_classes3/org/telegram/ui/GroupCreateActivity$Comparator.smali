.class public Lorg/telegram/ui/GroupCreateActivity$Comparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Comparator"
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smgetName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/GroupCreateActivity$Comparator;->getName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 1392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    .locals 1

    .line 1394
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 1395
    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    .line 1396
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1397
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 1398
    check-cast p0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1399
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    return-object p0

    .line 1401
    :cond_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1392
    check-cast p1, Lorg/telegram/tgnet/TLObject;

    check-cast p2, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/GroupCreateActivity$Comparator;->compare(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 0

    .line 1405
    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity$Comparator;->getName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lorg/telegram/ui/GroupCreateActivity$Comparator;->getName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
