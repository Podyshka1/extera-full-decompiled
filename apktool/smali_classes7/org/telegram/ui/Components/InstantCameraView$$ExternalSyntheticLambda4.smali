.class public final synthetic Lorg/telegram/ui/Components/InstantCameraView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lorg/telegram/messenger/camera/Size;

    check-cast p2, Lorg/telegram/messenger/camera/Size;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/InstantCameraView;->$r8$lambda$BRa4Pcs5xh0fkWGp3KPRvenlfmA(Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;)I

    move-result p1

    return p1
.end method
